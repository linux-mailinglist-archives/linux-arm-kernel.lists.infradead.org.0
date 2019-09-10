Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A36AEB1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 15:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSLUv6PI6hRJJxt3VDrPOUToPjeTB40oq4sf1Zqzj6I=; b=bsJVdTr/gTMvHV
	vWW0dogSScVBWuaIjY1c2dyquZLbWLe8I0VumPFPw8wnOXat37tanFoVQd8YShtc63mq19ZBJgnRj
	ahcYoWtI0Ps7TMtCf3Uj8kXna5Uh1/I5805UW9cF6updCM3TN7xOJ4kGF+zEmkvwq9rW2NOhjTGoA
	kCI2AxmLG0O8NynLlffFqnTTMb+Wxs10VHaCGK1Q9XJlcHVJEeWKHEOoumxyUGWk4tagSGc9HgFSe
	TUD+tIQzoyKP4ICS5buQUzUWduyrerxy0rvq4V9tn069Tp/3BUd9Lwr8gjDDnm11HQaCQCKkzEG5+
	lUsli0a2y/xQnjkdOldQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7frd-0000mv-ME; Tue, 10 Sep 2019 13:07:21 +0000
Received: from mail-oln040092011071.outbound.protection.outlook.com
 ([40.92.11.71] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7frQ-0000mI-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 13:07:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=It/nNhUc4J7PfZxd9+rqExGQamb8r67hEbE6cXgIhWhGF7u60T/NuBGCAk8UtvdrAMeBHmVM1iwZhu5FtfMUSntn6q71z9ahlF6zrTpWfBA+0g+MR2xHOADiQf6HThWIYdqCU1+aqTOL29tcUu5eok3O4PlQaypPUtJa4vbUWoA9iHOTMVQvsbnHWTiGtQ6Ob2tY7RgSyfs9ufjExTJyKI/giTX5iYZX5gXDFYtI/dnpj2mcVHtnYCQDRVdQVwcGsVZK9MY+ZfmyS6aOLpAxEYCv0mZvj3+yBkFZBtSnJTodGuMiVC9ReTdynspqlU9/WsnTW47DtKiq+4G07hBksA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y0cQxVXZARF+hCywCH4/p1XvURnpzgsmDWFLEbLy7us=;
 b=BUxE0VEWL+G69Th++2nT64ei5Ua9YCokK7yUbHpR+nTGK7ko42gHUh78LBUQAVP3GeG2cEc87Dq04544bXbSHRLXSX7WHSb62I+sQ6i13Pi5s73TgjoOaIWZT/AcOibXdpDl+lhi9br3Pc/SRbAkI51bsMwxBsmO2CAXnXHaLGtL8x3rZ5nqDIfqYZ5UYyETXnZyampbe6xLOsGNEykOnaE8DbT4HHgUTEgK2frJ08v1KMv3152dY8Hw3/QtUHdQ7wUdD5LLFD6j8xxObNIpiO6U1EmC3JgXZXAuG2nkHnrF+uMFffxRbz47klXwnGFsExVng/FUZJThjwCMhhdxfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y0cQxVXZARF+hCywCH4/p1XvURnpzgsmDWFLEbLy7us=;
 b=LbSq6Zj8gz5GHJHsUljW7zdliaFUewpyfw3XMCaeSO2+0TzuEM/Mjg8FV70dJhuWnWzaDoJcYTq2/yQsQW+5LzkLDwHSN+5gzC5npnOZmgszYWpBMO9R5yYRYxCTVxMpku02UPcw88hevyqg5Q917cN0ycUHC3P02tpyXAWZ8xHP14rnMfITqDMRCzcBUcHAEABIvITPdkVEF9kuzcDcradYlb2rH9W31UiQWKziCNUMZ4S/kaNH0OQovwUZTrVjQXVcKTAlKMOvXBvX7r7Tv3Y+dQHYhqgqhoFU2HCh1VRlzyL3HrNZSq5wflEF8E2bD8eU3s8zxzdYlhOqFem17A==
Received: from BN3NAM04FT052.eop-NAM04.prod.protection.outlook.com
 (10.152.92.55) by BN3NAM04HT185.eop-NAM04.prod.protection.outlook.com
 (10.152.93.15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2241.14; Tue, 10 Sep
 2019 13:07:05 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com (10.152.92.60) by
 BN3NAM04FT052.mail.protection.outlook.com (10.152.92.241) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14 via Frontend Transport; Tue, 10 Sep 2019 13:07:05 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89]) by BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89%5]) with mapi id 15.20.2241.018; Tue, 10 Sep 2019
 13:07:03 +0000
From: Lihua Yao <ylhuajnu@outlook.com>
To: "krzk@kernel.org" <krzk@kernel.org>
Subject: Re: [PATCH 1/2] ARM: dts: s3c64xx: factor out external fixed clocks
Thread-Topic: [PATCH 1/2] ARM: dts: s3c64xx: factor out external fixed clocks
Thread-Index: AQHVZSau+vjQG28peUivUmwfyzgb3A==
Date: Tue, 10 Sep 2019 13:07:03 +0000
Message-ID: <BY5PR12MB3699C8F06D8DDE821247D2CAC4B60@BY5PR12MB3699.namprd12.prod.outlook.com>
References: <20190907024719.16974-1-ylhuajnu@outlook.com>
 <BY5PR12MB36996A79D9B1EEC5162B00F4C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
 <20190909185148.GA10163@kozik-lap>
In-Reply-To: <20190909185148.GA10163@kozik-lap>
Accept-Language: en-GB, zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR0401CA0006.apcprd04.prod.outlook.com
 (2603:1096:202:2::16) To BY5PR12MB3699.namprd12.prod.outlook.com
 (2603:10b6:a03:195::16)
x-incomingtopheadermarker: OriginalChecksum:528A108AB7CB1E615106EEA41E071EAA9EF385A89B70A7947C2ACC20CF4D5397;
 UpperCasedChecksum:B8BF922989065060D8B1AD3842CE91F5DA7B81CF12FF1A098AC4F2C617A0495D;
 SizeAsReceived:7678; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Lj7FSRF9t77BsL2Hi9EQIme7b0hNRgXI]
x-microsoft-original-message-id: <f5ccfb6b-6cf4-fa07-c131-b0299a11a14f@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:BN3NAM04HT185; 
x-ms-traffictypediagnostic: BN3NAM04HT185:
x-microsoft-antispam-message-info: bvZlwFkEeNYJA6X9ignIeZjbYsPePR6T9+swFtun8PWqRzlGHXWIcp9emS54NrybJxgZiSs5dyKc+ipF9AI/Do8l1B3iJV/EG5YJIeCYg98UJfCfDQA9pxiJRphfwiKvIRNpeNpfzXwG6+tYJZ9dtINgSYBdlU9QjDyHR65qs8ZzCdULWhFRo5LtDEZaGZhf
x-ms-exchange-transport-forked: True
Content-ID: <041D0DAFEC20B940980D9473CD0B4980@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 44752f1b-9842-49d3-801c-08d735efc5f4
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 13:07:03.3214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_060708_644347_9EC452E6 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.11.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ylhuajnu[at]outlook.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 10/9/2019 2:51 AM, krzk@kernel.org wrote:
> On Sat, Sep 07, 2019 at 02:48:08AM +0000, Yao Lihua wrote:
>> From: Lihua Yao <ylhuajnu@outlook.com>
>>
>> As per arch/arm/mach-s3c64xx/common.c, the external oscillators
>> of S3C6400 and S3C6410 are identical. Move them to s3c64xx.dtsi
>> and place under root node directly.
> Hi,
>
> Thanks for patches!
>
> These are external oscillators so they are not a SoC property. They
> should be external.
>
> They could be moved to their own shared DTSI but I am not sure how much
> benefit it will bring - it is rather small code duplication.
OK.
>
> You need to fix the error in different way. However I do not quite
> understand why moving them to the end of DTS fixed the error - they
> should be now registered at the end...

I moved them to the begin of DTSI so fin_pll will be placed before

clock-controller@7e00f000.

>
> Best regards,
> Krzysztof
>
>> This introduces side effect of changing the initialization order of
>> fin_pll and clock-controller@7e00f000. As of commit 3f6d439f2022
>> ("clk: reverse default clk provider initialization order in of_clk_init()"),
>> clock providers are initialized in the orders they are present in the
>> device tree unless the clocks' dependencies are specified explicitly.
>>
>> without this patch:
>>   [    0.000000] S3C6410 clocks: apll = 0, mpll = 0
>>   [    0.000000]  epll = 0, arm_clk = 0
>>
>> with this patch:
>>   [    0.000000] S3C6410 clocks: apll = 532000000, mpll = 532000000
>>   [    0.000000]  epll = 24000000, arm_clk = 532000000
>>
>> Fixes: 3f6d439f2022 ("clk: reverse default clk provider initialization order in of_clk_init()")
>> Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
>> ---
>>  arch/arm/boot/dts/s3c6410-mini6410.dts | 22 ----------------------
>>  arch/arm/boot/dts/s3c6410-smdk6410.dts | 22 ----------------------
>>  arch/arm/boot/dts/s3c64xx.dtsi         | 14 ++++++++++++++
>>  3 files changed, 14 insertions(+), 44 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/s3c6410-mini6410.dts b/arch/arm/boot/dts/s3c6410-mini6410.dts
>> index 5201512054c4..7028507b7076 100644
>> --- a/arch/arm/boot/dts/s3c6410-mini6410.dts
>> +++ b/arch/arm/boot/dts/s3c6410-mini6410.dts
>> @@ -28,28 +28,6 @@
>>  		bootargs = "console=ttySAC0,115200n8 earlyprintk root=/dev/nfs rw nfsroot=192.168.31.2:/srv/nfs/tiny6410,nfsvers=3 ip=dhcp";
>>  	};
>>  
>> -	clocks {
>> -		compatible = "simple-bus";
>> -		#address-cells = <1>;
>> -		#size-cells = <0>;
>> -
>> -		fin_pll: oscillator@0 {
>> -			compatible = "fixed-clock";
>> -			reg = <0>;
>> -			clock-frequency = <12000000>;
>> -			clock-output-names = "fin_pll";
>> -			#clock-cells = <0>;
>> -		};
>> -
>> -		xusbxti: oscillator@1 {
>> -			compatible = "fixed-clock";
>> -			reg = <1>;
>> -			clock-output-names = "xusbxti";
>> -			clock-frequency = <48000000>;
>> -			#clock-cells = <0>;
>> -		};
>> -	};
>> -
>>  	srom-cs1@18000000 {
>>  		compatible = "simple-bus";
>>  		#address-cells = <1>;
>> diff --git a/arch/arm/boot/dts/s3c6410-smdk6410.dts b/arch/arm/boot/dts/s3c6410-smdk6410.dts
>> index a9a5689dc462..10a854b488a8 100644
>> --- a/arch/arm/boot/dts/s3c6410-smdk6410.dts
>> +++ b/arch/arm/boot/dts/s3c6410-smdk6410.dts
>> @@ -28,28 +28,6 @@
>>  		bootargs = "console=ttySAC0,115200n8 earlyprintk rootwait root=/dev/mmcblk0p1";
>>  	};
>>  
>> -	clocks {
>> -		compatible = "simple-bus";
>> -		#address-cells = <1>;
>> -		#size-cells = <0>;
>> -
>> -		fin_pll: oscillator@0 {
>> -			compatible = "fixed-clock";
>> -			reg = <0>;
>> -			clock-frequency = <12000000>;
>> -			clock-output-names = "fin_pll";
>> -			#clock-cells = <0>;
>> -		};
>> -
>> -		xusbxti: oscillator@1 {
>> -			compatible = "fixed-clock";
>> -			reg = <1>;
>> -			clock-output-names = "xusbxti";
>> -			clock-frequency = <48000000>;
>> -			#clock-cells = <0>;
>> -		};
>> -	};
>> -
>>  	srom-cs1@18000000 {
>>  		compatible = "simple-bus";
>>  		#address-cells = <1>;
>> diff --git a/arch/arm/boot/dts/s3c64xx.dtsi b/arch/arm/boot/dts/s3c64xx.dtsi
>> index 2e611df37911..672764133cea 100644
>> --- a/arch/arm/boot/dts/s3c64xx.dtsi
>> +++ b/arch/arm/boot/dts/s3c64xx.dtsi
>> @@ -39,6 +39,20 @@
>>  		};
>>  	};
>>  
>> +	fin_pll: oscillator-0 {
>> +		compatible = "fixed-clock";
>> +		clock-frequency = <12000000>;
>> +		clock-output-names = "fin_pll";
>> +		#clock-cells = <0>;
>> +	};
>> +
>> +	xusbxti: oscillator-1 {
>> +		compatible = "fixed-clock";
>> +		clock-frequency = <48000000>;
>> +		clock-output-names = "xusbxti";
>> +		#clock-cells = <0>;
>> +	};
>> +
>>  	soc: soc {
>>  		compatible = "simple-bus";
>>  		#address-cells = <1>;
>> -- 
>> 2.17.1
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
