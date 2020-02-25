Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563AB16B8F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:18:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIdZXCQxSNFSYnoVMIN6sDbePtx9sYyUDNlS+gCbQ4E=; b=AwUqytQ3H3IvVq
	rY92d+P14FffiY8e2pr2255mX+FKmRrpbrj1doaJ33onejS18TqozvVkYj5rLWF/E03qOx/M1H2/X
	gXFiuPAZbWam9x0o1gqUXyjmmX9s06HaNFDb5MGcE65Xmow/R59lXUHLiuPIK45+KpRyYSRjisCrh
	OZkUrsBjCtkwdxBsLONxlaeIQLePAHKBeTcq1RpJqz2KJhTZhiPgxGfuevnPJ+B0MXivnIZPS/gmw
	7OnBbn81MIsPN8j5vdw1JNLnzNg+u0xfzeHDRG8H0dRdK5vXvI7ju1bBlIcq8YFYjtrsuTvtMdr68
	eEr6fXWs7RzZKJjHua5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Sbu-0001qc-ET; Tue, 25 Feb 2020 05:18:22 +0000
Received: from mail-eopbgr60057.outbound.protection.outlook.com ([40.107.6.57]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Sbl-0001q3-8L
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:18:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYZ5VeDrDqkBupDhux1e3wQdn5mshN/kbAGdpJGA4TMFS1IUY61UG5xM2/Ov5Lli1I3UTQnZT2ZIUc3ZmnoCzJJ0u5CAuHImFb3r3jCyb7hjnN9TsvfuWyIMfDazrDauY+qBnu4Xbd+3uRtEf7Xk9Se5XStHwNGf5uv5Ly2ckC1bl6jBtV8sXxwiVfjQTweuS4GTf1LP5Ky+sluIDoPwI3Dk+NguL09CSmDd6jgUGrnFREBbKndQk/cONfc4FRbDT2tVoxHocv1jjwNiXqVyh0WPKz7QtG+wo7CTEbJADAJQ2MTRiAF3lzz/P8dRkngla1fGl7AQbKWhhy4qfFW/0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlCcV/APADH6Qj15IIZDDC5IRhArJXuRl2BZqVACmwo=;
 b=H6kXApWtrLgIY2JkMhhqlEia7viZYBENxqzBx+cEL1ft5NlhW9YC1trFoede6XMAtJAjTQAIJmKO+o0tAzVjjbjeMQgG/hHtG07tvcvtBAQFwFR0M+UMd0G6fSKR7i4D9kOuID5zXFxxW4EJDgU5kBpjFU8KR56sGHPDyVwnzosZlK0oRxd5eIBoNuQqwj2Ov50EOTNhcJI/KVx1I9LVMyZO1jsb/KmYJ7feErFH/zFwCi+DyYg9VoJHVUxcEaswachzrNesnpdyZ+yuDsMO367CBLHdwElWPIXSM3N1lZ3goFY1kzJ9fh9Z0AI45tzAWANbtVvaHqTBQuVv9f0g+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlCcV/APADH6Qj15IIZDDC5IRhArJXuRl2BZqVACmwo=;
 b=NF4tdZVte2KKIHIDAncxjkFrR/WigzyGesmXZuhjwo8f80RrOj8anPYv+YVq13f2V4tNUKKqYrGbK8Ovxn/nLYRaecKMmR4TAbaakdrqVdvggiDUhv5c+SLnTNLf2NvcFCPDsJQvcg0CtxeurN1LDZkNeMbnULVVLLLmRhp00Fk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6817.eurprd04.prod.outlook.com (52.132.212.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 05:18:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 05:18:06 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH] ARM64: dts: imx8m: fix aips dts node
Thread-Topic: [PATCH] ARM64: dts: imx8m: fix aips dts node
Thread-Index: AQHV646vutoeRArZGkWqXGNmEtg+gagrTTWAgAAQcNA=
Date: Tue, 25 Feb 2020 05:18:06 +0000
Message-ID: <AM0PR04MB448131061921C313B830802D88ED0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582602242-28577-1-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB69920BD928735E22A8B9928987ED0@VI1PR04MB6992.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB69920BD928735E22A8B9928987ED0@VI1PR04MB6992.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a81f70ed-170b-4869-6d98-08d7b9b2187f
x-ms-traffictypediagnostic: AM0PR04MB6817:|AM0PR04MB6817:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB68171292089CFCDA9DEC5E2C88ED0@AM0PR04MB6817.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(376002)(366004)(346002)(199004)(189003)(8676002)(316002)(110136005)(71200400001)(478600001)(44832011)(54906003)(26005)(6506007)(2906002)(52536014)(81166006)(81156014)(53546011)(33656002)(7696005)(64756008)(8936002)(76116006)(66556008)(4326008)(55016002)(186003)(966005)(5660300002)(66446008)(9686003)(66476007)(66946007)(86362001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6817;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vIGwSdDMq+q4PskAFOCLSryeZzqNv2BPOI5F5aiYu1IXr8C5HZ2a+8FgBBbWubQyt29zW+StJ8cf2UXCNraCv0LgoAj91qx6jSZ4hBzzOhVE2oiQ3DJJsSG386Uel9IzvP4/KigQY/Rhs417Ink8fRzXTAtlnVmUx/bX9NZAMUZutGw5tgJEw3yL3Q1wKI3RGFOdKleOEssXS/c9/tN5rsY/wP+rpGJRuUL8oda5qlv1UWwr1JNRcUbh7ICvbPxdeA1ZVXVCI2qY8qDs7P8nhrVGMV0s8/42RtmZmgh2RSEsEMdyDnRJ9+h90NDHRK3JnHyZEmmxZ0Wf4U3Rf8BPqkl9dIZnEhDnDnMz9K8eeIO7SuGaXdZfeaL9Bhs26Ri9MkNoAEDrZE0J6Zkat49qFbQycozmAk19ObNQW7nWd435kv+A0HcfvifUohSo+BdU8KJ7sn2+bmPZ3syAMFmIrKzeZuuyYKfWDizjKzZEfTMPkroqU/8aqM/eh2AYL2SOSvzbwi1tJbgyOp1TfLBftxrWq8keqOApyuwpw4Rxu850dXNx8EDxfXW8ESVdnfvL
x-ms-exchange-antispam-messagedata: LBB3+BGHMZeAQGgukq5hkEZPi+s7aqV77OrdoEnBjqUu/pSAEEGRM+VMeT3MHF4B4CdH6vvmAi/dOOFdr63e7zrD+c0bs5/pcw6D6dYSrfILSLGlFnOK0q+Y3pHH11E6+Io2uuIwYg3AvRrBf7hN2g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a81f70ed-170b-4869-6d98-08d7b9b2187f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 05:18:06.2106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zrja6O/YPY70CuXuzu2XqJbJC1bHAWi7qWDLjmnU6UaPsf6CsDy1IKoODs1io6YKSNpHrsVurLPvVTIq+Y0NwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_211813_527787_0787AC68 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: RE: [PATCH] ARM64: dts: imx8m: fix aips dts node
> 
> > -----Original Message-----
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Tuesday, February 25, 2020 11:44 AM
> > To: robh+dt@kernel.org; mark.rutland@arm.com; shawnguo@kernel.org;
> > s.hauer@pengutronix.de
> > Cc: kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx
> > <linux-imx@nxp.com>; devicetree@vger.kernel.org;
> > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> > Anson Huang <anson.huang@nxp.com>; Leonard Crestez
> > <leonard.crestez@nxp.com>; Daniel Baluta <daniel.baluta@nxp.com>;
> Peng
> > Fan <peng.fan@nxp.com>
> > Subject: [PATCH] ARM64: dts: imx8m: fix aips dts node
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Per binding doc fsl,aips-bus.yaml, compatible and reg is required. And
> > for reg, the AIPS configuration space should be used, not all the AIPS bus
> space.
> >
> 
> Any reason that we need to add the aips bus compatible & reg back? The aips
> config space can only be write by secure world, linux has no permission to
> config the aips port. And it seems no driver use "fsl,aips" anymore.

dts is not only used for Linux. See what Rob commented,
https://lore.kernel.org/linux-arm-kernel/CAL_JsqLsQmv
M0Qsspj5n+1iy5X0TXaULonGtjKRkdOoSQVQmzw@mail.gmail.com/T/#u

Regards,
Peng.
> 
> BR
> Jacky Bai
> 
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 12 ++++++++----
> > arch/arm64/boot/dts/freescale/imx8mn.dtsi | 16 ++++++++--------
> > arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
> > arch/arm64/boot/dts/freescale/imx8mq.dtsi | 12 ++++++++----
> >  4 files changed, 30 insertions(+), 22 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index b3d0b29d7007..a4356d2047cd 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -227,7 +227,8 @@
> >  		ranges = <0x0 0x0 0x0 0x3e000000>;
> >
> >  		aips1: bus@30000000 {
> > -			compatible = "simple-bus";
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x301f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges = <0x30000000 0x30000000 0x400000>; @@ -496,7
> > +497,8 @@
> >  		};
> >
> >  		aips2: bus@30400000 {
> > -			compatible = "simple-bus";
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x305f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges = <0x30400000 0x30400000 0x400000>; @@ -555,7
> > +557,8 @@
> >  		};
> >
> >  		aips3: bus@30800000 {
> > -			compatible = "simple-bus";
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x309f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges = <0x30800000 0x30800000 0x400000>; @@ -800,7
> > +803,8 @@
> >  		};
> >
> >  		aips4: bus@32c00000 {
> > -			compatible = "simple-bus";
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x32df0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges = <0x32c00000 0x32c00000 0x400000>; diff --git
> > a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > index f2775724377f..4848ce82f083 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> > @@ -203,8 +203,8 @@
> >  		ranges = <0x0 0x0 0x0 0x3e000000>;
> >
> >  		aips1: bus@30000000 {
> > -			compatible = "simple-bus";
> > -			reg = <0x30000000 0x400000>;
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x301f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges;
> > @@ -401,8 +401,8 @@
> >  		};
> >
> >  		aips2: bus@30400000 {
> > -			compatible = "simple-bus";
> > -			reg = <0x30400000 0x400000>;
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x305f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges;
> > @@ -461,8 +461,8 @@
> >  		};
> >
> >  		aips3: bus@30800000 {
> > -			compatible = "simple-bus";
> > -			reg = <0x30800000 0x400000>;
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x309f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges;
> > @@ -707,8 +707,8 @@
> >  		};
> >
> >  		aips4: bus@32c00000 {
> > -			compatible = "simple-bus";
> > -			reg = <0x32c00000 0x400000>;
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x32df0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges;
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > index 71b0c8f23693..eb67f56cdfe2 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -144,8 +144,8 @@
> >  		ranges = <0x0 0x0 0x0 0x3e000000>;
> >
> >  		aips1: bus@30000000 {
> > -			compatible = "simple-bus";
> > -			reg = <0x30000000 0x400000>;
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x301f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges;
> > @@ -309,8 +309,8 @@
> >  		};
> >
> >  		aips2: bus@30400000 {
> > -			compatible = "simple-bus";
> > -			reg = <0x30400000 0x400000>;
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x305f0000 0x400000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges;
> > @@ -369,8 +369,8 @@
> >  		};
> >
> >  		aips3: bus@30800000 {
> > -			compatible = "simple-bus";
> > -			reg = <0x30800000 0x400000>;
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x309f0000 0x400000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges;
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index 6a1e83922c71..07070464063d 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -290,7 +290,8 @@
> >  		dma-ranges = <0x40000000 0x0 0x40000000 0xc0000000>;
> >
> >  		bus@30000000 { /* AIPS1 */
> > -			compatible = "simple-bus";
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x301f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges = <0x30000000 0x30000000 0x400000>; @@ -692,7
> > +693,8 @@
> >  		};
> >
> >  		bus@30400000 { /* AIPS2 */
> > -			compatible = "simple-bus";
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x305f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges = <0x30400000 0x30400000 0x400000>; @@ -751,7
> > +753,8 @@
> >  		};
> >
> >  		bus@30800000 { /* AIPS3 */
> > -			compatible = "simple-bus";
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x309f0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges = <0x30800000 0x30800000 0x400000>, @@ -1023,7
> > +1026,8 @@
> >  		};
> >
> >  		bus@32c00000 { /* AIPS4 */
> > -			compatible = "simple-bus";
> > +			compatible = "fsl,aips", "simple-bus";
> > +			reg = <0x32df0000 0x10000>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			ranges = <0x32c00000 0x32c00000 0x400000>;
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
