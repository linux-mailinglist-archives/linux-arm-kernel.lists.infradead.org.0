Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519A4DFF65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWnClau0IdKMKRhjPOMPND6PyAyemHsSogE3k7/7Hsc=; b=Rc3z+Rv4peQpeb
	v+2a6rWR26M84IzvyneDo0+R6pnkNDCI9RYj6wZlggPZRQz67yg3e/on4KKmMc83Ro3Ma5rH7v/MH
	9Wixuh/fY7ofqwAdsNryEl0MawJzQgGl9fCCNc5iMOBnBJhp5ZV6IvRHoJJq6jhs3rwaLNekYoVV0
	WP6TN9iE1/KrDnzjOFx+hHLg7imQ39PLyzlzWiq7BXGAf7nuPaqytuIVxBctzMYxGu5RBc/9ZLlWU
	LWuaG9YWXnohdzW0INK79bKx7Eiy2kAACAm7ArDGWbPwYdnn9raDNrKjnW3JDcPDLgNiUz7gVQQEE
	+lyxvXiyo/IvuCe0BCbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpW6-0005ku-1k; Tue, 22 Oct 2019 08:27:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpVe-0005SA-JJ; Tue, 22 Oct 2019 08:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5NbtpQgTT3ENpHphUcwdOH97IrHrqerBCMB0wEN3nMk=; b=pbduPVqdXXEf/nzVVbslGra/k
 BxRhBecen5uPmXgQryPOFBlmOCcggPUfOYxHy8O8WvP5Hnb2Iwqm1BcBw+DFGMY1Od0XxLP+UHOb/
 pevLZaAB7MrMzzvmUdW3G6mJytz+sqcpNPnrhReSbNrAmQDOaV3rQxp5fOVvRBi1VST/JHnlyVwsA
 8WUghEu54Q0gpHJpleUalrUfJWM2fwiV9C4mieJElUlSaZcLZFepNTjSFPom/ReqyJXoQfRrlbLN6
 E05Tl1r5uKfJqtL8gPohtXgSiprme5nNjzedBHlmht/L3n6RAUi8y6rPgq0I689S1A9saT/MyxhY8
 qONVZyGPA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57534)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iMpV9-0005zQ-Is; Tue, 22 Oct 2019 09:26:47 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iMpV5-0004ON-Kj; Tue, 22 Oct 2019 09:26:43 +0100
Date: Tue, 22 Oct 2019 09:26:43 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: spear_smi: Fix nonalignment not handled in
 memcpy_toio
Message-ID: <20191022082643.GO25745@shell.armlinux.org.uk>
References: <20191018143643.29676-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018143643.29676-1-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_012718_637360_9306587B 
X-CRM114-Status: GOOD (  25.10  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, stable@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 04:36:43PM +0200, Miquel Raynal wrote:
> Any write with either dd or flashcp to a device driven by the
> spear_smi.c driver will pass through the spear_smi_cpy_toio()
> function. This function will get called for chunks of up to 256 bytes.
> If the amount of data is smaller, we may have a problem if the data
> length is not 4-byte aligned. In this situation, the kernel panics
> during the memcpy:
> =

>     # dd if=3D/dev/urandom bs=3D1001 count=3D1 of=3D/dev/mtd6
>     spear_smi_cpy_toio [620] dest c9070000, src c7be8800, len 256
>     spear_smi_cpy_toio [620] dest c9070100, src c7be8900, len 256
>     spear_smi_cpy_toio [620] dest c9070200, src c7be8a00, len 256
>     spear_smi_cpy_toio [620] dest c9070300, src c7be8b00, len 233
>     Unhandled fault: external abort on non-linefetch (0x808) at 0xc90703e8
>     [...]
>     PC is at memcpy+0xcc/0x330

I need the full oops if you want me to comment on this.

> =

> Workaround this issue by using the alternate _memcpy_toio() method
> which at least does not present the same problem.
> =

> Fixes: f18dbbb1bfe0 ("mtd: ST SPEAr: Add SMI driver for serial NOR flash")
> Cc: stable@vger.kernel.org
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
> =

> Hello,
> =

> This patch could not be tested with a mainline kernel (only compiled)
> but was tested with a stable 4.14.x kernel. I have really no idea why
> memcpy fails in this situation that's why I propose this workaround
> but I bet there is something deeper not working.
> =

> Thanks,
> Miqu=E8l
> =

>  drivers/mtd/devices/spear_smi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/mtd/devices/spear_smi.c b/drivers/mtd/devices/spear_=
smi.c
> index 986f81d2f93e..d888625a3244 100644
> --- a/drivers/mtd/devices/spear_smi.c
> +++ b/drivers/mtd/devices/spear_smi.c
> @@ -614,7 +614,7 @@ static inline int spear_smi_cpy_toio(struct spear_smi=
 *dev, u32 bank,
>  	ctrlreg1 =3D readl(dev->io_base + SMI_CR1);
>  	writel((ctrlreg1 | WB_MODE) & ~SW_MODE, dev->io_base + SMI_CR1);
>  =

> -	memcpy_toio(dest, src, len);
> +	_memcpy_toio(dest, src, len);
>  =

>  	writel(ctrlreg1, dev->io_base + SMI_CR1);
>  =

> -- =

> 2.20.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
