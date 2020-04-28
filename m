Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2123E1BCFE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 00:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkugbzXgxiK66WaRdsgYAHcENavTpxo4Jw8CrlbiXA4=; b=BZx1rjGk9RJX8D
	dDXuvJ9YaSemPL8l3YXlpmQP0Ys4dwOQtfdRCVl9wQQDgR7dyI0/YrjRChl5FbNMAA+V83DCID0v8
	nHcqHuTGGUIlwyV9MC5YKEMv5bBRuw/rYB9oQb2HxmuOzro4TgfpXzDQwsOCpXZyu2p2dtyC5QS60
	a6fTNlLzWkxfHaKpJ8T97isnoEN4eNiPv5KCdSr7X58wc2w84Ay6OKntT0vH7LnxCoL542wvYCVNQ
	qF4yBmqgHX+bUHwVaW+RGATA/5HLP3loi4g6b0UZj5cf4N5bAnfd5taTyUgch8ixUsI31n4y4rbs8
	FwzKTyqIiH5Y7Ga1Abrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTYh6-0000JF-4z; Tue, 28 Apr 2020 22:27:12 +0000
Received: from mail-mw2nam12olkn2062.outbound.protection.outlook.com
 ([40.92.23.62] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTYgx-0000If-OE
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 22:27:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nkdx0M1xi5DH7btJElQCubeiZ9tdLpuBSwLlxyOe5UpWa2g4pUyydm+HKc4ollnxhfpmP8vwowk9PfXQnTAuebN+UiH+DvbQ+L/akIy5xp5UJL9VidxRppHBJM75xdSpbo1IKoAlvAGcNQaqcmJdw3mHqNRLaMOM/oTXNq8rddCnfK6r0CtzwkNBE8cWHMFcVpAtRSUZFf1sGs2D0M4JFyybTygn0ePuryvLw8CNiQd1ItukndrwbE1mI6d7Wnq4/74u6dAYG2JOQqn3TkMwYKPk4aKSfH5wp1U6u0tKrhuhLEohGTInQbSNCrYk3YmBEPWoXLIhg2LtFlTjwznGBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7itvH72Lf8/BIyooOhXrufjzxN5TetRYwA38SP+/GMY=;
 b=BePJ9u7IFynQgmgs9a9jGKW0IU7CoY1ZNA38+TfKj69yBX797kYfCGHWtRNeT977jAh14r95KeIksjMAMOy/OIoJ6uuBte8n7rp8eAzt6LVjVYE/6X7tVH2IfeRGFQi4aQRHY/zds+s4tBTgpp6Z2DZJelHxHf+3u358H8210ljh6RQrIi1survo4McVcN201gDQYZ5vPkSof7pHsqu8VPQWxR2ATAn7sMUsozVUUutvCgH90KpQsGmUUNpq407xkvYmqjWrVIy22D4Qn9A1rJrGBtRaWCVqY+b+eWr5ZHFMo42sY1e3el/2flrK9aS9DxnVpe1bbhLzFiMn/Aq3Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from BN8NAM12FT011.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::41) by
 BN8NAM12HT167.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::356)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Tue, 28 Apr
 2020 22:27:02 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc66::50) by BN8NAM12FT011.mail.protection.outlook.com
 (2a01:111:e400:fc66::402) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Tue, 28 Apr 2020 22:27:02 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C7DCDD148CB2087ED420E081F5EBC88E5527FCA1C4FC3D1128897164CF3F6BBD;
 UpperCasedChecksum:92D1B590B52F58DDB75D61BDCAD58885F096AAB589AA0F9A23CB0AFBE2B9C046;
 SizeAsReceived:9151; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 22:27:02 +0000
Subject: Re: [PATCH 10/13] arm: dts: s5pv210: aries: Enable ADC node
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660998092302F2A78065E79A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200428102921.GD23963@kozik-lap>
From: Jonathan Bakker <xc-racer2@live.ca>
Message-ID: <BN6PR04MB0660AB5103CCD61C5288D653A3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Tue, 28 Apr 2020 15:26:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <20200428102921.GD23963@kozik-lap>
Content-Language: en-US
X-ClientProxiedBy: MWHPR18CA0042.namprd18.prod.outlook.com
 (2603:10b6:320:31::28) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <62ca9795-c76b-12b3-3211-bcdb26889b2d@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb67:7300:9f89:4b96:de0b:cd14]
 (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR18CA0042.namprd18.prod.outlook.com (2603:10b6:320:31::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19 via Frontend Transport; Tue, 28 Apr 2020 22:27:00 +0000
X-Microsoft-Original-Message-ID: <62ca9795-c76b-12b3-3211-bcdb26889b2d@live.ca>
X-TMN: [NFK4o9QntSLW+rPc3Qww0XOsZPTQLu6IRnItikB7u8yhWHTWDbeWNksYhRdkoTBA]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 52bc821a-f3f4-4d63-b8df-08d7ebc345b1
X-MS-TrafficTypeDiagnostic: BN8NAM12HT167:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0BGQXLYY1NsFi8RNUvS/keKHBv3MiB9uJUsm7AhxaFax/oygZul1DklhHPYgpuAvl3vDBrHdj7g5KX1Oi+iXYic25Md/5uw5UC6fwlLoadeS1HlzzYLrenYdN8VRDFx64JVZN6P345IjcNCyxQBTa9RhHhulpAUGW5tHAzj06rWwjPkVFhYCiThf4z6g27RgBTJy1AZtc8p8YwX1F1rWXg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: kxv6flq79EBs4EWlkvxXzKtkTR+OWen7+u62Iqmion7HpLKPkg0ESNaPxzNlk1RBqPjcMzavVLndc/1GAEfyemBeGU4C8990/8s2/YPxfn9MNclk33K4OwXxCmuy7IBYBl8eYEbzU9AjHupw3QI7ncWHXk3M/qLsqxIVag3h21ZCitONVIWYLiDc986SxgDBEBlGNTcWrdG6xn5XXng+QQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52bc821a-f3f4-4d63-b8df-08d7ebc345b1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 22:27:02.0208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_152703_789426_1D8A5D75 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.23.62 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.23.62 listed in wl.mailspike.net]
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

On 2020-04-28 3:29 a.m., Krzysztof Kozlowski wrote:
> On Sun, Apr 26, 2020 at 11:36:01AM -0700, Jonathan Bakker wrote:
>> On aries boards, the ADC is used for things such as jack detection
>> and battery temperature monitoring.  It is connected to ldo4 of max8998,
>> so only enable that regulator when we are actually using the ADC.
>>
>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>> ---
>>  arch/arm/boot/dts/s5pv210-aries.dtsi | 11 ++++++-----
>>  1 file changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
>> index f30bdcb9c083..a103ddb0d720 100644
>> --- a/arch/arm/boot/dts/s5pv210-aries.dtsi
>> +++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
>> @@ -193,11 +193,6 @@
>>  					regulator-name = "VADC_3.3V";
>>  					regulator-min-microvolt = <3300000>;
>>  					regulator-max-microvolt = <3300000>;
>> -					regulator-always-on;
>> -
>> -					regulator-state-mem {
>> -						regulator-off-in-suspend;
>> -					};
> 
> I would expect to keep it disabled during suspend. Why you had to remove
> this part?

It was my thinking that if nothing was using it, then it would automatically be disabled and stay
that way over suspend.

However, looking at things again, it does make sense to make sure that it is disabled as it serves
no purpose to stay enabled over suspend.  I'll remove this change for v2.

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
