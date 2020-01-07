Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4261327F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 14:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ga4N+1N2pkhPJACpISxJ3m3kn1VANND7mU1S7TvdWuE=; b=QT4/eiR1fqWx46
	osSZTSmue6HcxwD10uDmuHHn2LE0iktwzb3U9mdQf9NtCBEiGJD0gCDJEe92m8kVdkwiq18JiYQND
	zQi7B3DXonmIDcB+ZXh/capmPCYAaoBbNWNDWA77+U8/K7SGdHY56kQVa6b2gqgL+jB57SXFg6mb0
	NNAFSC2xqSDAAfoULutXAN40fmKPa1HHtSbbV5Ov+pabThsg5TH0jPGAbh90FPjMlrXtVE166v1VR
	OF2QOf6BPlpIj46oRfQbCNyPMxyAVnIRQymSNYW/JPbqu3EByx5F5cgdX66dwYYfqn/S+fAcOtnjk
	Zefvgfqb8qCzaWF0s3Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iop6f-0007jb-ML; Tue, 07 Jan 2020 13:41:13 +0000
Received: from mail-db5eur03on0601.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::601]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iop6M-0007b4-FS
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 13:40:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UastT6Tx1TrXSw8EkEHqzrqB/HaUgVYGbHEi09AR9bUPR8JN1Gkge0fCAQc5arTIz/51pJk7s31UotR6ZIGMJAKsJvv7bzzDJBt8dr1R51lMZ9MkZ3qzUjJR6a2+4FLRcbrfDrvCQEkSoS2HSsSPB/4ieRBkA7ZnhYvJfOGL2Hca/77YzTVK6Kb5slYsn18Vm/HwTWqoGqbo6inMIy4sVy7yu108r3mNPDF+0apjlqZ2knU3uNn9mP0avUd5eYZiaz4vqPMTucXy//4zqziYYuQcSiPsPjGPiR/hxLLhK2oGQM7Dt69HXw2wj71XrzLhBucogrlWRuTZXfTjszLXDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QVUBBH38PJFeLWVRmji1jEUfUDRXBdA6ucabKSea28M=;
 b=aDGNmUlkBjQV/KZ5GFUGQeMxnARxRkWB+UozqSKyOEtTIQICSPykP03s3fXDLoapi8td2rsEgUToHLtFgCnpp21R37JX/OrURh9atzOtyxyFu92g/UrDunwmiT3Swd0/IQ8ku+Jg2PPfhxQFgS1FEnBSe3tTR/fPNBR+HW03GfPjxyZZIg+Wv+lpT/xifmQzlAy/ri7pihbPf5qCcrkkqAQcZMIVUvfUOePEAf/xNlALi3Gq5EAxcCyaMW/ytKB9XQtIGX55HxgmGoDSPwflBesstajF20Pi5IOLCs7qNMJ2G7QGkocc4jCcuOunXmiVteo5PYf6ZvL1P3IvdN36Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QVUBBH38PJFeLWVRmji1jEUfUDRXBdA6ucabKSea28M=;
 b=X/mQkecy2yXsEs6kSFd2nnAYWhZ1xsw5Cg5LuVJYODOdlD3UQ2pi3TtGFVUDRWZDNGtXOW+mfrJzWz2J2ofva42xb+efBubcUoHHKb78c9lTd/DQzexEckhHkEo3puZzI1B8QBq+4PZdxDjny5PF4b3vxDBxBw7fFGBXzIhuYys=
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com (20.177.55.161) by
 VI1PR04MB4478.eurprd04.prod.outlook.com (20.177.53.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Tue, 7 Jan 2020 13:40:48 +0000
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0]) by VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0%6]) with mapi id 15.20.2602.016; Tue, 7 Jan 2020
 13:40:48 +0000
From: Iuliana Prodan <iuliana.prodan@nxp.com>
To: Horia Geanta <horia.geanta@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Herbert Xu
 <herbert@gondor.apana.org.au>
Subject: Re: [PATCH 1/2] crypto: caam - add support for i.MX8M Nano
Thread-Topic: [PATCH 1/2] crypto: caam - add support for i.MX8M Nano
Thread-Index: AQHVxMwprOIBO4cokUKxxe/ozllorA==
Date: Tue, 7 Jan 2020 13:40:48 +0000
Message-ID: <VI1PR04MB44459D41D36BCB19430BE46C8C3F0@VI1PR04MB4445.eurprd04.prod.outlook.com>
References: <20200106200154.30643-1-horia.geanta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=iuliana.prodan@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 18d7bbd1-6c97-4903-1bd7-08d793773465
x-ms-traffictypediagnostic: VI1PR04MB4478:|VI1PR04MB4478:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4478C69D3C0C2A0CCCD5CFC18C3F0@VI1PR04MB4478.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(199004)(189003)(53546011)(44832011)(6506007)(5660300002)(2906002)(55016002)(26005)(7416002)(110136005)(8936002)(7696005)(54906003)(86362001)(4326008)(316002)(9686003)(81166006)(186003)(66446008)(33656002)(66556008)(81156014)(91956017)(478600001)(52536014)(66946007)(66476007)(8676002)(76116006)(71200400001)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4478;
 H:VI1PR04MB4445.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tX77YnjooeS93N9bNoYzcSEBI7vt5aVNg+waV0DFhSXS0rNmVrJW1ZWhdHWu331gKzBG99sjmJoV5jmCNomMna6PU5Pr8nCnyJcmEXf/sx9NgKVm/YCdj5Bg8Z4OibkNIGUh6frtOE+QNld5f9pL4Xv+L0yYE8XzE6vReaAfsOf+fgIrW2HJX55WI1IkDiRNNShItgqH+LfThd+Aa32OxFHpfA429EPL426EAeBU+qWinypQ7o/N3ttg+ydJ5GbbaFs+aH3c/DsQrC6rvaOahe38FmI0w1RtHleVqxFBss+V9w+dD5b1afHg1rYeES6g8jk41YcrR4MKEqGYyslKoiTE4uTz/N4svfX8IvEocz4TCwYCzhuiBCdorpYQMJ0VHxSQT+PY0jq4OyFoGG3ZZpobRcCZ63SPrzrWdFC7jKFTN6h5kVEtjHoBivr2uTh3
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18d7bbd1-6c97-4903-1bd7-08d793773465
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 13:40:48.5077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KIW/ZfWkItT2vN3glUBz5aqKeVhlRD+wTRzZMkanwZVFsUcS8hyZy+YA/u69icfLR+94qgFI4LNYzu8e9871KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_054054_656447_5B0ECD37 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:601 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/6/2020 10:02 PM, Horia Geant=E3 wrote:
> Add support for the crypto engine used in i.mx8mn (i.MX 8M "Nano"),
> which is very similar to the one used in i.mx8mq, i.mx8mm.
> =

> Since the clocks are identical for all members of i.MX 8M family,
> simplify the SoC <--> clock array mapping table.
> =

> Signed-off-by: Horia Geant=E3 <horia.geanta@nxp.com>

For the series:

Tested-by: Iuliana Prodan <iuliana.prodan@nxp.com>
Reviewed-by: Iuliana Prodan <iuliana.prodan@nxp.com>

> ---
>   drivers/crypto/caam/ctrl.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
> index 6659c8d9672e..88a58a8fc533 100644
> --- a/drivers/crypto/caam/ctrl.c
> +++ b/drivers/crypto/caam/ctrl.c
> @@ -99,11 +99,12 @@ static inline int run_descriptor_deco0(struct device =
*ctrldev, u32 *desc,
>   =

>   	if (ctrlpriv->virt_en =3D=3D 1 ||
>   	    /*
> -	     * Apparently on i.MX8MQ it doesn't matter if virt_en =3D=3D 1
> +	     * Apparently on i.MX8MQ, 8MM, 8MN it doesn't matter if virt_en =3D=
=3D 1
>   	     * and the following steps should be performed regardless
>   	     */
>   	    of_machine_is_compatible("fsl,imx8mq") ||
> -	    of_machine_is_compatible("fsl,imx8mm")) {
> +	    of_machine_is_compatible("fsl,imx8mm") ||
> +	    of_machine_is_compatible("fsl,imx8mn")) {
>   		clrsetbits_32(&ctrl->deco_rsr, 0, DECORSR_JR0);
>   =

>   		while (!(rd_reg32(&ctrl->deco_rsr) & DECORSR_VALID) &&
> @@ -509,8 +510,7 @@ static const struct soc_device_attribute caam_imx_soc=
_table[] =3D {
>   	{ .soc_id =3D "i.MX6UL", .data =3D &caam_imx6ul_data },
>   	{ .soc_id =3D "i.MX6*",  .data =3D &caam_imx6_data },
>   	{ .soc_id =3D "i.MX7*",  .data =3D &caam_imx7_data },
> -	{ .soc_id =3D "i.MX8MQ", .data =3D &caam_imx7_data },
> -	{ .soc_id =3D "i.MX8MM", .data =3D &caam_imx7_data },
> +	{ .soc_id =3D "i.MX8M*", .data =3D &caam_imx7_data },
>   	{ .family =3D "Freescale i.MX" },
>   	{ /* sentinel */ }
>   };
> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
