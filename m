Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6BD3C240
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 06:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=by3WDJDBr04Fpkmckzdh5QdinNRv5s/RzDNj6KpeW38=; b=IYT4z+IgraG+ii
	PQyV9d6F/qZ+4Z3hER6FO5sDY1ayJmx1Ql+Ph6GHdApO4aZ/NBhthgzAJdoPswuaUvgxSzIbxsQDq
	Dn6v88/2PQvD2HBNNQkWyxKjfZIarpeht6rQ2xpsX7Eq/wggCtw8/cht3d6soBFeQCxiri0xwahhh
	BZ02obNRJZcn3iRMmG6BAhPybF29/X5kOaOhHw/I7gTsA5BphmdhLR1RRG018j0pLSF2EP6Qd6kSL
	dujbb4SO1QdxG8mwBXxvmM5X5+chXw8aptNXfpEzuJP5uAcToMSwF1twWJfhvQBH0stYX2sHeVit8
	pki9Bw85rV6MyM0ma79Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haYTZ-0008AV-Mp; Tue, 11 Jun 2019 04:33:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haYTP-00089l-2s
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 04:33:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1haYTE-0005Bb-BD; Tue, 11 Jun 2019 06:33:16 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1haYTD-0005xx-CH; Tue, 11 Jun 2019 06:33:15 +0200
Date: Tue, 11 Jun 2019 06:33:15 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: daniel.baluta@nxp.com
Subject: Re: [RFC PATCH 1/2] mailbox: imx: Clear GIEn bit at shutdown
Message-ID: <20190611043315.mr72owvjrxkegdww@pengutronix.de>
References: <20190610141609.17559-1-daniel.baluta@nxp.com>
 <20190610141609.17559-2-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610141609.17559-2-daniel.baluta@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:27:45 up 24 days, 10:45, 45 users,  load average: 0.10, 0.05, 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_213327_296773_3222F126 
X-CRM114-Status: GOOD (  15.52  )
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
Cc: aisheng.dong@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:16:08PM +0800, daniel.baluta@nxp.com wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> GIEn is enabled at startup for RX doorbell mailboxes so
> we need to clear the bit at shutdown in order to avoid
> leaving the interrupt line enabled.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

Please send  bug fixes separately from RFC patches.

You can add my
Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
>  drivers/mailbox/imx-mailbox.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 25be8bb5e371..9f74dee1a58c 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -217,8 +217,8 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
>  	if (cp->type == IMX_MU_TYPE_TXDB)
>  		tasklet_kill(&cp->txdb_tasklet);
>  
> -	imx_mu_xcr_rmw(priv, 0,
> -		   IMX_MU_xCR_TIEn(cp->idx) | IMX_MU_xCR_RIEn(cp->idx));
> +	imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx) |
> +		       IMX_MU_xCR_RIEn(cp->idx) | IMX_MU_xCR_GIEn(cp->idx));
>  
>  	free_irq(priv->irq, chan);
>  }
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
