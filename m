Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C79BCCD90
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 02:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eaXP4TNYHlvlxJA3JN9AsX1fx7F62dMvfrq8V1+GCYw=; b=G2K1CIgQazLatk
	KoWQPEIOZfsufwTaXkMCvdPfNgs++p+14VVR6UKNsVYdcg9MkSWuECT6AKaUcF3Pqgc0tpMq5tpV8
	+LnDbCb/3EeI7dediUoTAYV2sKczKXA8g6BzDMT1IoX2PCBOR2Xe+mlhrpGIL8xToWx+zslqUvZdt
	fgGIthU7OEPru8lxhHsy2JqbqiAT56iI2fIfQqXgrtAqqctt2gvpZAtePORlCaoEHENs8GWnbaDpr
	z+SgSTsI9jRiLD5CKfNpmF1AWMFX1YA08tfOJc/ns3QHEO7B+LH93G14sokJADio9KpMJPRkapTa/
	lJkrdUxlezafksnsitqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGury-0007jM-VG; Sun, 06 Oct 2019 00:57:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGuro-0007j0-Dz
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 00:57:45 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC021222C0;
 Sun,  6 Oct 2019 00:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570323464;
 bh=rmuqA41XcdwAILHT6rtO2iZ544NaVH4xAkRw9fxgCdk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AtxqRVoQyOuSCL/hDq8q+6R5FNqEWIiN9D9kdbruEqaNizgTF8W+MwqSw8gvDPaAY
 w2TNiXkFdmBdlmpbYg7cjHC/bgfwehLNyicI6ukWL6FJ7VbKyyMeXd++Elrdg/P5z5
 UDz+7IA0O22zpB3o/DbquwWIpXPwsUPYCsTIZ080=
Date: Sun, 6 Oct 2019 08:57:30 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] firmware: imx: warn on unexpected RX
Message-ID: <20191006005729.GE7150@dragon>
References: <ddd1f5cd5341db0ca347259953135eaf9e782873.1567583496.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ddd1f5cd5341db0ca347259953135eaf9e782873.1567583496.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_175744_490824_CB2CAD63 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 10:54:58AM +0300, Leonard Crestez wrote:
> The imx_scu_call_rpc function function returns the result inside the

s/function function/function

> same "msg" struct containing the transmitted message. This is
> implemented by holding a pointer to msg (which is usually on the stack)
> in sc_imx_rpc and writing to it from imx_scu_rx_callback.
> 
> This means that if the have_resp parameter is incorrect or SCU sends an
> unexpected for any reason the most likely result is kernel stack

unexpected response

I fixed them up and applied the patch.

Shawn

> corruption.
> 
> Fix this by only setting sc_imx_rpc.msg for the duration of the
> imx_scu_call_rpc call and warning in imx_scu_rx_callback if unset.
> 
> Print the unexpected response data to help debugging.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/firmware/imx/imx-scu.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index 04a24a863d6e..869be7a5172c 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -105,10 +105,16 @@ static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
>  	struct imx_sc_chan *sc_chan = container_of(c, struct imx_sc_chan, cl);
>  	struct imx_sc_ipc *sc_ipc = sc_chan->sc_ipc;
>  	struct imx_sc_rpc_msg *hdr;
>  	u32 *data = msg;
>  
> +	if (!sc_ipc->msg) {
> +		dev_warn(sc_ipc->dev, "unexpected rx idx %d 0x%08x, ignore!\n",
> +				sc_chan->idx, *data);
> +		return;
> +	}
> +
>  	if (sc_chan->idx == 0) {
>  		hdr = msg;
>  		sc_ipc->rx_size = hdr->size;
>  		dev_dbg(sc_ipc->dev, "msg rx size %u\n", sc_ipc->rx_size);
>  		if (sc_ipc->rx_size > 4)
> @@ -163,11 +169,12 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>  		return -EINVAL;
>  
>  	mutex_lock(&sc_ipc->lock);
>  	reinit_completion(&sc_ipc->done);
>  
> -	sc_ipc->msg = msg;
> +	if (have_resp)
> +		sc_ipc->msg = msg;
>  	sc_ipc->count = 0;
>  	ret = imx_scu_ipc_write(sc_ipc, msg);
>  	if (ret < 0) {
>  		dev_err(sc_ipc->dev, "RPC send msg failed: %d\n", ret);
>  		goto out;
> @@ -185,10 +192,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>  		hdr = msg;
>  		ret = hdr->func;
>  	}
>  
>  out:
> +	sc_ipc->msg = NULL;
>  	mutex_unlock(&sc_ipc->lock);
>  
>  	dev_dbg(sc_ipc->dev, "RPC SVC done\n");
>  
>  	return imx_sc_to_linux_errno(ret);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
