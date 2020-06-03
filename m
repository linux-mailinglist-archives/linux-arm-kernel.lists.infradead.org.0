Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FFF1EC7B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxYa3T8i1+55VYnYzdKuSuy9ufMQq2Mt9U/dR/tWuS8=; b=aqTNqvJvwubTVo
	fQWh5/U2RDGneMRT9iZuF7NdFUxAdqbBGxLFiJP46545HpCCSfsT0iaW/ue/WqYkmo+11Ht6Kbnwx
	m0EbBHMWjYNTampYn1Qgmtyia8V2bRjwaKLDBD4VIwhrIwIPMv7p1jk+0nkEICmwi3VgnwsEmYTkS
	yuFFtvIq5tU5Hw/W8oSjD5sVPLW/VR23Zw5SEMsjq7oeqN2o40ajY3Ty9Dm387p0GidF+ld+jnvX1
	75yRnRf+3gcMmyp5CKm7uSpBbPZXgktG80QnbS8b5NhEmv6c0ljo++ce2RmOopN/KtzH8poKdp52W
	3HBSG0w9dobsg9TdbP9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgJnY-0001Yf-KJ; Wed, 03 Jun 2020 03:10:36 +0000
Received: from mail-db8eur05on2046.outbound.protection.outlook.com
 ([40.107.20.46] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgJnR-0001YF-6s
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 03:10:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VsWwH8+/3pcssC2jGUMqjibiGkhPBkPsEHBmMLrLQ3nSZvBP9TnrB5AP7o6ILx1yMxozMbh1x7qfU0yyQaFNmFnojNVWee/aFQsbvk5RaUI2EvLxtNOdEPEfYo0Q+jtDNNW5W4YRoDLYFA5LHGeH25YQbx/9Vy1+sksgXAi1BOZ0BoDb0cTOs7MLIeW/bEvtBOxZen9kdl5sOPrRFtGL1ffHZVRgRUVnGHaS0hIPAmXAzROw3fYX7Fh/JuzBkgxPzvBPQgJ42ZQnzx3YNGSe60IZAXBQ5jcT0Hy7SSoEVyQu294HsSnQ5JkEq2uOWv0vHazgvDtYiqPTmTB47Tqd2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OaacibbE2lJDFxGLIyaKuAdMHmp7SHzDFyr2oUF8GoQ=;
 b=XqfYC5qySbjYZqL2XGy8o5tNHG2+SGItmu5umxz+faVdDRJlopYSqJ+Qcwj7kWn+bKge9B9gBOEceJzBp/05x483+yOoITqMnjqEwIS8c3nvdNCcuEffpZXxObRHt2v5kVL78Lw+DJJ5nmoQADmiNIkyiNp9tUKeOB19XooeUUMlJqYujj2hstXXCXpOK2Vsdsp7VdGTyEupqN3sbHvstCdjwP17e3f152mEMbC4q1EKMfV/Y4NsethBSavPdCcfGxXdSZ5LbVjdc+R5ql8Fre8nT8ZIFdHehudbHRUvuq3anMHNsdZmAKOovqktjBdsukbKmaE0pZBZeOc665QZ4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OaacibbE2lJDFxGLIyaKuAdMHmp7SHzDFyr2oUF8GoQ=;
 b=ONIB8cm8KpqwsDt2CfWVhxI0l0HUiHyD/KY9qT2YwB9ma1Us5S6gB+YqD3EPTcLtSZ2A5g+fTSy8N4qNbfJTYmi8l1d6mtXd0HpsHs7KTUuk54rMxypElNfbHB0MR2XhV8UwDfausE+dLyo/+/itEhoNgEzBykkmyj9Rkq+3HGg=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2886.eurprd04.prod.outlook.com (2603:10a6:4:97::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Wed, 3 Jun
 2020 03:10:26 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 03:10:26 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Fabio Estevam <fabio.estevam@nxp.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, Aisheng Dong <aisheng.dong@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "jaswinder.singh@linaro.org" <jaswinder.singh@linaro.org>
Subject: RE: [PATCH V3 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Thread-Topic: [PATCH V3 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Thread-Index: AQHWN+7rKaBs4BAoiEu6e8UDHht806jGOLUQ
Date: Wed, 3 Jun 2020 03:10:26 +0000
Message-ID: <DB6PR0402MB2760B88C0C1519203DE49A0E88880@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1590999602-29482-1-git-send-email-peng.fan@nxp.com>
 <1590999602-29482-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1590999602-29482-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fa2bea13-0d5c-41b4-9bd5-08d8076ba9c6
x-ms-traffictypediagnostic: DB6PR0402MB2886:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2886596288BCCAACC4AFF62788880@DB6PR0402MB2886.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GYXbeSpllnmHvmqo0pb9I/wZWn8jHu6+2figSL+s0EIswnj2rgBVZPhOgdwloiz2OQJwBmjUWIZRSCnPDEIrBRxRtl+cMziQkwZkw2L23PXCMo11pL8jkgkxQem2hQ/hGDauRyHSUlQ9LdQFYAwOKlFKj6dw17RiaQlGTDmaUqHwAXq6jpdm4qBurl6xNDcMdSj810i2/TWHBKBHx1uW8UOFooG8ESYaraE8hqfONYjsdOW+Jxw79JpKH4m9VFlVYOrBzoIDGSmSY7etDil1CuMP8Q5ohGFxign+USZXHNIchHEAXXuUBP+D7L9UqLDaOVGjY0XFfNJ4WgPKVnFHNgfxE56hEzTUlgaltjEp+k+sQ/MdT19nB7LZccv5spEfKeWYmfHgp6oP1CMwul0xwRVU+sIlAoWMz5R/LtiUnkqkz7uE/XJs4W32M4aUdiRbvFGb/yY546POZHIGE9Pyhg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(366004)(346002)(136003)(376002)(52536014)(186003)(2906002)(33656002)(4326008)(44832011)(7416002)(15650500001)(7696005)(966005)(8936002)(8676002)(26005)(5660300002)(54906003)(110136005)(316002)(478600001)(6506007)(66946007)(76116006)(83380400001)(9686003)(64756008)(55016002)(66476007)(86362001)(71200400001)(66556008)(66446008)(15585785002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: MhFTtc/maOkcxzKwB3xxmNu3r4B0J8+HoOEGfz2t4B1PGMgQeimQNV5jAqEVBSqLoS3SDR2pqaWlNrhZaMofe/HA+Tvd91Bf6twYUjX5Q/LQwSMxvRLJzEU/eUWBwG94CjrKuxLfBMq0MeQwMLhlAfAvhsDLno1HwqQbZ0Lfiv6pvsPi3JlDMvMEgViD5MT0C/Y/R9JvRUqTldMfFvAkYc8dggdpMd4ChQ4XhAvMLTCLJQWeW2kiCi1RUMY6kqR8ubnok4gwHUBJxwHyMORbSYRrEQObor/VVE7rhl7fuuq3rib8Puz2R3BTI+Ud6nuXRxjMvY5y3L7rND5RKJEf2RTnG8XiiDNvQHBNIavBstH2IhsO4AeAC/YQCglScoGY5RrdcR8ZTjbvpHqmk18zdbUv3Dl6Vp3rt61fgeyljeGtOnk3y6HsbUHk7hvxTFSl30AlofgzFlX0UDQ79nllZfzMEDD3c7s5BYAhoDjkWWfy9FiGB/3nSYB9b3n/E+RN
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa2bea13-0d5c-41b4-9bd5-08d8076ba9c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 03:10:26.3126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AqHHuhqy1klS5oRBfihilKEz0Pb3Or6bfMBherm7aT9YSlNOaFnADCSawpzNMv2yehxQ1Gpyy4+rpN2ldgJT8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2886
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_201029_335197_52640432 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH V3 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M

I'll drop this patch for yaml update, since https://lkml.org/lkml/2020/6/1/370
includes imx8mq/mm/n/p.

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX8MQ/M/N/P compatible string to support i.MX8M SoCs
> 
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> index 26b7a88c2fea..906377acf2cd 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> @@ -18,7 +18,8 @@ Messaging Unit Device Node:
>  Required properties:
>  -------------------
>  - compatible :	should be "fsl,<chip>-mu", the supported chips include
> -		imx6sx, imx7s, imx8qxp, imx8qm.
> +		imx6sx, imx7s, imx8qxp, imx8qm, imx8mq, imx8mm, imx8mn,
> +		imx8mp.
>  		The "fsl,imx6sx-mu" compatible is seen as generic and should
>  		be included together with SoC specific compatible.
>  		There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
