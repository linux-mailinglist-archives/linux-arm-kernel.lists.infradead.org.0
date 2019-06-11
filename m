Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482023C3AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 07:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Kttdm5cnTBWDSLcKCfl2VnUlXvhugNCzeSh9j7qksA=; b=iBaXkg54Y6Ho5z
	x2dA1TzdBVwSH/MFmTiHZ6x8woIp81VJP8/WruDo2YiuWVDHGUkVUsUjyA0/Yu592H5HQaM4EZAYV
	MJEYuMQy9mWFXdyu2ipekD9uVbDe+VA0+2kTaP45T167NCQr3NJ9ezmDAQp/kT4LRpjMGHlPZ6yyY
	DzxJrHwflXpOp0+CJidVAUo+H72mRORJzJ79pQbWyJg91tw7R3QqfHBBzv7Bv4OZsUfPUM/VOLxgU
	hLXXTyfponG6tO2DSdlKN6wF3pEMryDW9+/VOyY9TkWXvtSflARxT4RnIQo5PnAnfLZkfkqX8WGgi
	prOG50LEuzZMctCsP4bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZl3-0000Ph-PH; Tue, 11 Jun 2019 05:55:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZkt-0000PD-5L
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 05:55:36 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1haZkp-0004O3-AA; Tue, 11 Jun 2019 07:55:31 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1haZko-0000Nw-Hl; Tue, 11 Jun 2019 07:55:30 +0200
Date: Tue, 11 Jun 2019 07:55:30 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: daniel.baluta@nxp.com
Subject: Re: [RFC PATCH 2/2] imx: mailbox: Introduce TX doorbell with ACK
Message-ID: <20190611055530.sl3krujmcqnq6ntt@pengutronix.de>
References: <20190610141609.17559-1-daniel.baluta@nxp.com>
 <20190610141609.17559-3-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610141609.17559-3-daniel.baluta@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:34:37 up 24 days, 10:52, 45 users,  load average: 0.00, 0.03, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_225535_374443_600F6A21 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On Mon, Jun 10, 2019 at 10:16:09PM +0800, daniel.baluta@nxp.com wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> TX doorbell with ACK will allow us to push the doorbell ring button
> (trigger GIR) and also will allow us to handle the response from DSP.
> 
> DSP firmware found on i.MX8 boards implements a duplex
> communication protocol over MU channels.
> 
> On the host side (Linux) we need to plugin into Sound Open Firmware IPC
> communication infrastructure which handles all the details (e.g message
> queuing, tx/rx logic) [1] and the users are only required to provide the
> following callbacks:
> 
>   - send_msg (for Tx)
>   - irq_handler (Ack of Tx, request from DSP)
> 
> In order to implement send_msg and irq_handler we will use two MU
> channels:
> 	* channel #0, TX doorbell with ACK
> 	* channel #1, RX doorbell
> 
> Sending a request Host -> DSP (channel #0)
>   - send_msg callback
> 	- write data into SHMEM
> 	- push doorbell ring button (trigger GIR)
>  - irq handler
> 	- handle DSP request (channel #1)
> 	  - read SHMEM and trigger SOF IPC state machine
> 	  - send ACK (push doorbell ring button for channel #1)
> 	- handle DSP response (ACK) (channel #0)
> 	  - read SHMEM and trigger IPC state machine
> 
> The easisest way to implement this is to directly access the MU
> registers but since the MU is abstracted using the mailbox interface
> we need to use that instead.
> 
> [1] https://elixir.bootlin.com/linux/v5.2-rc4/source/sound/soc/sof/ipc.c
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  drivers/mailbox/imx-mailbox.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 9f74dee1a58c..3a91611e17d2 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -42,6 +42,7 @@ enum imx_mu_chan_type {
>  	IMX_MU_TYPE_RX,		/* Rx */
>  	IMX_MU_TYPE_TXDB,	/* Tx doorbell */
>  	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
> +	IMX_MU_TYPE_TXDB_ACK	/* Tx doorbell with Ack */
>  };
>  
>  struct imx_mu_con_priv {
> @@ -124,6 +125,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>  			(ctrl & IMX_MU_xCR_RIEn(cp->idx));
>  		break;
>  	case IMX_MU_TYPE_RXDB:
> +	case IMX_MU_TYPE_TXDB_ACK:
>  		val &= IMX_MU_xSR_GIPn(cp->idx) &
>  			(ctrl & IMX_MU_xCR_GIEn(cp->idx));
>  		break;
> @@ -200,6 +202,7 @@ static int imx_mu_startup(struct mbox_chan *chan)
>  		imx_mu_xcr_rmw(priv, IMX_MU_xCR_RIEn(cp->idx), 0);
>  		break;
>  	case IMX_MU_TYPE_RXDB:
> +	case IMX_MU_TYPE_TXDB_ACK:
>  		imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIEn(cp->idx), 0);
>  		break;
>  	default:
> -- 
> 2.17.1

If I see it correctly, with your implementation  the mbox client
communication on channel 0 will look as follow:
mbox_client -> send_msg()
            /* sheduling of mbox_chan_txdone tasklet is avoided */
mbox_client <- cl->rx_callback()
mbox_client -> mbox_client_txdone()
mbox_client -> send_msg()

Without your patch you will need to register tx and rx doorbell
channels and the communication will looks like this:
mbox_client -> send_msg()
mbox_client <- mbox_chan_txdone() /* dummy notification, can be ignored */
mbox_client <- cl->rx_callback()
mbox_client -> send_msg()

I assume, you are trying to optimize it and avoid dummy
mbox_chan_txdone() notification. Correct?

The problem is, that current mailbox-framework will set txdone_method
inside of mbox_controller_register() for all channels even if
imx-mailbox has different types of channels.

The problem with your patch is, that it will silently merge two channels
(TXDB and RXDB) and not setting actual ACK by controller - mbox_chan_txdone().
Not sure, why we need to merge it in this case.

So, with current imx_mailbox implementation your firmware should work as
is. You will need to register two separate channels for TXDB and
RXDB. It will run with some overhead by triggering txdone tasklet in 
imx-mailbox driver.

If this overhead is a problem, then this should be fixed.
Merging two doorbell  channels in to one with ACK support is nice,
but will introduce more issues if we need other doorbell channels
without ACK support on same controller 

I personally would prefer to to extend mailbox framework to support
controllers with mixed channel types and remove dummy txdone tasklet
from imx-mailbox.

Since we already initialize part of &mbox->chans[i] by imx-mailbox driver,
we can set proper chan->txdone_method as well. So we need only to
prevent mbox_controller_register() to overwrite it.

Regards,
Oleksij.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
