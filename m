Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CF54A2D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57X6UCcxL9v8qKn8vePAC9YraPInrMDkPFvObL/q4LI=; b=LFaBGeNAZb4LpT
	qwh9UvZADkkV29d9nA5+kGlCn5NA9h3bh2+vPz47YteNZLhxGZJISUYoZc58QZTPtSm+n3yafg746
	u+Af3t74LoeiHGfgAA9p2PJr6s/lLZXBxPgVTJk70h8pxIr6r6LV0vsZD/fYjDDKfhrKJCHNji6xk
	OboZHs/+vh9kRa7C1krc2U3AaGoJPESIunn++lPvGOeFm07+xGdLwpKrzYjvYC6PKrqwLdAEzHArP
	Q1Ii/DFwjXkCm637cG44HwX4ebOu7Jk6qKpaowmEDCCT+LFRnq/i70BG4voIavwPDcBXgCQjHPA+Z
	yMwlfJ/kfwTv8/VDjdRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEXn-000128-7h; Tue, 18 Jun 2019 13:53:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEXX-0000zH-Pz
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V/q4mYeWbhzG4mluYOK3emQt6O9KB4g3lyR9lno6o9Y=; b=UDRfkb10GftxLU8/5KRFfjN3B
 w/GohzNcLQPqzrUmdtGo2A6hO2NNQf9WgSI3u4kDq/jIwmxFBJNMwAC14m18MW2y1/jYiZYBr3Nh+
 LFsVKsj7AWOBxJGLEYgEkJFsIywahuGspOJD1QKM0JxMkPxOntbPETb3fnaHYKXOzod/khT3JybqT
 qoFOzGhrcavv2e4yLDhFPLNUV4vg/QdopjFdQhAyCaLfOgdbSAMWGNp8vL7PH2pS2aiIyKNkQjCOQ
 +79OeJNKHbK4ej+Qls3G4YvEgnJaZFajHUOGw+An5N7SX6OY7625AijjtYbk8ZyPghb5pGe4Vqgg4
 qZo6gDnVQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:58900)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hdEXO-0002SS-Ns; Tue, 18 Jun 2019 14:52:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hdEXM-0000Vq-Bq; Tue, 18 Jun 2019 14:52:36 +0100
Date: Tue, 18 Jun 2019 14:52:36 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] Arm: zx: remove redundant dev_err message
Message-ID: <20190618135236.32qjlxfgt5rcety5@shell.armlinux.org.uk>
References: <1560843541-11611-1-git-send-email-dingxiang@cmss.chinamobile.com>
 <20190618134634.GL1959@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618134634.GL1959@dragon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_065247_875159_EBDEF155 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Ding Xiang <dingxiang@cmss.chinamobile.com>, Olof Johansson <olof@lixom.net>,
 jun.nie@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 09:46:36PM +0800, Shawn Guo wrote:
> On Tue, Jun 18, 2019 at 03:39:01PM +0800, Ding Xiang wrote:
> > devm_ioremap_resource already contains error message, so remove
> > the redundant dev_err message
> > 
> > Signed-off-by: Ding Xiang <dingxiang@cmss.chinamobile.com>
> 
> Acked-by: Shawn Guo <shawnguo@kernel.org>
> 
> Arnd, Olof,
> 
> Can you please apply it to arm-soc tree?  Thanks.
> 
> Shawn
> 
> > ---
> >  arch/arm/mach-zx/zx296702-pm-domain.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/mach-zx/zx296702-pm-domain.c b/arch/arm/mach-zx/zx296702-pm-domain.c
> > index 7a08bf9d..ac44ea8 100644
> > --- a/arch/arm/mach-zx/zx296702-pm-domain.c
> > +++ b/arch/arm/mach-zx/zx296702-pm-domain.c
> > @@ -169,10 +169,8 @@ static int zx296702_pd_probe(struct platform_device *pdev)
> >  	}
> >  
> >  	pcubase = devm_ioremap_resource(&pdev->dev, res);
> > -	if (IS_ERR(pcubase)) {
> > -		dev_err(&pdev->dev, "ioremap fail.\n");
> > +	if (IS_ERR(pcubase))
> >  		return -EIO;

Shouldn't the error return also get fixed?

> > -	}
> >  
> >  	for (i = 0; i < ARRAY_SIZE(zx296702_pm_domains); ++i)
> >  		pm_genpd_init(zx296702_pm_domains[i], NULL, false);
> > -- 
> > 1.9.1
> > 
> > 
> > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
