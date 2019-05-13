Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9031B168
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mi9NjOPKr6Vjx4jJ6kHTLytk/EDxLKwgsdJgiSu16Qw=; b=P2xEffA/RPMd209V6QXZf4js2
	ckgE13TkyV5n8L69IP1NqDIgcIsCjW/DF7Uix5tVP8JC/vTnc+TQTA4QJNXAtE6+L6GH/0M0y+Vj7
	+73r2a8cgzAEFNPJfW0e40S4Y/XIrKtilxBtnlBwVFKphAo8Ln8JpHK2csVa8IsWhA/y7YpW7X2hk
	Cb65sFWBvaWtwk5r9A8edCtlcS+E9m06FoL+t5fxYXnWjsQGqjJp95FDh6kryfsEXRC1dPu74m+Ii
	Q0j109KfL42JaBsUKRVjLza/OvFmcLaosEXc0gWLcFtvPLjcuhqwvrgFq5P0TOwSaAvMka/jvQs1B
	8w0YZXVKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5dx-0008P0-Hh; Mon, 13 May 2019 07:45:07 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5di-0008Ey-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:44:54 +0000
Received: by mail-ed1-f65.google.com with SMTP id n17so16178353edb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:44:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lK59c9/NQKUYHMzx6IhpTBWSV/2wPVZROlh8D68u+Fs=;
 b=Qf2r3WgjqIGRqPNzbYkmL8RLaKopLL64Zuau6CcCOaAtQ0YV/dAn44Rz5pW92PcW0s
 MrhVE1xjKngD4FJoKY9WBGrwAu91YIKkT2lSqYS8d9TVJYp8UuWiW21SXR3JP8EOuBIz
 m/sW07oI86WjiXdcA3A1WmIKJjGv3SHb10N3Gq/ybiR/pEOFTKvUqgdPorrJfG0SOZ8I
 1fQQ0+UnqbCzauchVpjNGGH840kOYz8lMh2G+hlddXPUm8iHFHinosdfAAz7Nte7L36t
 1K2b1lcyFzzliJ1kEuyDIjn9CjnxZWPtBPnQVF6gl7Bw3pQKcdOcmaTt7VMhHU5iGvcN
 TxTg==
X-Gm-Message-State: APjAAAWYGjz3K217WRxmO9CiLl6oJSyD3L6qbfzgTgy0MxiMUTfh95qf
 O45Sjo5CQKOfgZ8d6oHj4jTbOA==
X-Google-Smtp-Source: APXvYqxMhreLvOcLIPKDGLO37Uc6pgRaPn7s70HkaX9M/+QJuQVNJhzIXqg6i8G36h95UtMtb6CfZg==
X-Received: by 2002:a50:cb4d:: with SMTP id h13mr28042035edi.110.1557733488614; 
 Mon, 13 May 2019 00:44:48 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id o3sm1681376ejb.71.2019.05.13.00.44.47
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 00:44:47 -0700 (PDT)
Subject: Re: [RFC PATCH v2 RESEND] drivers: ata: ahci_sunxi: Increased
 SATA/AHCI DMA TX/RX FIFOs
To: Uenal Mutlu <um@mutluit.com>, Jens Axboe <axboe@kernel.dk>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190512205954.18435-1-um@mutluit.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <413dcf9f-25a5-61f5-159f-a75e7b1f1522@redhat.com>
Date: Mon, 13 May 2019 09:44:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190512205954.18435-1-um@mutluit.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_004451_196440_F1C6B76D 
X-CRM114-Status: GOOD (  28.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Oliver Schinagl <oliver@schinagl.nl>,
 Andre Przywara <andre.przywara@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Pablo Greco <pgreco@centosproject.org>, FUKAUMI Naoki <naobsd@gmail.com>,
 linux-sunxi@googlegroups.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Stefan Monnier <monnier@iro.umontreal.ca>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12-05-19 22:59, Uenal Mutlu wrote:
> Increasing the SATA/AHCI DMA TX/RX FIFOs (P0DMACR.TXTS and .RXTS, ie.
> TX_TRANSACTION_SIZE and RX_TRANSACTION_SIZE) from default 0x0 each
> to 0x3 each, gives a write performance boost of 120 MiB/s to 132 MiB/s
> from lame 36 MiB/s to 45 MiB/s previously.
> Read performance is about 200 MiB/s.
> [tested on SSD using dd bs=2K/4K/8K/12K/16K/24K/32K: peak-perf at 12K].
> 
> Tested on the Banana Pi R1 (aka Lamobo R1) and Banana Pi M1 SBCs
> with Allwinner A20 32bit-SoCs (ARMv7-a / arm-linux-gnueabihf).
> These devices are RaspberryPi-like small devices.
> 
> This problem of slow SATA write-speed with these small devices lasts now
> for more than 5 years. Many commentators throughout the years wrongly
> assumed the slow write speed was a hardware limitation. This patch finally
> solves the problem, which in fact was just a hard-to-fix software problem
> (b/c of lack of documentation by the SoC-maker Allwinner Technology).
> 
> RFC: Since more than about 25 similar SBC/SoC models do use the
> ahci_sunxi driver, users are encouraged to test it on all the
> affected boards and give feedback

The SATA controller on these boards is inside the A10/A20 SoC, the
A10 and A20 use the same controller, so it is the same on all the boards.

IOW I don't see this only being tested on 1 board as a reason for the patch
to be RFC.

> Lists of the affected sunxi and other boards and SoCs with SATA using
> the ahci_sunxi driver:
>    $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
>    and http://linux-sunxi.org/SATA#Devices_with_SATA_ports
>    See also http://linux-sunxi.org/Category:Devices_with_SATA_port
> 
> Patch v2:
>    - Commented the patch in-place in ahci_sunxi.c
>    - With bs=12K and no conv=... passed to dd, the write performance
>      rises further to 132 MiB/s
>    - Changed MB/s to MiB/s
>    - Posted the story behind the patch:
>      http://lkml.iu.edu/hypermail/linux/kernel/1905.1/03506.html
>    - Posted a dd test script to find optimal bs, and some results:
>      https://bit.ly/2YoOzEM
> 
> Patch v1:
>    - States bs=4K for dd and a write performance of 120 MiB/s
> 
> Signed-off-by: Uenal Mutlu <um@mutluit.com>
> ---
>   drivers/ata/ahci_sunxi.c | 47 +++++++++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ata/ahci_sunxi.c b/drivers/ata/ahci_sunxi.c
> index 911710643305..ed19f19808c5 100644
> --- a/drivers/ata/ahci_sunxi.c
> +++ b/drivers/ata/ahci_sunxi.c
> @@ -157,8 +157,51 @@ static void ahci_sunxi_start_engine(struct ata_port *ap)
>   	void __iomem *port_mmio = ahci_port_base(ap);
>   	struct ahci_host_priv *hpriv = ap->host->private_data;
>   
> -	/* Setup DMA before DMA start */
> -	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ff00, 0x00004400);
> +	/* Setup DMA before DMA start
> +	 *
> +	 * NOTE: A similar SoC with SATA/AHCI by Texas Instruments documents
> +	 *   this Vendor Specific Port (P0DMACR, aka PxDMACR) in its
> +	 *   User's Guide document (TMS320C674x/OMAP-L1x Processor
> +	 *   Serial ATA (SATA) Controller, Literature Number: SPRUGJ8C,
> +	 *   March 2011, Chapter 4.33 Port DMA Control Register (P0DMACR),
> +	 *   p.68, https://www.ti.com/lit/ug/sprugj8c/sprugj8c.pdf)
> +	 *   as equivalent to the following struct:
> +	 *
> +	 *   struct AHCI_P0DMACR_t
> +	 *     {
> +	 *       unsigned TXTS     : 4,
> +	 *                RXTS     : 4,
> +	 *                TXABL    : 4,
> +	 *                RXABL    : 4,
> +	 *                Reserved : 16;
> +	 *     };
> +	 *
> +	 *   TXTS: Transmit Transaction Size (TX_TRANSACTION_SIZE).
> +	 *     This field defines the DMA transaction size in DWORDs for
> +	 *     transmit (system bus read, device write) operation. [...]
> +	 *
> +	 *   RXTS: Receive Transaction Size (RX_TRANSACTION_SIZE).
> +	 *     This field defines the Port DMA transaction size in DWORDs
> +	 *     for receive (system bus write, device read) operation. [...]
> +	 *
> +	 *   TXABL: Transmit Burst Limit.
> +	 *     This field allows software to limit the VBUSP master read
> +	 *     burst size. [...]
> +	 *
> +	 *   RXABL: Receive Burst Limit.
> +	 *     Allows software to limit the VBUSP master write burst
> +	 *     size. [...]
> +	 *
> +	 *   Reserved: Reserved.
> +	 *
> +	 *
> +	 * NOTE: According to the above document, the following alternative
> +	 *   to the code below could perhaps be a better option
> +	 *   (or preparation) for possible further improvements later:
> +	 *     sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ffff,
> +	 *		0x00000033);
> +	 */
> +	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ffff, 0x00004433);

Have you tried / benchmarked the 0x00000033 option?

Regards,

Hans


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
