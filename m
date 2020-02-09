Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37341569B8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 09:41:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xV7HtcIcQV7uBgwRDp5pHKeaYub+xei8Cwhh4qdCpNg=; b=Wc0G0h5kmN/Lpr
	Dq24gsyEDrIl1hYMwtfdug+i4/OsIOaR1WiW7rpm6mN5R7SKp0X3tf3kHZI1LObeR21ebipGJb8yL
	imbInbli+Ry4EVSQAr1c7T3l8a0+hgWq9bDLdcgJSWnWiHiZclwpvoCdJWDp/DOZju42FCFq1ApWG
	cZtddDcSkVBoFqmxwD1PUDGrIM8qwgSPQ1ISANgpO+FG+/oyrOgyYQhZrNJ/zw4ebxKThuF0akSoK
	rtfPtccUr20MtBjaPWfA+0Rt1dGJQqN/fxR7pLpbal+fofzyPwCl5rWugRPOupg0x9KXwTe4Qw4ih
	OEtsaa8TMZsDJsjTd8mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0i9k-0004As-9N; Sun, 09 Feb 2020 08:41:32 +0000
Received: from mail-eopbgr60046.outbound.protection.outlook.com ([40.107.6.46]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0i9e-0004AH-Rz
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 08:41:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eaeGLB+AdCV+uRubtjyShjPkN7uKmngvaFcnn0rYPjJkjAde53bFSYvdsNLyUw5qmperXThxbqYVe8MAbs2dALihiIt6T0N8xnpmMvfyJmIatGLhNH9LVaLhqLW3fS6DICaN0hHSsoQO3u4RfqANMh8OG/tf8c/PslS0sH1DdVRJR7MgaZ0etOb1YXm5OKnGlF3Lx8x1GcU5vGHwN5f48YUTSjQYciYil/YCeKRmDXWDeDO8kvG9tOcpaqjhb7JpSqDmjVHaBq8yqdVY895PxA9E6da7NIw0Fe36SKa3BthvaaMnRI7MWYqPBoYFAGM4bn6ospWlfCTFbDqZOkTHcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+wdxIVpMkPIKxK/PtXcPCJQvn9lnB1B7mvhpko8Ph3c=;
 b=lNGn464JggEeiELSMUTAbBDpRYkw4/RAWP7M0iav8zg4aSOtVIkydbuEgHLOzg2/z9x/JHTIAq+d0hXBALEsNfUgFCe7xj/qXdccOVjyc/zz5WuvNigO2ML23nfWnyj8bsjg4HsL2rWwdDkS9eaaLTrXXG9z9YUGHJ0pJurZhiDpZ/KfCubS9an50t2C+m35wjS/snJEikoOXD63CPnZuaMjYccbp4mTwAxRHAUz0LbaY7xdzuU9jabl3UxC9PALsx22jDBMRa/M57UaHAIZUeNnzoA3en+oq3ZmkUqItN32R1uW4ENCzhMd3r85MQSC4UvFicOQTDc+URjwXAy37A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+wdxIVpMkPIKxK/PtXcPCJQvn9lnB1B7mvhpko8Ph3c=;
 b=VUGRRyzUj+I6hDrnrZCV9boklujH/dDqYjJeARVigamzEjwtOL03vlft20SXOD9yHn3hnlo3PrPvJy+OjmRwb26JfzhVJtbcgcttOva6cA6pDzyEBeKk1pitMj/mZetRTKQ2J7rxjFLmyhUCTF+zox1J+f/nk7bJuGpIHcLvEec=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5843.eurprd04.prod.outlook.com (20.178.118.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Sun, 9 Feb 2020 08:41:20 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.028; Sun, 9 Feb 2020
 08:41:20 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>
Subject: RE: [PATCH] nvmem: imx: ocotp: add i.MX8MP support
Thread-Topic: [PATCH] nvmem: imx: ocotp: add i.MX8MP support
Thread-Index: AQHVzOYys8WB3+BLO0KUDipX7ftHWKgSr3Rg
Date: Sun, 9 Feb 2020 08:41:20 +0000
Message-ID: <AM0PR04MB4481AB5A3E3D7D623EA29923881E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1579231433-14201-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579231433-14201-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 53c5c0a6-f7c4-44c0-af56-08d7ad3bd663
x-ms-traffictypediagnostic: AM0PR04MB5843:|AM0PR04MB5843:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5843C4F4DF2D4CF6CA3E851B881E0@AM0PR04MB5843.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0308EE423E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(199004)(189003)(81156014)(2906002)(8676002)(81166006)(7696005)(8936002)(4326008)(44832011)(186003)(26005)(478600001)(110136005)(6506007)(66946007)(316002)(86362001)(5660300002)(33656002)(76116006)(54906003)(71200400001)(66556008)(9686003)(52536014)(64756008)(55016002)(66476007)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5843;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HsJJQDqAhT3uFngL4UQc7mfkTI6DtEyWwgVzSi+jhvAbbMMAVXc23AZP9ptOa6NDa8i+pf1BP/lKTKDT7MF/1IxTcsXfBrQ8mxvMz0/keNY/f3qMPEeGzSvmJEJXi9ewNDNFufVcXo1mU0c16brQeCVOpVHnrTw/s5ejwXqqVHHZ7oJANrgwA13Tv20WBmsajgLrDosIk2tCpN1eP7Z2e4QS5GHNxbhoYWlzlLyJkG6HB6LpuXWx+kRaVhVsSm2m/u7IbJUKhP42pAslcNB8/sonJrFmhho8CqOVVWCvPIMPoJX+554tJAE1nfToNuZZ05iRHf7ODQgmxBO9hnTN9w03FrywRsTAEVryKHYoKOdUkWk6i2yHckGfuSkL9dvaTefs5Ucm/GbH8UMoQ4xFkxzlXKtH1sIWkW40et4+7XLnG/3BrtJum93MfEgNWLTM
x-ms-exchange-antispam-messagedata: lo1u+x4LCkcKZFFISkJHQElU9iwnNCF5PlTx6kKuJM/gSB98TSap5eSnG7Ru4qFEnVPTaG6zYrlqCNC0AiMQ98Rudmiqt/xfL9veEZJIPbm/1bjagrQ5AgNhX4fqRLae1gRPUvQNkOkGsGgt2gvnJw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53c5c0a6-f7c4-44c0-af56-08d7ad3bd663
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2020 08:41:20.6847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zMHuqJuQ/DAqkAmgAa8ka9vqY4RqXBq8jUNem5MJhJ75K7ZTdJIokzfke5hHLeYi998CHqVRyFZR/rHBerJBMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5843
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_004126_906622_CC935848 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] nvmem: imx: ocotp: add i.MX8MP support

Gentle ping..

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8MP has 96 banks with each bank 4 words. And it has different ctrl
> register layout, so add new macros for that.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> dt-bindings doc has been posted by Anson Huang
> 
>  drivers/nvmem/imx-ocotp.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c index
> 4ba9cc8f76df..794858093086 100644
> --- a/drivers/nvmem/imx-ocotp.c
> +++ b/drivers/nvmem/imx-ocotp.c
> @@ -44,6 +44,11 @@
>  #define IMX_OCOTP_BM_CTRL_ERROR		0x00000200
>  #define IMX_OCOTP_BM_CTRL_REL_SHADOWS	0x00000400
> 
> +#define IMX_OCOTP_BM_CTRL_ADDR_8MP		0x000001FF
> +#define IMX_OCOTP_BM_CTRL_BUSY_8MP		0x00000200
> +#define IMX_OCOTP_BM_CTRL_ERROR_8MP		0x00000400
> +#define IMX_OCOTP_BM_CTRL_REL_SHADOWS_8MP	0x00000800
> +
>  #define IMX_OCOTP_BM_CTRL_DEFAULT				\
>  	{							\
>  		.bm_addr = IMX_OCOTP_BM_CTRL_ADDR,		\
> @@ -52,6 +57,14 @@
>  		.bm_rel_shadows = IMX_OCOTP_BM_CTRL_REL_SHADOWS,\
>  	}
> 
> +#define IMX_OCOTP_BM_CTRL_8MP					\
> +	{							\
> +		.bm_addr = IMX_OCOTP_BM_CTRL_ADDR_8MP,		\
> +		.bm_busy = IMX_OCOTP_BM_CTRL_BUSY_8MP,		\
> +		.bm_error = IMX_OCOTP_BM_CTRL_ERROR_8MP,	\
> +		.bm_rel_shadows = IMX_OCOTP_BM_CTRL_REL_SHADOWS_8MP,\
> +	}
> +
>  #define TIMING_STROBE_PROG_US		10	/* Min time to blow a fuse */
>  #define TIMING_STROBE_READ_NS		37	/* Min time before read */
>  #define TIMING_RELAX_NS			17
> @@ -520,6 +533,13 @@ static const struct ocotp_params imx8mn_params =
> {
>  	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
>  };
> 
> +static const struct ocotp_params imx8mp_params = {
> +	.nregs = 384,
> +	.bank_address_words = 0,
> +	.set_timing = imx_ocotp_set_imx6_timing,
> +	.ctrl = IMX_OCOTP_BM_CTRL_8MP,
> +};
> +
>  static const struct of_device_id imx_ocotp_dt_ids[] = {
>  	{ .compatible = "fsl,imx6q-ocotp",  .data = &imx6q_params },
>  	{ .compatible = "fsl,imx6sl-ocotp", .data = &imx6sl_params }, @@ -532,6
> +552,7 @@ static const struct of_device_id imx_ocotp_dt_ids[] = {
>  	{ .compatible = "fsl,imx8mq-ocotp", .data = &imx8mq_params },
>  	{ .compatible = "fsl,imx8mm-ocotp", .data = &imx8mm_params },
>  	{ .compatible = "fsl,imx8mn-ocotp", .data = &imx8mn_params },
> +	{ .compatible = "fsl,imx8mp-ocotp", .data = &imx8mp_params },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, imx_ocotp_dt_ids);
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
