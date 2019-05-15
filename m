Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B40F1F18D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaKs+d1AVRfVgYjNAzZiYjpVw9xsc4IK7V7zCiyV6y4=; b=ppIFiPiSvRrUgj
	lCn0gzEa7UKZI7hwWglTvuVE1XRdNki39CjXEfDHLEtFVIO15J3jrNw0TnWQRwMV2PPWKYXr8wkIx
	QrAo9Nm43Z0dlSVjI13qfMLrCB26+TrC0VLnLUpje/pCZeKHcMSZGg1b0FytvCkx8mvuEDJoWcYi1
	nLmO9Ou6VjXjLUuK5vZXMo/7lQE44CK5N9xj9aXjJ3BipDNmT9qdR1C+qLYnPW19BuC1Lvnccu8A5
	xKlxr+g3f9wPUZ8J17jNxCvQmmb0GXslTZlLenj38xmbBG3C/untqgX0QHjTa+JHBmXSN+LYruFna
	7KzBB4lBx6I7re1ZDvqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsWR-0003Za-Oc; Wed, 15 May 2019 11:56:35 +0000
Received: from mail-eopbgr140072.outbound.protection.outlook.com
 ([40.107.14.72] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsWJ-0003Z4-WA
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:56:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9czvIIreUmdJTxciZdE7mshvJdk9XLtrT/Jn7tGL0uI=;
 b=kCWf423Nwn06vX71OCg+pAwbtFA+jwXwOcY4n7jSdG8Te2f6uc9xQhX7ReG5s4Me3QrZ8/seATWOhV8UBthPZrcLG9RIqLAzCY52+BV8abFVj/gUJenEaCHp690rQZJWXqIxFQDhpUv+0yiUZ/+bBDcmqNvKJShe32rNTrmZ2xs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3723.eurprd04.prod.outlook.com (52.134.72.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 11:56:23 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 11:56:23 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVCvixb1MFrIDHlECOalYM+lyDeaZsEfMAgAACb0A=
Date: Wed, 15 May 2019 11:56:23 +0000
Message-ID: <DB3PR0402MB3916FA535853AE7C0438FF8AF5090@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557908823-11349-1-git-send-email-Anson.Huang@nxp.com>
 <CAEnQRZAL4BuHP8MDDBfOXTcub8LVdZ-CyZxdzt-5dseVjMMDQA@mail.gmail.com>
In-Reply-To: <CAEnQRZAL4BuHP8MDDBfOXTcub8LVdZ-CyZxdzt-5dseVjMMDQA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f50f54a2-b327-4a5d-b5d5-08d6d92c5a4c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3723; 
x-ms-traffictypediagnostic: DB3PR0402MB3723:
x-microsoft-antispam-prvs: <DB3PR0402MB3723AF7FC10265086C21C44FF5090@DB3PR0402MB3723.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39860400002)(136003)(366004)(13464003)(189003)(199004)(76176011)(26005)(81166006)(6506007)(81156014)(7736002)(305945005)(8936002)(66446008)(99286004)(68736007)(53546011)(33656002)(8676002)(7696005)(186003)(76116006)(2906002)(52536014)(5660300002)(102836004)(73956011)(66946007)(44832011)(486006)(476003)(446003)(11346002)(71200400001)(71190400001)(256004)(66476007)(229853002)(6116002)(55016002)(6436002)(316002)(3846002)(478600001)(14454004)(66556008)(64756008)(4326008)(54906003)(6916009)(7416002)(9686003)(74316002)(53936002)(6246003)(25786009)(86362001)(66066001)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3723;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6BQvf8T4pqJorPKbRAE+arlMKPG6wo8Jbqs5ETeye9Vmg/aORLSD5VSoMB+fugD3W5OdrqzieoExh4J8LD7S5bxuoqwyY7LCrApoLSuqjoU4NUTqiq06MRzlAdPCpVocPnGElC+4zFTXOfoXPockHbYDFm1TlfhlAvQEpjzbD0o6yBtAo7zL+mqX2o+vrU3Te9Lye3Yg9ORZj5PfttjlrMAszwwTZMA65T44t9ShvDubUTrTlmf7VU0GrUGrmrXZPRKTfgAEwTOpC9lgXWWFcEsFQhWI6PkfGfMXk7iHdecgcWV2tjUXXlv185l4szr9e0JPzrY2KeQF0ls0O2mANucbBtfYzWhHIigpRlwQCxOd3ntXrmjdypLAqUQU6xv3hG+WwnyKgPfL8JawIo0rWvw9ksDEew7CFJmL/Tz6/bw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f50f54a2-b327-4a5d-b5d5-08d6d92c5a4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 11:56:23.5328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3723
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_045628_032661_2F302C9F 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Daniel Baluta [mailto:daniel.baluta@gmail.com]
> Sent: Wednesday, May 15, 2019 7:47 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: catalin.marinas@arm.com; will.deacon@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; agross@kernel.org; maxime.ripard@bootlin.com;
> olof@lixom.net; horms+renesas@verge.net.au;
> jagan@amarulasolutions.com; bjorn.andersson@linaro.org; Leonard Crestez
> <leonard.crestez@nxp.com>; marc.w.gonzalez@free.fr;
> dinguyen@kernel.org; enric.balletbo@collabora.com;
> l.stach@pengutronix.de; Abel Vesa <abel.vesa@nxp.com>; robh@kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-
> imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
> 
> Hi Anson,
> 
> Since you are going to send a new version for this please consider my
> comment inline.
> 
> <snip>
> 
> > +static u32 imx8qxp_soc_revision(void) {
> > +       struct imx_sc_msg_misc_get_soc_id msg;
> > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +       u32 rev = 0;
> 
> No need to initialize this here.
> 
> > +       int ret;
> > +
> > +       hdr->ver = IMX_SC_RPC_VERSION;
> > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +       hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> > +       hdr->size = 3;
> > +
> > +       msg.data.send.control = IMX_SC_C_ID;
> > +       msg.data.send.resource = IMX_SC_R_SYSTEM;
> > +
> > +       ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > +       if (ret) {
> > +               dev_err(&imx_scu_soc_pdev->dev,
> > +                       "get soc info failed, ret %d\n", ret);
> > +               /* return 0 means getting revision failed */
> 
> Just return 0 here. No need for rev.

OK, thanks.

Anson.

> > +               return rev;
> > +       }
> > +
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
