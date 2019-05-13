Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9A61B37B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5u+6U9m5rWCTepEUIZt7ePaDCcLp639SbJnEUEdlIR4=; b=jqV6Pfk8vIIArs
	WrlhAOrzJtpK1bSmyDNWBlyUxEpMjmrCCTI0BcGsko7UAglCRyE6GtGMGT8vLjCTaTD6MTQ004YOj
	3FbGAV7yvlpRmEvyj8YNve253Bkoev29fZxCDL5LAoGU9awFV7AzHxGK1FFeSGN0UCfIwluLNceyu
	N4NakyJKEZhWiyW2uiqUbXjh7MA8aGAE+vDzkDGZs8OuGlB1ItyTs39CkhAzSuco3re4jEj835JQH
	gLktNJP1p87tkRnJuvKTwO73QKjj9TRV/MhCVwJd4XAWoBchcWh5grLxd0E5vNZL2xb4ZH2DiqHDB
	DtFQfrN3FY7cKq+r5ZwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ7kC-0005kE-IZ; Mon, 13 May 2019 09:59:40 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ7k5-0005js-4T
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:59:34 +0000
Received: from localhost (unknown [80.215.106.0])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 5012F200006;
 Mon, 13 May 2019 09:59:16 +0000 (UTC)
Date: Mon, 13 May 2019 11:59:16 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Uenal Mutlu <um@mutluit.com>
Subject: Re: [RFC PATCH v2 RESEND] drivers: ata: ahci_sunxi: Increased
 SATA/AHCI DMA TX/RX FIFOs
Message-ID: <20190513095916.yyjdtueeefkf4v4b@flea>
References: <20190512205954.18435-1-um@mutluit.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512205954.18435-1-um@mutluit.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_025933_327941_35AB2EB5 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
 Hans de Goede <hdegoede@redhat.com>, Oliver Schinagl <oliver@schinagl.nl>,
 Andre Przywara <andre.przywara@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-sunxi@googlegroups.com,
 FUKAUMI Naoki <naobsd@gmail.com>, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Pablo Greco <pgreco@centosproject.org>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org,
 Stefan Monnier <monnier@iro.umontreal.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, May 12, 2019 at 10:59:54PM +0200, Uenal Mutlu wrote:
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
> affected boards and give feedback.
>
> Lists of the affected sunxi and other boards and SoCs with SATA using
> the ahci_sunxi driver:
>   $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
>   and http://linux-sunxi.org/SATA#Devices_with_SATA_ports
>   See also http://linux-sunxi.org/Category:Devices_with_SATA_port
>
> Patch v2:
>   - Commented the patch in-place in ahci_sunxi.c
>   - With bs=12K and no conv=... passed to dd, the write performance
>     rises further to 132 MiB/s
>   - Changed MB/s to MiB/s
>   - Posted the story behind the patch:
>     http://lkml.iu.edu/hypermail/linux/kernel/1905.1/03506.html
>   - Posted a dd test script to find optimal bs, and some results:
>     https://bit.ly/2YoOzEM
>
> Patch v1:
>   - States bs=4K for dd and a write performance of 120 MiB/s
>
> Signed-off-by: Uenal Mutlu <um@mutluit.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Just a minor nitpick though, the part starting with RFC: and with the
version changelog should be after the --- below so that it doesn't get
applied as part of the commit log.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
