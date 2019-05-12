Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0840E1AD88
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jig4POAIGDVFfP1Q+qjtiMjL5Yat+ku+mgT3HKFO7Rc=; b=sofjlaPqmVc38C
	CXuNzpp5iAMn5mFclf1rbcWO+DGDYNNzBYsGn4HpMFwLKpB3b2gbpZ3+XGiC7qPm1ENFBTexireFj
	Y+I/g82c5hrPYUBoCokqbjRMmnkJ+cj5zPT1hRK6nhWZHleH0Mw8M7z4Ooz3jLTYQyDf2M6lWqG45
	L5CYD84LpofK2ACNX074vQVO1QlyntdVsrqzFx6/YCTmTsMn+4RRYISLrLHIJD9LllKEVSSUFM/Ys
	SWaMQH/1Ir8fu8wS6VnRa7r8yCrzyvRF5b/oPjLxxadL7ReKXXR0kFG4dRgmaNtrcAfEPQewVOcVr
	tdVJ7GBL7ST1yT18u+Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsTA-0004LD-19; Sun, 12 May 2019 17:41:04 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsT1-0004Ku-JC
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:40:57 +0000
X-Originating-IP: 46.193.9.130
Received: from localhost (cust-west-pareq2-46-193-9-130.wb.wifirst.net
 [46.193.9.130]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9D7A3C0006;
 Sun, 12 May 2019 17:40:34 +0000 (UTC)
Date: Sun, 12 May 2019 19:40:33 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: "U.Mutlu" <um@mutluit.com>
Subject: Re: [RFC PATCH] drivers: ata: ahci_sunxi: Increased SATA/AHCI DMA
 TX/RX FIFOs
Message-ID: <20190512174033.znvtaa5yvhpcmnna@flea>
References: <20190510192550.17458-1-um@mutluit.com>
 <20190512121245.l3cvg4std6yanwix@flea>
 <5CD844F3.5080103@mutluit.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5CD844F3.5080103@mutluit.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104055_935129_B5EABBF8 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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

On Sun, May 12, 2019 at 06:08:19PM +0200, U.Mutlu wrote:
> Hi Maxime & Others,
>
> what follows is a somewhat lengthy technical story behind this patch;
> you can just skip it and jump to the end.
>
>
> As can be seen in the ahci_sunxi.c, the port used in this patch
> is this one (32bit):
>   #define AHCI_P0DMACR    0x0170
> It's a so called "Vendor Specific Port" according to the SATA/AHCI specs by Intel.
> The data behind it is actually a struct, consisting of 4 fields,
> each 4bits long, plus a 16bits long field that is marked as Reserved
> in secondary literature (see below):
>
> struct AHCI_P0DMACR_t
> {
>   unsigned TXTS  : 4,
>            RXTS  : 4,
>            TXABL : 4,
>            RXABL : 4,
>            Res1  : 16;
> };
>
> This struct is just my creation for my own tests as it's not part of the
> driver source. The patch touches only the first 2 fields: TXTS and RXTS.
>
> See this similar product documentation by Texas Instruments for the above struct:
> https://www.ti.com/lit/ug/sprugj8c/sprugj8c.pdf
> TMS320C674x/OMAP-L1x Processor, Serial ATA (SATA) Controller, User's Guide,
> Literature Number: SPRUGJ8C, March 2011,
> Page 68, Chapter 4.33 "Port DMA Control Register (P0DMACR)"
>
> The above TI document describes the two fields as follows:
>
> TXTS:
>   Transmit Transaction Size (TX_TRANSACTION_SIZE). This field defines the
> DMA transaction size in
>   DWORDs for transmit (system bus read, device write) operation. [...]
>
> RXTS:
>   Receive Transaction Size (RX_TRANSACTION_SIZE). This field defines the
> Port DMA transaction size
>   in DWORDs for receive (system bus write, device read) operation. [...]
>
>
> So, in my patch the fields TXTS and RXTS are set to 3 each.
> Without the patch, these fields seem to have some random content
> (I'vee seen 5 and 6, 4 and 4, and 0 and 0 on different devices),
> as the previous code doesn't touch these 2 fields (ie. these two fields
> are not within the used old mask of 0xff00; cf. ahci_sunxi.c, function
> ahci_sunxi_start_engine(...)).
>
>
> Some background story in my hunt for obtaining product documentation:
>
> I couldn't find any product documentation for the SATA/AHCI
> in these SoCs by Allwinner Technology (allwinnertech.com),
> unlike with such products from other such companies.
>
> I asked Allwinner, but they just said that the A20 of my SBC
> would (allegedly) no more be actual and that the support for it
> has ended (but this statement somehow cannot be true as the
> A20 SoC is still continued being marketed at their website).
> They instead sent me a bunch of really irrelevant PDFs which have
> nothing to do with SATA/AHCI.
>
> So, the company Allwinner Technology unfortunately was not cooperative
> to provide me information on their SATA/AHCI-implementation in their SoCs :-(
> Even the ports used in the actual ahci_sunxi.c in the linux tree are undocumented;
> it is even commented with "/* This magic is from the original code */"
> and below it many ports are used for which no documentation is available,
> or at least I couldn't find any on the Internet. And the initial programmer
> in 2014 and prior was Daniel Wang (danielwang@allwinnertech.com),
> but email to that address bounces.
>
> So, I was forced to research secondary literature from other vendors
> like Texas Instruments (thanks TI !) and Intel, and also studying
> very old source codes in the old Linux repositories (as it differs
> much from the current version) going back to the year 2014, and had
> to do many (blind) experiments until I found this solution.
>
> The above given User's Guide by Texas Instruments (and their such
> documents for their newer such products) helped me much to find the solution.
> It's of course not really the correct documentation for the Allwinner SoCs,
> but still better than nothing.
>
> If I only had the right documentation, then I for sure could try
> to further improve that already achieved result by this patch,
> as with SATA-II upto 300 MiB/s is possible.
>
>
> Yes, I'll resend the patch with some appropriate comments.

That's awesome research and explanation, thanks! :)

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
