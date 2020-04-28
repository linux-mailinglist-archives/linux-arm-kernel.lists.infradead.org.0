Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAB01BD0B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 01:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S11jBoATsAJ57T0PU7Ihgc+SWxnAA+wlKeFDXt3FvHQ=; b=U8hM1ahLzufKul
	AbO/jPmD2QjZEnbwS8Z/bQVZdpF9FcpzqxuHXrDVev5YTSYFrWFUCwrFhFxf4BMjVvsQ2iSAEG/eM
	Gy5bJok6IU7F2Fi1NTohAgvZGXFs4P5cwdsPvTI1PzcWzUWHhw22sPhRHK1N/NkSfGcrZUMHnNoo9
	ZcKCFeLRKxB2t0ZZpW3Z79onhOmQudSPdcaE+bQikjgdw7wjv/dixEwzE5L/W5JG2sX6cTT6w/f55
	J9Au5pw9e3a6huUWcBB1HFuXAgTWGhoQ7XuuaboxlRen9XBoIcCw2WfAgPT6jp50rgl0YIT1L30+F
	fdvWHlW6YYTCWxA4Q+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZzB-000312-3h; Tue, 28 Apr 2020 23:49:57 +0000
Received: from mail-co1nam11olkn2029.outbound.protection.outlook.com
 ([40.92.18.29] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTZz1-0002zu-74
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 23:49:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NCpnuG92b/4TXsAzJg383vLjb/UNNne1WmQ1KgFnbYAoFvakFSqcTba7/wPvgRPU+kuKLNUSyLZDWkREmF9lYuvUTvy6gQ4HgNcUkTI3ftgUi6CZDPENiTcoRbLnOirJiBxIVfrpDSVGBqyUF0uBspUNuIuUqlFHuCLRf+Nk7F09E9231OgpdH2oUs2qrA4UqTdvmJE82nbQB2yUS/hRD+fDT4BKVtf7J8wBNLn4vF4IXCBaAQnVnFS5Dbn9I+w2eDjkbrXH8InVsvvtciX74/j4jBX+a8L2r999kEXVUWGZ1Svr5HlMqhG8c4QVW/BrNn+p9I9lWww4hjdBtO7B0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7o2b4VOkqLcT8Z37/4J4wISDZ/GXzpWzfr4qlYl9VAM=;
 b=TvuQ6OdHP6hkeeoUTLL6hPNyzL+2CSQ1Mzeqw8QsUQgDxGb+pJCU+rlB8Bd9kAIcR+et92YvW3Jz2hbzu9KUSA4rrUe+rX5Qd8gN7hwOlM24jS2lDumHXeL1Un/IfliZZBXXvblJ1oWBjOqg7aPyTt4lDAKgVrxlnTZUs7xUBnltLnSw6uHOPBlaFxawAF5TPE8xVm6tDh4vLT7yC26Z5plx5kxfM+o7WZhgAVKmOHHta4AqICMBz6wg+sW+P04mHLpVXzoSZ6Ew4fhU+XRe4At168EL5G77fo0Qx7ieC3QolWulqpM5pa10nctcLfxa9kTsBoBvMu6nW1hGy7xkyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT035.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::49) by
 CO1NAM11HT136.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::330)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Tue, 28 Apr
 2020 23:49:44 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::4d) by CO1NAM11FT035.mail.protection.outlook.com
 (2a01:111:e400:3861::292) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19 via Frontend
 Transport; Tue, 28 Apr 2020 23:49:44 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C12EF5187D361EFD1EB31559DCB06F2DB769488FFA1C4A24ADD8F4E82E63E26D;
 UpperCasedChecksum:2CF29841EE3EFB20F02EEB309A3157F140C85DE9B5A33AA07DC9EA996E993811;
 SizeAsReceived:9168; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 23:49:40 +0000
Subject: Re: [PATCH 02/13] arm: dts: s5pv210: fascinate4g: Add sleep GPIO
 configuration
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660532FF97089208CCEEB2AA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200428100244.GA23963@kozik-lap>
From: Jonathan Bakker <xc-racer2@live.ca>
Message-ID: <BN6PR04MB06605BE9E1559751E083B4E4A3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Tue, 28 Apr 2020 16:49:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <20200428100244.GA23963@kozik-lap>
Content-Language: en-US
X-ClientProxiedBy: MWHPR20CA0022.namprd20.prod.outlook.com
 (2603:10b6:300:13d::32) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <f7e0d6ca-5c5e-5865-7aa0-105bec9799d8@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb67:7300:9f89:4b96:de0b:cd14]
 (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR20CA0022.namprd20.prod.outlook.com (2603:10b6:300:13d::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19 via Frontend
 Transport; Tue, 28 Apr 2020 23:49:39 +0000
X-Microsoft-Original-Message-ID: <f7e0d6ca-5c5e-5865-7aa0-105bec9799d8@live.ca>
X-TMN: [urxjVJmIoHa3wwJ+XOyxKQ2Ug8VtqWSjlFzV2QePtD5/pyVmwnRcmQ5yxF4WUN+O]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 1e061ef5-4c7f-4618-dbde-08d7ebced12c
X-MS-TrafficTypeDiagnostic: CO1NAM11HT136:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XQhSjac/clKMJB0hJ8kLDiuA5OsD6rcBE9cIkoJDLu3VjmqqFqBn+AHzENkuTQw27Bq6F5e8nAgsrXW9IMhOsLQhhpidfsUjnX6nBRP7wK1Og0tJnLIRjV1qv8TLP6DkH5roLTedvb5W4mGvHNW6ABrxzgsaxYQx+cRPiqbaMV+lOgl/HauyzcfjQylR/9ab1he63hLPsq8ChXwQ21B13Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: spED9M2pDCHmVrPNLg4X4PE0pFnGJByvR/1V7EZZIV2SeBfZzI7BkG78WWWeOfH6E+x7BIsqZ23qUZOULMmuVnEb5cKHibA+iuKdxu5bFJgZBTyuTz43aYsH0mrpGcjMHaZHI9sCQ9q8Ws9JNJLFy1kosKoFjjms5SwMVy39lkLgBrWfdD7Yyb2g0DlXfO45nfVW+Wih0hbhZlA34i7YWA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e061ef5-4c7f-4618-dbde-08d7ebced12c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 23:49:40.5131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_164947_263963_CD9B66EA 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.29 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.18.29 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

On 2020-04-28 3:02 a.m., Krzysztof Kozlowski wrote:
> On Sun, Apr 26, 2020 at 11:35:53AM -0700, Jonathan Bakker wrote:
>> In order to minimize leakage current during sleep, set a config
>> for sleep GPIOs.
>>
>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>> ---
>>  arch/arm/boot/dts/s5pv210-fascinate4g.dts | 242 ++++++++++++++++++++++
>>  1 file changed, 242 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/s5pv210-fascinate4g.dts b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
>> index 07a8d9bbe5b8..94dcb9b64b9a 100644
>> --- a/arch/arm/boot/dts/s5pv210-fascinate4g.dts
>> +++ b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
>> @@ -36,3 +36,245 @@
>>  		};
>>  	};
>>  };
>> +
>> +&pinctrl0 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sleep_cfg>;
>> +
>> +	sleep_cfg: sleep-cfg {
>> +		PIN_SLP(gpa0-0, PREV, NONE);
>> +		PIN_SLP(gpa0-1, PREV, NONE);
>> +		PIN_SLP(gpa0-2, PREV, NONE);
>> +		PIN_SLP(gpa0-3, OUT1, NONE);
> 
> I would be happy to see some reasoning why certain pins have disabled
> pull down (e.g. they are not connected or you use the same configuration
> as running one) and why you set them as output.
> 

Mostly it's copied from the vendor kernel configuration.  Without schematics, I can
only guess what's actually there.  I can go through and note what each pin appears
to be used for if you'd like.

>> +		PIN_SLP(gpa0-4, PREV, NONE);
>> +		PIN_SLP(gpa0-5, PREV, NONE);
>> +		PIN_SLP(gpa0-6, PREV, NONE);
>> +		PIN_SLP(gpa0-7, PREV, NONE);
>> +
>> +		PIN_SLP(gpa1-0, INPUT, DOWN);
>> +		PIN_SLP(gpa1-1, OUT0, NONE);
>> +		PIN_SLP(gpa1-2, INPUT, DOWN);
>> +		PIN_SLP(gpa1-3, OUT0, NONE);
>> +
>> +		PIN_SLP(gpb-0, OUT0, NONE);
>> +		PIN_SLP(gpb-1, OUT1, NONE);
>> +		PIN_SLP(gpb-2, OUT0, NONE);
>> +		PIN_SLP(gpb-3, PREV, NONE);
>> +		PIN_SLP(gpb-4, INPUT, NONE);
>> +		PIN_SLP(gpb-5, PREV, NONE);
>> +		PIN_SLP(gpb-6, INPUT, DOWN);
>> +		PIN_SLP(gpb-7, OUT0, NONE);
>> +
>> +		PIN_SLP(gpc0-0, OUT0, NONE);
>> +		PIN_SLP(gpc0-1, INPUT, DOWN);
>> +		PIN_SLP(gpc0-2, OUT0, NONE);
>> +		PIN_SLP(gpc0-3, INPUT, DOWN);
>> +		PIN_SLP(gpc0-4, OUT0, NONE);
>> +
>> +		PIN_SLP(gpc1-0, INPUT, DOWN);
>> +		PIN_SLP(gpc1-1, INPUT, DOWN);
>> +		PIN_SLP(gpc1-2, INPUT, DOWN);
>> +		PIN_SLP(gpc1-3, INPUT, DOWN);
>> +		PIN_SLP(gpc1-4, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpd0-0, INPUT, DOWN);
>> +		PIN_SLP(gpd0-1, OUT0, NONE);
>> +		PIN_SLP(gpd0-2, INPUT, DOWN);
>> +		PIN_SLP(gpd0-3, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpd1-0, INPUT, NONE);
>> +		PIN_SLP(gpd1-1, INPUT, NONE);
>> +		PIN_SLP(gpd1-2, INPUT, DOWN);
>> +		PIN_SLP(gpd1-3, INPUT, DOWN);
>> +		PIN_SLP(gpd1-4, INPUT, DOWN);
>> +		PIN_SLP(gpd1-5, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpe0-0, INPUT, DOWN);
>> +		PIN_SLP(gpe0-1, INPUT, DOWN);
>> +		PIN_SLP(gpe0-2, INPUT, DOWN);
>> +		PIN_SLP(gpe0-3, INPUT, DOWN);
>> +		PIN_SLP(gpe0-4, INPUT, DOWN);
>> +		PIN_SLP(gpe0-5, INPUT, DOWN);
>> +		PIN_SLP(gpe0-6, INPUT, DOWN);
>> +		PIN_SLP(gpe0-7, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpe1-0, INPUT, DOWN);
>> +		PIN_SLP(gpe1-1, INPUT, DOWN);
>> +		PIN_SLP(gpe1-2, INPUT, DOWN);
>> +		PIN_SLP(gpe1-3, OUT0, NONE);
>> +		PIN_SLP(gpe1-4, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpf0-0, OUT0, NONE);
>> +		PIN_SLP(gpf0-1, OUT0, NONE);
>> +		PIN_SLP(gpf0-2, OUT0, NONE);
>> +		PIN_SLP(gpf0-3, OUT0, NONE);
>> +		PIN_SLP(gpf0-4, OUT0, NONE);
>> +		PIN_SLP(gpf0-5, OUT0, NONE);
>> +		PIN_SLP(gpf0-6, OUT0, NONE);
>> +		PIN_SLP(gpf0-7, OUT0, NONE);
>> +
>> +		PIN_SLP(gpf1-0, OUT0, NONE);
>> +		PIN_SLP(gpf1-1, OUT0, NONE);
>> +		PIN_SLP(gpf1-2, OUT0, NONE);
>> +		PIN_SLP(gpf1-3, OUT0, NONE);
>> +		PIN_SLP(gpf1-4, OUT0, NONE);
>> +		PIN_SLP(gpf1-5, OUT0, NONE);
>> +		PIN_SLP(gpf1-6, OUT0, NONE);
>> +		PIN_SLP(gpf1-7, OUT0, NONE);
>> +
>> +		PIN_SLP(gpf2-0, OUT0, NONE);
>> +		PIN_SLP(gpf2-1, OUT0, NONE);
>> +		PIN_SLP(gpf2-2, OUT0, NONE);
>> +		PIN_SLP(gpf2-3, OUT0, NONE);
>> +		PIN_SLP(gpf2-4, OUT0, NONE);
>> +		PIN_SLP(gpf2-5, OUT0, NONE);
>> +		PIN_SLP(gpf2-6, OUT0, NONE);
>> +		PIN_SLP(gpf2-7, OUT0, NONE);
>> +
>> +		PIN_SLP(gpf3-0, OUT0, NONE);
>> +		PIN_SLP(gpf3-1, OUT0, NONE);
>> +		PIN_SLP(gpf3-2, OUT0, NONE);
>> +		PIN_SLP(gpf3-3, OUT0, NONE);
>> +		PIN_SLP(gpf3-4, PREV, NONE);
>> +		PIN_SLP(gpf3-5, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpg0-0, INPUT, DOWN);
>> +		PIN_SLP(gpg0-1, INPUT, DOWN);
>> +		PIN_SLP(gpg0-2, INPUT, NONE);
>> +		PIN_SLP(gpg0-3, INPUT, DOWN);
>> +		PIN_SLP(gpg0-4, INPUT, DOWN);
>> +		PIN_SLP(gpg0-5, INPUT, DOWN);
>> +		PIN_SLP(gpg0-6, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpg1-0, OUT0, NONE);
>> +		PIN_SLP(gpg1-1, OUT1, NONE);
>> +		PIN_SLP(gpg1-2, PREV, NONE);
>> +		PIN_SLP(gpg1-3, OUT1, NONE);
>> +		PIN_SLP(gpg1-4, OUT1, NONE);
>> +		PIN_SLP(gpg1-5, OUT1, NONE);
>> +		PIN_SLP(gpg1-6, OUT1, NONE);
>> +
>> +		PIN_SLP(gpg2-0, OUT0, NONE);
>> +		PIN_SLP(gpg2-1, OUT0, NONE);
>> +		PIN_SLP(gpg2-2, INPUT, NONE);
>> +		PIN_SLP(gpg2-3, OUT0, NONE);
>> +		PIN_SLP(gpg2-4, OUT0, NONE);
>> +		PIN_SLP(gpg2-5, OUT0, NONE);
>> +		PIN_SLP(gpg2-6, OUT0, NONE);
>> +
>> +		PIN_SLP(gpg3-0, PREV, UP);
>> +		PIN_SLP(gpg3-1, PREV, UP);
>> +		PIN_SLP(gpg3-2, INPUT, NONE);
>> +		PIN_SLP(gpg3-3, INPUT, DOWN);
>> +		PIN_SLP(gpg3-4, OUT0, NONE);
>> +		PIN_SLP(gpg3-5, OUT0, NONE);
>> +		PIN_SLP(gpg3-6, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpi-0, PREV, NONE);
> 
> No such name. Did you mean gpgi?
> 
> 

The node in s5pv210-pinctrl.dtsi is called "gpgi", but the i2s0_bus config
in that file uses just "gpi".  drivers/pinctrl/samsung/pinctrl-exynos-arm.c also
notes it just as "gpi".  I think the node should probably be renamed.

>> +		PIN_SLP(gpi-1, INPUT, DOWN);
>> +		PIN_SLP(gpi-2, PREV, NONE);
>> +		PIN_SLP(gpi-3, PREV, NONE);
>> +		PIN_SLP(gpi-4, PREV, NONE);
>> +		PIN_SLP(gpi-5, INPUT, DOWN);
>> +		PIN_SLP(gpi-6, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpj0-0, INPUT, NONE);
>> +		PIN_SLP(gpj0-1, INPUT, NONE);
>> +		PIN_SLP(gpj0-2, INPUT, NONE);
>> +		PIN_SLP(gpj0-3, INPUT, NONE);
>> +		PIN_SLP(gpj0-4, INPUT, NONE);
>> +		PIN_SLP(gpj0-5, INPUT, DOWN);
>> +		PIN_SLP(gpj0-6, OUT0, NONE);
>> +		PIN_SLP(gpj0-7, INPUT, NONE);
>> +
>> +		PIN_SLP(gpj1-0, OUT1, NONE);
>> +		PIN_SLP(gpj1-1, OUT0, NONE);
>> +		PIN_SLP(gpj1-2, INPUT, DOWN);
>> +		PIN_SLP(gpj1-3, PREV, NONE);
>> +		PIN_SLP(gpj1-4, PREV, NONE);
>> +		PIN_SLP(gpj1-5, OUT0, NONE);
>> +
>> +		PIN_SLP(gpj2-0, INPUT, DOWN);
>> +		PIN_SLP(gpj2-1, INPUT, DOWN);
>> +		PIN_SLP(gpj2-2, OUT0, NONE);
>> +		PIN_SLP(gpj2-3, INPUT, DOWN);
>> +		PIN_SLP(gpj2-4, INPUT, DOWN);
>> +		PIN_SLP(gpj2-5, PREV, NONE);
>> +		PIN_SLP(gpj2-6, PREV, NONE);
>> +		PIN_SLP(gpj2-7, INPUT, DOWN);
>> +
>> +		PIN_SLP(gpj3-0, INPUT, NONE);
>> +		PIN_SLP(gpj3-1, INPUT, NONE);
>> +		PIN_SLP(gpj3-2, OUT0, NONE);
>> +		PIN_SLP(gpj3-3, INPUT, DOWN);
>> +		PIN_SLP(gpj3-4, INPUT, NONE);
>> +		PIN_SLP(gpj3-5, INPUT, NONE);
>> +		PIN_SLP(gpj3-6, INPUT, NONE);
>> +		PIN_SLP(gpj3-7, INPUT, NONE);
>> +
>> +		PIN_SLP(gpj4-0, INPUT, NONE);
>> +		PIN_SLP(gpj4-1, INPUT, DOWN);
>> +		PIN_SLP(gpj4-2, PREV, NONE);
>> +		PIN_SLP(gpj4-3, INPUT, NONE);
>> +		PIN_SLP(gpj4-4, INPUT, DOWN);
>> +
>> +		PIN_SLP(mp01-0, OUT1, NONE);
>> +		PIN_SLP(mp01-1, OUT0, NONE);
>> +		PIN_SLP(mp01-2, INPUT, DOWN);
>> +		PIN_SLP(mp01-3, INPUT, DOWN);
>> +		PIN_SLP(mp01-4, OUT1, NONE);
>> +		PIN_SLP(mp01-5, INPUT, DOWN);
>> +		PIN_SLP(mp01-6, INPUT, DOWN);
>> +		PIN_SLP(mp01-7, INPUT, DOWN);
>> +
>> +		PIN_SLP(mp02-0, INPUT, DOWN);
>> +		PIN_SLP(mp02-1, INPUT, DOWN);
>> +		PIN_SLP(mp02-2, INPUT, NONE);
>> +		PIN_SLP(mp02-3, INPUT, DOWN);
>> +
>> +		PIN_SLP(mp03-0, INPUT, DOWN);
>> +		PIN_SLP(mp03-1, INPUT, DOWN);
>> +		PIN_SLP(mp03-2, OUT1, NONE);
>> +		PIN_SLP(mp03-3, OUT0, NONE);
>> +		PIN_SLP(mp03-4, INPUT, NONE);
>> +		PIN_SLP(mp03-5, OUT0, NONE);
>> +		PIN_SLP(mp03-6, INPUT, DOWN);
>> +		PIN_SLP(mp03-7, INPUT, DOWN);
>> +
>> +		PIN_SLP(mp04-0, INPUT, DOWN);
>> +		PIN_SLP(mp04-1, OUT0, NONE);
>> +		PIN_SLP(mp04-2, INPUT, DOWN);
>> +		PIN_SLP(mp04-3, OUT0, NONE);
>> +		PIN_SLP(mp04-4, INPUT, DOWN);
>> +		PIN_SLP(mp04-5, INPUT, DOWN);
>> +		PIN_SLP(mp04-6, OUT0, NONE);
>> +		PIN_SLP(mp04-7, INPUT, DOWN);
>> +
>> +		PIN_SLP(mp05-0, INPUT, NONE);
>> +		PIN_SLP(mp05-1, INPUT, NONE);
>> +		PIN_SLP(mp05-2, INPUT, NONE);
>> +		PIN_SLP(mp05-3, INPUT, NONE);
>> +		PIN_SLP(mp05-4, INPUT, DOWN);
>> +		PIN_SLP(mp05-5, OUT0, NONE);
>> +		PIN_SLP(mp05-6, INPUT, DOWN);
>> +		PIN_SLP(mp05-7, PREV, NONE);
>> +
>> +		PIN_SLP(mp06-0, INPUT, DOWN);
>> +		PIN_SLP(mp06-1, INPUT, DOWN);
>> +		PIN_SLP(mp06-2, INPUT, DOWN);
>> +		PIN_SLP(mp06-3, INPUT, DOWN);
>> +		PIN_SLP(mp06-4, INPUT, DOWN);
>> +		PIN_SLP(mp06-5, INPUT, DOWN);
>> +		PIN_SLP(mp06-6, INPUT, DOWN);
>> +		PIN_SLP(mp06-7, INPUT, DOWN);
>> +
>> +		PIN_SLP(mp07-0, INPUT, DOWN);
>> +		PIN_SLP(mp07-1, INPUT, DOWN);
>> +		PIN_SLP(mp07-2, INPUT, DOWN);
>> +		PIN_SLP(mp07-3, INPUT, DOWN);
>> +		PIN_SLP(mp07-4, INPUT, DOWN);
>> +		PIN_SLP(mp07-5, INPUT, DOWN);
>> +		PIN_SLP(mp07-6, INPUT, DOWN);
>> +		PIN_SLP(mp07-7, INPUT, DOWN);
>> +	};
> 
> What about gphX?

The gphX pins are in the alive area and don't have power down configs, they retain their
state over suspend.  Therefore the samsung,pin-con-pdn and samsung,pin-pud-pdn properties
have no effect (they're analogous to the gpxX pins in later Samsung SoCs).

> 
> Best regards,
> Krzysztof
> 
>> +};
>> -- 
>> 2.20.1
>>

Thanks,
Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
