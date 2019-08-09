Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768EA87D71
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 17:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMQRN+gudgjU7S3lmxQ9IKHCuUHcYpClHY/c9yf/rAQ=; b=nryUSKEfIv9AGn
	jOrmrRVz9nmJ5RE8dKbkdTd4sV5PprE6fZ8aGvV7ivwDpn+nfCZOFk1KiQD/OYB95E6slOqPbiVmI
	LlZ2o0PfEebl4D4OnRNnse+JteO5gCCkhhFPvO4xzXL4Dn61RgbDyDbboNhMvjx1q2KWUsvxSjHBn
	wyVMLeAV2+yHAn4otImw49L0XZYQeJWwHHYsQA2+V+XeSL6N1qZJb9Q9vkLT3liMZf2ZRViOgFzpV
	VRiQwV1VxHNMQMb8/Pb+Ob2TFN+mxEgvdidp+TC/+3yO/Ov94Jfho93hgWNF4ENB8xuCC7RnZUUG7
	EhWU0kJ83rYJHdOKmuuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6Oq-0007RD-BP; Fri, 09 Aug 2019 15:01:48 +0000
Received: from mail-eopbgr20111.outbound.protection.outlook.com
 ([40.107.2.111] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6Nw-0007OP-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 15:00:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lXsso22e7daSkBd222uWj8zvLd/eoHr1nzifCmpULAA4zuiqSrOnE/KMUrEatC0vR4IEIwDep2+53+16sNoJxfFPFCaT7KnYJwwi2eNrjgvMyJkEoNB6hygjCe2MSClUO4QaA6C6GrDOFlHLgOKtik/jS0aEeruuyTOtlXInPKFlrBV58+0F0ADPOvCdM9EZ7GF21lYQKy5ArEYTmrG2xXZZ0XeTY4RqqZZMzf6fmKTDl6EMzdwR8RO26cO8/ya2w8NaKe8fnrEGIOrKdSR4S3wlaU0Vlw11cEdmO7LAJiOAt6Exgk73UH5zM7lsmNA+vDcDmIijOfUImP1MubPlyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zRhFdyQV8oFntXECIDlE+UjsS++x4UxqJ1rMAFuWti0=;
 b=FVi9PqW598r1V47HKQHNYaeUip6H0FZRDpKdHR9Z3Pr+oE+N4x7ri45UZnMsoNnS0HozfWIrucuJIhKCyIP2154Q4GRJnxQqoA9dxbsGn2VQvIOpVSyHRcSzGpKVDY884mmtja2RLOmbrgCMo1JL/S1+1ht4K2k3FBG+8UayeKZsYuhbzveR9SlsaTmqsanqXwVhmBXMFhpMKfCZhLskY7ze3N7JXDH6shKECarJAO4ityeZ26oH4GWiXc5LqOtES8A+qIMK8kJQhPjIReLVwETko41GIgO7MzBuu69M2wdYnUJURq975J7OF/QnmNyyS/hZ8Dnpv73EtRp+otTvkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zRhFdyQV8oFntXECIDlE+UjsS++x4UxqJ1rMAFuWti0=;
 b=dfrxEOMnZ7sDAyYU/Y3WjhRy3wiKLJOdt6MAvzJ/NmmIVCI+x8ZiBLi+dyN8LN0WB1lbg8QrYGbLMWr0m0Ro934+MYjsMKRbPODuPWQeyY+CDJhsK4P7RA/E0cblNXuygNsEpFXzaDBwv1n69g0LKVPGG0bL3oniBFCITikuE28=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB5647.eurprd05.prod.outlook.com (20.178.120.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Fri, 9 Aug 2019 15:00:49 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::f1b2:353a:da9b:c19a%4]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 15:00:49 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>, "stefan@agner.ch"
 <stefan@agner.ch>, Philippe Schenker <philippe.schenker@toradex.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "michal.vokac@ysoft.com"
 <michal.vokac@ysoft.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: Re: [PATCH v3 10/21] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Thread-Topic: [PATCH v3 10/21] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Thread-Index: AQHVTPnPhX4Vi6jCPESx4uK0xhBEO6by7IAA
Date: Fri, 9 Aug 2019 15:00:49 +0000
Message-ID: <c0fa7267d6741ebfc5936e7650388f364dfc63c9.camel@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-11-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-11-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [2a01:2a8:8501:4d00:ca5b:76ff:fedf:3c49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bef4fc6b-c5bc-4e25-f7a7-08d71cda5d90
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB5647; 
x-ms-traffictypediagnostic: VI1PR05MB5647:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB5647878695886EE7DF2D1ECCFBD60@VI1PR05MB5647.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39850400004)(396003)(136003)(346002)(376002)(189003)(199004)(53936002)(316002)(66946007)(6246003)(6436002)(86362001)(81166006)(81156014)(8676002)(4326008)(71190400001)(66446008)(229853002)(64756008)(7736002)(66476007)(305945005)(2201001)(91956017)(76116006)(36756003)(66556008)(6506007)(6486002)(102836004)(186003)(118296001)(110136005)(8936002)(76176011)(2616005)(71200400001)(11346002)(446003)(486006)(44832011)(476003)(14454004)(46003)(2501003)(54906003)(5660300002)(7416002)(6512007)(256004)(25786009)(2906002)(99286004)(478600001)(6116002)(32563001)(473944003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5647;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: p+VkuSTNdnwgkmG720WugOkEPKW8UgscqC52GOwyS668JeiIx5vlyTzXXdkcVo5cfTU4sFQAOfo0Jsy9CuyUxd73wRH54X7849oXyr+51bbGxaAK0WCpNlfadZC4/0c49OPSSnJi8nd2JDHupRgOp8bfY08EuwqUcYXzN+aqVKlrV5DZPa6INE4pZ7Mh6jHmzqqnjfYqVuedFozX5bORrR/4X4HvhImaBB+UGhzePNtnGqFhZrJkI1riXUACHVCplFvmQtSBNo+LD5zZEg5vgvgaEJ8VNCqvamrbQWEvd8cDAQaBDVtYhZS90mQkD6HtnFI9yGoDE9XFcYy68J7K3jMwycMFHIL+xrEP2Uy6r0a8Kl2l/71aF7zMbomqbnNjwfzVIlP/tLPNAQIZmh9FNRgnq1PN+6JqDR2vasdgnd4=
Content-ID: <8959A8F1E13A494281877C2426FEB519@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bef4fc6b-c5bc-4e25-f7a7-08d71cda5d90
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 15:00:49.3495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t10+v6gyA/zqnSu8U6CkV/6NefNxhViN33TPqvxJ5tcxVzruNTjEw/kMlUkNVMvdlySdsysb0oh55gN0ahTJXLVZabx9HkKVI/tHqd0QZh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5647
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_080052_415426_90D10ED8 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.111 listed in list.dnswl.org]
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
> This adds the muxing for the optional pins usb-oc (overcurrent) and
> usb-id.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index 019dda6b88ad..9a63debab0b5 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -615,6 +615,13 @@
>  		>;
>  	};
>  
> +	pinctrl_usbh_oc_1: usbh_oc-1 {
> +		fsl,pins = <
> +			/* USBH_OC */
> +			MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x1b0
> b0
> +		>;
> +	};
> +
>  	pinctrl_spdif: spdifgrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0
> @@ -681,6 +688,13 @@
>  		>;
>  	};
>  
> +	pinctrl_usbc_id_1: usbc_id-1 {
> +		fsl,pins = <
> +			/* USBC_ID */
> +			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x1b0
> b0
> +		>;
> +	};
> +
>  	pinctrl_usdhc1: usdhc1grp {
>  		fsl,pins = <
>  			MX6QDL_PAD_SD1_CMD__SD1_CMD	0x17071
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
