Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790564FB77
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 14:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFtlsNgxghnee9qqckXgCoad8b7VWlF9Q3T/7UEzQS8=; b=q1oDRXkVR3T4fH
	gAcYtXGUDFjzStJ79FzbemhJT+EuYuf9N0E6m9V6gdMTjHMD7vjrgMb/3pDPu5sbmXHLFPr8WoZIr
	7jDamh0qIBZiYhJCl69/1OhTPPWxQwX1LlV7myB/naqcq4lTky4XxYsvd2XKXdBGQUR6joVu7GLV6
	5bP/7jJlEqpjbYNlphrOynsS58KL2IqBxMDHc6cc9PxLE22skgXEW4ETr8FXgT9tbZdDCLh6DTDCq
	cuQAnrDwDGYBKJG2m24Zdo1VJbgTFmblFuqvcoBomKytAm5eryEErmCF2CUverxTGILNWdxeY4hxA
	1F0kif631MlNKF/ctVwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf1GD-0005cd-Ah; Sun, 23 Jun 2019 12:06:17 +0000
Received: from mail-eopbgr150044.outbound.protection.outlook.com
 ([40.107.15.44] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf1Fw-0005c5-NE
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 12:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s1mYwZ/p0MmFWjnqhhC3rRqQjbh/vXVamvZyev1QRGA=;
 b=HBMQulCu2I0mRvuW6UOW2psEFbSojvGLb2H0Y8A2pSvRgpZ6mX/SsQ5Ds4gjpdrRAKi8DploxBjA3/DyvboJQ7qop34bX5R0xu7pjz8AqvqRypO/eBu52EYACg0NHEzgfRLHuySbbsNwKEjroPp0tXon7Mhxn8ozCm7wlp+q97U=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3673.eurprd04.prod.outlook.com (52.134.70.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.15; Sun, 23 Jun 2019 12:05:55 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Sun, 23 Jun 2019
 12:05:55 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [PATCH 1/3] clocksource/drivers/sysctr: Add an optional property
Thread-Topic: [PATCH 1/3] clocksource/drivers/sysctr: Add an optional property
Thread-Index: AQHVKAsVvJrYz1879kGVEJc1WrLeN6apEcoAgAAMJRCAAAFBgIAAB9Ug
Date: Sun, 23 Jun 2019 12:05:55 +0000
Message-ID: <DB3PR0402MB39168010C09BDAE2BF27123CF5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190621082838.12630-1-Anson.Huang@nxp.com>
 <alpine.DEB.2.21.1906231232520.32342@nanos.tec.linutronix.de>
 <DB3PR0402MB3916B3B871FDEA9BFC960C67F5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <alpine.DEB.2.21.1906231331390.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906231331390.32342@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8049e0d4-c6f9-46b7-153c-08d6f7d3252d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3673; 
x-ms-traffictypediagnostic: DB3PR0402MB3673:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB36734C4A0C68C18797E59D8AF5E10@DB3PR0402MB3673.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00770C4423
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(136003)(366004)(51914003)(189003)(199004)(68736007)(6306002)(76116006)(6916009)(66476007)(71200400001)(256004)(486006)(6116002)(71190400001)(3846002)(186003)(14454004)(26005)(66446008)(66556008)(99286004)(7696005)(66946007)(64756008)(44832011)(2906002)(476003)(73956011)(76176011)(11346002)(229853002)(446003)(54906003)(86362001)(45080400002)(8936002)(478600001)(6246003)(316002)(7736002)(305945005)(14444005)(53936002)(25786009)(74316002)(33656002)(6436002)(4326008)(9686003)(66066001)(52536014)(966005)(81166006)(7416002)(102836004)(5660300002)(55016002)(6506007)(81156014)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3673;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FL4WYcBFUehXO/Tj+q1MtkoiMTL85BPAaSSvU0VLuzS/EqVXdUfxBXQxCylsn8QhJodVanZVJIYH82JsRc+vg0a2MCIk5OBfkiE9qrG96e7yL3Eyb20QjTsMVI5zYL/ATA2yjhJs3+y7/UiA6BFhgNV2WT9JCEuO2zQp8QMzgL87sX7dhchnzeyNNlwA+qs5ORAzj4MpOFIMyJvEYNDBmGP5cU2dehSziyUPPpYpb8uhgPnuzHor0UFJMO84r7TsdRZucIGbT3gbvv49VjZSj7kZNfeLZu0AEkXfV80hQz3HJ8w0nZ7dHO/0TgKC15nyd80/TYopF61TNwuuuAQYVVz/gDbc3+Lq4idV1sC3sbCKwhcM6Y12zZnZmMwxdEKfdR52UMK5hTMsxIaWtK/stLgX1EtuLeZ2Raw2TtsnHRk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8049e0d4-c6f9-46b7-153c-08d6f7d3252d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2019 12:05:55.1916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3673
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_050600_763663_8CE2F773 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "angus@akkea.ca" <angus@akkea.ca>, Abel Vesa <abel.vesa@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Thomas

> Anson,
> 
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
> 
> A: No.
> Q: Should I include quotations after my reply?
> 
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdaringf
> ireball.net%2F2007%2F07%2Fon_top&amp;data=02%7C01%7Canson.huang
> %40nxp.com%7C658d12e0d65a401034d208d6f7cecc86%7C686ea1d3bc2b4c6
> fa92cd99c5c301635%7C0%7C1%7C636968864908338236&amp;sdata=%2F0%
> 2B9DIT2HVuVFgLvhW7QFFNAXrRqbcTi9%2BJcasgOv08%3D&amp;reserved=0
> 

Thanks for these info.

> On Sun, 23 Jun 2019, Anson Huang wrote:
> 
> > Hi, Thomas
> > 	Thanks for the useful comment, I will resend the patch with
> improvement.
> >
> > Anson.
> > 
> Also please fix your mailer to NOT copy the full mail header into the reply.
> That's absolutely useless.

Sure, thanks for reminder.

> 
> > >
> > > Anson,
> > >
> > > On Fri, 21 Jun 2019, Anson.Huang@nxp.com wrote:
> > >
> > > > Subject : [PATCH 1/3] clocksource/drivers/sysctr: Add an optional
> > > > property
> 
> And finally please trim your replies, so the uninteresting parts are gone.
>

OK.

Thanks,
Anson.
 
> Thanks,
> 
> 	tglx
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
