Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80540166C4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 02:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMFlYLZaVcCYGYQNcJHpTx9uHRVQW2bNz73i7zCmi5U=; b=XpKTMQie9b/g+8
	Fz8LsHB147SQqqgxmeOCsUp8BeKrF8kvKLZM8ie6zTXxtRC5MYv460xcl4NdNP25VF4/4kVcnxYHU
	jxNeopwbZYLH93kZz0Q1I/IdWuACOZfwvZGV+r3SSoNi2UBT4ESYI6Yu06fKKYzI1biSxL37aV8fj
	bJ02aqXxIrt3IVhsV96shX1N9nacGsC0pQR2CB7dniTYhsqwION9k3b8N5Nolh56h8OKf0lhsaj69
	ZHQcaAwjrcvnSyB3dEnEAojVk/FJZLSbmKbfiw4mSuLbFj+9zd9s5Xc/Y8JETkdVoADpGMppgAFqG
	o/QEEQVaWFfuKNRkhuTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4x5f-0003mf-QS; Fri, 21 Feb 2020 01:26:51 +0000
Received: from mail-eopbgr80059.outbound.protection.outlook.com ([40.107.8.59]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4x5X-0003lz-QN
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 01:26:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJJD3fDxI+3Fg28D0otrigqfLGeQVD8N3tBvScKJwf4IbQmF2xS/msLG94spR6Xd51xnJvINFnQaCd1KbSIwOTPgU6Rg3z8LMayGQYYQ6dR98J7ZqAS3ZPOXY0ZjexwjO4GSLPKl69POXBhs1j5hFrROW/MkLkNdmswViWK7wdOmlO4hZ15b4o/303Nf1tQs4R19KmLLTE1ChYtJp+ivCHlLCcK0wxnW4pQjckGsBZZj004EZDPqUdoeR2o4folZW9yxT02voHiUcTMd/WCdpJZP54lLAauSAhYfPLqld85M4R29eWX1tRoyTbflqrJCgHBBdbHOGFS0kbsgYjre2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/qXmxudFq0snUhpm5H1Cyla1t2QiCQew3NuiQP6P48=;
 b=VKTg1kgXr7tIPCaNg7vmQfezlwFpLErhE7SxBcY3YY1hAVNNJy4ahQZEqQdr5eVo+jzkWYvbl0hNhxTbNMygkUB9adnx75FDX70bFWXg1j41tY5FU5FzLiHkP4hSdp9zmVqGMz35m7fqMMoqamv6zeJaHLd2a0NNqJyYLmxBLUjj7/tCkLobIdGKcaptm7KVN78eKRLP+jCiHO+9dYGtcFDmObDNkKvLiHDwlqWnyPqnjJgRMU+rxwsL7vwelY7xsBp7CQ37ADegPattiFMGHsNk4+tA/RYQ9gsdOPcN+QGkFBhAXNfsTDzGg/dLQrN6V2qe1Ov9BIuB9FVuFNChAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/qXmxudFq0snUhpm5H1Cyla1t2QiCQew3NuiQP6P48=;
 b=ajTxHHcibjL+7Nbx1oNung0b7nX1kAqzGE+O71E9rBbSrBvD84dGKe1coDa9C5zxEhrkBf0Rff3h5fVvE6laFhgum6dIv+kkMYFxQXGYJKZKcQWbHyb0/zf3hs+7pkiLAmzXmUMcrYWl9pINmtf+WjTy1D610IC57TzWL/oOP5o=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4705.eurprd04.prod.outlook.com (20.176.214.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Fri, 21 Feb 2020 01:26:40 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 01:26:40 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] firmware: imx: scu: Ensure sequential TX
Thread-Topic: [PATCH] firmware: imx: scu: Ensure sequential TX
Thread-Index: AQHV6Ag3/ym0N6YaPU2+fRJ6ozx1rqgk25HA
Date: Fri, 21 Feb 2020 01:26:40 +0000
Message-ID: <AM0PR04MB4481B07AB544FF95729429C888120@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <ae051784024f8fcc458437e278c27b4e79c6fe7d.1582214881.git.leonard.crestez@nxp.com>
In-Reply-To: <ae051784024f8fcc458437e278c27b4e79c6fe7d.1582214881.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6030653f-17e4-484a-d67b-08d7b66d1a65
x-ms-traffictypediagnostic: AM0PR04MB4705:|AM0PR04MB4705:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB47058B339EBCB5E102E722BD88120@AM0PR04MB4705.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(136003)(366004)(376002)(396003)(199004)(189003)(110136005)(86362001)(54906003)(316002)(44832011)(33656002)(6506007)(8936002)(7696005)(26005)(186003)(81166006)(81156014)(8676002)(478600001)(71200400001)(52536014)(9686003)(55016002)(2906002)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(4326008)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4705;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FTV7W0YIunI3R7RB4gOhMq+M1n3UqKlFw7memAJZW3u+XZi+lxStZxPfrl+lhYgBeakz3cYzr7XMFbjwvfVqb7t0WwFtzr2ffick7qnYH/FEVEjZQh3XqbNchr54HFzC4iI066+z1f6x8sZ+CmWsLp0jtojOMhFafXqAYdE8bzTUwAd00YBS+pGtV+wTb0lXrCAeaQN33J2rr6wB3mhFGZzTRLmiTa2xFwk9TTvELzHoSdJLrpuwY3zXfS5zLoMBeMyKtUoTu2E3Unu0xcp1Dq7gm58GkLuQbdPHx30aL7OzBHrat0SetecoFlioByIkHy1oGoF8s1cfFDgo2EWY+DPUo5z8kQJl6VgvkEh1zpxm3HLCKqgdX1x0aPyXon9Ia5TkqWkhKkWAadPs7Xpn70Ste2vrMM5XuUlyPIGmtpw0Pk90m/fXEIx1nuVzEjBZ
x-ms-exchange-antispam-messagedata: Nap+MYPjuGzXDBvzbspBGmeeGlMX46GhjoZdIf375bclsE9b3WqFM3wAp3GefZrygKh4F5NjaWz8/AAiTkPAq5u8Fh97N7/PXxPOwkjHoFfUXligRsKDtjLfk1OIQmlPt3dB7rYlm4uY1nI5orN9Xw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6030653f-17e4-484a-d67b-08d7b66d1a65
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 01:26:40.4857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sQBSvOn3PRMhZHzN5PkQgeqCqiHrZu3UW/Br4hDN1VH1Vp5uMU9HoL4/vQFVKdX68C60nJI02pNm1tsup37rfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4705
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_172643_933355_3629FF84 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Richard Zhu <hongxing.zhu@nxp.com>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] firmware: imx: scu: Ensure sequential TX
> 
> SCU requires that all messages words are written sequentially but linux MU
> driver implements multiple independent channels for each register so
> ordering between different channels must be ensured by SCU API interface.
> 
> Wait for tx_done before every send to ensure that no queueing happens at
> the mailbox channel level.
> 
> Fixes: edbee095fafb ("firmware: imx: add SCU firmware driver support")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Cc: <stable@vger.kernel.org>

I am working on binding 4 registers in one channel per MU chapter using
example. But since this is a critical fix,

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/firmware/imx/imx-scu.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> This manifests as "SCU timeout" message followed by system hang.
> 
> This is not a very pretty fix but avoids inserting additional waits except in
> extremely rare circumstances.
> 
> An alternative would be to implement a new type of mailbox channel which
> handles all 4 registers together. Exposing the MU as 4 independent channels
> is very awkward.
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index 03b43b7a6d1d..f71eaa5bf52d 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -27,10 +27,11 @@ struct imx_sc_chan {
>  	struct imx_sc_ipc *sc_ipc;
> 
>  	struct mbox_client cl;
>  	struct mbox_chan *ch;
>  	int idx;
> +	struct completion tx_done;
>  };
> 
>  struct imx_sc_ipc {
>  	/* SCU uses 4 Tx and 4 Rx channels */
>  	struct imx_sc_chan chans[SCU_MU_CHAN_NUM]; @@ -98,10 +99,18
> @@ int imx_scu_get_handle(struct imx_sc_ipc **ipc)
>  	*ipc = imx_sc_ipc_handle;
>  	return 0;
>  }
>  EXPORT_SYMBOL(imx_scu_get_handle);
> 
> +/* Callback called when the word of a message is ack-ed, eg read by SCU
> +*/ static void imx_scu_tx_done(struct mbox_client *cl, void *mssg, int
> +r) {
> +	struct imx_sc_chan *sc_chan = container_of(cl, struct imx_sc_chan,
> +cl);
> +
> +	complete(&sc_chan->tx_done);
> +}
> +
>  static void imx_scu_rx_callback(struct mbox_client *c, void *msg)  {
>  	struct imx_sc_chan *sc_chan = container_of(c, struct imx_sc_chan, cl);
>  	struct imx_sc_ipc *sc_ipc = sc_chan->sc_ipc;
>  	struct imx_sc_rpc_msg *hdr;
> @@ -147,10 +156,23 @@ static int imx_scu_ipc_write(struct imx_sc_ipc
> *sc_ipc, void *msg)
>  	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
>  		hdr->func, hdr->size);
> 
>  	for (i = 0; i < hdr->size; i++) {
>  		sc_chan = &sc_ipc->chans[i % 4];
> +
> +		/*
> +		 * SCU requires that all messages words are written
> +		 * sequentially but linux MU driver implements multiple
> +		 * independent channels for each register so ordering between
> +		 * different channels must be ensured by SCU API interface.
> +		 *
> +		 * Wait for tx_done before every send to ensure that no
> +		 * queueing happens at the mailbox channel level.
> +		 */
> +		wait_for_completion(&sc_chan->tx_done);
> +		reinit_completion(&sc_chan->tx_done);
> +
>  		ret = mbox_send_message(sc_chan->ch, &data[i]);
>  		if (ret < 0)
>  			return ret;
>  	}
> 
> @@ -245,10 +267,15 @@ static int imx_scu_probe(struct platform_device
> *pdev)
>  		cl->dev = dev;
>  		cl->tx_block = false;
>  		cl->knows_txdone = true;
>  		cl->rx_callback = imx_scu_rx_callback;
> 
> +		/* Initial tx_done completion as "done" */
> +		cl->tx_done = imx_scu_tx_done;
> +		init_completion(&sc_chan->tx_done);
> +		complete(&sc_chan->tx_done);
> +
>  		sc_chan->sc_ipc = sc_ipc;
>  		sc_chan->idx = i % 4;
>  		sc_chan->ch = mbox_request_channel_byname(cl, chan_name);
>  		if (IS_ERR(sc_chan->ch)) {
>  			ret = PTR_ERR(sc_chan->ch);
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
