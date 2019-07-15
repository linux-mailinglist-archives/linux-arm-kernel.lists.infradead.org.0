Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8F568347
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 07:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8Zq4PmWzbs9hPWJFiNhrwQoq+m9rBdDQ0lXUSztJC0=; b=u4Z2En7k8LqLq/
	lPFNOWZ4+XKU2vVOf7lp7863a2Z7p057uuERduO5XsZ3GOkBP7bvlZzQspbPaDhyCVMTdjLx0cHhT
	sapjKL3wXcmFFmPhlXeOMGG5O+xaNelvVxcVzEATjrn641pNpaxM5T24dxb9DbRyOVqeROYuA4qcG
	1IkyjD8JUBmgumk1Fs+ihlJPfhf67BU6tFRjvwRaH1FwIcnDEDYYlbA0RoEMX1zC7/RG/yHH8RVoE
	36D8qgWwUuqGFX7E+HYUl5m1ibYJQQiftRGkD+MgYPpm2V03AlDsbDbzlZ7+ijfqf5z9HF7UtXWRq
	nA4efA2h1Geb9H14XUyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmteE-0004ah-P0; Mon, 15 Jul 2019 05:35:38 +0000
Received: from mail-eopbgr60076.outbound.protection.outlook.com ([40.107.6.76]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmtdW-0004aC-01
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 05:34:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CvEBsPYsSyA2gpllmmcOovvFKP7MZynzMPTjcvSGZI8XP2yuUNC1R8sBE4yrx+bbv0KQ4MgipaVzY12sj1qwfIUsGMvcO7iAPrZGPQrKCWcJXHCUkqnhV3e/FzhNBPnC+kX75rH31pX/bhwK9hqgsF5ikc0/sRCDNvyWMDNZbuHyEYvw7L0PowdjNY8FSuGcLPMWNW1+QWFclCiAZ0abENR03o/5sYg3qORJY1EdRCUvf/++kFqHFcV4eqyW8TEpXOb6Bjzgi5XMlXzd3+NGkIeZyFiexE+Jd9hlWMyqPVIKcVjbSgBWQwHtkBHyYjlLomQngGUKp7998mZV/8AdIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CHSg0xbskismv0sHAxrny6SNSNaMq9SklH0dHjD35pc=;
 b=VqfYQBv+ukfaQ8iKDvSlnoRPmpd7VGnS3E7N5dSMTtey7gbcSEPfnKgiauILro7uUxUtOOsvBrQuYxwLh09bYjQLr9zC3d9kZIgax4s1DYhWJK9NAt+qDGd8mHGLGWt7suHuuCC7352vA2lKKlGBEGt5VK9CL2OKV9M5fqheeyLFo6lypCoxzoRK4dstijkVP0MqTTKDeCgi+G9AAbCu6ZmNYnG3DpOUlIVHyeVKioMOv47FP3DJjwh/PZPE4JhJ+pzkJjv4vqv52K5gkg4Q32Ue4RAkJWJOnsmRcmflyGBawBwxfPpOX7cQFaWVxIEsX8t5xtDDuEqe/JStmSt7bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CHSg0xbskismv0sHAxrny6SNSNaMq9SklH0dHjD35pc=;
 b=f8669SJe2tlUwKMPngSN3qmOyqOeJ4h3ZpyBhWtwutPFtiEVGOvhNNQ88811xUQavOP35t3JMS6d/7aLSAFnSZ31e+Th5PXEme66WkkBCpI08zYpI8hywh3eoMbwneRTpj2NOBuhvm2Sui28/mQy+Yk9fP6rzDSl+sJ6DEMMZSk=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB3741.eurprd04.prod.outlook.com (52.134.15.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 05:34:47 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 05:34:47 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Andy Duan <fugang.duan@nxp.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform support
Thread-Topic: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform support
Thread-Index: AQHVMnTq2F+gGEqIWEi9imTz4TJ3wKbLOOvg
Date: Mon, 15 Jul 2019 05:34:47 +0000
Message-ID: <VI1PR0402MB36009610A9F1CCB9D9006349FFCF0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142032.10745-1-fugang.duan@nxp.com>
In-Reply-To: <20190704142032.10745-1-fugang.duan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d28d5a4-1c3e-4d0a-0fb9-08d708e6266a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3741; 
x-ms-traffictypediagnostic: VI1PR0402MB3741:
x-microsoft-antispam-prvs: <VI1PR0402MB374104A494CE2E4355369FB8FFCF0@VI1PR0402MB3741.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:261;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(199004)(189003)(316002)(229853002)(2201001)(110136005)(8936002)(81166006)(81156014)(2501003)(25786009)(7736002)(68736007)(55016002)(6436002)(3846002)(6246003)(4326008)(6116002)(256004)(8676002)(66066001)(486006)(33656002)(53936002)(9686003)(54906003)(478600001)(14454004)(476003)(11346002)(186003)(446003)(2906002)(76116006)(26005)(71190400001)(71200400001)(99286004)(6506007)(7696005)(102836004)(76176011)(74316002)(305945005)(86362001)(66946007)(66476007)(66556008)(64756008)(66446008)(5660300002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3741;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eLBnGX3+0Xi2oSddRH8TG4nvFnmKvfY5d43MQq5RbddsBFFJaIQJExJIV/hdY2furWvbei7TMpH3PR6++nLH5uMNBhrAlDrSlyLwmgSu9IL1CEp0XOgCou4lx31735aGQ4iYQ9OOlo0cglL11v9SRmlRfD8c1r/xEGPU1p4YVsHQly1znpQHp8L4uDElUvPb3jmuaquuVug5Kvgc5dYrq/VmwU8KPHuBFFVI4/06/X9BzP16pFgKWwqWZwUWJLgq7XhMvtMhd86O1XawXBkP0GCx0a173Mk1u7A/BwUGL0fSZivN1J3OQqxINzHUtSowr35qLoAcnd1vk3YU3ohRh3bldcMhN1zXn+JwdpNtKbLUlCBZq+UiAZC/jizvlJEaq1LmrlBECUHeKj7Z4NuKL+x3/m7qdW06L3ARPxjfVLE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d28d5a4-1c3e-4d0a-0fb9-08d708e6266a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 05:34:47.4161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_223454_114638_5937C401 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping...

> From: Fugang Duan <fugang.duan@nxp.com>
> 
> i.MX8QM efuse table has some difference with i.MX8QXP platform, so add
> i.MX8QM platform support.
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> ---
>  drivers/nvmem/imx-ocotp-scu.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
> index be2f5f0..0d78ab4 100644
> --- a/drivers/nvmem/imx-ocotp-scu.c
> +++ b/drivers/nvmem/imx-ocotp-scu.c
> @@ -16,6 +16,7 @@
> 
>  enum ocotp_devtype {
>  	IMX8QXP,
> +	IMX8QM,
>  };
> 
>  struct ocotp_devtype_data {
> @@ -39,6 +40,11 @@ static struct ocotp_devtype_data imx8qxp_data = {
>  	.nregs = 800,
>  };
> 
> +static struct ocotp_devtype_data imx8qm_data = {
> +	.devtype = IMX8QM,
> +	.nregs = 800,
> +};
> +
>  static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
>  				     u32 *val)
>  {
> @@ -118,6 +124,7 @@ static struct nvmem_config
> imx_scu_ocotp_nvmem_config = {
> 
>  static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
>  	{ .compatible = "fsl,imx8qxp-scu-ocotp", (void *)&imx8qxp_data },
> +	{ .compatible = "fsl,imx8qm-scu-ocotp", (void *)&imx8qm_data },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, imx_scu_ocotp_dt_ids);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
