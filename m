Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89069873CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMS9G0orW9nV9defbwJjtSeXcM/86V61x2+/WoSUgVU=; b=H3P/Zggr7hMfFh
	OgO0SUkZlp/X6MXRNXNgVDPKY/q8GtdzMKNsrXptVpJ08rGzDkMrE7pB2jNaSjpbS0li+AsF3sPo8
	rSrRxBe5Zbe+KNi7aLnbJUEaMLX++5yNCej8lz7Gcl78wpBJ5A/9rZRXSdj6t6h6jp+gJ52mwg73P
	Ua/CKQq2az31ypITWPpHS5Ps1FvO0dg5iBXe8uX1uBOXq4WMX0XqWNyCSTq7YQrT40dAfoEmYi9SL
	hNLuaaAgDwRrjp0xk8ZX6PlL4HGHBntI4VebP6wINiY4emLuISZhdXXw68egkwems7nvQ6N9uOKwu
	nftkxnNO4ERin6Fxa5hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzyT-0003k2-15; Fri, 09 Aug 2019 08:10:09 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzyB-0003id-OK
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:09:55 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Ez9pOIoZtFKff6baimLMQ7mQcJ9pgBWUaVIIB2RVIgaHjXa3kQxxtK7N9FMXfXQjTI7XnES4Ad
 7Cv1xrEwpteMPfkUvfJlWPJ4672GAzNv5MeyWfjdaqo+MX1BUji0dJQcdwlHFq21NEalhVz+Rl
 4I+U9k/K+gXUu6BmJh5mVaMBQeW8xq47tfR7OjRyaPODZhRsRTdjRMPg/FgE9XoTP043uQP66c
 fe+70ju+qxz08yIO00997hczI11wr/Q/P94+tQLpg3rxetFRQeuSyqYCdrkUE1qUaOmm8RK93u
 qto=
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="45983219"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Aug 2019 01:09:47 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Aug 2019 01:09:47 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 9 Aug 2019 01:09:47 -0700
Date: Fri, 9 Aug 2019 10:08:43 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 1/2] mmc: sdhci-of-at91: add quirk for broken HS200
Message-ID: <20190809080842.zl4ytbjyt54bj6ta@M43218.corp.atmel.com>
Mail-Followup-To: Ulf Hansson <ulf.hansson@linaro.org>,
 Eugen.Hristev@microchip.com,
 Nicolas Ferre <Nicolas.Ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 DTML <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
 <CAPDyKFrUr8_VP1JLRk48zR8_p1Y62wKLBnS0iTgdhUSArwD49Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFrUr8_VP1JLRk48zR8_p1Y62wKLBnS0iTgdhUSArwD49Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_010951_905228_58A1A1F0 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eugen.Hristev@microchip.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 05:23:00PM +0200, Ulf Hansson wrote:
> On Thu, 8 Aug 2019 at 10:35, <Eugen.Hristev@microchip.com> wrote:
> >
> > From: Eugen Hristev <eugen.hristev@microchip.com>
> >
> > HS200 is not implemented in the driver, but the controller claims it
> > through caps.
> > Remove it via quirk.
> > Without this quirk, the mmc core will try to enable hs200, which will fail,
> > and the eMMC initialization will fail.
> >
> > Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Should this be applied as a fix and possibly tagged for stable?
> 
> In such case, do you have a specific commit that it fixes?

I think so, I would say:
Fixes: bb5f8ea4d514 ("mmc: sdhci-of-at91: introduce driver for the Atmel SDMMC")
Cc: stable@vger.kernel.org #v4.4 and later

It doesn't apply on 4.4 but resolution is trivial.

Regards

Ludovic

> 
> Kind regards
> Uffe
> 
> > ---
> >  drivers/mmc/host/sdhci-of-at91.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> > index 57fe3b2..3a8c6d8 100644
> > --- a/drivers/mmc/host/sdhci-of-at91.c
> > +++ b/drivers/mmc/host/sdhci-of-at91.c
> > @@ -370,6 +370,9 @@ static int sdhci_at91_probe(struct platform_device *pdev)
> >         pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
> >         pm_runtime_use_autosuspend(&pdev->dev);
> >
> > +       /* HS200 is broken at this moment */
> > +       host->quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
> > +
> >         ret = sdhci_add_host(host);
> >         if (ret)
> >                 goto pm_runtime_disable;
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
