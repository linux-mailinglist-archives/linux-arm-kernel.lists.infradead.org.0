Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C095838D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2G0xIQ9CBXIBW4ivyenxFFUwytRLGaD0khkhJnKnso=; b=fciC1By6v7wDcW
	FtHlEDiciJb01FuNap9j/J4DI/NtY+Z9OU8BHxpK67nNgQ4++mUfwqDu/J8pEU4glBfL4kTOhP2CG
	FcZBVFZCtJWzmhicRJiV/BXDjx4/awk5vhlsLUS1rMd/yzWBk7yYhj1DPXmHm/DKRiVb4rdsedJH/
	63KRefU2oeJi87jPR+lY1QNN8CDwar2U2RZSIgpu97yVQM09KqsTZt4+TFwKBGjB4+64Bhi5Wm9dZ
	a93jYOsOZ0js/lXa5nKsOXJdHa6JtKiD9TRBYWQG0W2iDHAMGB8eZ0eJmEVsXvmtbekEbVej09jmJ
	c8bveE+IdB9pDBIMW5vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUVP-0001uj-4J; Thu, 27 Jun 2019 13:32:03 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUVA-0001ti-C0
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:31:49 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="37590056"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jun 2019 06:31:45 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 27 Jun 2019 06:31:40 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 27 Jun 2019 06:31:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MvkkDxd7qua1jKxbqrbV5M/smHOB7b/4ya5cpeUvVJc=;
 b=Z7dFU7HL32HK4PfMOB21N4rRyPfAAjnP6ulSpv8SVeGJ3AKoghtTjsC89FBfl5WpFSzZa3+tZx4vw6KuMVQZgJG1iEu/wHbfshPn5+/amF3evEsNrDE2nZhEF4CCYaD7T8DoVururtixArya2FqS1R1o/H/X9vnMVlTwW4ik594=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1291.namprd11.prod.outlook.com (10.168.108.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 13:31:39 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::6476:ace0:bf3a:322%9]) with mapi id 15.20.2008.018; Thu, 27 Jun 2019
 13:31:39 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <wsa@the-dreams.de>
Subject: Re: I2C filtering (was Re: [PATCH v2 6/9] dt-bindings: i2c: at91: add
 binding for enable-ana-filt)
Thread-Topic: I2C filtering (was Re: [PATCH v2 6/9] dt-bindings: i2c: at91:
 add binding for enable-ana-filt)
Thread-Index: AQHVKzw4jzAkF3hUn0CaRzOhl90Jh6avgCEAgAABogA=
Date: Thu, 27 Jun 2019 13:31:39 +0000
Message-ID: <eb2d87b7-437c-53ee-a1ca-37c4d3fadea6@microchip.com>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
 <1561449642-26956-7-git-send-email-eugen.hristev@microchip.com>
 <4e81d3c9-25f3-ca6e-f2d5-17fad5905bb8@axentia.se>
 <84628b5e-bea7-7d91-f790-f3a2650040fa@microchip.com>
 <20190625093156.GF5690@piout.net> <20190625095533.GC1688@kunai>
 <20190627132200.GK3692@piout.net>
In-Reply-To: <20190627132200.GK3692@piout.net>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0102.eurprd09.prod.outlook.com
 (2603:10a6:803:78::25) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190627162750239
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e86efaf9-7aeb-4ede-285f-08d6fb03c8bc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1291; 
x-ms-traffictypediagnostic: DM5PR11MB1291:
x-microsoft-antispam-prvs: <DM5PR11MB12912B60821954FD8EABBAD5E8FD0@DM5PR11MB1291.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(136003)(39860400002)(396003)(199004)(189003)(53936002)(66446008)(66946007)(73956011)(2906002)(14444005)(256004)(305945005)(81166006)(478600001)(66476007)(64756008)(66556008)(6512007)(66066001)(476003)(486006)(186003)(36756003)(81156014)(14454004)(2616005)(229853002)(8676002)(11346002)(446003)(3846002)(72206003)(6116002)(7736002)(31696002)(102836004)(26005)(8936002)(6486002)(54906003)(110136005)(6506007)(53546011)(386003)(7416002)(6246003)(5660300002)(76176011)(99286004)(68736007)(86362001)(52116002)(31686004)(6436002)(25786009)(71200400001)(71190400001)(316002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1291;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2LE75PUXJdyykuNYTbjJAMwX6uENZmVBD7cTEJSO8x1eWvYGYc3lHXm03jaaskM/6AuIxgdSk6p3NSRkvWrED/r5WKKlz0mlppWX1dBe/izfrp3JBZNeIEgkHAJiw6sjdLgIpJ+X8B4ew0LJJ9jBU3b9KvK2DfRduPOj0kKdGwppWmi2gjtZ9EnBhe4QWVuScTGDHIczLonmb4XhUEjH9cveUBDxcL7F+KXaERqnePEW+BxZTRAfObUsA+WTwlGoVh0dvm6gf2qW2oJTIhnGqo8eoJkjG81kxvvvJUZXGw+rHug1YifmraroK6TeiXfmuDXGr4Ncw06UCauEyPXQQWEQ/nC4+qAFYoHzJc24R0KnTp27En65nkf8EjpX6QSKgRxYxnhQPjaW6MyiFkmcojRHLAsIM46x0Kb6nW7BR+M=
Content-ID: <20927CEDF033F540A4940D155C88D127@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e86efaf9-7aeb-4ede-285f-08d6fb03c8bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 13:31:39.3694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_063148_525043_DA461AAD 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, pierre-yves.mordret@st.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27.06.2019 16:22, Alexandre Belloni wrote:
> External E-Mail
> 
> 
> On 25/06/2019 11:55:33+0200, Wolfram Sang wrote:
>> On Tue, Jun 25, 2019 at 11:31:56AM +0200, Alexandre Belloni wrote:
>>> On 25/06/2019 09:14:13+0000, Eugen.Hristev@microchip.com wrote:
>>>>> Perhaps
>>>>>
>>>>> 	microchip,digital-filter;
>>>>> 	microchip,analog-filter;
>>>>>
>>>>> ?
>>>>
>>>> Hi Peter,
>>>>
>>>> Thanks for reviewing. The name of the property does not matter much to
>>>> me, and we have properties prefixed with vendor, and some are not.
>>>>
>>>> @Alexandre Belloni: which name you think it's best ?
>>>>
>>>
>>> I'm not sure, it depends on whether Wolfram thinks it is generic enough
>>> to be used without a vendor prefix.
>>
>> I could imagine that we design a generic property for filters. The ones
>> above make me wonder, though, because they are bool. I'd think you can
>> configure the filters in some way, too?
>>
> 
> Apart from enabling the filter there is indeed one configuration
> setting, the maximum pulse width of spikes to be suppressed by the input
> filter.

Hello,

This is a number 0 to 7 (3 bits) that represents the width of the spike 
in periph clock cycles.
I am looking to see what is PADFCFG , as it's related to the PAD analog 
filter configuration. It may be unused by the filter.

Eugen

> 
>> I never used such filtering, so I am unaware of the parameters needed /
>> suitable. Quick grepping through I2C master drivers reveals that
>> i2c-stm32f7.c also handles filters, but only with default values. Maybe
>> DT configuration would be benefitial to that driver, too?
>>
>> Adding some people to CC.
>>
> 
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
