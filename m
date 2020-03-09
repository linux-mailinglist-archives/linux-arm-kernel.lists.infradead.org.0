Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5046617E242
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3htC/VGvjTcXOdnezHrH7vkZgkL2aXrfRQfZQFAPh0=; b=CSlj6moMEoXqiW
	2STe3ppBqu1Q2sNHOh0tleRvkKBdDpFCzUbgABvuDLXheelJwHv9Z0wHBXJF7gDaXBaR2QgrPdOal
	t+n8dgrFG74ulR0S51bD384q6l6vK8X1rOWVvSu4iiIhKnopjK9mjqdjeQcxMJSO4XZwgQ3PoYvf1
	CLP6tMMKoiSSeXgEKLtzXB80Lubc+fOw2GGTPAqHybOX63WcLLpkYPtZdfLl6CIVPkkKfU+D2ozAC
	5rkDMcXVjwFJ7DBqEsjkM7YCFfOnNyAlcl7f9Nz2Gb0zAqs0J+TA6flk/KekgvddCOXzUJvSyLzfy
	xd2fUEFZ17SZQs7p9UKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJ5r-00076X-PS; Mon, 09 Mar 2020 14:09:19 +0000
Received: from mail-eopbgr40084.outbound.protection.outlook.com ([40.107.4.84]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJ5c-00075S-RA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:09:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k3PUDEG2WiEMCi7ZI+a5r61NOg2JgiQrB1MIFlSCXYh8xaPfP409rJs+PkQrwPcpmJNUMl469fNo/FtAhfc/0M+bZ1t8WmqvA1wV3DqXkZEHW63fCmXtn70ipVzj2PJahAAom0dZu7mFg9c3NNqxxlShHJwjl8EB2RddDiI+b2D/6yHctpbd/MmfPqacG/8KuYJRphf6vs9sh6CvEmghisTg4c16bVjIyeW/F204gF7eAerTupjyfF2hAGL24SiG7GHQw+y4e0RrPF2W/8ji8JgEi+JokZDKTZyYjJHqiAV9oeQbPWH+Q6okvONHhbzOnmT69Tj0jbLoSRi8anbRPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l6QW/wY1tp0T4HdD1BZX5dsHxITHlG1M6PLh4Uc95PE=;
 b=bX5EMUEMxRkWFrLmQXbX/ObpB7oW14+Msq7OeQ7GEvvah/xnViR/mZcdnBodPhZvh8DGFV8QF/lwhids7jpXcznkdmRhDRezRLT5CrLDAB4Lf97fQsbcZdRyGX7kcoEtfiEY+Lqq2hPtM+D5axWY9i9CrULrIgVFLiLOz/XFqlYv/HmtvjszcnY1QIyY/iKb8Y9r+xNAQJev4bfcQUS6wCLGN4IG1CLpOFnRhgd7GpV1El/3bpGIiDnbtaa3YnmsjkNp0FZsU38Czr1NJTw5xYJzRzQ5YQG5DiFUwdsRPsEq/XOScbdCDIMKtkFvSkkO1KcwetHLARwFruwsrPojGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l6QW/wY1tp0T4HdD1BZX5dsHxITHlG1M6PLh4Uc95PE=;
 b=UZ+32TGpYRh6up+cYJ9NTusaYSlB43bqT22xV+WiVvs5P6PbBMDJARCteOsadufnSizhcnTRDztUOOvy7Qe2VycFggf3iPnAfovhQX2u8M/HgCqhrdcM7FkID4/Lhy4BS73UBmK2gEhGWnNGuWkkjtsbjwAqx7H/mVj8Gb9X6To=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3914.eurprd04.prod.outlook.com (52.134.71.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Mon, 9 Mar 2020 14:09:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 14:09:00 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "wim@linux-watchdog.org"
 <wim@linux-watchdog.org>, "linux@roeck-us.net" <linux@roeck-us.net>, Daniel
 Baluta <daniel.baluta@nxp.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux@rempel-privat.de"
 <linux@rempel-privat.de>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "ronald@innovation.ch"
 <ronald@innovation.ch>, "krzk@kernel.org" <krzk@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-input@vger.kernel.org"
 <linux-input@vger.kernel.org>, "linux-rtc@vger.kernel.org"
 <linux-rtc@vger.kernel.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "linux-watchdog@vger.kernel.org"
 <linux-watchdog@vger.kernel.org>
Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9av62LAReQhoZkKZ9LnT5dFdbahARTIAgAAHnnA=
Date: Mon, 9 Mar 2020 14:09:00 +0000
Message-ID: <DB3PR0402MB39160749F06C0CD4C752AF88F5FE0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481F087AC3CDA691300710288FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ec31ce58-33e0-4fab-a460-08d7c4336abe
x-ms-traffictypediagnostic: DB3PR0402MB3914:|DB3PR0402MB3914:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB391412630D5EA7024E788352F5FE0@DB3PR0402MB3914.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(39860400002)(376002)(346002)(189003)(199004)(478600001)(4326008)(7416002)(8936002)(66946007)(76116006)(86362001)(186003)(33656002)(66476007)(44832011)(966005)(9686003)(26005)(55016002)(66556008)(6506007)(8676002)(316002)(64756008)(110136005)(81166006)(81156014)(5660300002)(52536014)(7696005)(71200400001)(66446008)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3914;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1anTmzqJGit4agYAh/pyy6cn+nxwm4hnondXlirTW2cbDoM7Ldp5/ekI9CQXCW25R55agpa/8+cAJOBvCzmAzjy0im3jc7yW2wme3cks9KPbo7Bx39IvDgVAyU7sm6/DSRRMqYY9ze8ZjCI21fcGWAmqijZEQBv+UCXenWOuaF39lAXcYOPjeuZWIf43/NN8li0kaGtmBKdROXMrkVV2jmbwcJnmrOzXDJvEAkLrb03N5AbZC/g1o5ZkdTEoVNe/BYmytgJRL9Sjy5b0Vgjf5IxXFTMj5M9XhfGe00w2NV8vaR5hE1Izq3/iR3sWi20yG0TcGLZhwTIKQkrb2IRitbBobaYtRwTSxynf9fiQevbD9u5rH3w/9GUFbZ1CHRTG38d8mpIJbgStxBMtApClCIUzg3yxoJzkVbHpdFCT24sUUZKTkFrpjLE1wlf/SlJYojOHmbz0pziDYc1uhyChl6D36kt1msyv/JhYXdDKcpESXwonsiW7EP81dBeYxatv6HG3fLr440Qjhmsm6ICtkPj50uBC6uZi2c52oAbNvaMbT0R4n1Kjq8afXydyIGC+34EwR1+2U0G3u92A1R3qcA==
x-ms-exchange-antispam-messagedata: YRBg7086ld7yyMINmDemmCMLVTwaCKcO1718my+ekBV9udKqxrYmtZCv+5HzkpGuSUgoNaINYW16fenbeqW7o3ASbozbcQzq/7kvNcSFlPQIrAWRr/NJyPaPnzY23w6Ivk+Jx1gZnOaocnQFZ7XuRw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec31ce58-33e0-4fab-a460-08d7c4336abe
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 14:09:00.8709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l5KPTdm4+SGbIFxyqv9Nujz6dhORiNgyOF7o9TISRwCg0SOObOgGWE4iFDNGXapXlL03zWGcCba8OgXIF1yU7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3914
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_070904_886220_3379357C 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.84 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: RE: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> > Subject: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> > case
> 
> I have one patch pending reviewing.
> https://patchwork.kernel.org/patch/11395247/

OK, if your patch is picked up, then 1/7 is unnecessary for this patch series, but
the rest are still needed.

Anson


> 
> Thanks,
> Peng.
> 
> >
> > Add stubs for those i.MX SCU APIs to make those modules depending on
> > IMX_SCU can pass build when COMPILE_TEST is enabled.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> > 	- return error for stubs.
> > ---
> >  include/linux/firmware/imx/ipc.h | 11 +++++++++++
> > include/linux/firmware/imx/sci.h | 19 +++++++++++++++++++
> >  2 files changed, 30 insertions(+)
> >
> > diff --git a/include/linux/firmware/imx/ipc.h
> > b/include/linux/firmware/imx/ipc.h
> > index 8910574..9e3d808 100644
> > --- a/include/linux/firmware/imx/ipc.h
> > +++ b/include/linux/firmware/imx/ipc.h
> > @@ -34,6 +34,7 @@ struct imx_sc_rpc_msg {
> >  	uint8_t func;
> >  };
> >
> > +#ifdef CONFIG_IMX_SCU
> >  /*
> >   * This is an function to send an RPC message over an IPC channel.
> >   * It is called by client-side SCFW API function shims.
> > @@ -55,4 +56,14 @@ int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void
> > *msg, bool have_resp);
> >   * @return Returns an error code (0 = success, failed if < 0)
> >   */
> >  int imx_scu_get_handle(struct imx_sc_ipc **ipc);
> > +#else
> > +static inline int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg,
> > +bool have_resp) {
> > +	return -ENOENT;
> > +}
> > +static inline int imx_scu_get_handle(struct imx_sc_ipc **ipc) {
> > +	return -ENOENT;
> > +}
> > +#endif
> >  #endif /* _SC_IPC_H */
> > diff --git a/include/linux/firmware/imx/sci.h
> > b/include/linux/firmware/imx/sci.h
> > index 17ba4e4..022129b 100644
> > --- a/include/linux/firmware/imx/sci.h
> > +++ b/include/linux/firmware/imx/sci.h
> > @@ -16,8 +16,27 @@
> >  #include <linux/firmware/imx/svc/misc.h>  #include
> > <linux/firmware/imx/svc/pm.h>
> >
> > +#ifdef CONFIG_IMX_SCU
> >  int imx_scu_enable_general_irq_channel(struct device *dev);  int
> > imx_scu_irq_register_notifier(struct notifier_block *nb);  int
> > imx_scu_irq_unregister_notifier(struct notifier_block *nb);  int
> > imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable);
> > +#else
> > +static inline int imx_scu_enable_general_irq_channel(struct device
> > +*dev) {
> > +	return -ENOENT;
> > +}
> > +static inline int imx_scu_irq_register_notifier(struct notifier_block
> > +*nb) {
> > +	return -ENOENT;
> > +}
> > +static inline int imx_scu_irq_unregister_notifier(struct
> > +notifier_block
> > +*nb) {
> > +	return -ENOENT;
> > +}
> > +static inline int imx_scu_irq_group_enable(u8 group, u32 mask, u8
> > +enable) {
> > +	return -ENOENT;
> > +}
> > +#endif
> >  #endif /* _SC_SCI_H */
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
