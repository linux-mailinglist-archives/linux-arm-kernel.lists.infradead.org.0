Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A205A094D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3SwJ0lgkAbB+5ianGMHmue/wSX0OXdLs9xd/8cuJMQ=; b=ZbJw7F7y93zzsy
	qzHLxUAIw+3fbLXE+w4dM8ITQByUa5lAIJR0M1PMmm/C3tdN/aMRbE61+ZX415BFL9M3t5S0oSxf2
	xFye1Ipz8V6xyG1L6QFlR0yYkXPXM26D+HFQAZgLt7KpS9a3DtqmpHM4RvHuzxRDOaEG55wKsEu8J
	AIB2raNI0ioDghF2M3NgSH69gBq8NxSTehpW3XhhBmk5hhBrhxvWkpx260PDxpgS65c4mzte5UJpV
	hvAnhwJyoQslrcpSArxUXKhVqW7ndQe8A7ghkY3oZ/CmeJ1HRuN5K5fl1zqhIVPfaG3iuKe3z4/Gq
	bNnA2U6vEe/I54Ag/aTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32U2-0007e0-Ud; Wed, 28 Aug 2019 18:15:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32Tn-0007d1-PB; Wed, 28 Aug 2019 18:15:37 +0000
Received: from [104.132.1.107] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i32TX-0000Wu-Cc; Wed, 28 Aug 2019 20:15:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] PCI: rockchip: Properly handle optional regulators
Date: Wed, 28 Aug 2019 20:15:15 +0200
Message-ID: <1801971.F4Ds6vmZ8I@phil>
In-Reply-To: <20190828150737.30285-1-thierry.reding@gmail.com>
References: <20190828150737.30285-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_111535_965817_6CDC2444 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Vidya Sagar <vidyas@nvidia.com>,
 linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 28. August 2019, 17:07:37 CEST schrieb Thierry Reding:
> From: Thierry Reding <treding@nvidia.com>
> 
> regulator_get_optional() can fail for a number of reasons besides probe
> deferral. It can for example return -ENOMEM if it runs out of memory as
> it tries to allocate data structures. Propagating only -EPROBE_DEFER is
> problematic because it results in these legitimately fatal errors being
> treated as "regulator not specified in DT".
> 
> What we really want is to ignore the optional regulators only if they
> have not been specified in DT. regulator_get_optional() returns -ENODEV
> in this case, so that's the special case that we need to handle. So we
> propagate all errors, except -ENODEV, so that real failures will still
> cause the driver to fail probe.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>

on a rk3399-gru-scarlet with no 12v regulator defined and pcie-wifi
keeping on working with this patch:

Tested-by: Heiko Stuebner <heiko@sntech.de>

Change itself also looks correct,

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Thanks for doing that cleanup
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
