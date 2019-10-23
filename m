Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F988E126F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 08:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lI4kWvIDvrbhv0IzkQ1OmDajObz9ei0cDNtc8qLbGAQ=; b=cHCZjfZQdrwc/d
	I/FmAsjd6zOnwpgphDEjQwI49FAebAM51J6Ay3R1HzSE+lB9E6l1DspJgdr2ZiYujtARAv1p3T1q8
	niN+6J3mvVE4V+f7rm6NHlJx9am748tw1CoofjdK9J41dsI+4PfiYih3/upMNHW71Doc74KIy6Q2J
	gLjeIkKCxxH7Lmpzo8oRWEt91UtVOiayroCv+ty/LURbLui0Bp5wZUkFVgxJD4BwZYniWaoq34fNq
	zuAkjdb6tov5HVQw4cRqCslzgWO2OnTW9L5Ze6wl73FQCneoFqbEEY56cB3A1dAehmzLRyY39WC3m
	CfsFME+mqJRYK60KqvJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNARk-0007XY-Ni; Wed, 23 Oct 2019 06:48:40 +0000
Received: from mail-eopbgr70042.outbound.protection.outlook.com ([40.107.7.42]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNARY-0007X0-Ho
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 06:48:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JjgKGwFUDC0vxykAnrqLRQJBCV2c5BOUtfPpCxeTAPPhw+9rMGjZGFKFcf65IdxJamfl9yw5qZFVynUcqfj4owsrLqUa85AQneSVTSxcbaELPnZKd2JqDzMJbMISIOywVPnJLEJ41+7oxglzpoKoVDnu87iPleOqqVqnzjIDOR6jX4te6d+EC6j59ts3PhEhkE9/JupC36/MlAulvO0I3v4lw6ocdcXwDqfd8rpJ5lxefJkvyV3fQ1HkuPPWvT04pxSLPUeNcL3FCF40SDWa8Zt20YCFl976q+Kb6x2VWn/fURqTxkqshetZ3s1JHySUSTth3NXMd+53NX2fGWNK0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hidAdPdzkEpK/e/fJQSeFOby+oop34J6oEDhBtSY+qM=;
 b=cOtGS8ecB2qHjb/maer31BrfZ9GcnSxalIL4/4Lh21t6OHxM5h+XtMlYnjfmXvBvEMVPee+LuapmHUrQMrQejZS2cy6pYVvm/yrMlGnc+BRz0eGy/Q6CCHoFNRIA4l3KjVOKyBXJlLvk4tf19tGG82V9Ot685GYDCT2GkIdpdDHE69vjeDP/zXETyGd4b4AhtfBmEV6c4cxe25XAqNrBblyTtyRSDhlKs4rbgmlqglRpuus6BBo54eXUyge8y/4OZi9StBtWkypZe8HVJSQEMp+MXQHII9sLy7KsdP8XhJbyc2x9hWnueqrG8cXE9aKqdwJo+nbpQjvTmYXRoLLwpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hidAdPdzkEpK/e/fJQSeFOby+oop34J6oEDhBtSY+qM=;
 b=saF7jt8b7Rcj6V5XK2jzc5Et9K9OChzUxHAunHVyWcC8SXAGFSlVeuUC7FsRiPWnk1aXn/Yqz0gURw5r6HZU9oM4oFnFsXY2/RgcHSWrJ/TOQgv26JNad6cj908Ssb+PFPP+O8mM2pv1QGOXoyM/AD3jrajmeeV9EaP1SLQVPJg=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB5710.eurprd04.prod.outlook.com (20.178.125.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.28; Wed, 23 Oct 2019 06:48:24 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::b835:b58c:26b2:ca8f]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::b835:b58c:26b2:ca8f%7]) with mapi id 15.20.2347.030; Wed, 23 Oct 2019
 06:48:24 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "festevam@gmail.com" <festevam@gmail.com>, Jacky
 Bai <ping.bai@nxp.com>, Jun Li <jun.li@nxp.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Abel Vesa <abel.vesa@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm: Remove duplicated machine
 compatible
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm: Remove duplicated machine
 compatible
Thread-Index: AQHViWxjRVElS5Fll02b6XXQulFHGKdnyOGA
Date: Wed, 23 Oct 2019 06:48:24 +0000
Message-ID: <1b7a2290851c051236eb66263a10ca96cc54b3a1.camel@nxp.com>
References: <1571812481-28308-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1571812481-28308-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fabd60c7-f2c5-479a-5ae0-08d757850051
x-ms-traffictypediagnostic: VI1PR04MB5710:|VI1PR04MB5710:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5710A8314EC291A7F38B4E10F96B0@VI1PR04MB5710.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(396003)(346002)(136003)(199004)(189003)(11346002)(2201001)(2906002)(36756003)(446003)(316002)(486006)(86362001)(110136005)(3846002)(6116002)(5660300002)(229853002)(25786009)(2616005)(476003)(7416002)(44832011)(2501003)(4744005)(6246003)(6506007)(71200400001)(71190400001)(305945005)(91956017)(4001150100001)(118296001)(99286004)(7736002)(76176011)(4326008)(14454004)(76116006)(66446008)(66556008)(64756008)(6436002)(66946007)(66476007)(186003)(6486002)(256004)(14444005)(50226002)(102836004)(81156014)(478600001)(66066001)(8676002)(6512007)(26005)(81166006)(8936002)(99106002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5710;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /b762f7flnO1RjHqlryzgjThk33hnQz8yR1fLNZFlWADufEFqFE/emuh0YyuDV+LhL0wIYBGGfDyJAFUv6jA/8Y3xod3GlJ+Sv5AFevB3vTve7QMP4IhEPNd+zP4lGM0j1oSUTa69kZlblDSpds1bPP3comC0kNkpFHRG0MeHXL1Agy2qc9B5m/Nq3CyVUPqjaZo9gw9aeJY1dsts+RvJmNabM5fH9U4E/T1EDFKAuCftol/84Vs0/gu6HRmrLKp813pK/YphIL0OVL//wRrceDEtgXbUqRPouH8OdXWFFyJeXiKSW/Vh1uTJMD8feNDcky3tPnrbBwZMMO2QS1IoAldZ1dmHEpFzcQp9sn7e39ULzNGzgj992W4ucxm+r4YjhY8OUYamRoktzamMXWd/XyKM9rE7XQGYccuvYwqqqKnsG1OjNtobsmU8L7F+xXx
Content-ID: <006D86FE64EB55448FAD648DE0068501@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fabd60c7-f2c5-479a-5ae0-08d757850051
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 06:48:24.2513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tU7Vy1h8fKMu6Z+pAh9VER/906YcYVyV86GXfcD6bWYyskikk3I4j0JZGeVCQOCgi4h5R/g2sv6GXSZ8WpDY/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_234828_591552_B561C447 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-23 at 14:34 +0800, Anson Huang wrote:
> Machine compatible string normally is located in board DT, remove
> the duplicated one from SoC dtsi.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 9258150..5ff9b6b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -12,7 +12,6 @@
>  #include "imx8mm-pinfunc.h"
>  
>  / {
> -	compatible = "fsl,imx8mm";
>  	interrupt-parent = <&gic>;
>  	#address-cells = <2>;
>  	#size-cells = <2>;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
