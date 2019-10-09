Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3107FD0A79
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSoaihDw+cbwN26aw/wnVSsl+4FmsbaoZ3PVICIu0EU=; b=MDIXC0dXjTMSt6
	BB9tDJj6RcU/fhau9taVo5Unn0Q03V8DVMJUnmll1aQZxex95z1SeTxGKMGF80XT4BDmD1Xmx09Np
	MPcFkHsN+DZSPEXeHcNP1M43gEY2BhMBLscOs2uArnHlhdJNzwLPlMeKPOWYb5mYKOYQyz7FkBeSi
	HsGZzi1i2QbQQI1v0H7QGTLT92LDXSdLuR6z0BtsbjJFIG+2/Az7BbG3rZ3P3JhHQ1oTzlMmrLE2q
	7GViVoJcB/zhnx4QBNkXriDU5T+w5mL14pfIlhaao99wq0eEEgIa3sw4x5Y1v2vSbnrqC5EXPYY2j
	pyahC/etAyu+SqA2nYbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7q1-0005fC-Qc; Wed, 09 Oct 2019 09:00:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7pu-0005en-4g
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:00:47 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iI7ps-0007lp-GU; Wed, 09 Oct 2019 11:00:44 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iI7pr-0007Ux-7Q; Wed, 09 Oct 2019 11:00:43 +0200
Date: Wed, 9 Oct 2019 11:00:43 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Message-ID: <20191009090043.4yq4l7iac3zgytnp@pengutronix.de>
References: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:58:09 up 144 days, 15:16, 97 users,  load average: 0.08, 0.07,
 0.07
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_020046_177034_087487D4 
X-CRM114-Status: GOOD (  19.62  )
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
Cc: aisheng.dong@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On 19-10-07 09:15, Anson Huang wrote:
> The SCU firmware does NOT always have return value stored in message
> header's function element even the API has response data, those special
> APIs are defined as void function in SCU firmware, so they should be
> treated as return success always.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Use direct API check instead of calling another function to check.
> 	- This patch is based on https://patchwork.kernel.org/patch/11129553/
> ---
>  drivers/firmware/imx/imx-scu.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index 869be7a..03b43b7 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -162,6 +162,7 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
>   */
>  int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>  {
> +	uint8_t saved_svc, saved_func;
>  	struct imx_sc_rpc_msg *hdr;
>  	int ret;
>  
> @@ -171,8 +172,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>  	mutex_lock(&sc_ipc->lock);
>  	reinit_completion(&sc_ipc->done);
>  
> -	if (have_resp)
> +	if (have_resp) {
>  		sc_ipc->msg = msg;
> +		saved_svc = ((struct imx_sc_rpc_msg *)msg)->svc;

Why do we need to check the svc too?

> +		saved_func = ((struct imx_sc_rpc_msg *)msg)->func;

Nitpick, should we call it requested_func/req_func?

Regards,
  Marco

> +	}
>  	sc_ipc->count = 0;
>  	ret = imx_scu_ipc_write(sc_ipc, msg);
>  	if (ret < 0) {
> @@ -191,6 +195,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>  		/* response status is stored in hdr->func field */
>  		hdr = msg;
>  		ret = hdr->func;
> +		/*
> +		 * Some special SCU firmware APIs do NOT have return value
> +		 * in hdr->func, but they do have response data, those special
> +		 * APIs are defined as void function in SCU firmware, so they
> +		 * should be treated as return success always.
> +		 */
> +		if ((saved_svc == IMX_SC_RPC_SVC_MISC) &&
> +			(saved_func == IMX_SC_MISC_FUNC_UNIQUE_ID ||
> +			 saved_func == IMX_SC_MISC_FUNC_GET_BUTTON_STATUS))
> +			ret = 0;
>  	}
>  
>  out:
> -- 
> 2.7.4
> 
> 
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
