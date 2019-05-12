Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE76C1ACF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 18:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QxDHRVo24f79oJQFqhZz9ItPZfwYhTPOMzdmb9uGhJE=; b=txCLcFS5sNQii8/WTCTuN1pTg
	fYMcRvKKlSe6YXpOtEPyMzd/z2AA1ZP8p3NFJZjerBX5at0ldkV9+pRYYcQckL+1hZak9Hqs7zGDW
	BHmC22WHs8iSGz7xq4s+spVMo1PZ7jNeRMef271wEoLbb+2mLIA1OEq+c8jD255d5qaGWHpS+BMBR
	1wdQ6IXqqwWKB6ULkwFTm4jUHcqHFcrxJOJDaR7qVegT2D7LuJ+W/EWgGQh4wuIUW0ClwgxuqdJxW
	9wvIDaIP9VjfWFY6R6e/OjUvthXFjgN+hVw3JEe2DHXigUBvzmZrXINgthcbai24VSiyIPZHwD7P2
	nmwdPvhFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPr1g-0005Ls-0u; Sun, 12 May 2019 16:08:36 +0000
Received: from mutluit.com ([82.211.8.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPr1X-0005LV-Ve
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 16:08:30 +0000
Received: from [127.0.0.1] (s2.mutluit.com [82.211.8.197]:40052)
 by mutluit.com (s2.mutluit.com [82.211.8.197]:50025) with ESMTP ([XMail 1.27
 ESMTP Server])
 id <S16FACF4> for <linux-arm-kernel@lists.infradead.org> from <um@mutluit.com>;
 Sun, 12 May 2019 12:08:19 -0400
Subject: Re: [RFC PATCH] drivers: ata: ahci_sunxi: Increased SATA/AHCI DMA
 TX/RX FIFOs
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190510192550.17458-1-um@mutluit.com>
 <20190512121245.l3cvg4std6yanwix@flea>
From: "U.Mutlu" <um@mutluit.com>
Organization: mutluit.com
Message-ID: <5CD844F3.5080103@mutluit.com>
Date: Sun, 12 May 2019 18:08:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:40.0) Gecko/20100101
 Firefox/40.0 SeaMonkey/2.37a1
MIME-Version: 1.0
In-Reply-To: <20190512121245.l3cvg4std6yanwix@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_090828_334352_13953FD1 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_SPACE_BRACKET No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime & Others,

what follows is a somewhat lengthy technical story behind this patch;
you can just skip it and jump to the end.


As can be seen in the ahci_sunxi.c, the port used in this patch
is this one (32bit):
   #define AHCI_P0DMACR    0x0170
It's a so called "Vendor Specific Port" according to the SATA/AHCI specs by Intel.
The data behind it is actually a struct, consisting of 4 fields,
each 4bits long, plus a 16bits long field that is marked as Reserved
in secondary literature (see below):

struct AHCI_P0DMACR_t
{
   unsigned TXTS  : 4,
            RXTS  : 4,
            TXABL : 4,
            RXABL : 4,
            Res1  : 16;
};

This struct is just my creation for my own tests as it's not part of the
driver source. The patch touches only the first 2 fields: TXTS and RXTS.

See this similar product documentation by Texas Instruments for the above struct:
https://www.ti.com/lit/ug/sprugj8c/sprugj8c.pdf
TMS320C674x/OMAP-L1x Processor, Serial ATA (SATA) Controller, User's Guide,
Literature Number: SPRUGJ8C, March 2011,
Page 68, Chapter 4.33 "Port DMA Control Register (P0DMACR)"

The above TI document describes the two fields as follows:

TXTS:
   Transmit Transaction Size (TX_TRANSACTION_SIZE). This field defines the DMA 
transaction size in
   DWORDs for transmit (system bus read, device write) operation. [...]

RXTS:
   Receive Transaction Size (RX_TRANSACTION_SIZE). This field defines the Port 
DMA transaction size
   in DWORDs for receive (system bus write, device read) operation. [...]


So, in my patch the fields TXTS and RXTS are set to 3 each.
Without the patch, these fields seem to have some random content
(I'vee seen 5 and 6, 4 and 4, and 0 and 0 on different devices),
as the previous code doesn't touch these 2 fields (ie. these two fields
are not within the used old mask of 0xff00; cf. ahci_sunxi.c, function 
ahci_sunxi_start_engine(...)).


Some background story in my hunt for obtaining product documentation:

I couldn't find any product documentation for the SATA/AHCI
in these SoCs by Allwinner Technology (allwinnertech.com),
unlike with such products from other such companies.

I asked Allwinner, but they just said that the A20 of my SBC
would (allegedly) no more be actual and that the support for it
has ended (but this statement somehow cannot be true as the
A20 SoC is still continued being marketed at their website).
They instead sent me a bunch of really irrelevant PDFs which have
nothing to do with SATA/AHCI.

So, the company Allwinner Technology unfortunately was not cooperative
to provide me information on their SATA/AHCI-implementation in their SoCs :-(
Even the ports used in the actual ahci_sunxi.c in the linux tree are undocumented;
it is even commented with "/* This magic is from the original code */"
and below it many ports are used for which no documentation is available,
or at least I couldn't find any on the Internet. And the initial programmer
in 2014 and prior was Daniel Wang (danielwang@allwinnertech.com),
but email to that address bounces.

So, I was forced to research secondary literature from other vendors
like Texas Instruments (thanks TI !) and Intel, and also studying
very old source codes in the old Linux repositories (as it differs
much from the current version) going back to the year 2014, and had
to do many (blind) experiments until I found this solution.

The above given User's Guide by Texas Instruments (and their such
documents for their newer such products) helped me much to find the solution.
It's of course not really the correct documentation for the Allwinner SoCs,
but still better than nothing.

If I only had the right documentation, then I for sure could try
to further improve that already achieved result by this patch,
as with SATA-II upto 300 MiB/s is possible.


Yes, I'll resend the patch with some appropriate comments.

Uenal Mutlu



Maxime Ripard wrote on 05/12/2019 02:12 PM:
> Hi,
>
> On Fri, May 10, 2019 at 09:25:50PM +0200, Uenal Mutlu wrote:
>> Increasing the SATA/AHCI DMA TX/RX FIFOs (P0DMACR.TXTS and .RXTS) from
>> default 0x0 each to 0x3 each gives a write performance boost of 120MB/s
>> from lame 36MB/s to 45MB/s previously. Read performance is about 200MB/s
>> [tested on SSD using dd bs=4K count=512K].
>>
>> Tested on the Banana Pi R1 (aka Lamobo R1) and Banana Pi M1 SBCs
>> with Allwinner A20 32bit-SoCs (ARMv7-a / arm-linux-gnueabihf).
>> These devices are RaspberryPi-like small devices.
>>
>> RFC: Since more than about 25 similar SBC/SoC models do use the
>> ahci_sunxi driver, users are encouraged to test it on all the
>> affected boards and give feedback.
>>
>> List of the affected sunxi and other boards and SoCs with SATA using
>> the ahci_sunxi driver:
>>    $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
>>    and http://linux-sunxi.org/Category:Devices_with_SATA_port
>>
>> Signed-off-by: Uenal Mutlu <um@mutluit.com>
>> ---
>>   drivers/ata/ahci_sunxi.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/ata/ahci_sunxi.c b/drivers/ata/ahci_sunxi.c
>> index 911710643305..257986431c79 100644
>> --- a/drivers/ata/ahci_sunxi.c
>> +++ b/drivers/ata/ahci_sunxi.c
>> @@ -158,7 +158,7 @@ static void ahci_sunxi_start_engine(struct ata_port *ap)
>>   	struct ahci_host_priv *hpriv = ap->host->private_data;
>>
>>   	/* Setup DMA before DMA start */
>> -	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ff00, 0x00004400);
>> +	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ffff, 0x00004433);
>
> Having comments / defines here would be great, once fixed:
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
