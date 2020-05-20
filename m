Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A461DB012
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:24:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuhqwZIkQOLEZUTQnbIjaccd5ysD06ekIyZkC92STSk=; b=SzyarGF5ysfTrW
	Mj2zsEi/noobm1ScNJGfJ4ZcsuknI4GM4odrtgYh8X7VD3BhiJTVHbc1iuRZpMJ5l8Notu4KCdwl2
	Ym2b0zICwETUdBUJ61OVjK3c844i3pogf7viNfFV6eOe9oui++1jkjTa7fgTX8Z7HbWy/qRpJvr3M
	N0gXWrNSgjtCPjcOA66eq1jHXtscdvA3XssacbnANnzBbTbQu1CdihyZLTqIWI2kvYx25c1nA1cTh
	pKyocXbDQB3k9Fz6xwPk3mCKfiTp0aw4ZvvDQthHdF9bBOEU73D72Q8MMNjKBzZvh+KUbJYt1mQso
	697VhK9muOZOBFUE59/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLtd-0006jX-W0; Wed, 20 May 2020 10:24:22 +0000
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLrU-0004zZ-Gq
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:22:10 +0000
Received: from belgarion ([86.210.245.36]) by mwinf5d33 with ME
 id gyN52200D0nqnCN03yN647; Wed, 20 May 2020 12:22:06 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 20 May 2020 12:22:06 +0200
X-ME-IP: 86.210.245.36
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/2] ARM: pxa: remove Compulab pxa2xx boards
References: <20200513170132.1446-1-robert.jarzmik@free.fr>
 <CAK8P3a3E=Fq6ZXLkeQgufeJCP0gZiN1uXA2J=HzpH3D49GOMXQ@mail.gmail.com>
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 20 May 2020 12:21:52 +0200
In-Reply-To: <CAK8P3a3E=Fq6ZXLkeQgufeJCP0gZiN1uXA2J=HzpH3D49GOMXQ@mail.gmail.com>
 (Arnd Bergmann's message of "Wed, 13 May 2020 22:39:59 +0200")
Message-ID: <87h7waoqin.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_032208_848471_843D0773 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.132 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.132 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robert.jarzmik[at]free.fr]
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, igor <igor@compulab.co.il>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, Mike Rapoport <mike@compulab.co.il>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> On Wed, May 13, 2020 at 7:01 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
>>  CONFIG_MACH_EXEDA=y
>
> CONFIG_MACH_EXEDA should be removed here as well, it refers
> to part of em-x270.c
>
> Similarly, the whole em_x270_defconfig can be removed.
Certainly.

> Now arch/arm/mach-pxa/include/mach/io.h is unused and
> can be removed.
Yes.

> With MACH_ARMCORE gone, the MTD_NAND_CM_X270 and
> PCI_HOST_ITE8152 become impossible to select, and
> a part of PCMCIA_PXA2XX (pxa2xx_cm_x2xx_cs.c) becomes
> unused.
>
> FB_MBX can still be selected, but there are no boards defining
> the platform data any more, so I'd like to remove that as well.
That should be dealt with another time, sorry.

> MACH_EXEDA here is also obsolete, and I'd probably want to
> update the SND_PXA2XX_SOC_EM_X270 dependencies in the
> same patch.
Yes.

>
>> -static struct spi_board_info spi_board_info[] __initdata = {
>> -       [0] = {
>> -               .modalias       = "rtc-max6902",
>> -               .max_speed_hz   = 1000000,
>> -               .bus_num        = 1,
>> -               .chip_select    = 0,
>
> Another last reference, so we can remove that the corresponding driver.
Another patch serie for this as well.

> Same here, there is still one more user left (MACH_ZIPIT2), though
> at some point that might get removed if we decide to drop the handhelds
> with 32MB RAM or less.  That is probably something to be left for
> another time, but I see that pxa_defconfig produces a 9.5MB kernel
> image, so this is getting rather tight, and 32MB wasn't much when this
> got added in 2010.
Yeah, but no PXA user would ever use the pxa_defconfig kernel :)
A typical kernel for a PXA board is right now around 4MB, which is very tight
for 32MB platforms, and just enough for 64MB ones.

Cheers.

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
