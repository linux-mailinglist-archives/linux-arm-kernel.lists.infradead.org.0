Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4451ABF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 14:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmctTJ7oEtaTRB8Ec2SwUe1MeVHawScbFIFHH0+Jx3s=; b=CMZ9WMYEfh82Xl
	HzhJWE1bMk0epdsguNmxUaKlAog/OqHL5XZtB9HkXUtZAjSUZChgx09VOir3i5TAn7PYG2iRmE8Nf
	+ugnzT/cv+RfABFsYaM+AQjQpzciHbO2TDRMs4zIzkUpm5+gbsfMO8KFFJOdreGsqMBIxLJHE28th
	kPc9GyiVcLvy55ZsHxRj0wD9OEvtu6lgPVCe/ht3MC833HdxwEAVyBJu73MVQOz5k2K9R2Bx/Gciq
	hcTzovyVlZuOeSSGuVWO8j4E00zh+gESiVxpPobZHeZ+kkFGi6a3djWByIFhrvsK+b9zCo+bylYRl
	tGJdwJoZoIQyGran7uQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPnLx-0004dH-1W; Sun, 12 May 2019 12:13:17 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPnLo-0004cq-7y
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 12:13:10 +0000
X-Originating-IP: 109.190.253.16
Received: from localhost (unknown [109.190.253.16])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2A98E1C0004;
 Sun, 12 May 2019 12:12:46 +0000 (UTC)
Date: Sun, 12 May 2019 14:12:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Uenal Mutlu <um@mutluit.com>
Subject: Re: [RFC PATCH] drivers: ata: ahci_sunxi: Increased SATA/AHCI DMA
 TX/RX FIFOs
Message-ID: <20190512121245.l3cvg4std6yanwix@flea>
References: <20190510192550.17458-1-um@mutluit.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510192550.17458-1-um@mutluit.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_051308_433312_8B839CF6 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, Mark Rutland <mark.rutland@arm.com>,
 Hans de Goede <hdegoede@redhat.com>, u-boot@lists.denx.de,
 Oliver Schinagl <oliver@schinagl.nl>, Andre Przywara <andre.przywara@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-sunxi@googlegroups.com,
 FUKAUMI Naoki <naobsd@gmail.com>, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Pablo Greco <pgreco@centosproject.org>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, May 10, 2019 at 09:25:50PM +0200, Uenal Mutlu wrote:
> Increasing the SATA/AHCI DMA TX/RX FIFOs (P0DMACR.TXTS and .RXTS) from
> default 0x0 each to 0x3 each gives a write performance boost of 120MB/s
> from lame 36MB/s to 45MB/s previously. Read performance is about 200MB/s
> [tested on SSD using dd bs=4K count=512K].
>
> Tested on the Banana Pi R1 (aka Lamobo R1) and Banana Pi M1 SBCs
> with Allwinner A20 32bit-SoCs (ARMv7-a / arm-linux-gnueabihf).
> These devices are RaspberryPi-like small devices.
>
> RFC: Since more than about 25 similar SBC/SoC models do use the
> ahci_sunxi driver, users are encouraged to test it on all the
> affected boards and give feedback.
>
> List of the affected sunxi and other boards and SoCs with SATA using
> the ahci_sunxi driver:
>   $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
>   and http://linux-sunxi.org/Category:Devices_with_SATA_port
>
> Signed-off-by: Uenal Mutlu <um@mutluit.com>
> ---
>  drivers/ata/ahci_sunxi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/ata/ahci_sunxi.c b/drivers/ata/ahci_sunxi.c
> index 911710643305..257986431c79 100644
> --- a/drivers/ata/ahci_sunxi.c
> +++ b/drivers/ata/ahci_sunxi.c
> @@ -158,7 +158,7 @@ static void ahci_sunxi_start_engine(struct ata_port *ap)
>  	struct ahci_host_priv *hpriv = ap->host->private_data;
>
>  	/* Setup DMA before DMA start */
> -	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ff00, 0x00004400);
> +	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ffff, 0x00004433);

Having comments / defines here would be great, once fixed:
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
