Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CAE139FF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 04:27:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUx/4AKmAGqkR+yorE/FCUXdfFDHMB8MxioQb+QCdFE=; b=JU/YnJ4sG+WR8k
	x4Hi4sOM5vkru7SWOy0+fDO2TycSMgWBKskmua5pULEdsSRyywKUnNXA9yQQhnD3EpGkB8VDFRaVz
	6M9+RfK+TbkBhB2AT86+AFGVYN2cALBvLBwsmLl9Yoho3n4eKydaWscI6TMpXq8Cc51PJl5V7TAOH
	/DnsaFutb111/SILFoBcLa62/XDxWDA7/Tcb5vblQw8O3LePgFPver1sVrA2LHg6mUAUuzkUyiKah
	Zy4xTZxAL+/TCKSItkh2CGNxVCV/ozBQ9RGT4C+qgWCibnNYvjwjzYBc/O/xbtWkAHT8jSXWPHRg0
	ph2j0uIBvLBS47aVam5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irCr1-0002QO-8V; Tue, 14 Jan 2020 03:26:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irCqt-0002Pb-AE
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 03:26:48 +0000
Received: from cakuba (c-73-93-4-247.hsd1.ca.comcast.net [73.93.4.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 299BA20CC7;
 Tue, 14 Jan 2020 03:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578972406;
 bh=K6QwoHZlKmBhi1HwYzE/vZ5jsixqOCwKPUF803F9Qxs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MOw/5NOJp9s0xnIQVt2/sEGGKIeo0Cyb1YDjbXSSkAiEBe36usdVrXv9v3vNsWHdp
 Lo9S42pGO0Awd1ZGkPJB02wF0w5FsKBNHdK5lR8g6TZWLQMD5lfU9992QlV/pbCxKP
 mtIW0MgAAVFt/IeLYY26xiacHbP42MkmI5ulPG38=
Date: Mon, 13 Jan 2020 19:26:45 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v3 0/8] net: stmmac: ETF support
Message-ID: <20200113192645.6b9f51d1@cakuba>
In-Reply-To: <cover.1578932287.git.Jose.Abreu@synopsys.com>
References: <cover.1578932287.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_192647_375086_1E3737FF 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 17:24:08 +0100, Jose Abreu wrote:
> This series adds the support for ETF scheduler in stmmac.
> 
> 1) Starts adding the support by implementing Enhanced Descriptors in stmmac
> main core. This is needed for ETF feature in XGMAC and QoS cores.
> 
> 2) Integrates the ETF logic into stmmac TC core.
> 
> 3) and 4) adds the HW specific support for ETF in XGMAC and QoS cores. The
> IP feature is called TBS (Time Based Scheduling).
> 
> 5) Enables ETF in GMAC5 IPK PCI entry for all Queues except Queue 0.
> 
> 6) Adds the new TBS feature and even more information into the debugFS
> HW features file.
> 
> 7) Switches the selftests mechanism to use dev_direct_xmit() so that we can
> send packets on specific Queues.
> 
> 8) Adds a new test for TBS feature.

Applied, thank you!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
