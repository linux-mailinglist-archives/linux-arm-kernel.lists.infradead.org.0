Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DCFAB2A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4u9WPM/A/kTthwD6izOENGM923HzTasBC/sUvLrM8ms=; b=HWL3jTafIeRgVE
	dfU3xzRWGYD0nlXvMK9fxz2X6Znex2kWsqikjQhOhkfo/p0anJT9cSlzk1iLgcDPZpDXoUVJ1Ohy6
	c5iTG+KlWE5uq54m0VVUQJHxW51MejGcGJgRdTmJKShcs3lGJ+dBCz2zO5X+7XGPfo6rKpTHgWOEz
	jBnhXa+R0cXb+UNOXHhWMszKeuaoTkaAzKQDWzLxMyJp0v3pQd1MA01V1q4jxg4XszMVrTFBwv3tY
	8JPyZhsmJYHQSEFUwX3pCm0WTFPnift55nt8Z3APxgfI7QLR5WIqtK20ibPGD2SppyCUSwx2BvsNB
	FkQgRd8isOhUsd8AMMLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68BI-000712-Ea; Fri, 06 Sep 2019 06:57:16 +0000
Received: from mail-eopbgr00065.outbound.protection.outlook.com ([40.107.0.65]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68BB-00070f-Kw
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:57:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JKdPn86Afqnxa0sC949gg4CYzlmbcaXtqsZgbkbAB3IcN03R7n0dShTUnUbSB0C1tKDcYD59kBhMOTf4V6Cdx0bYE3brjSnermqbnEtYtIIFlKm5pvK+78Jz7ngtYuME394GilCeDiy+S5khNqiM5jUlnZ7xyy3/7rvjCJYo5+MUwAkkYxILJEmKvpTvdpPvZkVy3WNixX0rGerI/OTm58O9FN2aueoXUsSSS92A+tA6lkxafHNcalaHjLcX59tFPhfCsfqXRcH4MaItcFVpGwx8084EDX8fqgupPK+LHJWqpv1jyFPNVRzjlxyhfHcuiiPDpYqJ5yY4OafYMRmnHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tuXw6Xkb2fu6HqbDTjc2oIDBJ0JCOvQA9ZY9+takP58=;
 b=Wkq3sx1cO3hgOMsucDh/mRsQPZklCCdaUQcq9ulx3ekHAloc2bLEpUEYB8IGt9QXnez3xsmePbNzAkt+afhVyYCxzEn9fDRKEv3/oy2bPfb1tQhmbOqrw5+0eCxcqNYWw9XTPNJzcosNBR109RFzCqhFX3U0AlxqZTs3B2uwhhGpbyw2/r/AahFXI40Q1u1FQc2mrL07jnyjHBlhk9WePPxNaKGuHl1pN6CX1OfojSX+HIznmwC9pajj9Zg8PDl8eHLx/06qXv5gjdOvgnsStdvzT+KS/Agnf9hpgzZicr0S3LYlnOnKbDbrQQPquSYvGLGNyeXds5LlHPdEq6ge+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tuXw6Xkb2fu6HqbDTjc2oIDBJ0JCOvQA9ZY9+takP58=;
 b=eCiIV90kPRa4IzWwXPH92k0aFoQePcc3IqH4eDn7nlWfelGPMNaVNn3qDq+yF+qHXHJZpG6qCnctvCUJUgxRRm0G8Fm3sizRY9nbwPbKvDNctFZP+2IMH6IVx8JFvqSbD4cs7MzyL71H47mxBN6jUjDDEX76rQpEqqQUBvgQdUE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6530.eurprd04.prod.outlook.com (20.179.252.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Fri, 6 Sep 2019 06:57:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2220.022; Fri, 6 Sep 2019
 06:57:03 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 1/2] nvmem: imx: scu: support hole region check
Thread-Topic: [PATCH 1/2] nvmem: imx: scu: support hole region check
Thread-Index: AQHVV89jBufiQMcQikKEwxbrgUBx8KceUNGA
Date: Fri, 6 Sep 2019 06:57:03 +0000
Message-ID: <AM0PR04MB448106FD48328C2261260F7E88BA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1566356496-30493-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1566356496-30493-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b4ca197-9bab-40f8-dc89-08d732976c4d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6530; 
x-ms-traffictypediagnostic: AM0PR04MB6530:|AM0PR04MB6530:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6530B75A4E35E8A3367AE9F188BA0@AM0PR04MB6530.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(199004)(189003)(43544003)(81166006)(52536014)(229853002)(81156014)(74316002)(2501003)(256004)(2201001)(14454004)(8676002)(478600001)(44832011)(476003)(486006)(7736002)(33656002)(11346002)(66066001)(446003)(26005)(76176011)(76116006)(2906002)(186003)(66556008)(25786009)(110136005)(54906003)(66946007)(6246003)(6436002)(4326008)(305945005)(5660300002)(71190400001)(71200400001)(6116002)(3846002)(8936002)(316002)(6506007)(9686003)(66476007)(64756008)(66446008)(53936002)(55016002)(86362001)(102836004)(7696005)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6530;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: O4t5UK1WvAprjitqMHhEM3eZg3mTdbESU2rzNTsUKfvg6s/uCA2j2bjTAdYCHAeRnKk0FyE6wiwSQ7O2Sbhw5rDd0Tiuyxj47xEgJMIREm/7Wh3+K8/W/UJF5iT5WgbqwqNKemgmQUR7D7nj2mzUJj7IDEFvYY59W37LvkhK+UAzWdldPPHvqgQkpzNu39mGnbo8qirSOmMOxAheGfw0+9Dncsg02nuGwe8Dy/2wYwOOmKU23WrgNjd+ca3nHHEbUQzRtWDOVGYf03sES44bBjuO10/GYCWrGWBMZcsXA2iCQudleJ9nH5vdaN+rnu+s9eChAruedgMUjgZkIhqHnFzXySYsb1tP6fHETE0x/zdXLTHhbSu9GhZuohjv9acW3Bk+AtiV/cqmgy5pDkefXHYwpwkN0NyjgvPwXAeExYU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b4ca197-9bab-40f8-dc89-08d732976c4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 06:57:03.2098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R+IMMwS01N97aEWpPG0g92065AimmgFrVl3p7yyfAQLx3cacsP5KLLClGFX+npoMArw3h2b03AtHpTgg4fYHzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6530
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_235709_872051_A6E8013C 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 1/2] nvmem: imx: scu: support hole region check

Ping..

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Introduce HOLE/ECC_REGION flag and in_hole helper to ease the check of
> hole region. The ECC_REGION is also introduced here which is preparing for
> programming support. ECC_REGION could only be programmed once, so need
> take care.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/nvmem/imx-ocotp-scu.c | 42
> +++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 37 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
> index d9dc482ecb2f..2f339d7432e6 100644
> --- a/drivers/nvmem/imx-ocotp-scu.c
> +++ b/drivers/nvmem/imx-ocotp-scu.c
> @@ -18,9 +18,20 @@ enum ocotp_devtype {
>  	IMX8QXP,
>  };
> 
> +#define ECC_REGION	BIT(0)
> +#define HOLE_REGION	BIT(1)
> +
> +struct ocotp_region {
> +	u32 start;
> +	u32 end;
> +	u32 flag;
> +};
> +
>  struct ocotp_devtype_data {
>  	int devtype;
>  	int nregs;
> +	u32 num_region;
> +	struct ocotp_region region[];
>  };
> 
>  struct ocotp_priv {
> @@ -37,8 +48,31 @@ struct imx_sc_msg_misc_fuse_read {  static struct
> ocotp_devtype_data imx8qxp_data = {
>  	.devtype = IMX8QXP,
>  	.nregs = 800,
> +	.num_region = 3,
> +	.region = {
> +		{0x10, 0x10f, ECC_REGION},
> +		{0x110, 0x21F, HOLE_REGION},
> +		{0x220, 0x31F, ECC_REGION},
> +	},
>  };
> 
> +static bool in_hole(void *context, u32 index) {
> +	struct ocotp_priv *priv = context;
> +	const struct ocotp_devtype_data *data = priv->data;
> +	int i;
> +
> +	for (i = 0; i < data->num_region; i++) {
> +		if (data->region[i].flag & HOLE_REGION) {
> +			if ((index >= data->region[i].start) &&
> +			    (index <= data->region[i].end))
> +				return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
>  static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
>  				     u32 *val)
>  {
> @@ -85,11 +119,9 @@ static int imx_scu_ocotp_read(void *context,
> unsigned int offset,
>  	buf = p;
> 
>  	for (i = index; i < (index + count); i++) {
> -		if (priv->data->devtype == IMX8QXP) {
> -			if ((i > 271) && (i < 544)) {
> -				*buf++ = 0;
> -				continue;
> -			}
> +		if (in_hole(context, i)) {
> +			*buf++ = 0;
> +			continue;
>  		}
> 
>  		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
