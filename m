Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80749F2E25
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JC8vz9GynLWpPdwh8Pea5CerBX/pEnZ2cnvNpIVx7Mw=; b=YvwvFRXfmMf70u
	phpdT93wBPO4GGarLx8Bo9j0Rg87MvgV9Tqcirz6JrDnqQddYd1gMbmKDfdM36Rq1+njANAgeYanf
	t+wre2hk7VRpd+d+p+/rZeW2lg7+JnAQgXIihtmWnJVg4tqtcFseClHepXhHnUeQ3PpqQ9CCEdxTU
	NC7VYZGuPgTa88b1sfACTg7uJNAawY4jEQ6wJr6UvLwSys2sJXo+EufA5IJmlqKsLltKL3kdan2sO
	S7ZfMeMqdTwIDJwe8haD7wFT836O6XviOhAzeFVBS9wT7e/Y0OPV50IUAt7Hp8/28gHlHka52kPaR
	43nyYzotlDQuMaafs0pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgrG-0005Z5-HX; Thu, 07 Nov 2019 12:25:50 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgqq-0005Or-W1; Thu, 07 Nov 2019 12:25:26 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA7CPAai081212;
 Thu, 7 Nov 2019 06:25:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573129510;
 bh=E4MS55kwaW5g/5KMrdjN4z1SWbBuXuTiMq2j/PcjEiY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=UW+6NMZI2DNcg8/Yc8M2AkH9YUhIjG0ug6zMpSF8759STfMnQIXvG15KKYOZAgo98
 va4Aooa7y2zRrtfb1gpbKTaiyzGKmaUyAAewm0RR+d6N0Q1IJ5hL9uzN+uqqMCbNdy
 RhjwN1TNyhG3OWeWQSVS9D3FIK/DfoxqTx5ovUFo=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA7CPAqU108742
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 7 Nov 2019 06:25:10 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 7 Nov
 2019 06:24:55 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 7 Nov 2019 06:24:55 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA7CP57p097478;
 Thu, 7 Nov 2019 06:25:06 -0600
Subject: Re: [PATCH 1/2] mtd: mtk-quadspi: add support for memory-mapped flash
 reading
To: Chuanhong Guo <gch981213@gmail.com>
References: <20191106140748.13100-1-gch981213@gmail.com>
 <20191106140748.13100-2-gch981213@gmail.com>
 <bc917a56-e688-d701-2279-87df460d6055@ti.com>
 <CAJsYDVJgUNxLhcO9iLKwRZHPQ9FT8XuKQq8ru_djD2nryT5o9A@mail.gmail.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <efd471a6-daad-a191-5528-62313dd4e4a4@ti.com>
Date: Thu, 7 Nov 2019 17:55:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJsYDVJgUNxLhcO9iLKwRZHPQ9FT8XuKQq8ru_djD2nryT5o9A@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_042525_139533_797AA71C 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/11/19 3:01 PM, Chuanhong Guo wrote:
> Hi!
> 
> On Thu, Nov 7, 2019 at 2:05 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>>> @@ -272,6 +273,11 @@ static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
>>>       mtk_nor_set_read_mode(mtk_nor);
>>>       mtk_nor_set_addr(mtk_nor, addr);
>>>
>>> +     if (mtk_nor->flash_base) {
>>> +             memcpy_fromio(buffer, mtk_nor->flash_base + from, length);
>>> +             return length;
>>> +     }
>>> +
>>
>> Don't you need to check if access is still within valid memory mapped
>> window?
> 
> The mapped area is 256MB and I don't quite believe there will be such
> a big NOR flash.
> I'll add a check here in the next version.
>


There are 256MB (2GiB) NORs out there in market already. So, pretty
soon, 256MB window won't be big enough :)

>>
>>>       for (i = 0; i < length; i++) {
>>>               ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PIO_READ_CMD);
>>>               if (ret < 0)
>>> @@ -475,6 +481,11 @@ static int mtk_nor_drv_probe(struct platform_device *pdev)
>>>       if (IS_ERR(mtk_nor->base))
>>>               return PTR_ERR(mtk_nor->base);
>>>
>>> +     res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
>>> +     mtk_nor->flash_base = devm_ioremap_resource(&pdev->dev, res);
>>
>> There is a single API now: devm_platform_ioremap_resource().
> 
> Cool. I'll change it.
> Should I add another patch to change the same mapping operation right
> above this piece of code?
> 

That would be nice to do too, please send a separate patch.

-- 
Regards
Vignesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
