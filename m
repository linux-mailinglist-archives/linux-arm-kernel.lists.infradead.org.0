Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C25A1AB068
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 20:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNxQnU08/9lZjk1eE8o4ZHsX1QdMYMs21diQ+1xXgI8=; b=eZB0xkxfpmR25N
	Ba6T3ai75t1OpUS12mWK1BewLZZzg6MTvG+6sp3hxbFd8OneHYi3qlwxRFoRK3GXWodMv/YgwEoZm
	AZ5GMiege3sdwddorK5g+XtuPOcs0k1SM/HTzKf3rXIVCCxVxfGwqWJctEpJkLZ9ftfh0xZp0ykxP
	/xtmXS/5rCPNPjNoRy/msdNUcyNnxRuE8q6rO14oquXQ1vuaNhQTUVPIwOPjBy9YWO7V6benvs+1l
	x5l20N/CuRNDNCms+AFf5cQxpcGUNu8mea/pcdvUVmN4rV+Err2NKlVEg0AyvCU4mmHh/5oc4qU3L
	VYa4oddj4eQ3z2HC+rJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOmbP-0003Mn-GK; Wed, 15 Apr 2020 18:17:35 +0000
Received: from mail-oln040092004075.outbound.protection.outlook.com
 ([40.92.4.75] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOmbH-0003MB-8m
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 18:17:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cKsYw22Jdn4RnDwUfvKUz45jCp4ostZYV6998+bBAWVR59m9+Lqh5FaycLdvzKelwNrL3/oxJMCOt+7fgKmKL2zCnAlLuD73UQUkH/onphbBlJ9V4xleMXU1NaYgUTouRmQWnWHCGg58b9aJ2Kmf3LowihgcEc4/mYl0Bn/Aw2ZrEN7lnzFdLKk5+dPySCQmseZ0FFBFI5Xytr5iUDJdXbFWVMccAvwA7YNaI2VZ2xBewEViebRX9d2uUOogSXCbdcS0NrR3Qd1nWvG1x2KPiWN8CtBWQdkNDrZ5v+JBC0ayps/HKVLGi2gGVMuR1TWlPNMihzeG5QyC1lZ2g/P/jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6qm0J12ynSYfizp+lk8C4gGwJh5pUu+JJ25HKljGqzc=;
 b=YAJEDDH1MbPFwDcV7ZLTWrHltNrze0V4ZdyUAjuLozgS2S+YjKXMRnsTDhB4Ul/zu6IvENJWHkGe/Z1W1prwSuz4OKKfkihJBuQo2fV4yVni78e3HgPY4rU1NQPZ44XU1As89Y3DwM3kD4ocN+PiF87xp3BQ7Lzu8BtIjgplTHbUChJoE0f+D4KwqIt4ikXNgGny1iToCrBLSegTXZ4iiSWLQx+GFXF+qmrXJ1fCzFaKJejzWLMFAGm0aDHpWPJApsMNbwmg9NIQEVag8w07Xr2g+/l1RFQhqeb/6aRJSbf4QjfPj/q7ldcL0bG4WHGm8JDVdDsKyZtQaDxT29bk1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from BL2NAM02FT046.eop-nam02.prod.protection.outlook.com
 (10.152.76.51) by BL2NAM02HT009.eop-nam02.prod.protection.outlook.com
 (10.152.77.83) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 15 Apr
 2020 18:17:22 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:7e46::53) by BL2NAM02FT046.mail.protection.outlook.com
 (2a01:111:e400:7e46::118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Wed, 15 Apr 2020 18:17:22 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:8BD68E2A26C952ABD585DB347D4BADB994C1700DADB921EE431499921C4B8EA2;
 UpperCasedChecksum:85458A7AC59CC987BE425960761D72725327EDA927052EB94E85E11BFC6396EB;
 SizeAsReceived:10107; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 18:17:22 +0000
Subject: Re: [PATCH v6 08/12] arm: dts: s5pv210: Add G3D node
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <cover.1586939718.git.hns@goldelico.com>
 <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
 <CAJKOXPcb9KWNAem-CAx_zCS+sZoEHYc0J8x0nk1xjY9hD4-M4w@mail.gmail.com>
 <AB9B8741-CFF7-414D-9489-D381B539538D@goldelico.com>
From: Jonathan Bakker <xc-racer2@live.ca>
Message-ID: <BN6PR04MB0660640B15550F75C8CCD4DEA3DB0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Wed, 15 Apr 2020 11:17:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <AB9B8741-CFF7-414D-9489-D381B539538D@goldelico.com>
Content-Language: en-US
X-ClientProxiedBy: MWHPR12CA0067.namprd12.prod.outlook.com
 (2603:10b6:300:103::29) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <ada9183b-f363-cd20-1f9d-386525b03c95@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb67:7300:9f89:4b96:de0b:cd14]
 (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR12CA0067.namprd12.prod.outlook.com (2603:10b6:300:103::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Wed, 15 Apr 2020 18:17:19 +0000
X-Microsoft-Original-Message-ID: <ada9183b-f363-cd20-1f9d-386525b03c95@live.ca>
X-TMN: [U2G2OSqe5A/BZuCGGWOHtqUzj1cujfbs+umOObyOl+oDyfyAAsfjGd2eoRhHsiD0]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 30933129-d48e-48d1-e9cf-08d7e1693dc0
X-MS-TrafficTypeDiagnostic: BL2NAM02HT009:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gp3BiXN1m8OUI9TUXrEcbDnQB9zzSz88GXXW103qz0KuM0Zg94zLf6W4p8efgOxI+d1OTcBJWheBrYX+EXRjQqwvqFsw9BKU8x8PDiXbg+A9uYvM+ON6CYgpKaLMavDNOS2PBRFsMEMoh4nsPl2JNIU32k+fiP80519ML+w0mr2AiKu4hq9DKSuj3uCh4XfC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: onrRf+pkiHCwQy/Q/3gVZHQrKcjInLcW20cEMXd8uF4+NSQTUzhoAODCmzzeqGGFuHe/zVe8a2ePYbAQOV+elESnWpx/32G/WpIdgoaQzZqmqgDfNtQuLL5el+yr8OIEKZay23wVidb4uYhu3EG3Qj4/1dq5ob2hBKDtEnHjWZqwpaXJ7zBJh8HkRPf149AVYqJ0G2rdUOLqlHjnyczX4w==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30933129-d48e-48d1-e9cf-08d7e1693dc0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 18:17:22.5620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_111727_311844_A6546028 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.4.75 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nikolaus,

On 2020-04-15 5:50 a.m., H. Nikolaus Schaller wrote:
> 
>> Am 15.04.2020 um 13:49 schrieb Krzysztof Kozlowski <krzk@kernel.org>:
>>
>> On Wed, 15 Apr 2020 at 10:36, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>>>
>>> From: Jonathan Bakker <xc-racer2@live.ca>
>>>
>>> to add support for SGX540 GPU.
>>
>> Do not continue the subject in commit msg like it is one sentence.
>> These are two separate sentences, so commit msg starts with capital
>> letter and it is sentence by itself.
>>

Sorry, that's my fault, I should know better.

Nikolaus took this from my testing tree and I apparently didn't have it in
as good as state as I should have.

>>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>>> ---
>>> arch/arm/boot/dts/s5pv210.dtsi | 15 +++++++++++++++
>>> 1 file changed, 15 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
>>> index 2ad642f51fd9..e7fc709c0cca 100644
>>> --- a/arch/arm/boot/dts/s5pv210.dtsi
>>> +++ b/arch/arm/boot/dts/s5pv210.dtsi
>>> @@ -512,6 +512,21 @@ vic3: interrupt-controller@f2300000 {
>>>                        #interrupt-cells = <1>;
>>>                };
>>>
>>> +               g3d: g3d@f3000000 {
>>> +                       compatible = "samsung,s5pv210-sgx540-120";
>>> +                       reg = <0xf3000000 0x10000>;
>>> +                       interrupt-parent = <&vic2>;
>>> +                       interrupts = <10>;
>>> +                       clock-names = "sclk";
>>> +                       clocks = <&clocks CLK_G3D>;
>>
>> Not part of bindings, please remove or add to the bindings.
> 
> Well, the bindings should describe what is common for all SoC
> and they are quite different in what they need in addition.
> 
> Thererfore we have no "additionalProperties: false" in the
> bindings [PATCH v6 01/12].
> 
>>
>>> +
>>> +                       power-domains = <&pd S5PV210_PD_G3D>;
>>
>> Ditto
> 
> In this case it might be possible to add the clock/power-domains
> etc. to a wrapper node compatible to "simple-pm-bus" or similar
> and make the gpu a child of it.
> 
> @Jontahan: can you please give it a try?
> 
> 

The power-domains comes from a (so far) non-upstreamed power domain driver
for s5pv210 that I've been playing around with.  It's not necessary for proper
operation as it's on by default.

Looking at simple-pm-bus, I don't really understand its purpose.  Is it a way of separating
out a power domain from a main device's node?  Or is it designed for when you have multiple
devices under the same power domain?

Nikolaus, I can regenerate a proper patch for you if you want that's not based on my testing tree.

>>
>>> +
>>> +                       assigned-clocks = <&clocks MOUT_G3D>, <&clocks DOUT_G3D>;
>>> +                       assigned-clock-rates = <0>, <66700000>;
>>> +                       assigned-clock-parents = <&clocks MOUT_MPLL>;
>>
>> Probably this should have status disabled because you do not set
>> regulator supply.

I don't believe there is a regulator on s5pv210, if there is, then it is a
fixed regulator with no control on both s5pv210 devices that I have.

The vendor driver did use the regulator framework for its power domain
implementation, but that definitely shouldn't be upstreamed.

> BR and thanks,
> Nikolaus
> 

Thanks,
Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
