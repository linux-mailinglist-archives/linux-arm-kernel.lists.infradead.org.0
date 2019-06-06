Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732A93714F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZZT3iRLSFaMZ1+PqqRu0jVMP0zJycNa+NFCGLQOkvg=; b=gckH0pVvbx182x
	RwUuqyEj301gPW2JNMsQl5Xdb51aCNotyz1T4fm4xL5xne4RetsNT+FbPc6KjC5Ho/VZtAVAWRb3Z
	sxBu/4tU9J3t0OjQmeZ8ZVsP0MiRN326JTFz7omMkA+BuM1J2ubyuib2gUHDpkC2CJ0D052O/+mNu
	mjYCPVUhvRHwylHoPdJgx/oJGYPbXm5ydrTvi4ZXxbdR6fxXvMyTUSTdTJPfEPbE2z0G9mTj39Ys1
	BQzZvvBdQm4JmAhm1zVzvYtTahsXvlQG63i33msh02g8zjXrgG+TV1i3JPTLLr04LZT6GsdFK+tNT
	Z+7Mcbde9oMaqKAHwSvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpMX-0001m7-2Q; Thu, 06 Jun 2019 10:11:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpMR-0001ly-Vp
 for linux-arm-kernel@bombadil.infradead.org; Thu, 06 Jun 2019 10:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ntYG98vIw8SBks2+iwma4fYIuw+qJBNTLrhwVKHXBpE=; b=WzStA+HhR1uA1MUXet6UrpqTpy
 6OWCYEZ2rzB7yeao3BJZlP9JARMqc03xXe16Pze/mZN+VfJDR3l+j6MblckY71dbh01iCmrk6hyEp
 +TZ6ORl3qXfMGqCUwdk35jbb0lL+KzwQjxxYAbqa0MIXMzsvMKc2SB5RkSyLfPl64EbpLBN3FGBkH
 06sOh9Ey2LlY65ZqrAjIDR7ZftncTdYx/5Dbv+f96ihOwBj+QMA+48U3ZdNDs1AsSN5zrKAhrJxS6
 itveatFisKOxU6ltd2vsRJlfF2MzVklRTyxpj4f2ZXJhq7R6aNn1BeD4lVtW/gyLKbnNjMo9edQBO
 edOlIAVA==;
Received: from [179.182.172.34] (helo=coco.lan)
 by casper.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpMM-0005DZ-4y; Thu, 06 Jun 2019 10:11:02 +0000
Date: Thu, 6 Jun 2019 07:10:52 -0300
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH 0/8] fix warnings for same module names
Message-ID: <20190606071052.412a766d@coco.lan>
In-Reply-To: <20190606094657.23612-1-anders.roxell@linaro.org>
References: <20190606094657.23612-1-anders.roxell@linaro.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org, airlied@linux.ie,
 stefan@agner.ch, linux-kernel@vger.kernel.org, a.hajda@samsung.com,
 lee.jones@linaro.org, marex@denx.de, f.fainelli@gmail.com,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, lgirdwood@gmail.com, p.zabel@pengutronix.de,
 shawnguo@kernel.org, davem@davemloft.net, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Thu,  6 Jun 2019 11:46:57 +0200
Anders Roxell <anders.roxell@linaro.org> escreveu:

> Hi,
> 
> This patch set addresses warnings that module names are named the
> same, this may lead to a problem that wrong module gets loaded or if one
> of the two same-name modules exports a symbol, this can confuse the
> dependency resolution. and the build may fail.
> 
> 
> Patch "drivers: net: dsa: realtek: fix warning same module names" and
> "drivers: net: phy: realtek: fix warning same module names" resolves the
> name clatch realtek.ko.
> 
> warning: same module names found:
>   drivers/net/phy/realtek.ko
>   drivers/net/dsa/realtek.ko
> 
> 
> Patch  "drivers: (video|gpu): fix warning same module names" resolves
> the name clatch mxsfb.ko.
> 
> warning: same module names found:
>   drivers/video/fbdev/mxsfb.ko
>   drivers/gpu/drm/mxsfb/mxsfb.ko
> 
> Patch "drivers: media: i2c: fix warning same module names" resolves the
> name clatch adv7511.ko however, it seams to refer to the same device
> name in i2c_device_id, does anyone have any guidance how that should be
> solved?
> 
> warning: same module names found:
>   drivers/gpu/drm/bridge/adv7511/adv7511.ko
>   drivers/media/i2c/adv7511.ko
> 
> 
> Patch "drivers: media: coda: fix warning same module names" resolves the
> name clatch coda.ko.
> 
> warning: same module names found:
>   fs/coda/coda.ko
>   drivers/media/platform/coda/coda.ko

Media change look ok, and probably the other patches too, but the
problem here is: who will apply it and when.

The way you grouped the changes makes harder for subsystem maintainers
to pick, as the same patch touches multiple subsystems.

On the other hand, if this gets picked by someone else, it has the
potential to cause conflicts between linux-next and the maintainer's
tree.

So, the best would be if you re-arrange this series to submit one
patch per subsystem.


> 
> 
> Patch "drivers: net: phy: fix warning same module names" resolves the
> name clatch asix.ko.
> 
> warning: same module names found:
>   drivers/net/phy/asix.ko
>   drivers/net/usb/asix.ko
> 
> Patch "drivers: mfd: 88pm800: fix warning same module names" and
> "drivers: regulator: 88pm800: fix warning same module names" resolves
> the name clatch 88pm800.ko.
> 
> warning: same module names found:
>   drivers/regulator/88pm800.ko
>   drivers/mfd/88pm800.ko
> 
> 
> Cheers,
> Anders
> 
> Anders Roxell (8):
>   drivers: net: dsa: realtek: fix warning same module names
>   drivers: net: phy: realtek: fix warning same module names
>   drivers: (video|gpu): fix warning same module names
>   drivers: media: i2c: fix warning same module names
>   drivers: media: coda: fix warning same module names
>   drivers: net: phy: fix warning same module names
>   drivers: mfd: 88pm800: fix warning same module names
>   drivers: regulator: 88pm800: fix warning same module names
> 
>  drivers/gpu/drm/bridge/adv7511/Makefile | 10 +++++-----
>  drivers/gpu/drm/mxsfb/Makefile          |  4 ++--
>  drivers/media/i2c/Makefile              |  3 ++-
>  drivers/media/platform/coda/Makefile    |  4 ++--
>  drivers/mfd/Makefile                    |  7 +++++--
>  drivers/net/dsa/Makefile                |  4 ++--
>  drivers/net/phy/Makefile                |  6 ++++--
>  drivers/regulator/Makefile              |  3 ++-
>  drivers/video/fbdev/Makefile            |  3 ++-
>  9 files changed, 26 insertions(+), 18 deletions(-)
> 



Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
