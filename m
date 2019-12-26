Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFD412AF0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 23:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hM2PFWi8A3ToOwC/l82tTqiFkMSuQy/G+M+qpukJuCY=; b=bSfjagzZ3hJFeJ
	coLhUtS4PthlikEPFPb22cMFDOgGDiuo7Mva4cnkt97rCz1l6c1cUpEaEGGcJWl9uXglE7Al4F9rU
	Jj7gogYDklFtNKs1xOJwhXu1STFke3y2ZXWRkyaE0fa8tNoh2Cha4YVq36MWH+aVgZ84mJpVcqoRp
	sDpNirvL8kpL0EEoZugV1Wv4oOHtPUx4DKuCbUKNuA29E3YjLYp7ZVMXQAROI3Pr273QF9XvQVqgm
	9IENvd1K8NiDztt9zYtCyX0kkr+cn/QQ3zSomSYF7HWPtvVK/nEWHD3cdpwtm1WJ/OT3ydq/mmK3p
	k9UvkTkTxn6aIuP/Usmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikbFv-0007Fe-GE; Thu, 26 Dec 2019 22:05:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikbFd-0006uf-IY
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 22:05:02 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E4322080D;
 Thu, 26 Dec 2019 22:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577397898;
 bh=dDH3D1EfprMu1UoAl8ug4u3jFlQc6Q+o2AOtTd4nevQ=;
 h=In-Reply-To:References:From:Cc:To:Subject:Date:From;
 b=IztsENYbDRRaxNR33TTwwS8DDrwWNLtlqCT1FrMMS4D0tXoWPf4f2NrtlQOtuZ1aA
 ePg7Bu3e4IM54p9+3+7MQQy+/60e7D2/uh6ulZzcKaOK4/cRhPjutJEa9+5lDVR0K+
 XD8jLeL+6ioGK0/42zO2mF+OxXRfszLeFNzh3C7g=
MIME-Version: 1.0
In-Reply-To: <20191218111742.29731-9-sudeep.holla@arm.com>
References: <20191218111742.29731-1-sudeep.holla@arm.com>
 <20191218111742.29731-9-sudeep.holla@arm.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/11] clk: scmi: Match scmi device by both name and
 protocol id
User-Agent: alot/0.8.1
Date: Thu, 26 Dec 2019 14:04:57 -0800
Message-Id: <20191226220458.9E4322080D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_140501_647986_96E0CBF3 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sudeep Holla (2019-12-18 03:17:39)
> The scmi bus now has support to match the driver with devices not only
> based on their protocol id but also based on their device name if one is
> available. This was added to cater the need to support multiple devices
> and drivers for the same protocol.
> 
> Let us add the name "clocks" to scmi_device_id table in the driver so
> that in matches only with device with the same name and protocol id
> SCMI_PROTOCOL_CLOCK.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
