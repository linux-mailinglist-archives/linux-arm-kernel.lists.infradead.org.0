Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E54FE1269
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 08:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9IjtvpGucDdbYDGByEtipiddf4NM1Ljzg2gXudrWfk=; b=eaS+w8uisOfvG9
	2Z3xWXfqg59jDm8UltgzfOAJhuQn1EoXvwWhDj9g1rLwDX8mlPHBRih3lsis8qKNeXsFZUvgeBXZ4
	1+goUfZhWaHDK0Acbn1LjvpxZrHZwwHmHj7waZR7V4DeB58P3uAPZU1IOt/4rg5qbotWvuTvlM46m
	ft7jRkCzAfjlPhuWvuYAXsuLLYcLu6LgyJiGkTus05IgjnwqN6kdRPUe5pV/Z13/YlFFlgHhrp6Y3
	cujU/yhxAFvoQD3pOQLM0elLOzDRO/jWfmqrpDlovF5Gut8GXzYIOCZKeXHY1DcRE6UlR+yPxfHTZ
	zwml9UqFZ+tsvMwY8G+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNAQf-0007FJ-LI; Wed, 23 Oct 2019 06:47:33 +0000
Received: from mail-ve1eur02on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::614]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNAQW-0007CT-8N
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 06:47:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HN9K3MnQ63qqaP4HpChs76bNFqQMO6gi4uIWSQS0q5XLeMMWldztXiMiUXpKQZNvTcofR2pcrpUgc9Y5wikXJ3w4ZkiMhbp8a+gV7HO5besjd/IS1hXXVYm4ITDrTaUuAS4k9MMwCkn14MbMxWX/GgTX6t4gProCCpGQpWPUj/h4RT2PthahOK5gyt6Bj4KZk3ChNKSDUIXHp10NVs8pQF4/kKjG2/DTzWwCGdRby4sgHhNYfLDpWIjAFVhHpaA9vevjVOienpGtVR6Jsdl4Z4jZ1YdRarkX1NL2XqRes9GuL/0W83LgqIoTwBhIOtG3v9WUGUvdxUFVE9PiYIEiBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3D3w+S36N9OlDu0Hq2S2Xj/LiUgg2sXTDH6hem3Cn0=;
 b=EWMKq3D8ne3mbolVjisb6M1hq+S2cY+5i06OScj0FAkmdilCdOfNqXlEy0ivcDavAUaUov6avnqEAZ+1H/9LHiOlvsT9+hoIVUkwVw82W5QY3KGEPy1WPvkkpgsvFtqZ7SA2/h+4pgM1PsKIe8lKRmqVSmL4tv7BdorUfSApvJj8tQ4nP212xug4M+zNJ//aDPQDb+LaPVFDmF57vmslQCbFTHRQwt3rE/AObF9H3cO5cI/EqDqpo0f5MAeu5U6hn8ltkZJ9+2+XmMyAmMHisLthK9kwdCw/yZKFFfVNx65BsczcCf/APAaKDE6Aunm/1cXNWA6749Hl1vibjU9xVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3D3w+S36N9OlDu0Hq2S2Xj/LiUgg2sXTDH6hem3Cn0=;
 b=K79/iDQs/edDeVkLYG/8xTEmDhTVPKaQmHezqgwPADFtnS+qJyojtqQuUF43k7IPCKTQv71yZmr/8c6HKpAphgv6yiJQEAGlrT0uCRlk2kyAI4TgRyYC40DbC0hD3jIJUfi2iYBngI51FA501ubQXm+2ZmM2vI/9QiSS7hcetuk=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB5903.eurprd04.prod.outlook.com (20.178.205.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.21; Wed, 23 Oct 2019 06:47:19 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::b835:b58c:26b2:ca8f]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::b835:b58c:26b2:ca8f%7]) with mapi id 15.20.2347.030; Wed, 23 Oct 2019
 06:47:19 +0000
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
Subject: Re: [PATCH 2/2] arm64: dts: imx8mn: Remove duplicated machine
 compatible
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mn: Remove duplicated machine
 compatible
Thread-Index: AQHViWxkvmnb0NFVUUmALMBBLKBKQqdnyJSA
Date: Wed, 23 Oct 2019 06:47:19 +0000
Message-ID: <350019d21e2e4f2d6e815b1d08a270eb69811441.camel@nxp.com>
References: <1571812481-28308-1-git-send-email-Anson.Huang@nxp.com>
 <1571812481-28308-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1571812481-28308-2-git-send-email-Anson.Huang@nxp.com>
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
x-ms-office365-filtering-correlation-id: deef5a8b-3ea9-4c29-b7a9-08d75784d9bf
x-ms-traffictypediagnostic: VI1PR04MB5903:|VI1PR04MB5903:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5903A1040B2090D5C6FD0CC1F96B0@VI1PR04MB5903.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(366004)(376002)(396003)(199004)(189003)(186003)(316002)(8676002)(110136005)(81166006)(50226002)(2501003)(305945005)(76176011)(102836004)(81156014)(26005)(99286004)(118296001)(8936002)(7736002)(6506007)(5660300002)(71200400001)(71190400001)(6512007)(2201001)(36756003)(86362001)(6436002)(6246003)(4326008)(256004)(14444005)(91956017)(229853002)(6486002)(6116002)(4001150100001)(3846002)(4744005)(2906002)(25786009)(66066001)(14454004)(478600001)(44832011)(66946007)(2616005)(64756008)(66476007)(446003)(66446008)(76116006)(476003)(486006)(7416002)(66556008)(11346002)(99106002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5903;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q01YBo0ZoqCPaqjfjjObqcD4OIVMO68EqzuztUm186HZn+InJyGVkO1FjMQKRmlqAqwAn5LpwkuckYylCD73PGlLxfgNXkEgpA9FaWfR1ovbQu7cGak6x9WPfp8f7wB6L+Dq7J14CZZgQaIIRgrn5VEuAauS0euIh5BXQnR4SxLyGUrLxcVtshNXHK0gz8wBMADgVX0OoAMYJ0t0e+AtJY7X5uMYZ853PImZHgqS8gWlacpdDOy50lI1lceEGXNJEvy+sAaiQVkveBuqRkpp9WH87Xt8SUxqBZDU3STc88SjV0syHWe1cvOD3jEHxJUtRorFqQJ/eHFX5WipHNhvVfopZT11406OvvJo+YFWUEsg0OoaqpzmnEQ9akptpk8NuxqIXj93BwuRsrGJlNpTmqmk2ImLwPYg2K5g7tnNRMQJUqZXghM81fBh2u5azBgY
Content-ID: <C600F8888CCD2747AED605AFA5A3A1D2@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deef5a8b-3ea9-4c29-b7a9-08d75784d9bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 06:47:19.5714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Flv2SD9tjirToarQyADJqR1Oc/mFy+JjxgYowt+ZRU3Lb+2hRjj1UJS28kDg0UhsLeroiTl63tLXgJpYsdoYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5903
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_234724_300831_CDE610AD 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:614 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index 46c218e..7341549 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -11,7 +11,6 @@
>  #include "imx8mn-pinfunc.h"
>  
>  / {
> -	compatible = "fsl,imx8mn";
>  	interrupt-parent = <&gic>;
>  	#address-cells = <2>;
>  	#size-cells = <2>;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
