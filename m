Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06ED857B69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ITef69UbzvjZ8EHVALllR5ye6m0IXbUMH8kNR3aSow=; b=L/RTDC9RIWuFrq
	TTQul9GbDYyOAc5wX/xgp+d+nEaOsmonUmAUd105DssJD/GtpElkNhQfWtvIZAOQCN0WfSSXmYmI6
	fSU6VEjFK4wMIiVAt6KuQ028sBXwnId0UdVhTFxE3uJ4pcycNGOoS2jA8J5/Y2lHPoKnXPdnal2sk
	Jpg3yucNx5Mzol0lYQUt2/3u7uSBF68vnVU5EiSG5QnP8OFtIu19u3LlYkI+yonS9UJItVLiStacU
	kLBVAiHG/ijqoTmYiUwPFJEi3dOR96x+OILNnlB2y7/I3HzNVJl7rL4+wcNfb7dvfv2IgVqdwNMzJ
	qzWbmgYgGN96LYLJS7ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMxn-0008DQ-4f; Thu, 27 Jun 2019 05:28:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMrD-0002Wl-Dc
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lL2i1QhlT2oXyWCFOtNQt8/8E/Bet3GmVszuUsuXWwU=; b=kI3XG/vWaF5Ve4D8/KhOhNenzZ
 wuSMiPh7Yw8sfAW9J3qbH4ZSZTOtCNrTRS6SUZ9LDPDLvRPqJFgd4McmF6orKWtZceyiSLeNHTuSo
 BrCC3/Clp8I7vXbC5AyJjjm1ul6tqDLU1ZqBBuwvgfnai6ZTNgsTTHp4fZ+L7Q1dVSzSJ0i/Eb8YX
 TXy9hANUcLGXAcZiiJy8hEWLytt2V9+kmqmI+oOIPMx5id8d7T2JQ/Uw6d2o/INUQI5aOOIlCMRur
 Wa8StuVkknN0fCAjyFVAIfGtplSIdqfxRfBmhiRpcPeB8/m4S9t2Uwks+qC50ZnxXr2v+E/fte3VA
 VGdq1P7g==;
Received: from mail-eopbgr40068.outbound.protection.outlook.com ([40.107.4.68]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIWB-0003N3-Lw
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 00:44:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lL2i1QhlT2oXyWCFOtNQt8/8E/Bet3GmVszuUsuXWwU=;
 b=CsU8OUcDOKV2Wi3IHXy8bBa3ZmO71Hdt6KeeGNDXmK6ZGFqgRU96t/4mpdndY+17L2Ur+O+aZ3NsUHCyncZejrC+mWFTQI4dfcA3u3h9Z7KOndxN/zGmiIz1gtB2uDGSCW4k7G3xaeTtlY28z2vai6QBs8Hx9eRl4yociphMCLg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3755.eurprd04.prod.outlook.com (52.134.71.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 00:43:31 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 00:43:31 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel
 Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Thread-Topic: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
Thread-Index: AQHVKcBeREE6S4ew/U+TyYIcUsyobqas4eqAgABJq2CAAJdTAIAA60fw
Date: Thu, 27 Jun 2019 00:43:30 +0000
Message-ID: <DB3PR0402MB3916ED4AB17B6DDD2248DD44F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <55abafbd-c010-32b5-6d76-26040830d5b0@linaro.org>
 <DB3PR0402MB3916AB9F2260B0E46CCDDEC0F5E20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <9c017ba9-ac6b-480b-d1f3-120289343101@linaro.org>
In-Reply-To: <9c017ba9-ac6b-480b-d1f3-120289343101@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6df2f74e-c017-4256-5822-08d6fa987a2c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3755; 
x-ms-traffictypediagnostic: DB3PR0402MB3755:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB3755EC739580460A5EF20D77F5FD0@DB3PR0402MB3755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(39860400002)(366004)(396003)(199004)(189003)(102836004)(2201001)(316002)(86362001)(66556008)(8936002)(7736002)(2906002)(76176011)(305945005)(11346002)(53546011)(7416002)(4326008)(26005)(68736007)(229853002)(186003)(6306002)(6436002)(7696005)(6506007)(74316002)(9686003)(478600001)(6246003)(966005)(53936002)(2501003)(81166006)(73956011)(66476007)(476003)(55016002)(99286004)(25786009)(5660300002)(76116006)(66066001)(44832011)(486006)(8676002)(71190400001)(71200400001)(64756008)(33656002)(3846002)(81156014)(66946007)(256004)(110136005)(52536014)(66446008)(6116002)(14454004)(446003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3755;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D6BFPssxfyfnJK+jYqgVzova5NKWj9zVRtGF962LNLmVBeavfKw1KhHqbbDsbFtDNgcP4BmaOLqL8ybixP3/eHkvCNg7xURAuyQfrNXAQosT1ESSndVCvu0JHp8jcNH9EDFCW0hsVmE1QGQJCezPfi6JCcUlPeMmtDaF4vJXYROrLJSbtkTNw48KYqd2k5qrNx4T/a4cw14GmlF9r8dA67U/jUERZSr1ScNt+0dYx03UTP0hJ1BOn4V47ZD+dPMZ/Q/TpRTYA4hjvLnJpE9kEWKnAotxYkcQdxhK4zNgARgnoJ7DRa133fPffeJPrSJyCtZOzVN7dxACM2IUtFIS4e+LwJtxWOqu8dlG5f/l5CqIy0TcCnFQLq8GALv8kJpVS98ToHVG6uJjCN1nv+SyOKDT8zGocATirfFIKshgTaM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6df2f74e-c017-4256-5822-08d6fa987a2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 00:43:30.8804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_014403_799414_9DF7D9C2 
X-CRM114-Status: GOOD (  24.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> On 26/06/2019 03:42, Anson Huang wrote:
> > Hi, Daniel
> >
> >> On 23/06/2019 14:38, Anson.Huang@nxp.com wrote:
> >>> From: Anson Huang <Anson.Huang@nxp.com>
> >>>
> >>> Systems which use platform driver model for clock driver require the
> >>> clock frequency to be supplied via device tree when system counter
> >>> driver is enabled.
> >>>
> >>> This is necessary as in the platform driver model the of_clk
> >>> operations do not work correctly because system counter driver is
> >>> initialized in early phase of system boot up, and clock driver using
> >>> platform driver model is NOT ready at that time, it will cause
> >>> system counter driver initialization failed.
> >>>
> >>> Add the optinal clock-frequency to the device tree bindings of the
> >>> NXP system counter, so the frequency can be handed in and the of_clk
> >>> operations can be skipped.
> >>
> >> Isn't it possible to create a fixed-clock and refer to it? So no need
> >> to create a specific action before calling timer_of_init() ?
> >>
> >
> > As the clock must be ready before the TIMER_OF_DECLARE, so adding a
> > CLK_OF_DECLARE_DRIVER in clock driver to ONLY register a fixed-clock?
> > The system counter's frequency are different on different platforms,
> > so adding fixed clock in system counter driver is NOT a good idea,
> > ONLY the DT node or the clock driver can create this fixed clock according to
> platforms, can you advise where to create this fixed clock is better?
> 
> Can you point me to a DT with the "nxp,sysctr-timer" ?

The DT node of system counter is new added in 3/3 of this patch series, also can be found
from below link:
https://patchwork.kernel.org/patch/11011703/

thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
