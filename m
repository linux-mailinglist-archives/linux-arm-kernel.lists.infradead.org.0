Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198F836F22
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhtiqjyJqQM6l8Cz/r7mBWvJzhB6yNiRG5Fm7zB+RwY=; b=VHsWvdlCcldUlW
	eIIDHD0aAyTWNnxMZgq8NjjCHpkmx7R8+lBavpL0/dWqk8XySKqHpMdqLWX8E+4SVks9biS9IRhCZ
	uneRmNMK90xNQ+zEbE37pF0uY4g5++J5VbI6EPE4tzyiJ/HsxD0aLzyK3PqH4n62mJQGe6i9wGMK2
	rwBXVAoU4yPim6H4X7vUmc1VSAMNV9Jiqo4E/TallF2JPWRyKc3e25pSyEWTh0+D3zRCJt2KOKYts
	Injc/i6KvrtmDuPRZZFJ35lOFh+ZUx1zoxpX/RGe3FuWWRlIq7gJlQgR20aVReY8PdfPnzVvXa8vh
	PICSg6O2+coPLuv+J0Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYo8b-0006z5-JW; Thu, 06 Jun 2019 08:52:45 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYo8U-0006y4-LT; Thu, 06 Jun 2019 08:52:40 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 3E8A9661182;
 Thu,  6 Jun 2019 10:52:23 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 10:52:22 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 6 Jun 2019 10:52:22 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 01/15] mtd: nand: Add max_bad_eraseblocks_per_lun info
 to memorg
Thread-Topic: [PATCH v2 01/15] mtd: nand: Add max_bad_eraseblocks_per_lun info
 to memorg
Thread-Index: AQHU0scN55ZCxKZqF0m+9YUbyTEVtKaLkFoAgAMr1oCAAAOKgIAAA36A
Date: Thu, 6 Jun 2019 08:52:22 +0000
Message-ID: <0e04c73d-13cd-4416-569b-ee9e7c19ea4d@kontron.de>
References: <20190304201522.11323-1-miquel.raynal@bootlin.com>
 <20190304201522.11323-2-miquel.raynal@bootlin.com>
 <CAO1O6se5=FDf2YTEEzmFJ4K6HQp_2ayU=WubxGAQJdMA4V4m-Q@mail.gmail.com>
 <5e5d473b-2f08-4230-0920-247c2c463c55@kontron.de>
 <20190606103951.1d774b9a@collabora.com>
In-Reply-To: <20190606103951.1d774b9a@collabora.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <C20A77192C1CA24CA8B9B0C2077A0231@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 3E8A9661182.ACF8D
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: bbrezillon@kernel.org, boris.brezillon@collabora.com,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 emil.lenngren@gmail.com, juliensu@mxic.com.tw,
 linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org,
 marek.vasut@gmail.com, masonccyang@mxic.com.tw,
 miquel.raynal@bootlin.com, richard@nod.at,
 thomas.petazzoni@bootlin.com, tudor.ambarus@microchip.com,
 vigneshr@ti.com, yamada.masahiro@socionext.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_015239_033502_C15C8393 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh R <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Emil Lenngren <emil.lenngren@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06.06.19 10:39, Boris Brezillon wrote:
> On Thu, 6 Jun 2019 08:27:11 +0000
> Schrempf Frieder <frieder.schrempf@kontron.de> wrote:
> 
>> Hi Emil,
>>
>> On 04.06.19 10:01, Emil Lenngren wrote:
>>> Hi Miquel,
>>>    
>>>>    static const struct spinand_info macronix_spinand_table[] = {
>>>>           SPINAND_INFO("MX35LF1GE4AB", 0x12,
>>>> -                    NAND_MEMORG(1, 2048, 64, 64, 1024, 1, 1, 1),
>>>> +                    NAND_MEMORG(1, 2048, 64, 64, 1024, 40, 1, 1, 1),
>>>>                        NAND_ECCREQ(4, 512),
>>>>                        SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
>>>>                                                 &write_cache_variants,
>>>> @@ -103,7 +103,7 @@ static const struct spinand_info macronix_spinand_table[] = {
>>>>                        SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
>>>>                                        mx35lf1ge4ab_ecc_get_status)),
>>>>           SPINAND_INFO("MX35LF2GE4AB", 0x22,
>>>> -                    NAND_MEMORG(1, 2048, 64, 64, 2048, 2, 1, 1),
>>>> +                    NAND_MEMORG(1, 2048, 64, 64, 2048, 20, 2, 1, 1),
>>>>                        NAND_ECCREQ(4, 512),
>>>
>>> Maybe a bit late to the discussion, but shouldn't 20 and 40 be swapped
>>> here, i.e. isn't it the larger flash that has more max bad blocks than
>>> the smaller one?
>>
>> I think Miquel is out of office for some days, so I just checked and you
>> are right, the maximum number of bad blocks should be swapped.
>>
>> Actually there is also a wrong value in the GigaDevice driver: For the
>> GD5F4GQ4xA it should be 80 instead of 40.
> 
> Haven't checked the datasheet, but keep in mind that this is the max
> number of eraseblock per LUN.

The datasheet gives 20 for the 1G type and 40 for the 2G type. Both 
types have only one LUN. Only the 2G type has 2 planes, but that 
shouldn't make a difference, right?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
