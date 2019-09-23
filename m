Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D07BACB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 04:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5qEI1IfF3HNKICiYbUebby8lrqASJaZj0v4s13h0vc=; b=FkUP+x22ONYQGU
	ZeCKiz1pTwqTpKu2I9YP0G/jiAOpCUm2zH6F8m2P7VlqtwYYsqiK1r3RND6Io+SBVirSfhkyBRHWX
	d5B2WArSWcSIy/Bnsbi+8dKLAd8VzS6K06OSNJT2h2s4Nntg9UG08bpjzgfpFuAdJGKRQQeJr/9oJ
	trPdOZ3uxV9BeKDbJ/6/4uhtWeUpwYXwCvVqMSYBY8xy6XSRvsO1ETNRKx3U4IbOVsppAJgChwcCr
	0AXF/bWd94N7CVTZpmiCO4dedkHtkcDHHZc5s8CE9Rc9UJaNb78ipG34zJKTk3csNBBdx8kgAIG8d
	kFyhbqZy/t9Eh8ANOHDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCEBY-0001U1-4G; Mon, 23 Sep 2019 02:34:44 +0000
Received: from mail-eopbgr40061.outbound.protection.outlook.com ([40.107.4.61]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCEB1-0001EH-4g
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 02:34:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mg4vD9ymds1DhtMIKmBv6QCg2T63Wmf+TEszKqft23a0TYmEe2DLm1QJSi8gUdGgyJ/ztLGrf/60UAfCuXk8HAOPekh6L8YgmA4i9/f8l6F8Z0LwOVd0Qu4K1edxIuiFPjvV92tkRGJgBas1Vb7orefRcLRGcqUqtW8J4IUdhfH8vTAlXsZYpkRW5B3k/zO8MzR5TuDSb2vGi95zWpG97K7lTWlIfqyUhjwQlRgha1xGCrjzRxWkH+lbJQ1jVh4u1WlNaRsDTZYMQj5qayEG6q9J77KzNz1Dyjg7poLbucpq6GWhv79W9cFncRTzKr3RfuaYtcwAdp+JCxOU00GQFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BIB8reF8ZJulh2+Bq0eXH3RvKOKQJBYzvqQ4/KEr0wU=;
 b=kf02hr2r28BKy60kRRrg2eL/f6K64NoyaPOzGTPsmk/bMcbqgq0XUFkFyGievZCKQSCmAn6DdkCvnRDweO4cgUSB7joCCVLGzeB0ITUX2+p21ykjNbDHpnpxFX8av/mqHWg/3pxwLHqDjNNYBNN70YlrYCc2ykYSkDyTfPhQbmQZ8wnJlIVooZ7Cgz5BAZKJKw7ItvBAA3S6YSXYErs6IoEmJgeR7L+4Aj+zqvOYG9ZntPwkwOug1oPv3u10pRdoGh1pcPbSdj76vNfRRm9rR1bW3SqPqfdnD11jSSRlJG4CZtsumPd05JwfL9FA+SfxLNRL7O/gMFwAzWSyVw0/8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BIB8reF8ZJulh2+Bq0eXH3RvKOKQJBYzvqQ4/KEr0wU=;
 b=VeY2Vi3Nlf/WGhISQCqZPdHK0NKwcOeog/omtNVTxPAhFVsrNiE7fb/5GN9cB6ZNs5TBgXoPJHKfCsFbQw7EtqiGmPkoH4H/gXB/DSbcDUI8zGeXkZ13GLRLHin70IIz49mPqLXFN8RPrVreS8RHb/lOHTHE9vWZ5EpRd1WI2Zo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3945.eurprd04.prod.outlook.com (52.134.65.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Mon, 23 Sep 2019 02:34:07 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 02:34:07 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: RE: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Topic: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Index: AQHVYfv+INaxBRtrokqtKaL9fDhNpqc3/ZaAgACs9fA=
Date: Mon, 23 Sep 2019 02:34:07 +0000
Message-ID: <DB3PR0402MB3916F48DA2A16E57C624432BF5850@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <20190922161415.GD1999@bug>
In-Reply-To: <20190922161415.GD1999@bug>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82796835-2c6a-456e-12ce-08d73fce825a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3945; 
x-ms-traffictypediagnostic: DB3PR0402MB3945:|DB3PR0402MB3945:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB39453BEC49A7526822837F8CF5850@DB3PR0402MB3945.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(39860400002)(376002)(136003)(189003)(199004)(256004)(6436002)(305945005)(8676002)(66446008)(66476007)(64756008)(76116006)(66946007)(66556008)(25786009)(476003)(11346002)(81166006)(14454004)(5660300002)(71200400001)(71190400001)(81156014)(6916009)(26005)(86362001)(7736002)(478600001)(7416002)(74316002)(8936002)(76176011)(6506007)(186003)(9686003)(52536014)(33656002)(7696005)(3846002)(486006)(6246003)(102836004)(99286004)(66066001)(4326008)(44832011)(55016002)(2906002)(316002)(54906003)(446003)(6116002)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3945;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eYvOSZWaT2i+bXf8YtdrpBVstRzdWnVy3aF6Z4SjJWMS6NVS+4cak2NgxasN++EtpZnxTLoXh+bsM8aKaFrBdaNiUuCmZtNRK2nSt94IlkFIA7rC4wenUj5W5d8XXs5M20uoc7+qTNBG//I1YD0W9QnQxDGMSOlXDb+NjELTYwNZQSM333YPNPMb2GhCVZQlqx45W4DEPernFq0ntQcVRHezFgqE4b+1IRlejLH16uQWLIGlVtMOyMQ3KAkH8NVnp3qYlXM04XSa40jao1WF1EX2V5q8J4ZJ2hRZQ57sALhvYy/Vcx8VAosukI5sMs4oliQ3HNTn3oBddYKG8TjKFfF4hd7KjUwSA3g30oVftgYd8NL39zDCzS0msgqOnFf4uJzxshnSuNRBcaByB30eFUpkm5lF+QMDYo/MmVMHddE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82796835-2c6a-456e-12ce-08d73fce825a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 02:34:07.7689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jh5FZn2/A0J4G8IN0IlN2v5qppsDBDo9nvOQhd5NX7ZAy5Df1RYHS90/i6YZaLARo7bNV0bcBRT9dyGnInxTPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_193411_317705_C8BE3F6F 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Pavel

> Subject: Re: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
> 
> On Tue 2019-09-03 10:03:40, Anson Huang wrote:
> > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> > controller, the system controller is in charge of system power, clock
> > and power key event etc. management, Linux kernel has to communicate
> > with system controller via MU (message unit) IPC to get power key
> > event, add binding doc for i.MX system controller power key driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- remove "wakeup-source" property, as it is NOT needed for SCU
> interrupt;
> > 	- remove "status" in example.
> > ---
> >  .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14
> ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > index c149fad..f93e2e4 100644
> > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > @@ -157,6 +157,15 @@ Required properties:
> >  Optional properties:
> >  - timeout-sec: contains the watchdog timeout in seconds.
> >
> > +Power key bindings based on SCU Message Protocol
> > +------------------------------------------------------------
> > +
> > +Required properties:
> > +- compatible: should be:
> > +              "fsl,imx8qxp-sc-pwrkey"
> > +              followed by "fsl,imx-sc-pwrkey";
> > +- linux,keycodes: See
> > +Documentation/devicetree/bindings/input/keys.txt
> 
> Note you have keycode_s_ here, but keycode in the example and in the dts
> patch.

NOT quite understand your point, could you please provide more details?

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
