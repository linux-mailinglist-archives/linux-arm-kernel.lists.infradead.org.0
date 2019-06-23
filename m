Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C914FB4D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 13:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2OZgfbwzVeSiMj0jtffFE2t8nchQdUPObjxvVFKsNc=; b=HGHIvva2py9XwA
	q7w8/DCklTlXchZKDGhy9yWZVkpTAG1t4TP0cN/SHnxEwZvObXPUZlwZsjzQUhBVZ3EzcAI61I/pr
	z8+uKY/QpbOh8aLg4fhxOSDGLZ7DdDoEGHysCiZoNnoTaV7c8OLMx7ECHx6QMjPQC/jF542KP5Qrl
	aEXk8KHKMAdUCk5NoYnkL8GEqUnRibpArJvlNQ4S/venyBk/2GuE+9Lz3p2/PXNEC0MNkiCgoaIw5
	Ig8OS/1VFWiBUxvZ+tHVaSsdlIDWqVFySXZskt/Qo4Otm3aU61/lCJZdzbsz2wsNZ9rHC7QED834j
	fcidLBt8AI3X8RvFR7Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf0iS-0001gW-QK; Sun, 23 Jun 2019 11:31:24 +0000
Received: from mail-eopbgr140080.outbound.protection.outlook.com
 ([40.107.14.80] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf0iJ-0001g0-3Y
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 11:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EplJru0wFtHv+mbG+DF8WGbTP6D78s2RG9xU26rbYT0=;
 b=G+nxvAoQEBhrLnOZOejjBQ9Izgd9TzDeIAoHjcyCv0yhFd28PfPxpbGwY5dsROtxTNiiJgjBw4b+gIqEF4hDv+rBt/HiatRyudroTs2W5iVot5fZzIAXeISoCnMPabGZx3KNG2pF39ZMZDhgkROqLXE7F0FhO10GcInzybQrm9A=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3787.eurprd04.prod.outlook.com (52.134.73.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.15; Sun, 23 Jun 2019 11:31:12 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Sun, 23 Jun 2019
 11:31:12 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [PATCH 1/3] clocksource/drivers/sysctr: Add an optional property
Thread-Topic: [PATCH 1/3] clocksource/drivers/sysctr: Add an optional property
Thread-Index: AQHVKAsVvJrYz1879kGVEJc1WrLeN6apEcoAgAAMJRA=
Date: Sun, 23 Jun 2019 11:31:12 +0000
Message-ID: <DB3PR0402MB3916B3B871FDEA9BFC960C67F5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190621082838.12630-1-Anson.Huang@nxp.com>
 <alpine.DEB.2.21.1906231232520.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906231232520.32342@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 315213db-9f76-49bd-337a-08d6f7ce4b90
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3787; 
x-ms-traffictypediagnostic: DB3PR0402MB3787:
x-microsoft-antispam-prvs: <DB3PR0402MB378759EB1DB2E34534F7D03EF5E10@DB3PR0402MB3787.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00770C4423
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(136003)(366004)(376002)(396003)(51914003)(54534003)(13464003)(189003)(199004)(8936002)(3846002)(55016002)(102836004)(53936002)(7696005)(8676002)(6506007)(81166006)(81156014)(316002)(99286004)(6246003)(26005)(33656002)(6916009)(476003)(44832011)(11346002)(446003)(486006)(7416002)(2906002)(186003)(54906003)(256004)(9686003)(305945005)(7736002)(66946007)(229853002)(74316002)(86362001)(53546011)(14454004)(76176011)(6116002)(14444005)(478600001)(71200400001)(5660300002)(66066001)(25786009)(52536014)(68736007)(66556008)(71190400001)(4326008)(64756008)(66476007)(76116006)(73956011)(66446008)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3787;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x5AQcBaneek9R+GZEnFtUEeGPZcOHRBz4MV3cqZJE7ENwmRJ/mEO+2kV3RFWDB7Ia73hQg/TEqlT52jssF1qNZx8WZUlBCiuc2MIXzM4DQJ8+AKGOFIgWbpRKKneWoqmECJtFn92qpwh1pIl86hSq7OFfqCuA/fdJJ9r9i7kc3RXOqYtPJ4izYFmnRMl/ZJW2HyauEyQiE8VMiYxEui64re/9iABlz8UF9MKmmx6hWhFW+jNTZ5srHiTkNTj0CDGwjIupNUKeRZMwozoxTmh+U4MA/T9j/VsbqBlv3aQSa9N/exUrifRW0Caso1kHynTrOXP43975tej2CGkvjIg3uFCdBsIvHFSJYFP2pOOknmm5yquv61PYAvH3O78bPQAEtH+lQNv3604nkLP9p4wfimcBnMZcN/dQOYmCAMBEYs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 315213db-9f76-49bd-337a-08d6f7ce4b90
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2019 11:31:12.1719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_043115_146349_C443217C 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.80 listed in list.dnswl.org]
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
	Thanks for the useful comment, I will resend the patch with improvement.

Anson.

> -----Original Message-----
> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Sunday, June 23, 2019 6:47 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: daniel.lezcano@linaro.org; robh+dt@kernel.org; mark.rutland@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; l.stach@pengutronix.de; Abel Vesa
> <abel.vesa@nxp.com>; ccaione@baylibre.com; angus@akkea.ca;
> andrew.smirnov@gmail.com; agx@sigxcpu.org; linux-
> kernel@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 1/3] clocksource/drivers/sysctr: Add an optional
> property
> 
> Anson,
> 
> On Fri, 21 Jun 2019, Anson.Huang@nxp.com wrote:
> 
> > Subject : [PATCH 1/3] clocksource/drivers/sysctr: Add an optional
> > property
> 
> That subject line is not really informative. From Documentation:
> 
>      The ``summary phrase`` in the email's Subject should concisely
>      describe the patch which that email contains.
> 
> That means that it should tell which property it adds so it's immediately clear
> what this is about. Something like:
> 
>  Subject: clocksource/drivers/sysctr: Add optional clock-frequency property
> 
> Hmm?
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > This patch adds an optional property "clock-frequency" to pass
> 
> Please read Documentation/process/submitting-patches.rst and search for
> 'This patch'
> 
> > the system counter frequency value to kernel system counter driver and
> > indicate the driver to skip of_clk operations, this is to support
> > those platforms using platform driver model for clock driver.
> 
> That sentence does not parse. Please structure your changelog in the
> following order:
> 
>    1) Context or problem
> 
>    2) Detailed analysis (if applicable and necessary)
> 
>    3) Short description of the solution (the rest is obvious from the patch
>       itself).
> 
> So something like this (assumed I decoded the above correctly):
> 
>    Systems which use the system counter with the platform driver model
>    require the clock frequency to be supplied via device tree.
> 
>    This is necessary as in the platform driver model the of_clk operations
>    do not work correctly because LENGHTY EXPLANATION WHY ...
> 
>    Add the optinal clock-frequency to the device tree bindings of the NXP
>    system counter so the frequency can be handed in and the of_clk
>    operations can be skipped.
> 
> The important part is the missing LENGTHY EXPLANATION WHY. I can't fill
> that in because you did not provide that information.
> 
> Thanks,
> 
> 	tglx
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
