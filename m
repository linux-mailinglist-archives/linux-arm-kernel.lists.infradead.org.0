Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69D61D68CF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w694DP0/n7oIA57pdQWB2SxFWjDqfoEwzFOKwMmgLMk=; b=juSSieIVAswqYT
	T7rdLJ0Pe0YxS5/bKibqS+tXWez1TXuD8Rtp7jlXcm2xnHU0G8VzxiyHychQuQfC5r6BsvK2NQsy6
	CuAy/WRfC1nxvuuYYrrEDzvOxK+n8WzR/H2+/nWZw5llHe+3+ZhTSHR+0fYnxEzZNBkt76A+TuwU3
	xZsWuN21YPNMhvhLwLydPCq5da7M4k9c1x6rT/1868KRvXDYKcfhNK4NWI+1SUvSPRJLivoVqQ5/T
	HNHUjWc85sdY4TL7vYoOrt7j80k/foc7NVP3vYM/PMw6+WMFZG6xxaFNu8IksP6GdMU0pbSdzAsyk
	iaWAYmwLu1zGXBMLfgdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaM4r-0000Rz-D6; Sun, 17 May 2020 16:23:49 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaM4j-0000RY-8t
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:23:43 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 8471020002;
 Sun, 17 May 2020 16:23:28 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: clarify maintenance of ARM Dove drivers
In-Reply-To: <20200328134304.7317-1-lukas.bulwahn@gmail.com>
References: <20200328134304.7317-1-lukas.bulwahn@gmail.com>
Date: Sun, 17 May 2020 18:23:28 +0200
Message-ID: <87blmmh6nz.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_092341_446226_F04DA503 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukas,

> Commit 44e259ac909f ("ARM: dove: create a proper PMU driver for power
> domains, PMU IRQs and resets") introduced new drivers for the ARM Dove SOC,
> but did not add those drivers to the existing entry ARM/Marvell
> Dove/MV78xx0/Orion SOC support in MAINTAINERS. Hence, these drivers were
> considered to be part of "THE REST".
>
> Clarify now that these drivers are maintained by the ARM/Marvell
> Dove/MV78xx0/Orion SOC support maintainers.

> Also order the T: entry to the
> place it belongs to, while at it.

In 5.7-rc1 Linus took care of it, so I removed this part ofthe commit
log.

>
> This was identified with a small script that finds all files only belonging
> to "THE REST" according to the current MAINTAINERS file, and I acted upon
> its output.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>


Applied on mvebu/arm

Thanks,

Gregory


> ---
> applies cleanly on current master and on next-20200327
>
>  MAINTAINERS | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8b8abe756ae0..38fff0374082 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1979,6 +1979,7 @@ M:	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>  M:	Gregory Clement <gregory.clement@bootlin.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
> +T:	git git://git.infradead.org/linux-mvebu.git
>  F:	Documentation/devicetree/bindings/soc/dove/
>  F:	arch/arm/mach-dove/
>  F:	arch/arm/mach-mv78xx0/
> @@ -1986,7 +1987,7 @@ F:	arch/arm/mach-orion5x/
>  F:	arch/arm/plat-orion/
>  F:	arch/arm/boot/dts/dove*
>  F:	arch/arm/boot/dts/orion5x*
> -T:	git git://git.infradead.org/linux-mvebu.git
> +F:	drivers/soc/dove/
>  
>  ARM/Marvell Kirkwood and Armada 370, 375, 38x, 39x, XP, 3700, 7K/8K, CN9130 SOC support
>  M:	Jason Cooper <jason@lakedaemon.net>
> -- 
> 2.17.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
