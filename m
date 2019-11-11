Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF400F6F08
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 08:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFsGrloDM2qtqXbyud66PvKij7olbQP6Uz/pZm5zRjA=; b=MTFvkSwBabNX2i
	fsM7z1MfGtdWp5yH4NnNzsZ3vX1rxjVkYZRb5EgjUQBwqwt3w7Xn65YjpRlPwgPQfmmdf5nkikxy9
	nitXjUEferDborUGlBTM10fT73413XSOEIunHxdW9Eeo2aW+r8gEs7exOBq6rQ3dkr7pCHhx6BG+Z
	99G+IerbfYuAgNFmPNtPcf80/Jv4N5wStHl/hkQZbLhqef8tnwwb2D6J1oSSGjbLHa5oGT2XnNLel
	W5PDklHVBtdg3sj6q+JKjX4p8BpY5fYQeJwDmXPrWKA+pXN5sqfhD5nl7TB61iueReMna9Mtrcxgm
	Hb0cJihZC2uLCdD1hcXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU49x-0008Je-B8; Mon, 11 Nov 2019 07:30:49 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU49l-0008IS-TO
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:30:39 +0000
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
IronPort-SDR: YLjsT7E0+nBT2oaHVLGDgW3dXBG5T7EN/hcoDITiR5iGxiwA7NlGs77+O2P+z3ZkzDwgYnCUtt
 Cx22nsXYYNLGVIfOH3noJRYCTXYTQbCXltPteQzubYdUnP5+lu5CFaniCV/Y/f1o6h1x8gh0IR
 YbaGpVKmJbMnJDwmaCLLs0EDI0JHgWzG+/qxxa4vbXB9MEvA83XAHUeZv1+6vCS/1x2yW3By25
 TdoT4SBxr5xwUAiP2a0ojU+PUTSkJ7c7uBnjzWKTmgF+0sGYYmA8MXlKSZ2qRPnorL9XAh3aR9
 nUY=
X-IronPort-AV: E=Sophos;i="5.68,291,1569308400"; d="scan'208";a="53686102"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Nov 2019 00:30:27 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Nov 2019 00:30:27 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 11 Nov 2019 00:30:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ffDOoo9CmoIQ+r1Fu/BRfQFrHCNFRQUhxtrdihGo4JpZe8rt9Zvu68cHpHCP6HOMWIEVBqJ9ez8J8vbYcKqTgtJ+nyUNGJXYWyY5XQwsLUgSt4WkB30ao4YfauE3ayoHH68CRfcBZ/2quYUImMrrLRYP7BM98hmdeTgli5+cnHvS+2fu87Aq5o8qAmrX266ZMrVU+JxY4T6RCqplTXjah6FYtm5mTU6FIWcgf7Cqsoq0G4odMNrqRk1Edd/JDcGwLLrY8jlflGstkfoyVBC+pRiaDHUDsyD+g4h0YsY867/ukRZziR97pOWbZpaNzmo4IHvyyo2q89LniI/SgeiR6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=whAUxA5b0hyhgyS4pkF1ZNT5DWIowJCt5h9qbq10VQc=;
 b=aFZ/y/LAx+5kPZg0yfa4F16ZmCLoS5vUQBhDsDHzKTvWU7X5Pea3M2+cYGdX7+mAOiUmI/8K+wvqOhRATWZGoUCFa6UdhnlAKdNHNIL1RH+7zRKFjhWyGBtl6sjE3m/Kxraan0Krve2IsZUsZ0oKOiVLnJXrzzMSftuSOEkLdEhDfQlNU3dCFwpnxHeL9r9YGvDSPYWwXfjQ3bXruzByX4jWVxRTAJPBUlTnMSETp9EWyCG5EICsDfxvi3lgWJ5WcewhXHn7BVeVVr8G+dee8ShxaUBoLWfTrW9h0WQXY1FINA96RWg0q4co4IhXd+SAvIWvDv1P3R1LRDFrD4XaKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=whAUxA5b0hyhgyS4pkF1ZNT5DWIowJCt5h9qbq10VQc=;
 b=qIh69y3fQ4bXgg55ZyU4EBbsA/NMQNUKLlunNAlj0+F888BIkdT9cqAPHDwBWEFbcoUchs86UaIvu0gz11JQ1peBBNd0EtHCU9YDfGRxAvM1ILaDBULrAA+4Wn9wOezyPHH9ZK2maQ19580qPvfZrAbIMjGjCdKlr0BurKOcLHc=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB3753.namprd11.prod.outlook.com (20.179.16.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Mon, 11 Nov 2019 07:30:25 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::283e:2757:8809:3896]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::283e:2757:8809:3896%7]) with mapi id 15.20.2430.023; Mon, 11 Nov 2019
 07:30:25 +0000
From: <Claudiu.Beznea@microchip.com>
To: <tglx@linutronix.de>
Subject: Re: [PATCH v2 2/2] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Thread-Topic: [PATCH v2 2/2] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Thread-Index: AQHVmGHeyW1jqO+VV0e5ZbsiASmYwg==
Date: Mon, 11 Nov 2019 07:30:25 +0000
Message-ID: <19170eb5-5fc1-8b79-b3da-88ece4ace784@microchip.com>
References: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
 <1572880204-4514-3-git-send-email-claudiu.beznea@microchip.com>
 <alpine.DEB.2.21.1911041851230.17054@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1911041851230.17054@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0011.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::24) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191111093019175
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c764d9f5-33b0-458f-3646-08d7667904af
x-ms-traffictypediagnostic: DM6PR11MB3753:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3753E147B2376974835707EC87740@DM6PR11MB3753.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:416;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(199004)(189003)(86362001)(14444005)(6506007)(31686004)(66476007)(66946007)(229853002)(66556008)(64756008)(66446008)(76176011)(81156014)(2616005)(53546011)(52116002)(476003)(102836004)(31696002)(486006)(386003)(26005)(256004)(71200400001)(71190400001)(3846002)(6486002)(6436002)(6116002)(2906002)(6512007)(478600001)(14454004)(8936002)(8676002)(81166006)(25786009)(5660300002)(316002)(99286004)(36756003)(305945005)(6916009)(6246003)(54906003)(186003)(11346002)(446003)(66066001)(7736002)(4326008)(30864003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3753;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BaxQEzbwofAQqDnNXBhMp78JRBmpUkKJVvM9zSLy8BgXFmIuOaAacD140jCcrT0aeBjwf8td4b3M55drFiM4WH4sBwcFd663XroNEX8/fTUNQYi1xP/75UUVF0r1H0Du+nPWOaDU5iepWYipROOFad3Nyy7wSBsCcdO/wC5w1qQ0BTWJO8P1VVkglFu8bIlIHqKJhMl6UB2avaNqoOHPomDG4R3pMnqNVUFUhxB/8Isi6zPUWUW7pDieMpJBxCXeDx5CJwdHnJmjTcV9Zlh3WYUDW/vjHPRIu+v6V26feIVjScCOEnG9Oi+GNjSWuzMiF52rQ4riLQZzK25N5ZG1o36oDy8e7UQJnENDJJjw/ucJ5f59gDuWEl82TKzXV2z7G/zYqZi1afJ5AVFz3lKMxcW37wYEs7H++BBB2uMflNaT2ekmL+D57c3F/AHT0cKf
Content-ID: <4F39F4A113D40243966B7E060C3D78DB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c764d9f5-33b0-458f-3646-08d7667904af
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 07:30:25.4240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2rAPir9iK1PSvG7l5HcfydYGvIwK96zxtEuWeq1OMSHwZOtNKR47q3s4lNeVg/FfZTnEEnkVuqGFhqanW8KRiJDknu0Z6NGOV79li9yUN8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_233038_007614_E4662898 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
 alexandre.belloni@bootlin.com, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04.11.2019 21:05, Thomas Gleixner wrote:
> On Mon, 4 Nov 2019, Claudiu Beznea wrote:
>> +struct mchp_pit64b_common_data {
>> +	void __iomem *base;
>> +	struct clk *pclk;
>> +	struct clk *gclk;
>> +	u64 cycles;
>> +	u8 pres;
> 
> Can you please make the members tabular for readability sake in all the
> structs?

OK!

> 
> struct mchp_pit64b_common_data {
> 	void __iomem	*base;
> 	struct clk	*pclk;
> 	struct clk	*gclk;
> 	u64		cycles;
> 	u8		pres;
> };
> 
> 
>> +static struct mchp_pit64b_data {
>> +	struct mchp_pit64b_clksrc_data *csd;
>> +	struct mchp_pit64b_clkevt_data *ced;
>> +} data;
> 
> This is suboptimal style for two reasons:
> 
>      1) Having a seperate struct and instance declaration is way simpler to
>      	parse.
> 
>      2) Naming a global variable with a generic name is unintuitive and is
>      	too easily confused with local variable names. See below.

OK, I will get rid of this.

> 
>> +static inline u64 mchp_pit64b_get_period(void __iomem *base)
>> +{
>> +	u32 lsb, msb;
> 
> lsb and msb are not really correct here. They stand for Least/Most
> Significant Bit (Byte).
> 
> lsw/msw would be more correct, but 'high/low' would be sufficiently self
> explaining as well.

I used lsb and msb to be in sync with the datasheet.

> 
>       /*
>        * Please use proper multi-line comments and not the network style.
>        * below. Can you spot the difference?
>        */

OK!

> 
>> +	/* LSB must be read first to guarantee an atomic read of the 64 bit
>> +	 * timer.
>> +	 */
> 
> Does that mean that the hardware latches the upper 32bit when the lower
> 32bit are read? If so, please write it out.

OK, I'll document it better. I though that the comment above was enough.
The datasheet is also open for the product that is using this block.

> 
> But aside of that this is fundamentally broken not only on SMP, but also on
> UP because the clocksource read function can be called in preemptible
> and/or interruptible context.
> 
>    thread()
>      ktime_get))
>        t = clocksource->read()
>           low = read(LSW); <- Latches MSW
> 
> ---> interrupt or preemption
> 
>        ktime_get))
>          t = clocksource->read()
>             low = read(LSW);    <- Latches MSW
> 	    high = read(MSW);   <- Reads correct MSW
> 
> <--- interrupt or preemption ends
> 
>           high = read(MSW);     <- Read incorrect MSW
> 
> On SMP the same issue exists between two CPUs....

Yes, I agree on this. My mistake. Thank you for pointing this out.

> 
>> +	lsb = mchp_pit64b_read(base, MCHP_PIT64B_TLSBR);
>> +	msb = mchp_pit64b_read(base, MCHP_PIT64B_TMSBR);
> 
>> +static inline void mchp_pit64b_set_period(void __iomem *base, u64 cycles)
>> +{
>> +	u32 lsb, msb;
>> +
>> +	lsb = cycles & MCHP_PIT64B_LSBMASK;
>> +	msb = cycles >> 32;
>> +
>> +	/* LSB must be write last to guarantee an atomic update of the timer
> 
> s/write/written/

OK!

> 
>> +	 * even when SMOD=1.
>> +	 */
>> +	mchp_pit64b_write(base, MCHP_PIT64B_MSB_PR, msb);
>> +	mchp_pit64b_write(base, MCHP_PIT64B_LSB_PR, lsb);
>> +}
>> +
>> +static inline void mchp_pit64b_reset(struct mchp_pit64b_common_data *data,
> 
> And this is exactly the issue I mentioned above. You have a local argument
> name which shadows a global variable name. Bah.

I'll get rid of it.

> 
>> +				     u32 mode, bool irq_ena)
>> +{
>> +	mode |= MCHP_PIT64B_PRESCALER(data->pres);
>> +	if (data->gclk)
>> +		mode |= MCHP_PIT64B_MR_SGCLK;
>> +
>> +	mchp_pit64b_write(data->base, MCHP_PIT64B_CR, MCHP_PIT64B_CR_SWRST);
>> +	mchp_pit64b_write(data->base, MCHP_PIT64B_MR, mode);
>> +	mchp_pit64b_set_period(data->base, data->cycles);
>> +	if (irq_ena)
>> +		mchp_pit64b_write(data->base, MCHP_PIT64B_IER,
>> +				  MCHP_PIT64B_IER_PERIOD);
> 
> This lacks brackets as after the condition follows a multi-line statement.
> It's techincally a single line, but visually a multi-line statement due to
> the line break.

OK, I'll use brackets on these scenarios.

> 
>> +	mchp_pit64b_write(data->base, MCHP_PIT64B_CR, MCHP_PIT64B_CR_START);
>> +}
>> +
>> +static u64 mchp_pit64b_read_clk(struct clocksource *cs)
>> +{
>> +	return mchp_pit64b_get_period(data.csd->cd->base);
> 
> Lot of indirection here in the hotpath. You surely could avoid touching
> multiple cache-lines here by restructuring your data layout so that you
> have the only interesting element of 'common data', i.e. base, in the
> structure which encapsulates the 'clocksource'.>
> struct mchp_cs {
> 	void __iomem		*base;
> 	struct clocksource 	cs;
> };
> 
> And then your read function becomes either:
> {
>     struct mchp_cs *mcs = container_of(cs, struct mchp_cs, cs);
> 
>     return read_cs(mcs->base);
> }
> 
> or if you have he clocksource statically allocated, i.e.:
> 
> struct mchp_cs mchp_clksource = { /* init here */ };
> 
> {
> 	return read_cs(mchp_clksource.base);
> }
> 	

Agree! I'll switch to your proposed approach.

>> +static u64 mchp_sched_read_clk(void)
>> +{
>> +	return mchp_pit64b_get_period(data.csd->cd->base);
> 
> Ditto
> 
>> +
>> +static int mchp_pit64b_clkevt_set_next_event(unsigned long evt,
>> +					     struct clock_event_device *cedev)
>> +{
>> +	mchp_pit64b_set_period(data.ced->cd->base, evt);
>> +	mchp_pit64b_write(data.ced->cd->base, MCHP_PIT64B_CR,
>> +			  MCHP_PIT64B_CR_START);
> 
> Same issue here.
> 
>> +static irqreturn_t mchp_pit64b_interrupt(int irq, void *dev_id)
>> +{
>> +	struct mchp_pit64b_clkevt_data *irq_data = dev_id;
>> +
>> +	if (data.ced != irq_data)
>> +		return IRQ_NONE;
> 
> How is this supposed to happen?

It should not. I'll remove it.

> 
>> +
>> +	if (mchp_pit64b_read(irq_data->cd->base, MCHP_PIT64B_ISR) &
>> +	    MCHP_PIT64B_ISR_PERIOD) {
> 
> Why are you reading this from the device and not from the mode information
> of the clockevent which would be faster obviously?

The IP can generate multiple interrupts: period interrupt is generated when
the configured periods end. The period interrupt is generated in both
periodic and one shot mode after the current programmed period has been
expired. I used the read from hardware to be sure the expected interrupt
arrived.

> 
>> +static int __init mchp_pit64b_pres_compute(u32 *pres, u32 clk_rate,
>> +					   u32 max_rate)
>> +{
>> +	u32 tmp;
>> +
>> +	for (*pres = 0; *pres < MCHP_PIT64B_PRES_MAX; (*pres)++) {
>> +		tmp = clk_rate / (*pres + 1);
>> +		if (tmp <= max_rate)
>> +			break;
>> +	}
>> +
>> +	if (*pres == MCHP_PIT64B_PRES_MAX)
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
>> +
>> +static int __init mchp_pit64b_pres_prepare(struct mchp_pit64b_common_data *cd,
>> +					   unsigned long max_rate)
>> +{
>> +	unsigned long pclk_rate, diff = 0, best_diff = ULONG_MAX;
>> +	long gclk_round = 0;
>> +	u32 pres, best_pres = 0;
>> +	int ret = 0;
>> +
>> +	pclk_rate = clk_get_rate(cd->pclk);
>> +	if (!pclk_rate)
>> +		return -EINVAL;
>> +
>> +	if (cd->gclk) {
>> +		gclk_round = clk_round_rate(cd->gclk, max_rate);
>> +		if (gclk_round < 0)
>> +			goto pclk;
>> +
>> +		if (pclk_rate / gclk_round < 3)
>> +			goto pclk;
>> +
>> +		ret = mchp_pit64b_pres_compute(&pres, gclk_round, max_rate);
>> +		if (ret)
>> +			best_diff = abs(gclk_round - max_rate);
>> +		else
>> +			best_diff = abs(gclk_round / (pres + 1) - max_rate);
>> +		best_pres = pres;
>> +	}
>> +
>> +pclk:
>> +	/* Check if requested rate could be obtained using PCLK. */
>> +	ret = mchp_pit64b_pres_compute(&pres, pclk_rate, max_rate);
>> +	if (ret)
>> +		diff = abs(pclk_rate - max_rate);
>> +	else
>> +		diff = abs(pclk_rate / (pres + 1) - max_rate);
>> +
>> +	if (best_diff > diff) {
>> +		/* Use PCLK. */
>> +		cd->gclk = NULL;
>> +		best_pres = pres;
>> +	} else {
>> +		clk_set_rate(cd->gclk, gclk_round);
>> +	}
>> +
>> +	cd->pres = best_pres;
>> +
>> +	pr_info("PIT64B: using clk=%s with prescaler %u, freq=%lu [Hz]\n",
>> +		cd->gclk ? "gclk" : "pclk", cd->pres,
>> +		cd->gclk ? gclk_round / (cd->pres + 1)
>> +			 : pclk_rate / (cd->pres + 1));
>> +
>> +	return 0;
> 
> Lots of undocumented functionality which open codes stuff which exists
> already in the clk framework AFAICT.
> 
> Why are you not simply implementing this as clk framework components?
> 
> 
>             |-----|
>   gclk ---->|     |    |---------|
>             | MUX |--->| Divider |->
>   pclk ---->|     |    |---------|
>             |-----|
> 
> which is exaxtly how your hardware looks like. The clk framework has all
> the selection mechanisms in place and all this conditional clock stuff can
> be removed all over the place simply because you just ask for the desired
> frequency on init. Also suspend/resume and all the other stuff just works
> without all the mess involved.
> 

Ok, I'll look over this.

>> +free:
>> +	kfree(csd);
>> +	data.csd = NULL;
> 
> It does not matter here, but for correctness sake this is the wrong
> order and triggers my built-in UAF-race detector.
> 
> You need to NULL the pointer _before_ freeing the underlying memory.
> 

OK, agree.

>> +static int __init mchp_pit64b_dt_init(struct device_node *node)
>> +{
>> +	struct mchp_pit64b_common_data *cd;
>> +	u32 irq;
>> +	int ret;
>> +
>> +	if (data.csd && data.ced)
>> +		return -EBUSY;
> 
> Huch?

On some platforms I may have one instance on this hardware block, on some
other I may have more than one instances of this hardware block. When only
one hardware instance is present I want to use it as clockevent. When at
least 2 are present I want to use one as clockevent, another one as
clocksource and the rest, if any, to ignore them for clocksource, clockevent.

> 
>> +	cd = kzalloc(sizeof(*cd), GFP_KERNEL);
>> +	if (!cd)
>> +		return -ENOMEM;
> 
> If either data.csd or data.ced exists then the common data exists as
> well. Why would you allocate another instance?

I want to probe this driver at most twice in a Linux system:
- 1st time to offer clockevent functionality using one PIT64B hardware
  block
- 2nd time to offer clocksource functionality using another PIT64B hardware
  block

These 2 hardware instances are identical. I am not using only one PIT64B
hardware block for both clocksource and clockevent because I cannot achieve
high resolution timer functionality with it due to hardware limitations.

I used the following data structures for clocksource and clockevent:

struct mchp_pit64b_clksrc_data {
	struct clocksource *clksrc;
	struct mchp_pit64b_common_data *cd;
};

struct mchp_pit64b_clkevt_data {
	struct clock_event_device *clkevt;
	struct mchp_pit64b_common_data *cd;
};

So, for both hardware blocks I need different data structures, one for
clocksource functionality, one for clockevent functionality. Every hardware
block has its own base memory address, its own clocks and timers' frequency
and this is what I modeled with the mchp_pit64b_common_data:

struct mchp_pit64b_common_data {
        void __iomem *base;
        struct clk *pclk;
        struct clk *gclk;
        u64 cycles;
        u8 pres;
};

I will try to change the name of this data structure if it seems confusing.

> 
>> +
>> +	cd->pclk = of_clk_get_by_name(node, "pclk");
>> +	if (IS_ERR(cd->pclk)) {
>> +		ret = PTR_ERR(cd->pclk);
>> +		goto free;
>> +	}
> 
> ....
> 
>> +	if (!data.ced) {
> 
> And here you actually have a conditional which is confusing at best.

I want the first probe of this hardware to register the PIT64B hardware
block with clockevent functionality and the 2nd one to register a PIT64B
hardware block with clocksource functionality.

> 
>> +		irq = irq_of_parse_and_map(node, 0);
>> +		if (!irq) {
>> +			pr_debug("%s: Failed to get PIT64B clockevent IRQ!\n",
>> +				 MCHP_PIT64B_NAME);
>> +			ret = -ENODEV;
>> +			goto gclk_unprepare;
>> +		}
>> +		ret = mchp_pit64b_dt_init_clkevt(cd, irq);
>> +		if (ret)
>> +			goto irq_unmap;
>> +	} else {
>> +		ret = mchp_pit64b_dt_init_clksrc(cd);
>> +		if (ret)
>> +			goto gclk_unprepare;
>> +	}
> 
> So the first invocation of this init function is supposed to init the clock
> event device and the second one inits the clock source.

Yes.

> And both allocate
> common data. How is that common?

Ok, I will chose another name for this field.

Thank you for your review,
Claudiu Beznea

> 
> Thanks,
> 
> 	tglx
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
