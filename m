Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD0EB026B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgH+ZJErvodBTtbn6cSTkIHBykjRMYn9Z/TumtI9t+E=; b=QJeJlIB1wNTKBW
	TRVQZ3et06SZTW+YprKDHOlAoZyEDKyRR/P9kcFg5adlonh1FVZBvxFJU/pd3P0SykR8EDmCbcv7u
	A49kcEQ+YeIIWgd5cmWQTrx1+bcfLdDYNPOVGcqo9c7bEwK7dbHWR/ud0CGJSmKHFpnJLYMXtyMc+
	/bThUvD7aXI0pNblU76RWPUrBuqG+0+XJXaZfYr5KMJtgZfjDQ+mlutKMWh8ltY+nBPye7PNcdPq9
	+1RUFXruQofr0JlVo+pEAe5/cby3p1rkIxiVGNMZ/dBBPUqGfMfXs/WR+utWZDdtl3pBcfRlPw8sM
	XLf3o600iv+JQNOv4qZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86Bm-0002vF-Os; Wed, 11 Sep 2019 17:13:54 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86BZ-0002uH-8r
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:13:42 +0000
Received: by mail-io1-xd43.google.com with SMTP id m11so47628151ioo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 10:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6+SoHhsQOovqeJZiGrW82P38EagpxDWDR4IIb3FtRF0=;
 b=XVZB36l4tCCXIo99rJgiEOcRMbNK/SDldNDhuEWHpRBjh9g1qEnpocs0amMHNLuITu
 nTt0wafLCJ2XqHDDe5Vowa9SwAUsqRHYXqlFcBJvKMUoC90gXSsKVLz1ry/5H/dSJAKE
 43rCckOnr2QVdwEnZNU+NrVErFfEFAe1mijavOefP+CcwT1Ig0vXBhkUIuYcg9RiTR5Q
 HTpq2vMxLJoa4mVpnwqv+fpVe1KcBUKHsqa6TOkXoov68QAADJBLTevGBqfdyoo8M/VF
 pPBZOSKHY26pofiVpOkorepZpmsIjFgc9XWu04QRFdfyUrvNpVUBnkGKzu82+bge2LQD
 iF3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6+SoHhsQOovqeJZiGrW82P38EagpxDWDR4IIb3FtRF0=;
 b=E7oC9rOI3yPrDi53d+mbEGy6kq+aj/QEtLha/ZUK8X9rpFQRF4pi0QXDdDAv6SAeU4
 YT/ARcCgtlZbAKUuWQPGnLILUQeuJ4KlMmzydIj9fTbmIFnP7G+Z1dFHjRX5EuFE0p7Z
 q8MBOGFmybIzyQo5IjQTF1DcERlonHoGhU5UqErjfzWE0pK/cHQGBInGR5KTCcuAqMqG
 ylur8FNpjxv+oQCyBut59Jdg8E9fDxR48JB5HYj7uxfr6IwYtM3YGAuK10Ra8Flvfd+f
 j16rR4k1X3PMf9GQ4hE+l0UNtcQU3+UBTfc5lg26HaaxdjBzKKF9jdkCzOQjcs+jwDjc
 n90w==
X-Gm-Message-State: APjAAAU6oEz27WkNbKo/Pj6MvhxHmYxnPM4IE1S40ccWUbs/7lKqg0Cx
 pl+CAfyxXjwKHFIhD2e1lkoWV0QHI4Y3T1QRBes=
X-Google-Smtp-Source: APXvYqzvZEOqQx2WkH+vz6db30rZjP0YoOEZETq41+nri6onsnfSe2ye9BXROxkmT5TyXDj3omZewOfWQsdOtYuRCP4=
X-Received: by 2002:a02:65cd:: with SMTP id u196mr38920494jab.3.1568222019620; 
 Wed, 11 Sep 2019 10:13:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190911145226.21088-1-aford173@gmail.com>
 <20190911165021.qr5i37mpnua3fvw5@earth.universe>
In-Reply-To: <20190911165021.qr5i37mpnua3fvw5@earth.universe>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 11 Sep 2019 12:13:27 -0500
Message-ID: <CAHCN7xKin45Hqr1fgoOmbBKaM_hM_xnvrs2_5nnxAifHL2Sz0A@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: omap2plus_defconfig: Update for removed items
To: Sebastian Reichel <sre@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_101341_340886_B685AB86 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 11:50 AM Sebastian Reichel <sre@kernel.org> wrote:
>
> Hi,
>
> On Wed, Sep 11, 2019 at 09:52:25AM -0500, Adam Ford wrote:
> > The omap panel-dpi driver was removed in
> > Commit 8bf4b1621178 ("drm/omap: Remove panel-dpi driver")
> >
> > The tFP410 and DVI connector was remove in
> > Commit be3143d8b27f ("drm/omap: Remove TFP410 and DVI connector drivers")
> >
> > This patch removes these items from the omap2plus_defconfig.
>
> The omapdrm specific drivers have generic replacements, that
> should be added to the defconfig instead:
>
> DRM_OMAP_PANEL_DPI -> DRM_PANEL_SIMPLE
> DRM_OMAP_ENCODER_TFP410 -> DRM_TI_TFP410
>
> Nothing should be required for DRM_OMAP_CONNECTOR_DVI.

The DPI panel was already done.

https://patchwork.kernel.org/patch/11119569/

I'll submit a patch for the TFP410

adam
>
> -- Sebastian
>
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> >
> > diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> > index c7bf9c493646..166b36be2ca6 100644
> > --- a/arch/arm/configs/omap2plus_defconfig
> > +++ b/arch/arm/configs/omap2plus_defconfig
> > @@ -349,12 +349,9 @@ CONFIG_OMAP5_DSS_HDMI=y
> >  CONFIG_OMAP2_DSS_SDI=y
> >  CONFIG_OMAP2_DSS_DSI=y
> >  CONFIG_DRM_OMAP_ENCODER_OPA362=m
> > -CONFIG_DRM_OMAP_ENCODER_TFP410=m
> >  CONFIG_DRM_OMAP_ENCODER_TPD12S015=m
> > -CONFIG_DRM_OMAP_CONNECTOR_DVI=m
> >  CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
> >  CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
> > -CONFIG_DRM_OMAP_PANEL_DPI=m
> >  CONFIG_DRM_OMAP_PANEL_DSI_CM=m
> >  CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
> >  CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
