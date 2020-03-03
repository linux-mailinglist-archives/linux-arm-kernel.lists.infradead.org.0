Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8FD17709C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:59:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=goMf3F7lFe3X7UlXYN36SYIRxyYvaqIeWiqXWwqZKA4=; b=XkIgb5/lsU4mNWyxbYcARiW0D
	QBTw6oijTy7Ue+N3Yg6ho4f3pRnFwoX+ye44nXv6hrFZLdUHHZGpvIXaxfSUdX0KXM46L6fRnR73h
	o2whkhbsmbaAgnyvDMj+1nU+9qLJyljU7HhIowgTZyixAze33VPwQym4CCSaRDunfSJvBmJSnJNAd
	z64LEbiREvGartmnkKS1w8qDwNvfUj2k6D7OpmOHHnLNg+luEuVx+9PRwnrjkrvWxrFx8hewFCc58
	PQGOHaoB0bPxUFfMaIT2qJ24GwZj9ylmKNUGNJhpdDdj7OeCqT83fnyj+vM2b/FoNTNbeRnsAW+/4
	LiUeW8s3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92Sv-0008C2-1t; Tue, 03 Mar 2020 07:59:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92Sn-0008Bb-6f
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:59:38 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1j92Sl-0004bR-Fx; Tue, 03 Mar 2020 08:59:35 +0100
Subject: Re: [PATCH V5 4/4] firmware: imx-scu: Support one TX and one RX
To: peng.fan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 jassisinghbrar@gmail.com
References: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
 <1583221359-9285-5-git-send-email-peng.fan@nxp.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <4dc08efe-294b-5741-11d7-ae9e1e585d3d@pengutronix.de>
Date: Tue, 3 Mar 2020 08:59:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1583221359-9285-5-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_235937_249607_A0697B1F 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aisheng.dong@nxp.com, Anson.Huang@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03.03.20 08:42, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Current imx-scu requires four TX and four RX to communicate with
> SCU. This is low efficient and causes lots of mailbox interrupts.
> 
> With imx-mailbox driver could support one TX to use all four transmit
> registers and one RX to use all four receive registers, imx-scu
> could use one TX and one RX.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

This driver should be review by some one else.

> ---
> V5:
>   None
> V4:
>   None
> V3:
>   Check mbox fsl,imx8-mu-scu for fast_ipc
> 
>   drivers/firmware/imx/imx-scu.c | 54 +++++++++++++++++++++++++++++++++---------
>   1 file changed, 43 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index f71eaa5bf52d..e94a5585b698 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -38,6 +38,7 @@ struct imx_sc_ipc {
>   	struct device *dev;
>   	struct mutex lock;
>   	struct completion done;
> +	bool fast_ipc;
>   
>   	/* temporarily store the SCU msg */
>   	u32 *msg;
> @@ -115,6 +116,7 @@ static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
>   	struct imx_sc_ipc *sc_ipc = sc_chan->sc_ipc;
>   	struct imx_sc_rpc_msg *hdr;
>   	u32 *data = msg;
> +	int i;
>   
>   	if (!sc_ipc->msg) {
>   		dev_warn(sc_ipc->dev, "unexpected rx idx %d 0x%08x, ignore!\n",
> @@ -122,6 +124,19 @@ static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
>   		return;
>   	}
>   
> +	if (sc_ipc->fast_ipc) {
> +		hdr = msg;
> +		sc_ipc->rx_size = hdr->size;
> +		sc_ipc->msg[0] = *data++;
> +
> +		for (i = 1; i < sc_ipc->rx_size; i++)
> +			sc_ipc->msg[i] = *data++;
> +
> +		complete(&sc_ipc->done);
> +
> +		return;
> +	}
> +
>   	if (sc_chan->idx == 0) {
>   		hdr = msg;
>   		sc_ipc->rx_size = hdr->size;
> @@ -147,6 +162,7 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
>   	struct imx_sc_chan *sc_chan;
>   	u32 *data = msg;
>   	int ret;
> +	int size;
>   	int i;
>   
>   	/* Check size */
> @@ -156,7 +172,8 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
>   	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
>   		hdr->func, hdr->size);
>   
> -	for (i = 0; i < hdr->size; i++) {
> +	size = sc_ipc->fast_ipc ? 1 : hdr->size;
> +	for (i = 0; i < size; i++) {
>   		sc_chan = &sc_ipc->chans[i % 4];
>   
>   		/*
> @@ -168,8 +185,10 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
>   		 * Wait for tx_done before every send to ensure that no
>   		 * queueing happens at the mailbox channel level.
>   		 */
> -		wait_for_completion(&sc_chan->tx_done);
> -		reinit_completion(&sc_chan->tx_done);
> +		if (!sc_ipc->fast_ipc) {
> +			wait_for_completion(&sc_chan->tx_done);
> +			reinit_completion(&sc_chan->tx_done);
> +		}
>   
>   		ret = mbox_send_message(sc_chan->ch, &data[i]);
>   		if (ret < 0)
> @@ -246,6 +265,8 @@ static int imx_scu_probe(struct platform_device *pdev)
>   	struct imx_sc_chan *sc_chan;
>   	struct mbox_client *cl;
>   	char *chan_name;
> +	struct of_phandle_args args;
> +	int num_channel;
>   	int ret;
>   	int i;
>   
> @@ -253,11 +274,20 @@ static int imx_scu_probe(struct platform_device *pdev)
>   	if (!sc_ipc)
>   		return -ENOMEM;
>   
> -	for (i = 0; i < SCU_MU_CHAN_NUM; i++) {
> -		if (i < 4)
> +	ret = of_parse_phandle_with_args(pdev->dev.of_node, "mboxes",
> +					 "#mbox-cells", 0, &args);
> +	if (ret)
> +		return ret;
> +
> +	sc_ipc->fast_ipc = of_device_is_compatible(args.np, "fsl,imx8-mu-scu");
> +
> +	num_channel = sc_ipc->fast_ipc ? 2 : SCU_MU_CHAN_NUM;
> +	for (i = 0; i < num_channel; i++) {
> +		if (i < num_channel / 2)
>   			chan_name = kasprintf(GFP_KERNEL, "tx%d", i);
>   		else
> -			chan_name = kasprintf(GFP_KERNEL, "rx%d", i - 4);
> +			chan_name = kasprintf(GFP_KERNEL, "rx%d",
> +					      i - num_channel / 2);
>   
>   		if (!chan_name)
>   			return -ENOMEM;
> @@ -269,13 +299,15 @@ static int imx_scu_probe(struct platform_device *pdev)
>   		cl->knows_txdone = true;
>   		cl->rx_callback = imx_scu_rx_callback;
>   
> -		/* Initial tx_done completion as "done" */
> -		cl->tx_done = imx_scu_tx_done;
> -		init_completion(&sc_chan->tx_done);
> -		complete(&sc_chan->tx_done);
> +		if (!sc_ipc->fast_ipc) {
> +			/* Initial tx_done completion as "done" */
> +			cl->tx_done = imx_scu_tx_done;
> +			init_completion(&sc_chan->tx_done);
> +			complete(&sc_chan->tx_done);
> +		}
>   
>   		sc_chan->sc_ipc = sc_ipc;
> -		sc_chan->idx = i % 4;
> +		sc_chan->idx = i % (num_channel / 2);
>   		sc_chan->ch = mbox_request_channel_byname(cl, chan_name);
>   		if (IS_ERR(sc_chan->ch)) {
>   			ret = PTR_ERR(sc_chan->ch);
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
