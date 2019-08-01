Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A367D547
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P43yJb/mAIkTCcCUWuDpeFWCbOjCKfBvva9dABjSZlg=; b=IoHqKETYTe1wAm
	LX4wGJg7uoJwF3/66N6OkrUga7JTGD+gAdEqW+BDxEpNjA6rEw91UtqRO1hek0XF4RCcpAqQHIzI7
	lO1Jb58hCo77GAKu8R/xAkGp4VFqYkOyadtLXMLsPFCRzDshIGu9Lx678Qhpyu96o2DMAkIwJg178
	0eT2iGDRMod4KmSWqbhdxAiaIgUjR9jiUBjTOcMIRq1rUURrhZ1PC/RkmHMuSiRsH6MKQPnDsTZPg
	lzoIWhIEioc6kncmMxRymh77ThnziSCgqfeJ/HRAIUkzMmXzNN1SpbLfNgsGogBjD46thtSPnfIR/
	2p3NmBTmnNj+XmNLWeLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4IY-000841-LE; Thu, 01 Aug 2019 06:10:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4IS-00082b-9q
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:10:42 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ht4IM-0003CT-4e; Thu, 01 Aug 2019 08:10:34 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1ht4IL-0008Bt-FI; Thu, 01 Aug 2019 08:10:33 +0200
Date: Thu, 1 Aug 2019 08:10:33 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH] mailbox: imx: Fix Tx doorbell shutdown path
Message-ID: <20190801061033.4diqrc4x4mighyju@pengutronix.de>
References: <20190731205539.13997-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731205539.13997-1-daniel.baluta@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:55:26 up 75 days, 12:13, 47 users,  load average: 0.15, 0.06, 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_231040_341652_8D3B5585 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, hongxing.zhu@nxp.com, festevam@gmail.com,
 s.hauer@pengutronix.de, jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

your patch is in conflicht with Richard's Zhu <hongxing.zhu@nxp.com>
patch "[PATCH v3] mailbox: imx: add support for imx v1 mu".
Please sync your works.

On Wed, Jul 31, 2019 at 11:55:39PM +0300, Daniel Baluta wrote:
> Tx doorbell is handled by txdb_tasklet and doesn't
> have an associated IRQ.
> 
> Anyhow, imx_mu_shutdown ignores this and tries to
> free an IRQ that wasn't requested for Tx DB resulting
> in the following warning:
> 
> [    1.967644] Trying to free already-free IRQ 26
> [    1.972108] WARNING: CPU: 2 PID: 157 at kernel/irq/manage.c:1708 __free_irq+0xc0/0x358
> [    1.980024] Modules linked in:
> [    1.983088] CPU: 2 PID: 157 Comm: kworker/2:1 Tainted: G
> [    1.993524] Hardware name: Freescale i.MX8QXP MEK (DT)
> [    1.998668] Workqueue: events deferred_probe_work_func
> [    2.003812] pstate: 60000085 (nZCv daIf -PAN -UAO)
> [    2.008607] pc : __free_irq+0xc0/0x358
> [    2.012364] lr : __free_irq+0xc0/0x358
> [    2.016111] sp : ffff00001179b7e0
> [    2.019422] x29: ffff00001179b7e0 x28: 0000000000000018
> [    2.024736] x27: ffff000011233000 x26: 0000000000000004
> [    2.030053] x25: 000000000000001a x24: ffff80083bec74d4
> [    2.035369] x23: 0000000000000000 x22: ffff80083bec7588
> [    2.040686] x21: ffff80083b1fe8d8 x20: ffff80083bec7400
> [    2.046003] x19: 0000000000000000 x18: ffffffffffffffff
> [    2.051320] x17: 0000000000000000 x16: 0000000000000000
> [    2.056637] x15: ffff0000111296c8 x14: ffff00009179b517
> [    2.061953] x13: ffff00001179b525 x12: ffff000011142000
> [    2.067270] x11: ffff000011129f20 x10: ffff0000105da970
> [    2.072587] x9 : 00000000ffffffd0 x8 : 0000000000000194
> [    2.077903] x7 : 612065657266206f x6 : ffff0000111e7b09
> [    2.083220] x5 : 0000000000000003 x4 : 0000000000000000
> [    2.088537] x3 : 0000000000000000 x2 : 00000000ffffffff
> [    2.093854] x1 : 28b70f0a2b60a500 x0 : 0000000000000000
> [    2.099173] Call trace:
> [    2.101618]  __free_irq+0xc0/0x358
> [    2.105021]  free_irq+0x38/0x98
> [    2.108170]  imx_mu_shutdown+0x90/0xb0
> [    2.111921]  mbox_free_channel.part.2+0x24/0xb8
> [    2.116453]  mbox_free_channel+0x18/0x28
> 
> This bug is present from the beginning of times.
> 
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> Fixes:  2bb7005696e2246 ("mailbox: Add support for i.MX messaging unit")
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  drivers/mailbox/imx-mailbox.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 9f74dee1a58c..957c10c4e674 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -214,8 +214,10 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
>  	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
>  	struct imx_mu_con_priv *cp = chan->con_priv;
>  
> -	if (cp->type == IMX_MU_TYPE_TXDB)
> +	if (cp->type == IMX_MU_TYPE_TXDB) {
>  		tasklet_kill(&cp->txdb_tasklet);
> +		return;
> +	}
>  
>  	imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx) |
>  		       IMX_MU_xCR_RIEn(cp->idx) | IMX_MU_xCR_GIEn(cp->idx));

Looks like here is one more bug "from the beginning of times" :)
The imx_mu_xcr_rmw() should disable only one channel depending on the
type of channel.

It should be:
	switch (cp->type) {
	case IMX_MU_TYPE_TX:
		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
		break;
	case IMX_MU_TYPE_RX:
		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_RIEn(cp->idx));
		break;
	case IMX_MU_TYPE_RXDB:
		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_GIEn(cp->idx));
		break;
	default:
		break;
	}

Right now I'm on vocation and have nothing against, if you'll provide
this fix.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
