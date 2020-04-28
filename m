Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470761BCFF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 00:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fD2VgKlv+eM2EYDBln4YHOwfZfGk+GgwNSA8z1nNTbE=; b=DPeN0RM+CJrCvt
	F7ZYKaP9mSH8TsuJxiWOl6QB3OF0xEdTdCqpK8te63LsnQjcaaLk6k0qUt/0uW02eLVX0g4Enxvm+
	1v3aDwLAy1Bikkuep9DDHeQDR5SPltFX3yKnwBhIrw4LdmuTTBMFghEgrdizQ/2SaZXwJHWqb98wv
	yHyVjCDPArtAk55AVwPKIsZCTpHZaQ6E5NI/YXpCsD1WJrQSy8JSjTF89FkLESJt2XNta7xv+ykrU
	Fm1bnR7IWj1WynImCC60eE31yO7IUJbT5qdHrrnaARC4YGB5Vmxf6jEPmtv6FLltdP2uSLzgjH2Lm
	ufa1aICMDsrObvvq1ErA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTYhi-0000bf-7f; Tue, 28 Apr 2020 22:27:50 +0000
Received: from mail-bn8nam12olkn2109.outbound.protection.outlook.com
 ([40.92.21.109] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTYhY-0000bF-Sy
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 22:27:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FOcKzJUu/HBtEGb4Rq1OWt15pCgAtVlc6xpBlppMoXp7QKZ2wnv497cPxvz7XCC8d0brlPH08NqHs3A9cEQKEpGbKMPqnIKLLA2jlsjTwTkXT0jCWNWI2R9J9F1XAu3yTfyZ+Cov6I3d6bg0qCClzAbtt7I2V/VZHjek5vgVRVYCVWqFtbpsw2FLXUYVBgV7Dh7sFW+Z5gK7x0m5mIsM0my5jhWOjs3RxTPRV+eW17199PL3BRd6LMym5+bvM2kThxbrGkYG9kPJ6xHtzWyz76iW1aXFWrG4n3Fiogs4wGH5N3I7dan8QuctH5PATUx1R2/RCNg+meenzsltc8tFNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JG7yoz8CpP1VbRGUwXWWM3Es+pjJKUEEsVCea9/2a/k=;
 b=gzEHLO0AOiPrzBQAX7baJUlMA+pspL4u5sNO5hQHFIYHutPJtpqgJmfNgs/g2FOPgdRC87QIM7LCq91FROIuv/GPnrtPD3+Cur0nAc0u3QEwsHfDY/RmLEXoa7imYkRcAqX7fQ+WGsaR8mBfGTxtKR8IZpGPeSzhpZl5e2PGQzl6F4Ttx4l9sahVepXPPsbO5sTyeeAVwrwtaY160uu4zg+mPW9s4WhocbnGmiEwh6H6gqMjXFyYFsgTclPcgAq0RpDfRq9OIQf+v9JoxybbxlenUEWcA1maQ/o3AbkaxKDRZfi+mJvyDCdxGpHf3Z77kxbm9sfo2ufkja3l/CPPSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from BN8NAM12FT011.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::4b) by
 BN8NAM12HT194.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::287)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Tue, 28 Apr
 2020 22:27:38 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc66::50) by BN8NAM12FT011.mail.protection.outlook.com
 (2a01:111:e400:fc66::402) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Tue, 28 Apr 2020 22:27:38 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:97146EB3F292A1A719A45F48C03934682D06B869623E4619B343E0C7780A1A99;
 UpperCasedChecksum:1E288598A2B3A13AC314EC2960A07BC134CEE73BBC153CE93CB0D39B8879D640;
 SizeAsReceived:9143; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 22:27:38 +0000
Subject: Re: [PATCH 09/13] arm: dts: s5pv210: Add an ADC node
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660AAB00F5D36E2FEE22DE8A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200428102600.GC23963@kozik-lap>
From: Jonathan Bakker <xc-racer2@live.ca>
Message-ID: <BN6PR04MB0660ADCC0D4DE7E5161FAEFAA3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Tue, 28 Apr 2020 15:27:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <20200428102600.GC23963@kozik-lap>
Content-Language: en-US
X-ClientProxiedBy: MWHPR18CA0045.namprd18.prod.outlook.com
 (2603:10b6:320:31::31) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <2453ddf6-e8d3-a21c-5850-04760a78b15d@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb67:7300:9f89:4b96:de0b:cd14]
 (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR18CA0045.namprd18.prod.outlook.com (2603:10b6:320:31::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19 via Frontend Transport; Tue, 28 Apr 2020 22:27:37 +0000
X-Microsoft-Original-Message-ID: <2453ddf6-e8d3-a21c-5850-04760a78b15d@live.ca>
X-TMN: [xgDifCYnbaqJEzc0AG5otUX7EwdpAWXD9/rrM0f7z9VXuxlnTDUPICmYlS3F7eBz]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 5dba31ec-b12f-4ee8-0966-08d7ebc35b44
X-MS-TrafficTypeDiagnostic: BN8NAM12HT194:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MYBy3KONfWV6iJtTpsojYfaWdGdttjjCSzm7fqvk01hDn35J7SH6ubu4WmdZTyn4t+joWFSZrJsNS4PWkdikn8adFKPtN8TBiYStilhbwpHTPtiWD5f7WxyQ+9GKbBSnCXcpQeARWFzthbgJygzc3VKoru96o9KjlkQFZW6AIGxlSGpVRjjuoWKu6Smx3W6EjykZbJW7jpFkW7L+XtJUgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: DpyqLQOJSsGSdkN92cLrd2WbnZFyMOGLVbUL22MPMsFrx3mUESKKi47IKtEJHoaMdEIqC4thi8Z8ShpsOxLJ8css2EnGPvMju0tbo6+8bI4tionhx6gmQFGmmH4Vhpo9pWPhEGA4xX3qM2EKe8ThXe7xDVVSxBkHqQm7BOww3mdcK2o7BHcCa+cQgpK8+xxHZQqaeMb+9KFMkSDRMq43xA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dba31ec-b12f-4ee8-0966-08d7ebc35b44
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 22:27:38.1698 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_152740_935403_385BB002 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.21.109 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.21.109 listed in wl.mailspike.net]
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

On 2020-04-28 3:26 a.m., Krzysztof Kozlowski wrote:
> On Sun, Apr 26, 2020 at 11:36:00AM -0700, Jonathan Bakker wrote:
>> The exynos-adc driver now supports the S5PV210, so add the DT
>> node so that devices can use it.
>>
>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>> ---
>>  arch/arm/boot/dts/s5pv210.dtsi | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
>> index 2ad642f51fd9..b3b6ad2889f9 100644
>> --- a/arch/arm/boot/dts/s5pv210.dtsi
>> +++ b/arch/arm/boot/dts/s5pv210.dtsi
>> @@ -159,6 +159,18 @@
>>  			};
>>  		};
>>  
>> +		adc: adc@126c0000 {
>> +			compatible = "samsung,s5pv210-adc";
>> +			reg = <0xe1700000 0x1000>;
> 
> reg does not match the node address.
> 
> Run "make dtbs W=1" and be sure there are no new warnings.

Thanks, will change for v2.

> 
> Best regards,
> Krzysztof
> 
> 
>> +			interrupt-parent = <&vic2>;
>> +			interrupts = <23>, <24>;
>> +			clocks = <&clocks CLK_TSADC>;
>> +			clock-names = "adc";
>> +			#io-channel-cells = <1>;
>> +			io-channel-ranges;
>> +			status = "disabled";
>> +		};
>> +
>>  		spi0: spi@e1300000 {
>>  			compatible = "samsung,s5pv210-spi";
>>  			reg = <0xe1300000 0x1000>;
>> -- 
>> 2.20.1
>>

Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
