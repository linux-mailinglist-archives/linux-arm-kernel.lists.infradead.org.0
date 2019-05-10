Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD3219D39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 14:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q63Z7ORzWK94e0rPPIsX0cC7ZE+tszwBfz2zXxsoWTw=; b=XZg1szeMKbSl/k
	l4+EV5eyYh0pOd8/s2eHvHmabALWDe1aByF4Nsxg4J0qPfNf9P/u94pw2CxykfciqeWCpnDLY9Y6s
	kR1TUggS3ChwxzI8zfrDc5ceVqErB2Oivsfpit1FWZ8UbItDlBSx63xZAqv29JVn9qXs4pNLQNplE
	TdcoAlh5U6QQXvXVZeu9CbXuxQE4Z6YW3lp/mn4iUL6BJDp8wJz+233kjXyG8RM7zO6amP94P1C6V
	tZ/hru5Wl+TK17qNT18jR+Cje/+4OHW02dIvLOGCty5c0S+T20sd+2mBwj6CLIJNCye1HH0WOUNQd
	R7EWEC80s6M0M2fItxmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP4cd-0001oO-Lq; Fri, 10 May 2019 12:27:31 +0000
Received: from mail-ve1eur02on0627.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::627]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP4cV-0001nT-Sj
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 12:27:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sHQXVUEn7N7YGebv5xUl/OmglcApPH+o81T15w0vtHU=;
 b=FMm8sBC3VbFK2zOp1cO6Y8MMcnkPrq73GBGbhn3Mx4KffRCj3zIzGwx8Ek0MKvhNOCp4NEnSc239d1FSjk8ScNqho073X4gm5c6DHckplQSjOkOm5mTIHb4vRMo7rmGybvDUK/EIbroq4resF+llUbHwJ+Hk8GmFha0cyhAshp4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3676.eurprd04.prod.outlook.com (52.134.70.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 12:27:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 12:27:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: imx_v6_v7_defconfig: Enable CONFIG_THERMAL_STATISTICS
Thread-Topic: [PATCH] ARM: imx_v6_v7_defconfig: Enable
 CONFIG_THERMAL_STATISTICS
Thread-Index: AQHU+k2bJJ9MRtHiIEOyvuqXcpXxpaZjzH4AgAAam8CAAHrbwA==
Date: Fri, 10 May 2019 12:27:18 +0000
Message-ID: <DB3PR0402MB39167B660667C2322E7787E2F50C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556076113-4593-1-git-send-email-Anson.Huang@nxp.com>
 <20190510032917.GG15856@dragon>
 <DB3PR0402MB391661070B9F664C9E9577B0F50C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391661070B9F664C9E9577B0F50C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ae06b1a-9120-4513-1796-08d6d542d822
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3676; 
x-ms-traffictypediagnostic: DB3PR0402MB3676:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB36760825CF8AB4340938DB47F50C0@DB3PR0402MB3676.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:451;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(39860400002)(396003)(366004)(199004)(189003)(13464003)(7416002)(53936002)(81156014)(6306002)(2940100002)(186003)(2906002)(6116002)(14454004)(6916009)(3846002)(6246003)(6506007)(256004)(446003)(44832011)(33656002)(486006)(5660300002)(74316002)(476003)(53546011)(102836004)(11346002)(26005)(66066001)(99286004)(8936002)(9686003)(52536014)(68736007)(478600001)(7696005)(76176011)(81166006)(8676002)(25786009)(76116006)(6436002)(305945005)(4326008)(229853002)(7736002)(73956011)(316002)(54906003)(71190400001)(71200400001)(966005)(66946007)(66476007)(66556008)(64756008)(66446008)(86362001)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3676;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: s4sA/rA6Zsv+xH5ZgacPYnUxwEmpPyWtJmIvG263I6l3zEVpBSF0LB3O0gGdz/0nutVlAjlmnm5PFkPzU7mj17isMCfQ8Yfgg1IL55Am74UiCijCbhFreixlYKBHRPRuI35UhWI7YGTArw7UJWiDH3WTH2Xkn3Cyc8Cldx98oa57crntwwJ6bqPyx05evr6Nn4h8cuBUv+0mSaOr3flE4hpnvc/bj4d2txlUMzIboNgXhfGJJ3JTB2eCB7cmh4SUY++5WlSfeXnu/snAaD6LzuN5fvgApF9GsnpsrJerTtOHtH1AIkHXfmfc/RGd4PXQCmaxtR5av2w1fL0oZr5P8/6dQb+yjdQMkBox+IdtkqMByOmToKQHrXYBVcAKssIR6QSPjUVn/wUGm1mGb6cKyEToCwkYycvCttdpDD14Rco=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ae06b1a-9120-4513-1796-08d6d542d822
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 12:27:18.8463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_052723_932815_E096965A 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:627 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robin Gong <yibin.gong@nxp.com>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn
	I have resent this patch with "Content-Transfer-Encoding: quoted-printable", can you check if you can apply the patch correctly, if yes, please let me know and I will resend all patches maintained by you with this encoding type. Patch: https://patchwork.kernel.org/patch/10938725/

> -----Original Message-----
> From: Anson Huang
> Sent: Friday, May 10, 2019 1:05 PM
> To: 'Shawn Guo' <shawnguo@kernel.org>
> Cc: linux@armlinux.org.uk; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; otavio@ossystems.com.br;
> Leonard Crestez <leonard.crestez@nxp.com>; Robin Gong
> <yibin.gong@nxp.com>; u.kleine-koenig@pengutronix.de;
> jan.tuerk@emtrion.com; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH] ARM: imx_v6_v7_defconfig: Enable
> CONFIG_THERMAL_STATISTICS
> 
> Hi, Shawn
> 
> > -----Original Message-----
> > From: Shawn Guo [mailto:shawnguo@kernel.org]
> > Sent: Friday, May 10, 2019 11:29 AM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: linux@armlinux.org.uk; s.hauer@pengutronix.de;
> > kernel@pengutronix.de; festevam@gmail.com; otavio@ossystems.com.br;
> > Leonard Crestez <leonard.crestez@nxp.com>; Robin Gong
> > <yibin.gong@nxp.com>; u.kleine-koenig@pengutronix.de;
> > jan.tuerk@emtrion.com; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: Enable
> > CONFIG_THERMAL_STATISTICS
> >
> > On Wed, Apr 24, 2019 at 03:27:13AM +0000, Anson Huang wrote:
> > > Enable CONFIG_THERMAL_STATISTICS to extend the sysfs interface for
> > > thermal cooling devices and expose some useful statistics.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > I don't apply patch using base64 encoding.
> 
> It is our server issue and we have reported it to local IT, will resend patch
> once issue is solved.
> 
> Thanks,
> Anson.
> 
> >
> > Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
