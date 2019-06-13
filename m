Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C3643721
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MWb/a+jzWFG9m2XDKm4/odmiAw1wHq3ECaiz1HYKeI=; b=X7VWeAsWXTCgrf
	WH55BNDFRJBPDkSoeS8we3+xFB2qB+i879x+G/6MmYEdPfUc41lcq+40X8Hv4zg5r0T+bQ7SqL+dW
	YW9Gcls00VvV/3hjAweGTkOMExu0DxZoPP5oe3XxYKkKgOWwuQwhAIXQ9VL/HTTjK4RPJqW2WTz6k
	VzFPCK/b5FaXXO5ifTN5N0rNPnK6IrQjNH5OSHEVeWVHdLix4gTjLcX6dT+t9dHr8FaMerxaAFvEC
	9+W1LGr3jxxCH28A5Vx+QRFjXk2iDGXB0X2LT1s8SzzTef6FRM2xYIX62dc7yLzf5bKrw1GdFUJDR
	23CfSgePPh935iI+5haw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQTZ-0005Xq-Uc; Thu, 13 Jun 2019 14:13:13 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQTK-0005Wq-Fh
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:13:02 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,369,1557212400"; d="scan'208";a="34287443"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jun 2019 07:12:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Jun 2019 07:12:54 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Jun 2019 07:12:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OM81MMGtwoE3hz/Rvgiu1mIfPBrt8C6X7ndyCGZDaQ4=;
 b=ESER2DyPpS+U4OBMACepmKHo/pvacCDGzqyzrYQWeN085SyZR0tuUX4YCiefb5E2HbyzBnlUA3Th618ecRxMppswayhPSTd0hY2AfRPh39XtDevhx7Vp7bvBF8wG/Q1EsreNlMuHafz8hVSEKrIDKlAxDoKaTW7GfsM4i8fg0kk=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1358.namprd11.prod.outlook.com (10.169.233.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 13 Jun 2019 14:12:53 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::316b:7774:8db6:30ec%7]) with mapi id 15.20.1987.012; Thu, 13 Jun 2019
 14:12:53 +0000
From: <Claudiu.Beznea@microchip.com>
To: <daniel.lezcano@linaro.org>, <alexandre.belloni@bootlin.com>
Subject: Re: Re: [PATCH 2/5] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Thread-Topic: Re: [PATCH 2/5] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Thread-Index: AQHU2oKzNY9L7o7MvUGRVNlgkbjplaYyGT4AgAA6L4CAUW8cAIABw0EAgBSpUwA=
Date: Thu, 13 Jun 2019 14:12:53 +0000
Message-ID: <5e3d783e-7bcc-64c1-c814-eaf99a6aa205@microchip.com>
References: <1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com>
 <1552580772-8499-3-git-send-email-claudiu.beznea@microchip.com>
 <a738fce5-1108-34d7-d255-dfcb86f51c56@linaro.org>
 <20190408121141.GK7480@piout.net>
 <88ab46de-c3b6-6dd2-3fa2-f2d0075e969f@microchip.com>
 <7267f37b-4f80-97e3-7a8e-bc1a9a28b995@linaro.org>
In-Reply-To: <7267f37b-4f80-97e3-7a8e-bc1a9a28b995@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VE1PR03CA0041.eurprd03.prod.outlook.com
 (2603:10a6:803:118::30) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8280020-e97c-4180-2450-08d6f009399b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1358; 
x-ms-traffictypediagnostic: MWHPR11MB1358:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <MWHPR11MB1358D7FCCFB0F02824EFA77B87EF0@MWHPR11MB1358.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(136003)(39860400002)(376002)(199004)(189003)(14444005)(256004)(66066001)(2501003)(71200400001)(31686004)(478600001)(72206003)(14454004)(966005)(86362001)(31696002)(486006)(476003)(2616005)(11346002)(446003)(36756003)(71190400001)(8676002)(99286004)(81156014)(81166006)(53546011)(6506007)(386003)(53936002)(54906003)(110136005)(186003)(76176011)(4326008)(26005)(102836004)(25786009)(6246003)(7736002)(6116002)(3846002)(305945005)(6436002)(6512007)(6306002)(8936002)(229853002)(2906002)(6486002)(52116002)(68736007)(316002)(66476007)(66556008)(5660300002)(64756008)(73956011)(66446008)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1358;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dOY6zvxmHd8Awa4i7AoTHRH0DR4NVPLCxRI8NlAeedrdpp3ao/PgZ62mEOMubcYTlnW+fAaVafvuqEqY4nWENqMM2pgHf+MuNPiD28qvLuZTFBgoEPwJywB3RTvzOMDvTUx9I6YBgYxBjQijvIqmKqpgV9WFRmapT6cnLjwNLAe8dNAAXkkkKDlxcBeKpDfGAC2jtTafZFMrdhaqpBFpt5cZTaX+CBm8D9VYla5SV7Qi7hbvroYvXMf9doitLk0/1Ubbl2TpjCz0+sVhpgPjq6Yyn1fHuj31jDRb2fr16w8j6/4LOVX8HJKYaYHWqMEKQEgi2cT4nObZ/mEu5MWcXfEl3ecgChM9UhTo7V7hE2Rm4qcQjzZDBgsgU8WjJwk8qMq0QOuUy8z49JfRehTI5onJ0/nnrWVreAFi56r2n9k=
Content-ID: <AD599551A64A914392D310BA074C0663@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a8280020-e97c-4180-2450-08d6f009399b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 14:12:53.4066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1358
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_071258_598547_B6C08D66 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, tglx@linutronix.de, arnd.bergmann@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 31.05.2019 13:41, Daniel Lezcano wrote:
> 
> Hi Claudiu,
> 
> 
> On 30/05/2019 09:46, Claudiu.Beznea@microchip.com wrote:
>> Hi Daniel,
>>
>> Taking into account the discussion on this tread and the fact that we have
>> no answer from Rob on this topic (I'm talking about [1]), what do you think
>> it would be best for this driver to be accepted the soonest? Would it be OK
>> for you to mimic the approach done by:
>>
>> drivers/clocksource/timer-integrator-ap.c
>>
>> with the following bindings in DT:
>>
>> aliases {
>> 	arm,timer-primary = &timer2;
>> 	arm,timer-secondary = &timer1;
>> };
>>
>> also in PIT64B driver?
>>
>> Or do you think re-spinning the Alexandre's patches at [2] (which seems to
>> me like the generic way to do it) would be better?
> 
> This hardware / OS connection problem is getting really annoying for
> everyone and this pattern is repeating itself since several years. It is
> time we fix it properly.
> 
> The first solution looks hackish from my POV. The second approach looks
> nicer and generic as you say. So I would vote for [2]
> flagging approach proposed by Mark [3].

With this flagging approach this would mean a kind unification of
clocksource and clockevent functionalities under a single one, right? So
that the driver would register to the above layers only one device w/ 2
functionalities (clocksource and clockevent)? Please correct me if I'm
wrong? If so, from my point of view this would require major re-working of
clocksource and clockevent subsystems. Correctly if I wrongly understood,
please.

At the moment we register different functionalities (clocksource and
clockevent) to the above layers for hardware blocks (e.g. with
clocksource_register_hz() or clockevents_config_and_register()). If
hardware can support clocksource and clockevent we register both these
functionalities, if only one is supported we register only one of these.
The above layers would choose the best clocksource/clockevent device from
the available ones based on rating field for each clocksource/clockevent we
register. In all this current behavior I don't see how these flags would
interact with clocksource/clockevent subsystem. Could you please let me
know how do you see these and the way these new flags would interact with
the layers above the drivers?

Thank you,
Claudiu Beznea

> 
> I added Arnd in Cc in order to have its opinion.
> 
> [3]
> https://lore.kernel.org/lkml/20171215113242.skmh5nzr7wqdmvnw@lakrids.cambridge.arm.com/
> 
>> [1]
>> https://lore.kernel.org/lkml/20190408151155.20279-1-alexandre.belloni@bootlin.com/#t
>> [2]
>> https://lore.kernel.org/lkml/20171213185313.20017-1-alexandre.belloni@free-electrons.com/
>>
> 
> 
> 
> 
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
