Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762BDB32CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 02:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMNi0DfZfDIrkuuj6IJd+uKEtY3zD9/DPs40ow51Y1g=; b=eT6XF7IG3hTR5M
	/VJ6UOQ5gKNIbkrNrr6XoGCptJ5gJWeJywMQDoPfeirPqvPJWolW/Czz5vmBkI2m3seVw11gtwLL1
	+pe3my8A3Jou5Rr6ZpmP53BmhQJfZolEzo5Y4A1YVkFgcKL+LRrDj1cI7B1TACUc43nEK+P8pV0J0
	9HPlG7KSIT5q2oEkvkF9lk/vESSB8a8/775ZxshZpejzwhQ6GCb67d3UIqyAoka0qm3R49CgNmUok
	Xk6DoJFpA0UmATJWmpGof8QKp/OQcfAjrMUjgxFqrMSVA3qvhSpkzAYAOGPBV04aYRaGuu7WzYrSb
	2cy8vUbm6JLUs1V+1H2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9f1v-0003uD-PA; Mon, 16 Sep 2019 00:38:11 +0000
Received: from mail-eopbgr130047.outbound.protection.outlook.com
 ([40.107.13.47] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9f1m-0003ts-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 00:38:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IYOim6cnQeybf72erfzPD55xiJDHuN3rMa4Rh3HzOowhK3oboS/67/HFs31nrqSv7ym4Ay9Uv5z2gwiGzHZTu0VC4lMUE1FIhMEL5N8+ZpvAm5Kqk0IzKsEQIzM3teSRmUs4nJsmRvdTUkOZ/bMAqFb5qL1etK0o8OJoSlWPhlLX14bbd9KfIMe7NZMcYIf5Dno4ZpBNMY6yH+IelfQpFWVIWYErfUIQFL5bEXvGrKTElPDP0e2gBd418Dw2AbbtX97ZUjUGe9QDnuMtaO1FJjLhjeZDCNx+oPU9NkzGZV2TK6dCt7m32PTPR3TClTSCYgWHiqFv/ONhOBHEsYOPmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99iqV9PIKkuH5wk0XVz0QwVXHhXAsvoozvLxkHvz/8I=;
 b=jve8ZQ+nqt0pSsXaGL+kfXXB7U8BdAAQlvDX96O6Bx0b9WX/61W8TqHxAgFSM6avL/jjpDCP1DwviDnPQCJC6td9wTKLBTm0laK569A+ga1TGNd9D9To4rvuAH3r4p/FxEzbxOOEvQ4cI0yavanJHE5fUpsshB+3lOCLO7tqCPRIwD3e9lbNWrswYeqP0SvkeUXma6RmWXXYU/DW5W0tfLjvFWTC1ZPKYvylItTHVoIcchfbkCl3QJvd3Kf9MJjnTvQ6YbRX2DNqs4/cZ10UKuWferqGddj5KO7HHyPoG551y9SFn73dmq9bNvxVEIg+p7eZszCv1DI2s5gles3KJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99iqV9PIKkuH5wk0XVz0QwVXHhXAsvoozvLxkHvz/8I=;
 b=eWJ6vKhyZzjgKJPEJua29WWPF9f0eAFUoZCNYDliFl7PnTsB3yTJNBRuNnlAzW6LmA4OFCifcMZjhIr67QGwZ7Xp5UG4bQ0hQtGQG8IWaG8U0yuQaAnwXKfVK2XZbMER6LXLwn73P30SGhbgZQZu2oXJqMtWTj/RHAQSErJawLE=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5455.eurprd04.prod.outlook.com (20.178.121.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Mon, 16 Sep 2019 00:37:53 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::744a:c78e:b8:633a]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::744a:c78e:b8:633a%7]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 00:37:53 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] imx_v6_v7_defconfig: Build USB_CONFIGFS into kernel
Thread-Topic: [PATCH] imx_v6_v7_defconfig: Build USB_CONFIGFS into kernel
Thread-Index: AQHVaWPwgvz5FO4uwkubkLEStLwQDacteo0w
Date: Mon, 16 Sep 2019 00:37:53 +0000
Message-ID: <VI1PR04MB5327F5618EAE02D8937CB1A68B8C0@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <e4cc32cf4814aa0d63e72a824fb09f6b637b792c.1568290456.git.leonard.crestez@nxp.com>
In-Reply-To: <e4cc32cf4814aa0d63e72a824fb09f6b637b792c.1568290456.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2439c49e-6aad-47a0-4d4f-08d73a3e1c81
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5455; 
x-ms-traffictypediagnostic: VI1PR04MB5455:|VI1PR04MB5455:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB545580475586B1A5E4D79FD78B8C0@VI1PR04MB5455.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(136003)(39860400002)(376002)(199004)(189003)(52536014)(6506007)(99286004)(6436002)(33656002)(5660300002)(7696005)(76176011)(102836004)(229853002)(55016002)(6116002)(3846002)(9686003)(2906002)(7736002)(53936002)(74316002)(66946007)(486006)(4326008)(305945005)(76116006)(66446008)(478600001)(66556008)(14454004)(64756008)(44832011)(25786009)(316002)(66476007)(476003)(110136005)(66066001)(71200400001)(71190400001)(54906003)(6246003)(8676002)(256004)(8936002)(81166006)(81156014)(14444005)(446003)(11346002)(26005)(186003)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5455;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: c09dqcwKRZD/0hWEjUrmJ4idEfl4pkEL4bhkZwnpfGZezwGnn9fYzahb1M/0prwTcryPrp21709DP8XB8TxDITYvZHtcbt6ZaDCCssP2Ab2nC32/3r1x4w9tWFfZXQCEKyCI+fY6FbSS0+WqD+HTftv7VvswH6++7k82Wu1D4T7R3X8BuENs5GewpZ8ZdHyhPXZ2MwC+xZXUhbBq7j8RiL0RSthET9KnG2XtCeurjz7Mvb3eqVcwByKdkSqOarAkKMKmqK+Gq7kwuAuuQNr5pPsmrZM0AP+puur8vAYxGMlpvKmELGlFJ4W5NYVbuNi+qM2b1EaLTA3gt78mMjgA0T7iU/v9bW53El4NocNefZMNf3yJofSajwVyotqgOyy1G2GcDy+mA8MlQprITo/WzDpR46wYXc7+zMkYxCAUMjQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2439c49e-6aad-47a0-4d4f-08d73a3e1c81
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 00:37:53.5514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YNCBIUT8uy/3Pty9HOI4PlTnYL8eKQjl5/uLyL+QsCfriFgWLrh5N6DLL0IayTYljfdiY7/WmB0W0LJ+zoLVTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5455
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_173802_364851_C27E7FC4 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> Some imx chips don't have chips and a limited number of USB controllers.
> For such cases NXP suggests configuring the USB controller as an ethernet gadget
> for network boot testing.
> 
> Switch USB_CONFIGFS to be built into the kernel so that we can configure the
> ethernet gadget without also deploying modules.
> 

Yes, it could support NFS using USB Ethernet Gadget if the board doesn't have local Ethernet.

Reviewed-by: Peter Chen <peter.chen@nxp.com>

Peter

> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm/configs/imx_v6_v7_defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/configs/imx_v6_v7_defconfig
> b/arch/arm/configs/imx_v6_v7_defconfig
> index ade4a2dd1a18..5debac5b038e 100644
> --- a/arch/arm/configs/imx_v6_v7_defconfig
> +++ b/arch/arm/configs/imx_v6_v7_defconfig
> @@ -325,11 +325,11 @@ CONFIG_USB_TEST=m
>  CONFIG_USB_EHSET_TEST_FIXTURE=m
>  CONFIG_NOP_USB_XCEIV=y
>  CONFIG_USB_MXS_PHY=y
>  CONFIG_USB_GADGET=y
>  CONFIG_USB_FSL_USB2=y
> -CONFIG_USB_CONFIGFS=m
> +CONFIG_USB_CONFIGFS=y
>  CONFIG_USB_CONFIGFS_SERIAL=y
>  CONFIG_USB_CONFIGFS_ACM=y
>  CONFIG_USB_CONFIGFS_OBEX=y
>  CONFIG_USB_CONFIGFS_NCM=y
>  CONFIG_USB_CONFIGFS_ECM=y
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
