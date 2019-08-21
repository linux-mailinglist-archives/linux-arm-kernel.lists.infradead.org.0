Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71506973AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MMJ3pjRkSDyuD5k62w68T9E+Fb9e8r+5ncPQP6FCP3Q=; b=R+pCp7tXixGtozry5YP3ud8cC
	B5w3j32KFyFolXUHeudET1EoMzTP8S6Wp+HzcYW6PFCQKg70brKtRhKU4VDnqtVe0vfjf36KHu6hz
	j6CAod+ncqW6IXcZrK44/kMlPTtOHH5N9O3bFkt7PbciMrtpNUbIPjaR7UsLaNTzY+ojUc9i1a/3+
	CfSoNTTkffMFT4A26buiHfO7dUo53EgTSwRYdOUQOa0JlL+TcOH6+kiYsnXl+yt5JcjbgjIDf13Zo
	kPXGvuSOhAQggbyPW5uICy1xDJtSBRlpsipHREJkTM2kVFnEXvFCZdj9xi/mzAQoIm6VShG8B9Xie
	wsCMCogsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LAV-0007dq-Qs; Wed, 21 Aug 2019 07:36:31 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LAI-0007dO-7A
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:36:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7L7aEgv094718;
 Wed, 21 Aug 2019 02:36:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566372974;
 bh=t9ppVPq7IC2TVAGLlqMcOquzMEQC6ajE6CYvZHvX3Vw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=XuxHz71emVTmDAoK4lUezNKGhzbIt/mHV1V2ilZUZnGhmzoYABWU+5lcZ93OBH1Oe
 nVwlgh4JEiX/fDH3mMkrZOgDNotSlVEz3HzkVxAGGroqA1E2YWSVzT7w8f4LaU5Gfm
 QCPUi0AYYSXXkb5tudY3cyUuI3ZZkD3i4JDiDXwo=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7L7aESb104418
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 02:36:14 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 21
 Aug 2019 02:36:14 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 21 Aug 2019 02:36:14 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7L7aCOA058793;
 Wed, 21 Aug 2019 02:36:12 -0500
Subject: Re: [PATCH 7/8] soc: ti: omap-prm: add dra7 PRM data
To: Suman Anna <s-anna@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-8-git-send-email-t-kristo@ti.com>
 <0e8aa351-4c58-ab6c-890f-094118b812ac@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <67a06e0c-f85d-bdc4-aedf-9a3c0e80fc6a@ti.com>
Date: Wed, 21 Aug 2019 10:36:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0e8aa351-4c58-ab6c-890f-094118b812ac@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_003618_345208_65FFEA16 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

On 20.8.2019 22.03, Suman Anna wrote:
> Hi Tero,
> 
> On 8/7/19 2:48 AM, Tero Kristo wrote:
>> Add PRM data for dra7 family of SoCs.
>>
>> Signed-off-by: Tero Kristo <t-kristo@ti.com>
>> ---
>>   drivers/soc/ti/omap_prm.c | 26 ++++++++++++++++++++++++++
>>   1 file changed, 26 insertions(+)
>>
>> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
>> index fadfc7f..05b7749 100644
>> --- a/drivers/soc/ti/omap_prm.c
>> +++ b/drivers/soc/ti/omap_prm.c
>> @@ -73,6 +73,31 @@ struct omap_prm_data omap4_prm_data[] = {
>>   	{ },
>>   };
>>   
>> +static struct omap_prm_data dra7_prm_data[] = {
>> +	{ .name = "mpu", .base = 0x4ae06300, .pwstst = 0x4 },
>> +	{ .name = "dsp1", .base = 0x4ae06400, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
>> +	{ .name = "ipu", .base = 0x4ae06500, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14, .clkdm_name = "ipu1" },
>> +	{ .name = "coreaon", .base = 0x4ae06628, .pwstst = 0x4 },
> 
> Public TRM marks this region Reserved. Do you need it for anything?
This is copied from existing PRM data from kernel. However, I'll ditch 
these for now and only retain the reset enabled domains.

> 
>> +	{ .name = "core", .base = 0x4ae06700, .pwstst = 0x4, .rstctl = 0x210, .rstst = 0x214, .clkdm_name = "ipu2" },
>> +	{ .name = "iva", .base = 0x4ae06f00, .pwstst = 0x4 },
> 
> Missing rstctrl and rstst offsets.

Will add.

> 
>> +	{ .name = "cam", .base = 0x4ae07000, .pwstst = 0x4 },
>> +	{ .name = "dss", .base = 0x4ae07100, .pwstst = 0x4 },
>> +	{ .name = "gpu", .base = 0x4ae07200, .pwstst = 0x4 },
>> +	{ .name = "l3init", .base = 0x4ae07300, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
>> +	{ .name = "l4per", .base = 0x4ae07400, .pwstst = 0x4 },
>> +	{ .name = "custefuse", .base = 0x4ae07600, .pwstst = 0x4 },
>> +	{ .name = "wkupaon", .base = 0x4ae07724, .pwstst = 0x4 },
> 
> No pwstctrl and pwstst bits documented in TRM or are marked reserved.

Same as coreaon.

> 
>> +	{ .name = "emu", .base = 0x4ae07900, .pwstst = 0x4 },
>> +	{ .name = "dsp2", .base = 0x4ae07b00, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
>> +	{ .name = "eve1", .base = 0x4ae07b40, .pwstst = 0x4 },
>> +	{ .name = "eve2", .base = 0x4ae07b80, .pwstst = 0x4 },
>> +	{ .name = "eve3", .base = 0x4ae07bc0, .pwstst = 0x4 },
>> +	{ .name = "eve4", .base = 0x4ae07c00, .pwstst = 0x4 },
> 
> All EVEs are missing rstctrl and rstst fields.

Will add.

> 
>> +	{ .name = "rtc", .base = 0x4ae07c60, .pwstst = 0x4 },
> 
> Undocumented pwstctrl and pwstst registers.
> 
>> +	{ .name = "vpe", .base = 0x4ae07c80, .pwstst = 0x4 },
> 
> Missing "device" and "instr" PRM. The latter doesn't have any pwrstctl
> and pwrstst though.

Will ditch those.

-Tero

> 
> regards
> Suman
> 
>> +	{ },
>> +};
>> +
>>   struct omap_rst_map am3_wkup_rst_map[] = {
>>   	{ .rst = 3, .st = 5 },
>>   	{ .rst = -1 },
>> @@ -91,6 +116,7 @@ struct omap_prm_data am3_prm_data[] = {
>>   
>>   static const struct of_device_id omap_prm_id_table[] = {
>>   	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
>> +	{ .compatible = "ti,dra7-prm-inst", .data = dra7_prm_data },
>>   	{ .compatible = "ti,am3-prm-inst", .data = am3_prm_data },
>>   	{ },
>>   };
>>
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
