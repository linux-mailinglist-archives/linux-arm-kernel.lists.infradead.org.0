Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D8B1BB377
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 03:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXnazHmC+WCyJ6PNxArszni8IvSLGJL2r2FSSHZH1vc=; b=WaoYAkqaPSyXK6
	ujJKkfG96S1heAxcc3lueYvbbtGOEhpi8IkaDkbcbtzZrZBZYHS5bm+wu7+pVugjFUKjzCCuvjPh3
	+teybIXgPkkX6SKEqTT3mdt+6NmN1iYbi/8F/9/Wx7E8GtDH+Id7sHsbOkv3CVFfkgX+xEJZmSplI
	LOpXTlaJ5Pzde5EBRgFeQUi+TJsvH6PFTHMM92DJR+obkI12Dr1dfKyXDrD6KyldBoevB2PzUBWhW
	fvfVUftdhi7gWixz+cSWdvHotQqIpS6oy3LabhuQ9dPKRu6fh+VvWY3fDsaN8FDyAulHP0wuiEGk+
	rge1tDRiGrIrCIEX4d5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTF8i-0008Ad-Sw; Tue, 28 Apr 2020 01:34:24 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTF8a-00089h-Gm; Tue, 28 Apr 2020 01:34:18 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D0A9999B00C42AE7E8BD;
 Tue, 28 Apr 2020 09:34:09 +0800 (CST)
Received: from [10.65.58.147] (10.65.58.147) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0;
 Tue, 28 Apr 2020 09:34:07 +0800
Subject: Re: [PATCH v4 05/16] mtd: spi-nor: default to address width of 3 for
 configurable widths
To: Pratyush Yadav <me@yadavpratyush.com>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <20200424184410.8578-6-p.yadav@ti.com>
 <6b6384ad-d37a-eea6-af29-322e83924912@hisilicon.com>
 <20200427172336.ihezwq3wn75m7k3l@yadavpratyush.com>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <f6a593ab-8685-18e0-04c8-25edd1cab11a@hisilicon.com>
Date: Tue, 28 Apr 2020 09:34:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200427172336.ihezwq3wn75m7k3l@yadavpratyush.com>
X-Originating-IP: [10.65.58.147]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_183416_722693_0F7ADA5B 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-spi@vger.kernel.org,
 Pratyush Yadav <p.yadav@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pratyush,


On 2020/4/28 1:23, Pratyush Yadav wrote:
> Hi Yicong,
>
> On 26/04/20 11:53AM, Yicong Yang wrote:
>> On 2020/4/25 2:43, Pratyush Yadav wrote:
>>> JESD216D.01 says that when the address width can be 3 or 4, it defaults
>>> to 3 and enters 4-byte mode when given the appropriate command. So, when
>>> we see a configurable width, default to 3 and let flash that default to
>>> 4 change it in a post-bfpt fixup.
>>>
>>> This fixes SMPT parsing for flashes with configurable address width. If
>>> the SMPT descriptor advertises variable address width, we use
>>> nor->addr_width as the address width. But since it was not set to any
>>> value from the SFDP table, the read command uses an address width of 0,
>>> resulting in an incorrect read being issued.
>>>
>>> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
>>> ---
>>>  drivers/mtd/spi-nor/sfdp.c | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
>>> index f917631c8110..5cecc4ba2141 100644
>>> --- a/drivers/mtd/spi-nor/sfdp.c
>>> +++ b/drivers/mtd/spi-nor/sfdp.c
>>> @@ -460,6 +460,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>>>  	/* Number of address bytes. */
>>>  	switch (bfpt.dwords[BFPT_DWORD(1)] & BFPT_DWORD1_ADDRESS_BYTES_MASK) {
>>>  	case BFPT_DWORD1_ADDRESS_BYTES_3_ONLY:
>>> +	case BFPT_DWORD1_ADDRESS_BYTES_3_OR_4:
>>>  		nor->addr_width = 3;
>>>  		break;
>> Should we also assign address width to 3 in default condition. At least we should not
>> leave it uninitialized here.
> The default condition would be taken when this field is 3. The value 3 
> is reserved, and so no current device should use this value. That said, 
> I don't see any downsides of doing so. If the value 3 means something 
> else in later revisions of the standard, this code would need to change 
> anyway. If not, we would use a relatively sane default for devices with 
> a faulty BFPT.

The purpose is to set one possible value which may be used later in parsing smpt.
In current driver, if we do nothing with the post-bfpt fixup, then the width will
be unset. Otherwise, maybe the width can also be set in spi_nor_smpt_addr_width()

    default:
   +    if (!nor->addr_width)
   +        nor->addr_width = 3;
        return nor->addr_width;

But set when parsing bfpt seems more reasonable.

> I haven't received any comments on my series so far. If end up having to
> re-roll it, I will add this change. Otherwise, I'm not sure if it is a 
> good idea to re-roll a 16-patch series for a one liner that isn't fixing 
> some major bug. In that case, maybe you can send an independent patch 
> that does this after mine is merged?

Fine. :)

Regards,
Yicong




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
