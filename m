Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C119734C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wPcgzb0jf/qSRIEzmyghK5t6S7TSX2jj6QXR/jFP3cM=; b=VvGmH4/PYgPzgENUiiNAVNXFr
	u14ay82+ufz9deDh09pOr1HdKeYHMwMbIaX9A1Um/37m5lZKokANYMzMQwSXZ5UbdWYK46inkPVYr
	0brnlnkgnB/PQkyLyw3nPHIhf8wo2d61FifLhfR2b0TjiN+xS6vhb+F8QDAo5dRUI4m9KS9KQeg/G
	jUgPL2zsfoIpp0EmzZyY7UiYgSv6A8sIPOynqQuZOW7MuDNZs69GXv5KUlBzf6z7LPZWaNPitSJWF
	UAAjMrB/MsZn12yYldm6iw5/v1uW5S2AE54qVRtyDkPRunig+TO4+CYiXQrCe8eb75sX1O7n2yKYq
	Z3i1SckBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KyA-0001pd-6W; Wed, 21 Aug 2019 07:23:47 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Kxs-0001pK-Cd
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:23:29 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7L7NOKT122982;
 Wed, 21 Aug 2019 02:23:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566372204;
 bh=SKsySALqt7dFFLLCfs4QprovWFGd9U8/zFrrwY2gRb0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=aeGDZ4lgfxdb6PXw+f6xoEzxeo+36c9D3QqfM6uCgPwSYBFpXOlAJOPvllsqFa3CP
 PdR6/0pDluEKzTgj/1rw7Rr5KJEY07od4VPorXU8LI1ReGM5EJfKVXP708qWU6ttj7
 ClUIkeV9eYrmlp6UFqV78hgsxKYlXbGh8dlErMxQ=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7L7NOUQ047387
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 02:23:24 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 21
 Aug 2019 02:23:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 21 Aug 2019 02:23:24 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7L7NMai082935;
 Wed, 21 Aug 2019 02:23:22 -0500
Subject: Re: [PATCH 6/8] soc: ti: omap_prm: add data for am33xx
To: Suman Anna <s-anna@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-7-git-send-email-t-kristo@ti.com>
 <ebb6e240-1252-5a4f-39a2-403ee699d8aa@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <8f5f86db-270a-7278-9d9c-e84c0fa9b73c@ti.com>
Date: Wed, 21 Aug 2019 10:23:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ebb6e240-1252-5a4f-39a2-403ee699d8aa@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_002328_515393_7791DF3B 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.8.2019 21.48, Suman Anna wrote:
> Hi Tero,
> 
> On 8/7/19 2:48 AM, Tero Kristo wrote:
>> Add PRM instance data for AM33xx SoC. Includes some basic register
>> definitions and reset data for now.
>>
>> Signed-off-by: Tero Kristo <t-kristo@ti.com>
>> ---
>>   drivers/soc/ti/omap_prm.c | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
>> index 9b8d5945..fadfc7f 100644
>> --- a/drivers/soc/ti/omap_prm.c
>> +++ b/drivers/soc/ti/omap_prm.c
>> @@ -73,8 +73,25 @@ struct omap_prm_data omap4_prm_data[] = {
>>   	{ },
>>   };
>>   
>> +struct omap_rst_map am3_wkup_rst_map[] = {
>> +	{ .rst = 3, .st = 5 },
>> +	{ .rst = -1 },
>> +};
>> +
>> +struct omap_prm_data am3_prm_data[] = {
>> +	{ .name = "per", .base = 0x44e00c00, .pwstctrl = 0xc, .pwstst = 0x8, .flags = OMAP_PRM_NO_RSTST },
>> +	{ .name = "wkup", .base = 0x44e00d00, .pwstctrl = 0x4, .pwstst = 0x8, .rstst = 0xc, .rstmap = am3_wkup_rst_map },
>> +	{ .name = "mpu", .base = 0x44e00e00, .pwstst = 0x4 },
> 
> Has a rstst but no rstctrl, but your registration logic takes care of
> this. Somewhat confusing, when you just look at the data. Should you
> limit the check to only rstctrl and OMAP_PRM_NO_RSTST?

I think its probably better I invert the flags and explicitly state 
OMAP_PRM_HAS_RSTST | OMAP_PRM_HAS_RSTCTRL, in case any zero value is 
used for these.

> 
>> +	{ .name = "device", .base = 0x44e00f00, .rstctl = 0x0, .rstst = 0x8 },
> 
> No pwrstctrl and pwrstst registers, so same comment as on OMAP4 data.

I should probably add some flag for this in future once the support for 
power domains is added.

Anyway, I'll ditch all pwstctrl / pwstst data for now as it seems to 
bother you too much.

-Tero

> 
>> +	{ .name = "rtc", .base = 0x44e01000, .pwstst = 0x4 },
>> +	{ .name = "gfx", .base = 0x44e01100, .pwstst = 0x10, .rstctl = 0x4, .rstst = 0x14 },
>> +	{ .name = "cefuse", .base = 0x44e01200, .pwstst = 0x4 },
> 
> I am not sure if it is better to explicitly list the registers at 0
> offset rather than using the implied value of 0, since there are some
> registers that do not exist on some PRM instances which are also not
> defined.
> 
> regards
> Suman
> 
>> +	{ },
>> +};
>> +
>>   static const struct of_device_id omap_prm_id_table[] = {
>>   	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
>> +	{ .compatible = "ti,am3-prm-inst", .data = am3_prm_data },
>>   	{ },
>>   };
>>   
>>
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
