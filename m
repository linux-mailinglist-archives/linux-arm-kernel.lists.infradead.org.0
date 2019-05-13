Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC46A1B4CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Bo0ygHYgHhJ1vrB+BDhtx8D/R02l5UJXbX4Ru2U3q8=; b=MuTc5jWOmBur5gcCEHIZCRE/0
	odeda/bL0RYkGBVzswNltedG9xLik3Xp+AwRtdFWqpCeJqJLdHVBdduf3iKTI3nHTc0fyyfkqx+Hq
	rxwboBjyPuOuBnzFxxFYDYhmJbArBA7ywW2uLjmA662LLVRca+37aZ9hZyDuZSJf78l18GvVV3IyV
	2H6v6MmyyS0sXaXYreFoDjenoQSn+4FivYqJzQgiAfv/msTXFZKWOBblnecBKtjyfwQ3GEYjJ9gkZ
	lsXc1Gz/VIcaVYhCQCns57qc65OzCvB4MKXjl6FFmSwe9KdjCE67xaitJaCAH7SKKbXtfFpLiswym
	PGJ3RvFwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ90y-0005ec-IR; Mon, 13 May 2019 11:21:04 +0000
Received: from mutluit.com ([82.211.8.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ90p-0005dc-T4
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:20:58 +0000
Received: from [127.0.0.1] (s2.mutluit.com [82.211.8.197]:51448)
 by mutluit.com (s2.mutluit.com [82.211.8.197]:50025) with ESMTP ([XMail 1.27
 ESMTP Server])
 id <S16FAD52> for <linux-arm-kernel@lists.infradead.org> from <um@mutluit.com>;
 Mon, 13 May 2019 07:20:52 -0400
Subject: Re: [RFC PATCH v2 RESEND] drivers: ata: ahci_sunxi: Increased
 SATA/AHCI DMA TX/RX FIFOs
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190512205954.18435-1-um@mutluit.com>
 <20190513095916.yyjdtueeefkf4v4b@flea>
From: "U.Mutlu" <um@mutluit.com>
Organization: mutluit.com
Message-ID: <5CD95314.4060307@mutluit.com>
Date: Mon, 13 May 2019 13:20:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:40.0) Gecko/20100101
 Firefox/40.0 SeaMonkey/2.37a1
MIME-Version: 1.0
In-Reply-To: <20190513095916.yyjdtueeefkf4v4b@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_042056_256191_6123E952 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_SPACE_BRACKET No description available.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maxime Ripard wrote on 05/13/2019 11:59 AM:
> On Sun, May 12, 2019 at 10:59:54PM +0200, Uenal Mutlu wrote:
>> Increasing the SATA/AHCI DMA TX/RX FIFOs (P0DMACR.TXTS and .RXTS, ie.
>> TX_TRANSACTION_SIZE and RX_TRANSACTION_SIZE) from default 0x0 each
>> to 0x3 each, gives a write performance boost of 120 MiB/s to 132 MiB/s
>> from lame 36 MiB/s to 45 MiB/s previously.
>> Read performance is about 200 MiB/s.
>> [tested on SSD using dd bs=2K/4K/8K/12K/16K/24K/32K: peak-perf at 12K].
>>
>> Tested on the Banana Pi R1 (aka Lamobo R1) and Banana Pi M1 SBCs
>> with Allwinner A20 32bit-SoCs (ARMv7-a / arm-linux-gnueabihf).
>> These devices are RaspberryPi-like small devices.
>>
>> This problem of slow SATA write-speed with these small devices lasts now
>> for more than 5 years. Many commentators throughout the years wrongly
>> assumed the slow write speed was a hardware limitation. This patch finally
>> solves the problem, which in fact was just a hard-to-fix software problem
>> (b/c of lack of documentation by the SoC-maker Allwinner Technology).
>>
>> RFC: Since more than about 25 similar SBC/SoC models do use the
>> ahci_sunxi driver, users are encouraged to test it on all the
>> affected boards and give feedback.
>>
>> Lists of the affected sunxi and other boards and SoCs with SATA using
>> the ahci_sunxi driver:
>>    $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
>>    and http://linux-sunxi.org/SATA#Devices_with_SATA_ports
>>    See also http://linux-sunxi.org/Category:Devices_with_SATA_port
>>
>> Patch v2:
>>    - Commented the patch in-place in ahci_sunxi.c
>>    - With bs=12K and no conv=... passed to dd, the write performance
>>      rises further to 132 MiB/s
>>    - Changed MB/s to MiB/s
>>    - Posted the story behind the patch:
>>      http://lkml.iu.edu/hypermail/linux/kernel/1905.1/03506.html
>>    - Posted a dd test script to find optimal bs, and some results:
>>      https://bit.ly/2YoOzEM
>>
>> Patch v1:
>>    - States bs=4K for dd and a write performance of 120 MiB/s
>>
>> Signed-off-by: Uenal Mutlu <um@mutluit.com>
>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Thx!

> Just a minor nitpick though, the part starting with RFC: and with the
> version changelog should be after the --- below so that it doesn't get
> applied as part of the commit log.

Ok, I'll do it better in the future.
Thx again.


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
