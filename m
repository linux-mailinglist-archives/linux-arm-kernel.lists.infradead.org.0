Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3734687E21
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyfGL1DMGXDGrzEzneqSTf1CzfyLF13W+zzs2DpbTP0=; b=rvKPjM72wmULfU
	cphXcO3DMLWH6sCPwXosLpwv2yI6fu+NqS77vuHovuFIWecv+AAlSHHopjU1fZBpcWjGWSKt0b7Pv
	kHxNMb4yuk74Rp2qApZ0lnU59RLKJ/CL0vl+hD+m3+h/vZq7qBxzzrzZVBSL2rY4WYOVcTzzTG3FH
	mmCWmQ0Z5Spr5D+j25Ih6MbVk2YCdlfRnD85H+p/yQ9L/12Can/mVn8GkCsMrLAz6gmVu1R/qBZmM
	TQxbgtfBgxHd0Zil6FDSzUUkYMWQf71NqwikLI/3WAsrmDjO6bpAXkhh48TPR2PJAxqqKSNvUWpMb
	hJ8JlJ3jcaPNelpr6thw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6wW-0002Id-U7; Fri, 09 Aug 2019 15:36:36 +0000
Received: from mail-eopbgr10131.outbound.protection.outlook.com
 ([40.107.1.131] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6wL-0002I2-3T
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:36:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cosUpkA5XUaks1bZaB+Ct5O9BlDd0uPceUdPJQT/iyoXFfY7O2piHyI4vR/KeSI0/1gWBLTEF2y4d2i3+1/ckiwC1+zVwVp2HrgyAlsyMrEC6dH2M7iK2IZAWmafjF7MCpRaiKJ/18UKvxPcvyRlruExlGC/KFbLoNpegNF4bY36rX62FvnV8wE/1DWkGfYy9buwR/yfAhKOnzDEU6Sn8uuaunKNF4x1OpUHEwafG2G6tUJiZZP3zjWHg5BwdHRS47VooFHuPhdvrhtM1o6JcJLOlESHIm/jBJ9iWsVhekQV19WiSojOjwIltqwtoMr0CPOfL+ucpZgVSuuL0gPYHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftYVBfTn48LJEHq0oFZdrW7pRJZck54rV3Jt4E2DgVU=;
 b=baxKcfrbPSFx5/gJof/iwIpnYOWIw0h7CUr5nkfTclNDMwc6laV1S3+1InwjOyL+XkXLNE3SKJEvsH3zyMJoxYCgmgRllh8TdB096ODVxXo8kwMyQy9l/fpZVLk45SwqTLd9fUL5zxfPNU0Cmb2vi65pCjOJes078AAOTboc+S3cgEr4BcAogLSZ1CsLHNjFoczZeLSJayaih+e0nW2fN+ZY0ZwhVo0c63C44Fd+W0z7Scj9HxxD2yEjoQvE+ilc5QWJKlfKgeQlg1dUIuoo8Z3HwEdp0+fML8NO9RIaa8SS+o0cE1pI2MFhmA5Qmaw9ZAiQaeLj82Ufb7XXoQRDXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftYVBfTn48LJEHq0oFZdrW7pRJZck54rV3Jt4E2DgVU=;
 b=oO6Uf+91amGTpzyANWJps8+tcwog/D0JT80I898v+hirZs8iPrpIKlYpfDMfluG+YtHQkDmI1xpZImpF3fnjYCoZCzuNEt/p4wMkN+8LGsRSPtMSfqg66nshS2+mLJKlFUYjEowkt9ngCBREuKz0Wb2NznR+FzImP5/acnLlER0=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB4909.eurprd05.prod.outlook.com (20.177.51.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 9 Aug 2019 15:36:22 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:36:22 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 13/21] ARM: dts: imx6-colibri: Add missing pinmuxing to
 Toradex eval board
Thread-Topic: [PATCH v3 13/21] ARM: dts: imx6-colibri: Add missing pinmuxing
 to Toradex eval board
Thread-Index: AQHVTPnS33I5w2Yy6025DybA7v+Vgqby9m+A
Date: Fri, 9 Aug 2019 15:36:22 +0000
Message-ID: <5d73b3ebb81f1245dbc70ff0b81c9f724605df67.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-14-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-14-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e1a4e8a-1735-4e7a-bd3a-08d71cdf54f0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB4909; 
x-ms-traffictypediagnostic: VI1PR05MB4909:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB4909B3C8E138E6F97CDEA7BFFBD60@VI1PR05MB4909.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(396003)(376002)(39850400004)(199004)(189003)(186003)(256004)(6506007)(446003)(11346002)(102836004)(6116002)(46003)(76176011)(2616005)(118296001)(478600001)(476003)(44832011)(71200400001)(71190400001)(66446008)(8936002)(66476007)(66556008)(486006)(66946007)(64756008)(2906002)(91956017)(76116006)(2501003)(25786009)(4326008)(53936002)(6512007)(86362001)(2201001)(305945005)(99286004)(7736002)(14454004)(7416002)(6436002)(36756003)(6486002)(5660300002)(110136005)(316002)(6246003)(54906003)(229853002)(8676002)(81166006)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4909;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N8wHnQ0MaBYVOVt9xdX1OvTCk4KQu/jZywODrwDYFHx6e4zMrvukUaSpRROlDvaAXgm+qm6ciUUBNwbwMtPzHuhX0X6SKsaSxGykdvp3rY+9T8iDphXqjkENGKSDXEu+kY2v0763eG+ALWYc5ho5V3v8zjV9csP3SVBLkjDLWrlvQh6gHXXB4C+2FvxdUmSQTIUP12Z+1CwaSUG8Fh0QvhIiFzXciWjn/LfWnmE1q9DxIOZ7ggTfM0cNUcBFuToxi0wX8ezPIfNVqtMsMpTKJXRbvIqcERgch4QgL14ZpJd6Qq+fpseCiUbMn3R/FjN48rGgyH5o7ekjK3mmiZVmHidWiPUL3Nx9kRgZ8ZboZHy18QYIppJnlKZ50z3dek3I+OpKHH6u+lwGMBW7096WzBqWgq7AjutGTczyP7QGu2w=
Content-ID: <A7D47342D1EA724FB392960A66DA4C3D@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e1a4e8a-1735-4e7a-bd3a-08d71cdf54f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:36:22.2833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ElbfHBPn4+dD82lO5ibimKmWa60K/GFeZKuS4yxLKwtaZL+GRhMQgRxM8NaskHeA6C/KzpVQrtHu0zLcfwowVg1DvGIur9U8SDMXzuir+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_083625_145037_955468BD 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.131 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-07 at 08:26 +0000, Philippe Schenker wrote:
> This patch adds some missing pinmuxing that is in the colibri
> standard to the dts.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2:
> - Commit title
> 
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index 763fb5e90bd3..e7a2d8c3b2d4 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -191,6 +191,14 @@
>  };
>  
>  &iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <
> +		&pinctrl_weim_gpio_1 &pinctrl_weim_gpio_2
> +		&pinctrl_weim_gpio_3 &pinctrl_weim_gpio_4
> +		&pinctrl_weim_gpio_5 &pinctrl_weim_gpio_6
> +		&pinctrl_usbh_oc_1 &pinctrl_usbc_id_1
> +	>;
> +
>  	pinctrl_pcap_1: pcap-1 {
>  		fsl,pins = <
>  			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /*
> SODIMM 28 */
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
