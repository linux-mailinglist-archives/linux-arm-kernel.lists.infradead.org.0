Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273731BD000
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 00:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pk2/+c2PJcx+Vg2jjjeKEpdb8b4qntCuKdGXCum6b/A=; b=epw/bJJfpfWTOX
	Mx4+4nTFfIJHPFsEhlLfMEmkJTIAdeJaeqYT0kYrJnPeNJF5G0NZD0QVdnoqmwPXA7iQdV9l7jar3
	U1XRMOkMZQMPsP4bs+WQuSxhfomxKpllXrzstUTcxmkd26DADJMXzTeGCrk1zAOlrPtZ/8p8pWJbT
	CtuSKPaCQ+q22RZ1TsGGb3JRSlDJhT/gPzA8348J07v7uLZks+Mm0QcnevptsXf9BjMcj/kC8stFB
	9p+2Mu418eJ89IZdA7qWXTLryCWDSHtLA16B1Fllod+fvTyyqECD2T9iaM5425iLQlvOJwcDl/tZX
	75NnRUVr6h0HrDgITTZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTYlA-0003jQ-I4; Tue, 28 Apr 2020 22:31:24 +0000
Received: from mail-bn8nam12olkn2069.outbound.protection.outlook.com
 ([40.92.21.69] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTYky-0003hS-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 22:31:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZHFYFYFT+NNhL8Gf2Rob6wPOUyn42FPUQTmDrUCjS+9aloWYRmin1YRA79Z6oF3HDfilQHORLPwy8wxfPYrkVyFjmmQMobscNBad5jrqXxJiFaa6cSnSJi4ZZCGf1YzKdWh46kebRSDo47S/ckBWzVi/h+2vJfWV0Cfg+Gw/HDFTqIi5XOD50PjCEa4F32ImD7Df0pXB6b/WTgl5Y8+5MRTx0xVjMsopEOqUAukChdlNFRTs9mhjwFOj7/bzo7SZHaerhyBebS945xRc83RpUiO5T3/LdHVM5n6ZJL8kS/mqWDA9+9LdBW8CEccv5YileI1tXL1tHDxTXu/9wFfN4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2qWdPJZz4Zzhfrj8E0eIofLLUGSm5kfqPwW48VbiFI=;
 b=nIeRhzQinJlOxIQHOQZ9rDOmQqu/X/9mmCaw0czDZP8F2n12u6tK/MT8FEnTS83NGyQ79KHONZQJ9QQIwcPBnggVHAp0cLm8iSyh5rvlmWQtfIKwKgqgS3I4ZlkS1qW+zanaqQ4posz7KR1OWBunDGDq9WDrmjjzj6lhP20P+EQvcib8SVkDPqmUV0PGey8EJlXdOry4rhFW5SKzQsJwAL2iQDa+0KxB05JZSTtvqpLwCXuvcJmPNtyVgrfk2npdmK77fAfSjyLmJ45ESRV2mOPdJsXHlmDz0QUNy3Eqh8PxGe5pVFNHVMuhSUBywYIRo0oZuIQf0D1d/mLk8k4PmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from BN8NAM12FT011.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::50) by
 BN8NAM12HT017.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::434)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Tue, 28 Apr
 2020 22:31:10 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc66::50) by BN8NAM12FT011.mail.protection.outlook.com
 (2a01:111:e400:fc66::402) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Tue, 28 Apr 2020 22:31:10 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:697F5ED126EDE6A7D81B1E7EACB6E94E0326C1B8340501C12C0B11E558E631A2;
 UpperCasedChecksum:D70EF6C1EC65C27F0AF916B928DF8392BFD6562A9B809E62B15EB7ADC349900B;
 SizeAsReceived:9149; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 22:31:10 +0000
Subject: Re: [PATCH 12/13] arm: dts: s5pv210: Correct FIMC definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660823C87DE000BCDF36C3AA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200428103227.GE23963@kozik-lap>
From: Jonathan Bakker <xc-racer2@live.ca>
Message-ID: <BN6PR04MB06604F79534ACDC1B9858C8AA3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Tue, 28 Apr 2020 15:31:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <20200428103227.GE23963@kozik-lap>
Content-Language: en-US
X-ClientProxiedBy: CO2PR04CA0074.namprd04.prod.outlook.com
 (2603:10b6:102:1::42) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <3bef38dd-6961-bd4b-c072-8cf8dfdea9e3@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb67:7300:9f89:4b96:de0b:cd14]
 (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR04CA0074.namprd04.prod.outlook.com (2603:10b6:102:1::42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Tue, 28 Apr 2020 22:31:09 +0000
X-Microsoft-Original-Message-ID: <3bef38dd-6961-bd4b-c072-8cf8dfdea9e3@live.ca>
X-TMN: [ehx5ThymiI4OMgOw5XMu5bidgHISPDa0HrYyte0VCEo7f3N3PycJnHY4AujSP/M2]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 55b68448-f5a3-4c0f-1f2e-08d7ebc3d9cb
X-MS-TrafficTypeDiagnostic: BN8NAM12HT017:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ByN29Rle9wGajZprsqZKcVcdpf/W4asGXQ0le1v/XjbMcOxgodkHo/XgWbc5GZNAxyqO691PAZtB3/Q0f3O+iuJXKnC30APq+fQ9PTKfJHhQZnEGSifESHX5D9ZT1RiH7NboyBmCxJAj0/qBDBaDQm03JJtZDegb8BmWChPvGn7ecZduK92t7x/bfJDzro8zoaPAtzR9HLzMZPaAcXy2+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: NBhDf4Oof5KD5B3cX3R9Gm99/YnCt1lrUu7FitkkTAko2pY3D5HICJF7v8P7bxrh9tNigLoCj081K2E9SwPpU8I/XwVMpVdukVLfJI0MlsZP/yPEthuaOAEiajyJoab2FdQn6CosS9QXT6FSPOoARiYfPdrFsrNbxnz/HKsqVL1jiS9J+fFOYP6kPvZPWcWxzvvfoDWcs9eimyHX5HUwlA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55b68448-f5a3-4c0f-1f2e-08d7ebc3d9cb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 22:31:10.5150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_153112_429780_B81CB0BE 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.21.69 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.21.69 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 2020-04-28 3:32 a.m., Krzysztof Kozlowski wrote:
> On Sun, Apr 26, 2020 at 11:36:03AM -0700, Jonathan Bakker wrote:
>> The extended mainscaler is only available on FIMC1 and there
>> are minimum pixel alignments that differ from the default.
>> Additionally, the cam-if interface is available on all three
>> while FIMC2 has no rotators.  The lcd-wb interface is supported
>> on FIMC1.
>>
>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>> ---
>>  arch/arm/boot/dts/s5pv210.dtsi | 13 ++++++++-----
>>  1 file changed, 8 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
>> index b3b6ad2889f9..3cbf6c05f42a 100644
>> --- a/arch/arm/boot/dts/s5pv210.dtsi
>> +++ b/arch/arm/boot/dts/s5pv210.dtsi
>> @@ -626,7 +626,7 @@
>>  				clock-names = "fimc",
>>  						"sclk_fimc";
>>  				samsung,pix-limits = <4224 8192 1920 4224>;
>> -				samsung,mainscaler-ext;
>> +				samsung,min-pix-alignment = <16 8>;
>>  				samsung,cam-if;
>>  			};
>>  
>> @@ -639,9 +639,11 @@
>>  						<&clocks SCLK_FIMC1>;
>>  				clock-names = "fimc",
>>  						"sclk_fimc";
>> -				samsung,pix-limits = <4224 8192 1920 4224>;
>>  				samsung,mainscaler-ext;
>> +				samsung,min-pix-alignment = <1 1>;
>> +				samsung,pix-limits = <4224 8192 1920 4224>;
> 
> The line just moved around. I guess this was not intended?

Correct, will fix in v2.

> 
> Best regards,
> Krzysztof
> 

Thanks,
Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
