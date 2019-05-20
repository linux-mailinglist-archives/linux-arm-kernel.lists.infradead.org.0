Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59B222F65
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T95FCdt567lTJmmsI4wHwof70tijWL4MM0moZS9eHT4=; b=eL9H/S4N55fWLs
	gzA2xz7XsOq0GPhnUZENnY46xXAVuoZ+mRVmFpSAo0/Dk1QohiFEuB5jnz+D05xN4IzvjwfeFtDz4
	SVu5An6hVJqnPmyILG1UMjgFnW0XqZrvmLDQyRHGAWhSbU2GkBDvPAMmtJ2DZA0hiQkkZLdAkEZno
	gBbIbSAwUkGTgblpVpGgpVp6JvtUExryiMwt2oOBnL0RWT5WAKXtWu25wcdXZQXjqqDmoeRkvb+gI
	6pqKE1/OHkNpMog/WwBcbCsJhH0oIEX8aO35K/yH7lOUYRjPr8lJ9Gebmgn3QOlsDdxOvILcuTnxl
	VenIme6gNlzKRvDZyZKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSe4G-0003CE-9D; Mon, 20 May 2019 08:54:48 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSe49-0003AT-JY
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:54:43 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,491,1549954800"; d="scan'208";a="32166388"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 20 May 2019 01:54:33 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.107) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Mon, 20 May 2019 01:54:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kym2ucJTB00u/0r5PK5KuwaYL68HfMmqgeANTDlnHCs=;
 b=KfWyVWklExTNcdhxkhJVN1ZuxM5KHzgnEg74iq0++LpCL5zaNzZVuzRvzKZeLF6chSGwsq+jWJznOT2o+B/xKsjpYSclnciA1BfEbMovTq+UdhQlMunyqDt6i7kGrXXUOXQ5DMI+arv/o1iPdbC/JvCqZm/bgilMvAlacK9JH0k=
Received: from CY4PR11MB1543.namprd11.prod.outlook.com (10.172.70.22) by
 CY4PR11MB1800.namprd11.prod.outlook.com (10.175.62.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Mon, 20 May 2019 08:54:24 +0000
Received: from CY4PR11MB1543.namprd11.prod.outlook.com
 ([fe80::ada3:81b8:4954:9722]) by CY4PR11MB1543.namprd11.prod.outlook.com
 ([fe80::ada3:81b8:4954:9722%4]) with mapi id 15.20.1900.010; Mon, 20 May 2019
 08:54:24 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Thread-Topic: [PATCH v3 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Thread-Index: AQHVByLMz9Q/0hn5ekyMa2w9MKbUHaZk4YYAgAiN1ACAAm0oAIAD6GMA
Date: Mon, 20 May 2019 08:54:24 +0000
Message-ID: <8900ba46-7166-2b5e-961b-3786121c845f@microchip.com>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
 <1557487388-32098-3-git-send-email-claudiu.beznea@microchip.com>
 <20190510213242.GE7622@piout.net>
 <b99b1782-30be-b6b9-0df2-f14125be22ac@microchip.com>
 <20190517211336.GB7685@piout.net>
In-Reply-To: <20190517211336.GB7685@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0267.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::15) To CY4PR11MB1543.namprd11.prod.outlook.com
 (2603:10b6:910:c::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190520115408312
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4bc19ab6-07b4-436e-0df7-08d6dd00c15c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR11MB1800; 
x-ms-traffictypediagnostic: CY4PR11MB1800:
x-microsoft-antispam-prvs: <CY4PR11MB18000F61532B379B8F72805B87060@CY4PR11MB1800.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(346002)(396003)(136003)(52314003)(199004)(189003)(81166006)(81156014)(7736002)(8676002)(305945005)(68736007)(4326008)(66946007)(66476007)(31696002)(66556008)(73956011)(64756008)(186003)(26005)(66446008)(3846002)(6116002)(53936002)(36756003)(6246003)(6512007)(99286004)(66066001)(6436002)(31686004)(6486002)(446003)(316002)(6916009)(8936002)(102836004)(229853002)(54906003)(76176011)(52116002)(486006)(25786009)(53546011)(11346002)(2616005)(2906002)(476003)(6506007)(386003)(14454004)(14444005)(256004)(478600001)(71200400001)(71190400001)(72206003)(86362001)(5660300002)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR11MB1800;
 H:CY4PR11MB1543.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W5Z+npApKFj2jjjVwZYP/pR3I+kyuhPWDuJDyxX2iBt3SwzTZ/QMCwAasIpU9zBzQg9GbLfE+oSb39JdCOGExHoRDLVS57YNS84g8bapOD8w9zByZpBk9wgcUrcVVkpZo0jFxCkJ/45TJOKhBJzyJ8wxyBw742djUxBGh+xrMR/udf3fhZoyuLWHZ/hZm4kc3E2CfDZ6T8CEvZ3LXFEngo/YpjXcda2C3aNUrHgJJFbtfroObhkwDCW3ii39yH2L67zKSNOV4s0bQTz9bWs5K9Vj+iIjDAelXC/rph+xo/G3ci9d2OQdaRBxJSuU7nMCwqFiwL5zUK+WikIdXG/UCw/7LmEeEUTaLG9RqMLCg9f21dL7fyRfss7lw0o0Yud6ygwLEam62W9QC1bCAeBdFlWSwAxf/OsxeE5+7Qp9kQw=
Content-ID: <17043DB5617E724DA7B445DF92546F4F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bc19ab6-07b4-436e-0df7-08d6dd00c15c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 08:54:24.5868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1800
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_015441_756204_8CD00E7E 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18.05.2019 00:13, Alexandre Belloni wrote:
> External E-Mail
> 
> 
> On 16/05/2019 08:10:34+0000, Claudiu.Beznea@microchip.com wrote:
>>>> @@ -69,10 +80,11 @@ static int clk_slow_osc_prepare(struct clk_hw *hw)
>>>>  	void __iomem *sckcr = osc->sckcr;
>>>>  	u32 tmp = readl(sckcr);
>>>>  
>>>> -	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
>>>> +	if (tmp & (AT91_SCKC_OSC32BYP(osc->bits) |
>>>> +		   AT91_SCKC_OSC32EN(osc->bits)))
>>>
>>> I still find that:
>>>
>>> 	if (tmp & (osc->bits->cr_osc32byp | osc->bits->cr_osc32en))
>>>
>>> would be shorter and easier to read and still fits on one line.
>>
>> Agree, but I thought to use the same interface everywhere. Anyway, tell me
>> if you want to resend with these changes.
>>
> My comment applies to all the AT91_SCKC_.*() macros. I don't feel that
> the macros make the code clearer, accessing bits->cr_.* is self
> documenting enough (and makes the code shorter).

OK, I'll send a new version taking this into consideration.

> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
