Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764E11A7605
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZtx4C1tnU4P3LY2WszJ622hz9RfRmptA4j5leazm8U=; b=eGqJdTHFFS1vzU
	pj9Mx3dUbhMMgZXmQRP7vqsKqwdB//sn/g6yZEIuUMu5Z9pgQKIUKuOWWk3W49POQvt1khfyK+JJe
	Fjx5iSpx7zCCEwZv6JHJrR3GUVbKLI2F/mXeWySQENKgF7gnD3g/CRPBcPTlFrRLWIksoJel0d4M5
	tLmLnaG4s0pfvQGfu38GtHGUYGrRna7S/B51Yjc0Ei7flYT05zuru1/fe7coE99TfhGN+vccKEG4n
	mSXh8B0WZOQRG8++KiZ+l1tA/MCCRPRk0yKduOGF9taS39RnrdTITO+SmQ++FLxp4TVVDOHvsa1Jo
	TjbyB9AA5n6o4NFRXZbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOGuJ-0006X6-3U; Tue, 14 Apr 2020 08:26:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGu6-0006Vs-SR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 08:26:48 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jOGtw-0007Pr-8X; Tue, 14 Apr 2020 10:26:36 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jOGtv-0000m7-JI; Tue, 14 Apr 2020 10:26:35 +0200
Date: Tue, 14 Apr 2020 10:26:35 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: peng.fan@nxp.com
Subject: Re: [PATCH] mailbox: imx-mailbox: fix scu msg header size check
Message-ID: <20200414082635.jo5yljonh5xgnujd@pengutronix.de>
References: <1586851826-16596-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586851826-16596-1-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_012646_917902_CB17689B 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, Anson.Huang@nxp.com, festevam@gmail.com,
 s.hauer@pengutronix.de, jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 o.rempel@pengutronix.de, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 04:10:26PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> =

> The i.MX8 SCU message header size is the number of "u32" elements,
> not "u8", so fix the check.
> =

> Reported-by: coverity-bot <keescook+coverity-bot@chromium.org>
> Addresses-Coverity-ID: 1461658 ("Memory - corruptions")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> =

> V2:
>  I not include the fixes tag, since this patch still in next tree.
> =

>  drivers/mailbox/imx-mailbox.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 7906624a731c..c2398cb63ea0 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -154,12 +154,12 @@ static int imx_mu_scu_tx(struct imx_mu_priv *priv,
>  =

>  	switch (cp->type) {
>  	case IMX_MU_TYPE_TX:
> -		if (msg->hdr.size > sizeof(*msg)) {
> +		if (msg->hdr.size > (sizeof(*msg) / 4)) {

No need for the parenthesis. Maybe a comment would be helpful here,
something like:

	/*
	 * msg->hdr.size specifies the number of u32 words while sizeof
	 * yields bytes.
	 */

>  			/*
>  			 * The real message size can be different to
>  			 * struct imx_sc_rpc_msg_max size
>  			 */
> -			dev_err(priv->dev, "Exceed max msg size (%zu) on TX, got: %i\n", size=
of(*msg), msg->hdr.size);
> +			dev_err(priv->dev, "Exceed max msg size (%zu) on TX, got: %i\n", size=
of(*msg) / 4, msg->hdr.size);

The unit here is also "number of u32 words", maybe bytes is more
natural? And I suggesting specifying the unit in the error message.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
