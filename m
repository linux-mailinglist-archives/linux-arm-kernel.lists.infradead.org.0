Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C0B15A465
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwrQudtVDiMRDGmbatZun5+lL/2YS/ym//dvBSJJLqA=; b=Gnd+uFflI7js9y
	g7tq++snoJvWngSvaOMWqOUvOHL3CPbp+0Quv+//pWUl77F3FnAsKgIGeXI5az85zDg7gTyCUH57h
	WPmZrOJRQFNQL7WdT55TnKuGK+jmoAW7ZFK9Y70OZgcwHeFVA2AVh34ZnAN16neGjYEz9QJ3oDCYX
	xZzSfm7GKhQkxCd/xoBsgybFqV47ZPy1eS9vcfWfFkI76g607JDVGbAWPx8Djv6ORcz85iWgBifW7
	gFWsPX5o8Fnq6cHQjvWkq6Jghto6esDUlceBmhOgN4z62c6sfVqg37qhG6LF/E46gATNU2cqj9jKM
	fiZY4L8oVEDWXrEPkW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1o7n-0004ba-Lo; Wed, 12 Feb 2020 09:16:03 +0000
Received: from mail-am6eur05on2056.outbound.protection.outlook.com
 ([40.107.22.56] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1o7a-0004aV-LT
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 09:15:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PQ+djMYHbRnDzBklzjYrsYr0aSIDNRYXEnwzR3VEYrS8fM1DDI6V2HeqTPedOaYvxLcPdhGlAu8N1x0V3frZ77omSUlju74y9Tt0zxrVVwF0Yk1I865qVKF+s2ygVWQbaEdukZIlRRsBgl9ZeHdbVt0NsU/QYhkM37+phZ1RQNuSxnx9l88mCpuM5jk/rLDirF0zwZneMDsDYI0jD/P19jaIhBymWpler7TXqTdfa1mepvUZYWPloRQR2AAdd/BT+ncY1uYCu4O6M4DY8c0pg8C+mG2+aDW8hbYPNZTa/35e6AQVYldEue5pUgywLtKt3M5qHFXFvb2W48ug51wnDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HAIEf/+QyeiIQ+a1ZNt/mhUOdaMd61SzsLmGoU7+FHU=;
 b=ZNPOGWsSJOt0/H3kqIajMdKKY+RLEoUPP1RqtJg4IiorwPpaTIXMR8Ym9qy9gs2aoZSSNzf/r1aEFZC73qdRYsT5NY9+CNZpr15TBOfX55tG+xyLWbRqcGuvlIw6WAUys78PTlo5QAV95H3rWlZcZMHZHDbJbmo+wId/1/T1vbvPGUBv1I+qzzj7Hd3X2zHEytYcO+Z9NmrOGZRPeko+tbExvoY2odsuyWtclAzoOEFSKhKaJp04qzABMnbPxbTKqLLQCRxWtP6IfdH/Vt0DlBh/lsu4hojMvLEv4GQsFTWx5+WHuVs1B1yK7oBxmklrR4ZrT7A4YcH1LbO5fO8Mlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HAIEf/+QyeiIQ+a1ZNt/mhUOdaMd61SzsLmGoU7+FHU=;
 b=jmvOrXfsqMyx3vIHjxZGLhrLxBnCnFiLhSDKWryg2gkoP2K5K9cNGn3ZszGZbp5cy4pMJNRcGIpnCCC5jypBNp+ZzCHWGolRXlVwyJbbmoy3Ij9nrZTq4XlSjBKpPEsJOETYqI09XRuRja8/tHEWsVzI5VipVRHo+mrspuwNCdo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Wed, 12 Feb 2020 09:15:47 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.021; Wed, 12 Feb 2020
 09:15:47 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "aford173@gmail.com" <aford173@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Jun Li
 <jun.li@nxp.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8mm: Remove redundant interrupt-parent
 assignment
Thread-Topic: [PATCH] arm64: dts: imx8mm: Remove redundant interrupt-parent
 assignment
Thread-Index: AQHV4XW+d5C7DyyLjk2aRizRdCCKcqgXKOqAgAAeCLA=
Date: Wed, 12 Feb 2020 09:15:47 +0000
Message-ID: <DB3PR0402MB3916BC592914EC3387D457D2F51B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1581492049-23523-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB4481546EFDF5A53078F1A385881B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481546EFDF5A53078F1A385881B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ae7ef57b-da43-4cec-45bd-08d7af9c2587
x-ms-traffictypediagnostic: DB3PR0402MB3947:|DB3PR0402MB3947:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3947255F7536C435D1057297F51B0@DB3PR0402MB3947.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(366004)(396003)(346002)(189003)(199004)(5660300002)(26005)(7416002)(8676002)(66556008)(33656002)(7696005)(186003)(8936002)(2906002)(66946007)(66446008)(64756008)(66476007)(81166006)(9686003)(966005)(44832011)(55016002)(76116006)(81156014)(4326008)(86362001)(71200400001)(52536014)(478600001)(6506007)(316002)(110136005)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3947;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wp/zwWvaK8ZFFntZpqXADo/rcw4Relq5r+YvTQ+NhPAj1ULoGb5agkCC0v8ezaNa+1z/oyPbRms8qpPpDYnlB5VhUTGKGk5KXHAf+qHXmQpMl3XNPtQTk7qB4EJU6wdb3sIFZPZ8Hlw5gPV81njPAPEc4/K7cNKT36ev4+xmueSeYkdokyBqWlBL1jMhaB1PVA6Zx3nKO1geYLmFlvXy5l/iocIWdVzk16grm+sH8Z6FcnGQOQZiNNZDI1ZbNQefhZ81cLaIgIGrnoNk7L96OynbbrYN/9ZpUhM52sbZO2ACW5+lREl1mnQtp1bM8R7ZkEVqVJ1dk4DAwh3ZF+NQAC/AT/j/N67FoT81BT/bu3TdcttGmO/uqDHq7UUn0jU0fwjrircllfVyRGIUE4Rn66OnBJFX76oQhx0KB6Lc23uAahthBbV0WxWyy+5/N0i6/S46FF9OY1IqZx4p8eQZIwaBgI0w5YjTQWIr5SMMU7MTz6gapoTPUcodOCovtmavEF08JnDCK2laPyz2MHkTmXF/4fLz+QnBzMLtEzXiYUUPTsEX3K/cLp4dhnuAYTBG5CAJff1VIi6V4AlN0UaW6kItmlVzkawRQa/tWHTnYds=
x-ms-exchange-antispam-messagedata: vpPGYoSZ/yX3Y/iIb+Prbf2mxf5uSeps2Vo2JtRNSVohDx4YFRwiiuN21oG2++zXQbYRtC87AESg8hYMf5WUVhIDYGjFgwJ3TZybixr1G4ONlMyJej7yExARaaKXjG8ezSXqPFz/2zAnfKhlDujM2g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae7ef57b-da43-4cec-45bd-08d7af9c2587
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 09:15:47.3406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G/380cPs8RXY781KuVd/+PQc+0FD29QlBwtNvJyAMLZ3dqQDhWC2qc80jh+2m5MfmTQnlMcHFeJVc8sKAzvfbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_011550_800834_9E91B6B6 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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



> Subject: RE: [PATCH] arm64: dts: imx8mm: Remove redundant interrupt-
> parent assignment
> 
> Hi Anson,
> 
> > Subject: [PATCH] arm64: dts: imx8mm: Remove redundant interrupt-parent
> > assignment
> 
> There is already a patch: https://patchwork.kernel.org/patch/11340613/


Thanks for notice, please ignore this patch then.

Anson.


> 
> Thanks,
> Peng.
> 
> >
> > GIC is assigned as interrupt-parent by default, no need to assign it
> > again in ddr-pmu node, remove it.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index 1e5e115..b3d0b29 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -896,7 +896,6 @@
> >  		ddr-pmu@3d800000 {
> >  			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-
> ddr-pmu";
> >  			reg = <0x3d800000 0x400000>;
> > -			interrupt-parent = <&gic>;
> >  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> >  		};
> >  	};
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
