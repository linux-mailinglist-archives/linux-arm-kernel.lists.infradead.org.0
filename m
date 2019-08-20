Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8689A958EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XPyidwTWh7Y721U+73mgTKMMY18oixFd8h6b6UfxhZY=; b=VpwK/PkpSGWfmVYx6o8MGUcqm
	DhOsCX6QB/anGf1pgvH5OX1xR8NoW8kBg0cBPCqERyxIfPNi55AGJ5uWEQxYvQliKkCob0NInJUAb
	VQdoyiUPPfRnzwdplXAWoCMLEIwhlPIHxP6YMrpI/1PIIAgPrXgflw+qj7ngTXuFU+6yjgwX5KmV3
	jxrmiPCLVjHNxkNiup7bav2CI5F1Fb9NptHYI8H3rGDr7z0bhnFROBGHe8XoKVDoPpJcFB3ndGnJv
	b3YFOu2jJdUcTVnD3sShCRmQaixP/9f2avhm9M9qVvVkjUEsSqFvkESAjC6+RfKjkYtE1x8wgyJTY
	WAOFYFXEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzywU-0006md-1d; Tue, 20 Aug 2019 07:52:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzywA-0006kq-3G
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:52:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7K7qBjs043361;
 Tue, 20 Aug 2019 02:52:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566287531;
 bh=WXGxUMBDU10+U+ADoP0fwyhNNCDxlJBV15DhHl0clik=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=wrzPXbmjnAzACmSvqCbg1gDJNt9KGbo7r3cIb3CPIA3oGQAnidVaKyoCvbicmRfoj
 VoAF/b/NCK01AjM1EG72qj1YLWwUGM8rGtzet0q5bq2o37brjZL0H/EsB1LwZZR2VN
 ENXdpQxOug9D1sFE5EnW5gdyrWSnRzJfmQYYZmRI=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7K7qBxe126056
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 20 Aug 2019 02:52:11 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 02:52:10 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 02:52:10 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7K7q8fa112011;
 Tue, 20 Aug 2019 02:52:09 -0500
Subject: Re: [PATCH 5/8] soc: ti: omap-prm: add omap4 PRM data
To: Suman Anna <s-anna@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-6-git-send-email-t-kristo@ti.com>
 <04bc6773-dbd4-e1ab-ce31-d93e99dafb33@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <9d684bdc-28b8-0772-2957-93e01c55aae4@ti.com>
Date: Tue, 20 Aug 2019 10:52:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <04bc6773-dbd4-e1ab-ce31-d93e99dafb33@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_005214_248672_657FE619 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 20.8.2019 2.08, Suman Anna wrote:
> On 8/7/19 2:48 AM, Tero Kristo wrote:
>> Add PRM data for omap4 family of SoCs.
>>
>> Signed-off-by: Tero Kristo <t-kristo@ti.com>
>> ---
>>   drivers/soc/ti/omap_prm.c | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
>> index 870515e3..9b8d5945 100644
>> --- a/drivers/soc/ti/omap_prm.c
>> +++ b/drivers/soc/ti/omap_prm.c
>> @@ -54,7 +54,27 @@ struct omap_reset_data {
>>   
>>   #define OMAP_PRM_NO_RSTST	BIT(0)
>>   
>> +struct omap_prm_data omap4_prm_data[] = {
> 
> static const

Will fix this and rest of the similar comments.

-Tero

> 
> regards
> Suman
> 
>> +	{ .name = "mpu", .base = 0x4a306300, .pwstst = 0x4 },
>> +	{ .name = "tesla", .base = 0x4a306400, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
>> +	{ .name = "abe", .base = 0x4a306500, .pwstst = 0x4 },
>> +	{ .name = "always_on_core", .base = 0x4a306600, .pwstst = 0x4 },
>> +	{ .name = "core", .base = 0x4a306700, .pwstst = 0x4, .rstctl = 0x210, .rstst = 0x214 },
>> +	{ .name = "ivahd", .base = 0x4a306f00, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
>> +	{ .name = "cam", .base = 0x4a307000, .pwstst = 0x4 },
>> +	{ .name = "dss", .base = 0x4a307100, .pwstst = 0x4 },
>> +	{ .name = "gfx", .base = 0x4a307200, .pwstst = 0x4 },
>> +	{ .name = "l3init", .base = 0x4a307300, .pwstst = 0x4 },
>> +	{ .name = "l4per", .base = 0x4a307400, .pwstst = 0x4 },
>> +	{ .name = "cefuse", .base = 0x4a307600, .pwstst = 0x4 },
>> +	{ .name = "wkup", .base = 0x4a307700, .pwstst = 0x4 },
>> +	{ .name = "emu", .base = 0x4a307900, .pwstst = 0x4 },
>> +	{ .name = "device", .base = 0x4a307b00, .rstctl = 0x0, .rstst = 0x4 },
>> +	{ },
>> +};
>> +
>>   static const struct of_device_id omap_prm_id_table[] = {
>> +	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
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
