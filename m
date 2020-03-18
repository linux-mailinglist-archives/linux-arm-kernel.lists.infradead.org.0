Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A3A189432
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 03:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=rSBGhcQxdFUL8Zv5T4FSNaXokfaHfirx1BXfLunOGqg=; b=dNCPufWIEuJjlM
	ReP9iz44L6XXTq5P1SW+1/i+uX7yxSnKh3eI45k01lboexQE1nM/Slrmv77xGPFhFuHDr7F7Vbsob
	sIlS4ovCN5GYHSzTdq7Yq0zbrYjLr34uxgRCU6jbwP4sgQD2RRUQR08xF/1RP/TckHYJGySFe1mhc
	HtoiFpwz6kWRv7pcGhd+oZgWzkbwi6kOD5BgDNeJnUlFZOfXxU3e+ayHz7MTrvTgb/Gt85C21ho5u
	HOMsT4Oamgx9t1/hbMDt1QP2BuMioBH90vDlyO5Auz3zCIm8dPjlH+AqSUZMAt7UXXfbGXUSslOd4
	j9xlcguVuvIRqsz6+s4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEOoY-0006r2-4I; Wed, 18 Mar 2020 02:52:14 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEOoO-0006qF-0Q
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 02:52:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AERiBoQYFlv8PWdBd6F8bZcxxthdxwfvYUao+hcSauQps2qIeBcXv5BcuQKFK+Q+uW1bhKcExbX//EEXlpAlAW/JSAadOBK7HvyGHlsI6VPYYP+kKNHWLGbKVS/bCuLbjF+UHTur9bJk6aSkEIoGW11nsWdOQskmQ7Au/lLwZGcbtCmfNmOi2EzMUx+tcFUkUMp7UxmrIuPg/TcGHdPl9nENc0hc5PzX7F+opsXooJMjOicgSMXAlg74gTuDuHfyJXtLT7csp41ucZBnMy1qDusil7loxvvw1BtFIGxEijdb4lew97ccQV85qixQ3DjdTN+M0E2OKszitXD6UGqEBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RWktdu0RRD4qHRP0UQsrpXmIwWbykJksEhrnxbl/zPc=;
 b=nSlXJOyOcO2diYMDMHZ2gCfQYaX3T22baySzC7NgL/eArsEF3NhQk4Vqgu+cprCs5p0OdEA77FZOibjraeaY/W/11RnT5bdCGFQRC1BKgVnObVaiKf2zlDNwCIS4M8hqB8likLHIoKPbp56CCK92/6WXM4cNuv/KAXIf/4By0kvu5dAOKz43y2DItKSe+pCZLBk7kfPb8N4g5vPQF/ZVql754tNCeK3BgQkkXgvzxNKVyBcq8lmnldKEjQSwWAdQC1Gi3fKgKtj3qeI4d/AS3Lr40gBeVNxam8AKaLknRLMwR5da0XSMkpg8itgkBy9x9BB+RYu0um1IVecU1BTiYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RWktdu0RRD4qHRP0UQsrpXmIwWbykJksEhrnxbl/zPc=;
 b=JpvY16ZozC+/swZIkHP2gAo3L8CYHpXMGK+YWOiSIkPL0yXLU9rxRzNfptqMZTKPs8wCzEXNYdiJgjKqvZSvWgt8UMLY/uPDCwUM+vUxBKU6rIjtzP79k6KZ60kYWY9XopuNga3HmiAU4q1SMqviUhrceFSFad1KcBsjiBapqEQ=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (52.133.244.87) by
 VI1PR04MB5711.eurprd04.prod.outlook.com (20.178.127.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Wed, 18 Mar 2020 02:51:58 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2814.021; Wed, 18 Mar 2020
 02:51:58 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>
Subject: Re: [PATCH V6 3/4] mailbox: imx: add SCU MU support
Thread-Topic: [PATCH V6 3/4] mailbox: imx: add SCU MU support
Thread-Index: AQHV8embb7q0w++ct0i8/ftV4j8c6g==
Date: Wed, 18 Mar 2020 02:51:58 +0000
Message-ID: <VI1PR04MB6941C68049C777411CBC56D0EEF70@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <1583300977-2327-1-git-send-email-peng.fan@nxp.com>
 <1583300977-2327-4-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 843ccbb0-7b71-4c9b-a6fc-08d7cae753ae
x-ms-traffictypediagnostic: VI1PR04MB5711:|VI1PR04MB5711:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB571150C26AC29C048CE7D038EEF70@VI1PR04MB5711.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(39860400002)(136003)(376002)(199004)(2906002)(66476007)(66556008)(86362001)(91956017)(55016002)(15650500001)(9686003)(66946007)(66446008)(64756008)(8936002)(76116006)(4326008)(54906003)(316002)(110136005)(478600001)(81166006)(81156014)(52536014)(8676002)(5660300002)(6506007)(71200400001)(33656002)(53546011)(44832011)(7696005)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5711;
 H:VI1PR04MB6941.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pnBoTOenx8O/mAd1boVX5cXz4hbujCQYEafSqfCJPhNx2dRvanzuxpbfgcIVF5nXKh3CuHvybY6g/LBYiNspG8lStv8PKyIGZqki7oIP7xnxIY2jeBj+YXTuXYP2LlaTQKC8S0ebOtQcBIxTuI4SMMiC2srw/YRAC/10dIm7xdnSU2TdpPHqbWYgzvif/UNZHPedsq1RmN/0IKv3BMyU+DQ9MjogO3fjmD2rWq0Y5hkkjm9ZFsv2g7ar33PMBc2r1zWbf/g6Nv/wpI+Y2Q4dm7pzYtaopLTVWqHijo5mB+YD24e8vR3eV6uCze4sk/JiiGBdQnDIvuTSkt0ANfBPqvDQpTThWyMl0a3KEno6YW5uCDLL+2s6bLzEFPfE7zbNOU/kcwLJY8gZSNXjL/bZfTiVALTb/hX93keNvYST6ClNGLbqGsG8RPm08YCdc2CT
x-ms-exchange-antispam-messagedata: GCIqR/ssGXsRkRp3O+6Vwk9LyeJSqbMMglO833pDz4OTGDDK6l0WKNRT30+vvAhIp+nAeNuWSjleqZkYtAClI+qjNFksjVh38NuQsUKp8Xplh8UnDs0hvLYgVHvMaLMZvtC+eBpa4vdYh1lg4I9jCg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 843ccbb0-7b71-4c9b-a6fc-08d7cae753ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 02:51:58.4713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dx9G/7GsHDmazEcnw340HHptNFRrP3C9fnfPHd4m/Flfh+5cQIwczsjqFD50nMYMv34w8mmrCwIk2T1dvIkl8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_195204_213585_302A075B 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-04 7:56 AM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> =

> i.MX8/8X SCU MU is dedicated for communication between SCU and Cortex-A
> cores from hardware design, and could not be reused for other purpose.
> =

> Per i.MX8/8X Reference mannual, Chapter "12.9.2.3.2 Messaging Examples",
>   Passing short messages: Transmit register(s) can be used to pass
>   short messages from one to four words in length. For example, when
>   a four-word message is desired, only one of the registers needs to
>   have its corresponding interrupt enable bit set at the receiver side;
>   the message=92s first three words are written to the registers whose
>   interrupt is masked, and the fourth word is written to the other
>   register (which triggers an interrupt at the receiver side).
> =

> i.MX8/8X SCU firmware IPC is an implementation of passing short
> messages. But current imx-mailbox driver only support one word
> message, i.MX8/8X linux side firmware has to request four TX
> and four RX to support IPC to SCU firmware. This is low efficent
> and more interrupts triggered compared with one TX and
> one RX.
> =

> To make SCU MU work,
>    - parse the size of msg.
>    - Only enable TR0/RR0 interrupt for transmit/receive message.
>    - For TX/RX, only support one TX channel and one RX channel
>    - For RX, support receive msg larger than 4 u32 words.
>    - Support 6 channels, TX0/RX0/RXDB[0-3], not support TXDB.
> =

> Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> =

> V6:
>   Add R-b tag
>   Use %zu for printk sizeof
> =

> V5:
>   Code style cleanup
>   Add more debug msg
>   Drop __packed aligned
>   idx santity check in scu xlate
> =

> V4:
>   Added separate chans init and xlate function for SCU MU
>   Limit chans to TX0/RX0/RXDB[0-3], max 6 chans.
>   Santity check to msg size
> =

> V3:
>   Added scu type tx/rx and SCU MU type
> =

>   drivers/mailbox/imx-mailbox.c | 134 +++++++++++++++++++++++++++++++++++=
+++++++
>   1 file changed, 134 insertions(+)
> =

> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index df6c4ecd913c..0895ccd23d17 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -4,6 +4,7 @@
>    */
>   =

>   #include <linux/clk.h>
> +#include <linux/firmware/imx/ipc.h>
>   #include <linux/interrupt.h>
>   #include <linux/io.h>
>   #include <linux/kernel.h>
> @@ -27,6 +28,8 @@
>   #define IMX_MU_xCR_GIRn(x)	BIT(16 + (3 - (x)))
>   =

>   #define IMX_MU_CHANS		16
> +/* TX0/RX0/RXDB[0-3] */
> +#define IMX_MU_SCU_CHANS	6
>   #define IMX_MU_CHAN_NAME_SIZE	20
>   =

>   enum imx_mu_chan_type {
> @@ -36,6 +39,11 @@ enum imx_mu_chan_type {
>   	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
>   };
>   =

> +struct imx_sc_rpc_msg_max {
> +	struct imx_sc_rpc_msg hdr;
> +	u32 data[7];
> +};
> +
>   struct imx_mu_con_priv {
>   	unsigned int		idx;
>   	char			irq_desc[IMX_MU_CHAN_NAME_SIZE];
> @@ -134,6 +142,63 @@ static int imx_mu_generic_rx(struct imx_mu_priv *pri=
v,
>   	return 0;
>   }
>   =

> +static int imx_mu_scu_tx(struct imx_mu_priv *priv,
> +			 struct imx_mu_con_priv *cp,
> +			 void *data)
> +{
> +	struct imx_sc_rpc_msg_max *msg =3D data;
> +	u32 *arg =3D data;
> +	int i;
> +
> +	switch (cp->type) {
> +	case IMX_MU_TYPE_TX:
> +		if (msg->hdr.size > sizeof(*msg)) {
> +			/*
> +			 * The real message size can be different to
> +			 * struct imx_sc_rpc_msg_max size
> +			 */
> +			dev_err(priv->dev, "Exceed max msg size (%zu) on TX, got: %i\n", size=
of(*msg), msg->hdr.size);
> +			return -EINVAL;
> +		}
> +
> +		for (i =3D 0; i < msg->hdr.size; i++) > +			imx_mu_write(priv, *arg++,=
 priv->dcfg->xTR[i % 4]);

Need to poll for TE, otherwise for long messages we could overwrite TR0 =

before SCU reads it.

> +
> +		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);

Shouldn't TIE be armed ahead of writing? In theory SCU could read first =

register before loop above is over.

> +		break;
> +	default:
> +		dev_warn_ratelimited(priv->dev, "Send data on wrong channel type: %d\n=
", cp->type);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int imx_mu_scu_rx(struct imx_mu_priv *priv,
> +			 struct imx_mu_con_priv *cp)
> +{
> +	struct imx_sc_rpc_msg_max msg;
> +	u32 *data =3D (u32 *)&msg;
> +	int i;
> +
> +	imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_RIEn(0));
> +	*data++ =3D imx_mu_read(priv, priv->dcfg->xRR[0]);
> +
> +	if (msg.hdr.size > sizeof(msg)) {
> +		dev_err(priv->dev, "Exceed max msg size (%zu) on RX, got: %i\n",
> +			sizeof(msg), msg.hdr.size);
> +		return -EINVAL;
> +	}
> +
> +	for (i =3D 1; i < msg.hdr.size; i++)
> +		*data++ =3D imx_mu_read(priv, priv->dcfg->xRR[i % 4]);

Shouldn't you poll for !RE? It's possible to receive RX interrupt and =

start reading before other side writes the second word.

> +
> +	imx_mu_xcr_rmw(priv, IMX_MU_xCR_RIEn(0), 0);
> +	mbox_chan_received_data(cp->chan, (void *)&msg);
> +
> +	return 0;
> +}
> +
>   static void imx_mu_txdb_tasklet(unsigned long data)
>   {
>   	struct imx_mu_con_priv *cp =3D (struct imx_mu_con_priv *)data;
> @@ -263,6 +328,42 @@ static const struct mbox_chan_ops imx_mu_ops =3D {
>   	.shutdown =3D imx_mu_shutdown,
>   };
>   =

> +static struct mbox_chan *imx_mu_scu_xlate(struct mbox_controller *mbox,
> +					  const struct of_phandle_args *sp)
> +{
> +	u32 type, idx, chan;
> +
> +	if (sp->args_count !=3D 2) {
> +		dev_err(mbox->dev, "Invalid argument count %d\n", sp->args_count);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	type =3D sp->args[0]; /* channel type */
> +	idx =3D sp->args[1]; /* index */
> +
> +	switch (type) {
> +	case IMX_MU_TYPE_TX:
> +	case IMX_MU_TYPE_RX:
> +		if (idx !=3D 0)
> +			dev_err(mbox->dev, "Invalid chan idx: %d\n", idx);
> +		chan =3D type;
> +		break;
> +	case IMX_MU_TYPE_RXDB:
> +		chan =3D 2 + idx;
> +		break;
> +	default:
> +		dev_err(mbox->dev, "Invalid chan type: %d\n", type);
> +		return NULL;
> +	}
> +
> +	if (chan >=3D mbox->num_chans) {
> +		dev_err(mbox->dev, "Not supported channel number: %d. (type: %d, idx: =
%d)\n", chan, type, idx);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	return &mbox->chans[chan];
> +}
> +
>   static struct mbox_chan * imx_mu_xlate(struct mbox_controller *mbox,
>   				       const struct of_phandle_args *sp)
>   {
> @@ -310,6 +411,28 @@ static void imx_mu_init_generic(struct imx_mu_priv *=
priv)
>   	imx_mu_write(priv, 0, priv->dcfg->xCR);
>   }
>   =

> +static void imx_mu_init_scu(struct imx_mu_priv *priv)
> +{
> +	unsigned int i;
> +
> +	for (i =3D 0; i < IMX_MU_SCU_CHANS; i++) {
> +		struct imx_mu_con_priv *cp =3D &priv->con_priv[i];
> +
> +		cp->idx =3D i < 2 ? 0 : i - 2;
> +		cp->type =3D i < 2 ? i : IMX_MU_TYPE_RXDB;
> +		cp->chan =3D &priv->mbox_chans[i];
> +		priv->mbox_chans[i].con_priv =3D cp;
> +		snprintf(cp->irq_desc, sizeof(cp->irq_desc),
> +			 "imx_mu_chan[%i-%i]", cp->type, cp->idx);
> +	}
> +
> +	priv->mbox.num_chans =3D IMX_MU_SCU_CHANS;
> +	priv->mbox.of_xlate =3D imx_mu_scu_xlate;
> +
> +	/* Set default MU configuration */
> +	imx_mu_write(priv, 0, priv->dcfg->xCR);
> +}
> +
>   static int imx_mu_probe(struct platform_device *pdev)
>   {
>   	struct device *dev =3D &pdev->dev;
> @@ -396,9 +519,20 @@ static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp =
=3D {
>   	.xCR	=3D 0x64,
>   };
>   =

> +static const struct imx_mu_dcfg imx_mu_cfg_imx8_scu =3D {
> +	.tx	=3D imx_mu_scu_tx,
> +	.rx	=3D imx_mu_scu_rx,
> +	.init	=3D imx_mu_init_scu,
> +	.xTR	=3D {0x0, 0x4, 0x8, 0xc},
> +	.xRR	=3D {0x10, 0x14, 0x18, 0x1c},
> +	.xSR	=3D 0x20,
> +	.xCR	=3D 0x24,
> +};
> +
>   static const struct of_device_id imx_mu_dt_ids[] =3D {
>   	{ .compatible =3D "fsl,imx7ulp-mu", .data =3D &imx_mu_cfg_imx7ulp },
>   	{ .compatible =3D "fsl,imx6sx-mu", .data =3D &imx_mu_cfg_imx6sx },
> +	{ .compatible =3D "fsl,imx8-mu-scu", .data =3D &imx_mu_cfg_imx8_scu },
>   	{ },
>   };
>   MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
