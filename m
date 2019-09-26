Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AC7BECFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 09:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbEFVJJGynink+fVVT8cJd9avS+VfBlCRR2+nEmSZT8=; b=GNozOVwBq01j4D
	bK/YktMVozGFMhNv5NNHpitnWvwIlxXKQW5bfoahtGaSfyPdjJAS8385Qz5DVmpbfgsFBM+c83bfC
	Emkz/6ivMvBSQ0gg1Ucdy6FNKzRcEYYcAtZa9kN4EJF6gUI9QJgoJ0LZDgJBdYxnBTzqCGz73gm9U
	U5uG/MjbmPsCLYoicTdRVQvf4dG+AUJBnEaIpk53Hg7N4dIbIjpfAtm4LLhREVAuVYctHOvzzRkqk
	L+uPD9cndoHHlKuDT5e3q9bmTh0X+kvRwrP1tA4ItGUcZtJXV1Y04gbpm9KA9v7NsilszTmq2ar2O
	luWEY3qJ1MmmwqQbVM+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDOgd-0006K1-KH; Thu, 26 Sep 2019 07:59:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDOgJ-0006Iy-P8
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 07:59:24 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iDOgF-0004ax-0i; Thu, 26 Sep 2019 09:59:15 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iDOgE-0006lM-8C; Thu, 26 Sep 2019 09:59:14 +0200
Date: Thu, 26 Sep 2019 09:59:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Message-ID: <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:53:40 up 131 days, 14:11, 85 users,  load average: 0.03, 0.21,
 0.16
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_005919_951984_31239ACB 
X-CRM114-Status: GOOD (  22.16  )
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

Hi,

On 19-09-25 18:07, Anson Huang wrote:
> The SCU firmware does NOT always have return value stored in message
> header's function element even the API has response data, those special
> APIs are defined as void function in SCU firmware, so they should be
> treated as return success always.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> 	- This patch is based on the patch of https://patchwork.kernel.org/patch/11129553/
> ---
>  drivers/firmware/imx/imx-scu.c | 34 ++++++++++++++++++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index 869be7a..ced5b12 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -78,6 +78,11 @@ static int imx_sc_linux_errmap[IMX_SC_ERR_LAST] = {
>  	-EIO,	 /* IMX_SC_ERR_FAIL */
>  };
>  
> +static const struct imx_sc_rpc_msg whitelist[] = {
> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func = IMX_SC_MISC_FUNC_UNIQUE_ID },
> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS },
> +};

Is this going to be extended in the near future? I see some upcoming
problems here if someone uses a different scu-fw<->kernel combination as
nxp would suggest.

Regards,
  Marco

> +
>  static struct imx_sc_ipc *imx_sc_ipc_handle;
>  
>  static inline int imx_sc_to_linux_errno(int errno)
> @@ -157,11 +162,24 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
>  	return 0;
>  }
>  
> +static bool imx_scu_call_skip_return_value_check(uint8_t svc, uint8_t func)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(whitelist); i++)
> +		if (svc == whitelist[i].svc &&
> +			func == whitelist[i].func)
> +			return true;
> +
> +	return false;
> +}
> +
>  /*
>   * RPC command/response
>   */
>  int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>  {
> +	uint8_t saved_svc, saved_func;
>  	struct imx_sc_rpc_msg *hdr;
>  	int ret;
>  
> @@ -171,8 +189,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>  	mutex_lock(&sc_ipc->lock);
>  	reinit_completion(&sc_ipc->done);
>  
> -	if (have_resp)
> +	if (have_resp) {
>  		sc_ipc->msg = msg;
> +		saved_svc = ((struct imx_sc_rpc_msg *)msg)->svc;
> +		saved_func = ((struct imx_sc_rpc_msg *)msg)->func;
> +	}
>  	sc_ipc->count = 0;
>  	ret = imx_scu_ipc_write(sc_ipc, msg);
>  	if (ret < 0) {
> @@ -190,7 +211,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
>  
>  		/* response status is stored in hdr->func field */
>  		hdr = msg;
> -		ret = hdr->func;
> +		/*
> +		 * Some special SCU firmware APIs do NOT have return value
> +		 * in hdr->func, but they do have response data, those special
> +		 * APIs are defined as void function in SCU firmware, so they
> +		 * should be treated as return success always.
> +		 */
> +		if (!imx_scu_call_skip_return_value_check(saved_svc, saved_func))
> +			ret = hdr->func;
> +		else
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
