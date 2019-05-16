Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C882011A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7n+mr1AynmdTI7xuRppp7rLnJJE79Af6RyEaBOoa1Q=; b=nDN5jZrZ6XUKNm
	qfDP5V/DKM/xD1yT2Nm6WLpo/ugziddPDSqntFgkaxPZMDy4oJmppKrQnyuKdj/8aid/grSfKcLKy
	LHh1ZVga+oPe4urtIxoXtS2AMh9NvGaMrywSRpYMHXWo9whnt+lxnQIKMmDZP31F7GuM4q4maD7Lc
	R8KwGokVmcj4TegH7geoVmQf1Fk0Zsc4Od6w74wHrfIrUrrh973LQ9rHPyiz4hqC8hnUS/FWfisJq
	5U5NDPmkxBOTEtn4VUuxjra0LFOHQbqUnW9fTcUkPpgjtC3WRUhob8lvmsOMlvRLd4+R1eXhMifFN
	hHTq4ACVckPPyWi4Fe3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBVR-0000tr-Rs; Thu, 16 May 2019 08:12:49 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBUk-0000Ek-5R
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:12:23 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,475,1549954800"; d="scan'208";a="30682350"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES128-SHA;
 16 May 2019 01:11:59 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.37) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Thu, 16 May 2019 01:11:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rDAc519Gpnh5boTsudllchrsvozS+LhsWDClcKRDxOo=;
 b=vOywdjk1eldClaEW9dRlbwa3kAB30eI6tkB+PL+xw2mS40qK7WLG/VzJwO8MUL9hKofVSnKeOUJ/8rLCx4+qvIpLrlVYuCDz8/LFoPbmYyAm+rjhGB5k/HGq65OfmtDTYMWWOPCfc77HELKVsioGwy/eQ5mL+WiCfJByH8MWBc0=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1952.namprd11.prod.outlook.com (10.175.54.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 08:10:34 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::f01a:9325:7a65:cdb4%4]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 08:10:34 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Thread-Topic: [PATCH v3 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
Thread-Index: AQHVByLMz9Q/0hn5ekyMa2w9MKbUHaZk4YYAgAiN1AA=
Date: Thu, 16 May 2019 08:10:34 +0000
Message-ID: <b99b1782-30be-b6b9-0df2-f14125be22ac@microchip.com>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
 <1557487388-32098-3-git-send-email-claudiu.beznea@microchip.com>
 <20190510213242.GE7622@piout.net>
In-Reply-To: <20190510213242.GE7622@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR10CA0117.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::46) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190516111024528
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32d9fde0-ec71-49ea-4474-08d6d9d5f8b5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1952; 
x-ms-traffictypediagnostic: MWHPR11MB1952:
x-microsoft-antispam-prvs: <MWHPR11MB19522A5712D6C7E7405AA04D870A0@MWHPR11MB1952.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(366004)(396003)(39860400002)(189003)(52314003)(199004)(6512007)(14454004)(71200400001)(102836004)(25786009)(99286004)(53936002)(229853002)(53546011)(2906002)(71190400001)(11346002)(66446008)(64756008)(6506007)(386003)(3846002)(486006)(66476007)(52116002)(66556008)(86362001)(6116002)(305945005)(73956011)(68736007)(66946007)(31696002)(54906003)(6246003)(5660300002)(8676002)(81166006)(186003)(76176011)(36756003)(446003)(7736002)(81156014)(8936002)(4326008)(26005)(66066001)(6916009)(72206003)(6436002)(256004)(6486002)(2616005)(316002)(31686004)(476003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1952;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HZozGJH79H/wcd/E5YK6YbhsjWzMSbj7cXNmROQTuzdY9d7lW7tVcaeHFnCUw+AbyZKxJMX6JUii3ZoTCr1hMgxsHNCfaSEHG1HY+04KiFjmX1ct5sqNhXkNbNPYkgcy4V3PCPFItFOQpB4hlu4mu614zSau1Y6NzsLwZtf0DKMO39pdKeUVtBJfHttBVvCH53GC2/SSd67mZ+y0ZZLnb8ZB1j9EDHPjq7yBFLM4pMuo6wKx/gFfA6CWhxY9OlQ9Bvu8QNkorHzRlylRy+P+9QZlPo0aWMXOzNvp8zB7XED/PdENg5vWI1rYngsS09JcEYd9I/Kjiw+u074/pozUDAGyWzSLwlvBNVD2YkXybm7kCGwO6bSTfHk5hfq5OEHfIftsSvPULWxwULfwLcY9fUTXmAIciB6sj62NfVHqyF0=
Content-ID: <383569B37B17E34ABBDAAB8948BC2E04@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d9fde0-ec71-49ea-4474-08d6d9d5f8b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 08:10:34.7147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1952
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_011206_439640_DB024125 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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



On 11.05.2019 00:32, Alexandre Belloni wrote:
> On 10/05/2019 11:23:31+0000, Claudiu.Beznea@microchip.com wrote:
>> From: Claudiu Beznea <claudiu.beznea@microchip.com>
>>
>> Different IPs uses different bit offsets in registers for the same
>> functionality, thus adapt the driver to support this.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>> ---
>>  drivers/clk/at91/sckc.c | 100 ++++++++++++++++++++++++++++++++----------------
>>  1 file changed, 67 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
>> index 6c55a7a86f79..2a4ac548de80 100644
>> --- a/drivers/clk/at91/sckc.c
>> +++ b/drivers/clk/at91/sckc.c
>> @@ -22,15 +22,23 @@
>>  #define SLOWCK_SW_TIME_USEC	((SLOWCK_SW_CYCLES * USEC_PER_SEC) / \
>>  				 SLOW_CLOCK_FREQ)
>>  
>> -#define	AT91_SCKC_CR			0x00
>> -#define		AT91_SCKC_RCEN		(1 << 0)
>> -#define		AT91_SCKC_OSC32EN	(1 << 1)
>> -#define		AT91_SCKC_OSC32BYP	(1 << 2)
>> -#define		AT91_SCKC_OSCSEL	(1 << 3)
>> +#define	AT91_SCKC_CR		0x00
>> +#define		AT91_SCKC_RCEN(off)	((off)->cr_rcen)
>> +#define		AT91_SCKC_OSC32EN(off)	((off)->cr_osc32en)
>> +#define		AT91_SCKC_OSC32BYP(off)	((off)->cr_osc32byp)
>> +#define		AT91_SCKC_OSCSEL(off)	((off)->cr_oscsel)
>> +
>> +struct clk_slow_bits {
>> +	u32 cr_rcen;
> 
> This bit is only used on sam9x5 so I wouldn't bother having it in the
> structure, especially since its use will always be quite separate from
> the other ones as it is controlling a separate clock.
> 
>> +	u32 cr_osc32en;
>> +	u32 cr_osc32byp;
>> +	u32 cr_oscsel;
>> +};
>>  
>>  struct clk_slow_osc {
>>  	struct clk_hw hw;
>>  	void __iomem *sckcr;
>> +	const struct clk_slow_bits *bits;
>>  	unsigned long startup_usec;
>>  };
>>  
>> @@ -39,6 +47,7 @@ struct clk_slow_osc {
>>  struct clk_sama5d4_slow_osc {
>>  	struct clk_hw hw;
>>  	void __iomem *sckcr;
>> +	const struct clk_slow_bits *bits;
>>  	unsigned long startup_usec;
>>  	bool prepared;
>>  };
>> @@ -48,6 +57,7 @@ struct clk_sama5d4_slow_osc {
>>  struct clk_slow_rc_osc {
>>  	struct clk_hw hw;
>>  	void __iomem *sckcr;
>> +	const struct clk_slow_bits *bits;
>>  	unsigned long frequency;
>>  	unsigned long accuracy;
>>  	unsigned long startup_usec;
>> @@ -58,6 +68,7 @@ struct clk_slow_rc_osc {
>>  struct clk_sam9x5_slow {
>>  	struct clk_hw hw;
>>  	void __iomem *sckcr;
>> +	const struct clk_slow_bits *bits;
>>  	u8 parent;
>>  };
>>  
>> @@ -69,10 +80,11 @@ static int clk_slow_osc_prepare(struct clk_hw *hw)
>>  	void __iomem *sckcr = osc->sckcr;
>>  	u32 tmp = readl(sckcr);
>>  
>> -	if (tmp & (AT91_SCKC_OSC32BYP | AT91_SCKC_OSC32EN))
>> +	if (tmp & (AT91_SCKC_OSC32BYP(osc->bits) |
>> +		   AT91_SCKC_OSC32EN(osc->bits)))
> 
> I still find that:
> 
> 	if (tmp & (osc->bits->cr_osc32byp | osc->bits->cr_osc32en))
> 
> would be shorter and easier to read and still fits on one line.

Agree, but I thought to use the same interface everywhere. Anyway, tell me
if you want to resend with these changes.

> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
