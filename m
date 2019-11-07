Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C332F27B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 07:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QCOKZnntqyYHKwb4rWEuotRRxh5uUdNOup868h+jp8=; b=cb5nXzKgWOtgt2
	Vjar/qzV1MwoxPXrnAa4VVgzEsTtZkUTf7aKbFaAaGR3ZrhXWXalWTB4YrljFFbt5/fx9xXTHmDZS
	e3ctjoNxKJKsnACobfQ8det39Fhjp3dnuduL0XuS5aQJPcoa68UNQYo+3kaeFwRwwgXyHSTdlzChc
	0iogNSEQEYmndO09OfSsYArNpQUI84WJIzHL005nz6ou1I+3Bq8BBlwKmp0UJurp3Z8JJsJAGYc2G
	XADWeDXL+3Z/vIUAqKYZh9Ala3kOvkqT661GI2Dc6giC3cq8g4Jc7GT6zF+GpdO5H+N84Wr3WIecV
	0yT6XpaStktG5+Dc1Edw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSbQK-000432-RF; Thu, 07 Nov 2019 06:37:40 +0000
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSbQB-00041y-Gf
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 06:37:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dlNFw82usSFNqWQzcgJnWOTkxr8WESw/jFHy5RNjvepoOK6LYTgqT0fVESiQq8Qhy527rhQuAvzBPmArt1Md3mo19XsOJ3DomUAXsEn6MbO5aHHnFXJKXmb9nbXMZsuPaS/+z6zoN7QMWGun6A6lpO3AMqsO/QnGIwfW3DqbbaaFO6u38D3K67mgkbTLK0Nw2anqLCN4dnJfvKelIUvWi5XVWF2sBgeQ0yFNry4gc4fd6kIuUb5vmAFymtBn7ePyystsWVtQcL84hXG6YwewIvHY4GmYFiLYQjRL4ZO4hDxKuOxa0B6KqxgGJ/FjKEXCG1KrEeHwY+qXCi4zDY0/eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNXtmNcbX8LR1o+A1iR2EMBYqSMdKw6VuTf18QE9WfU=;
 b=FOBKXjji3OsUMhkBnvVK9SFLbr/4wG2+6UhLzn5w34At3DepMgB5yKLFPBAYMlOos3w2tfhNv073XYwb5BroBprK74PCwW0kOZM+XkrFA+ktmuDwrV1eyRK46vtfuGjN2M8m0+WKGFxr+TIITyv8wkpamGXDWNZtbGU7WShE8jt35HU/siMRHTDM5s5tK7QkPdKsq1FCD9iiPdPlI/zQpFUDQtoy3G4mso7JEgWOXRoFyF9BWDpAYR++mRuKnZBD1U6xOvQkbxTRQhjQaMaT8j4eCbWPKPVlodgFY7GpwsnOHzuHP+heZMXyWEpYdoQDfAMYRyluKe8aY/wCSUCWmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNXtmNcbX8LR1o+A1iR2EMBYqSMdKw6VuTf18QE9WfU=;
 b=L0nL7XxxwAvDfFq+d9ccDMviIf9cdV1/eUn/B6lAmqMZj4go9PbrraB3U9+ZSyoTGIl93kLmsbyqLwdLueFasEGgXxCL/NJIzCdgZJYr0IV6waqW6AK1CH8AvTUcS77mR1qQSe7jJO5bMc6iAKuZhsc56HKt33Hcw0ta3lqY+1A=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4908.eurprd04.prod.outlook.com (20.176.234.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 06:37:28 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2430.020; Thu, 7 Nov 2019
 06:37:28 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "festevam@gmail.com" <festevam@gmail.com>
Subject: RE: [PATCH] tty: serial: imx: use the sg count from dma_map_sg
Thread-Topic: [PATCH] tty: serial: imx: use the sg count from dma_map_sg
Thread-Index: AQHVlRfNofENwEaBB0GOB39FR9UWa6d/QU4w
Date: Thu, 7 Nov 2019 06:37:28 +0000
Message-ID: <DB7PR04MB4490A84F6E06BD2D54261A9688780@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <1573095656-749-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573095656-749-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0ccee4f5-b03c-495b-ab4e-08d7634cf570
x-ms-traffictypediagnostic: DB7PR04MB4908:|DB7PR04MB4908:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB49080293535D7A357664FE5E88780@DB7PR04MB4908.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39860400002)(396003)(346002)(199004)(189003)(76116006)(66556008)(2906002)(66476007)(64756008)(66946007)(476003)(66446008)(316002)(33656002)(3846002)(7736002)(305945005)(74316002)(8676002)(54906003)(76176011)(6116002)(6506007)(102836004)(81156014)(186003)(7696005)(26005)(8936002)(81166006)(110136005)(71190400001)(71200400001)(44832011)(478600001)(14444005)(11346002)(256004)(486006)(99286004)(86362001)(9686003)(2201001)(14454004)(6246003)(25786009)(55016002)(229853002)(52536014)(4326008)(5660300002)(6436002)(66066001)(2501003)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4908;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dwYQUAaq5BoSHxJXdNQwomCf7e+4yo5118ac30egXxSma95JyITWQaY1d/tFhnYinsuNstZiokAtPSvsNPFYyjxKy286dTlZvLrjEr76NF3BE1wfiUvFPv/GMfiCbGoWFh6gyRKf4aZTDLBJEgQ3i/5DjLN/bHpE14BuRn9deuwJRWkvSwrRTHBfVPkkDKHyJjCPjoAMsYpl1D2IzLFw6Hrnsc5s4cJEmPTRtOLSsDFe+Cj7E50bC/coaBM3F/NyNEJOd6mPletpHGm4AqehVieIahG1UzB0UC5kTvtQJ6oHQQ/3t4BsnhiiQ/hnSiVew9PeBNAFxgakDJxJasRwv1MZPgHVejGiTUMtJCJR9QUzIYrn9FDV/MPklEiy21DN1HXK7h6IAgd2JIS28/1FQnINWTVs9nhdwrweKmJHSzGt2RF247V9WbaI/1ZHxtab
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ccee4f5-b03c-495b-ab4e-08d7634cf570
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 06:37:28.1971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MnOdgEwCrxf9t8kjFTGjsBfydE6nq8PiLeDrg2pKmCMlxmKuCIiMYJvnL+DAeHnkpu3aVg7oUlKQhh+UjpTL2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4908
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_223731_554731_1E713CE6 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andy Duan <fugang.duan@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] tty: serial: imx: use the sg count from dma_map_sg

Ignore this patch. Wrong fix, will have V2.

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> The dmaengine_prep_slave_sg needs to use sg count returned by
> dma_map_sg, not use sport->dma_tx_nents, because the return value of
> dma_map_sg is not always same with "nents".
> 
> And update sport->dma_tx_nents with value from dma_map_sg to avoid
> modifing dma_unmap_sg
> 
> Fixes: b4cdc8f61beb("serial: imx: add DMA support for imx6q")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/tty/serial/imx.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c index
> 87c58f9f6390..bda7f59ec60e 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -619,6 +619,9 @@ static void imx_uart_dma_tx(struct imx_port *sport)
>  		dev_err(dev, "DMA mapping error for TX.\n");
>  		return;
>  	}
> +
> +	sport->dma_tx_nents = ret;
> +
>  	desc = dmaengine_prep_slave_sg(chan, sgl, sport->dma_tx_nents,
>  					DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
>  	if (!desc) {
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
