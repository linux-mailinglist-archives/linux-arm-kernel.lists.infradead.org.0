Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32D2169EC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 07:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/zlQmxPRjTy8nHj9VLAD85eMBWMEnfzVBgDQBxWIIk=; b=dD730qFs4kxr3j
	ThdiHp587MSrAZYAUKS8PqTIpdGI5FQ3+aoo5/8pNnlgk+tflyK7DIwZvDvKgbTGP58Z0ZEjMp1wW
	0r1qkDA/cw8NDIm/mcul7k1gR94cV/YH8LApIJKiWXIupyHnyXhWppMGyhiQElyqvjyEJOiSpkeQJ
	o/MUJMIyo21ktWxvMW+r4o1mdZIf85A3ABeb0CnymT2BP/ID9WSrle0HJTRINDbQuKcDpQzEoTFfM
	a3dFu18nqb7W+hVZyV54PgkQfXjF+eSfQS+HzhUyJnvqCuILK7FPkQWWvHyOpaMoqU6N6zgxZlUbV
	Lhba2MWDKVuyd6blAIbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67YN-0004Mm-E6; Mon, 24 Feb 2020 06:49:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67YE-0004MT-JF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 06:49:12 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D782F20661;
 Mon, 24 Feb 2020 06:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582526950;
 bh=fTou/t6Toy7plljj7+N7mWKQn3888V8JTKmo35a07jI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sPT3ZFIVKprGq8oPF95m5UZYZ1ZXiO5d7MjVA+D0jKUBg/S5Gz8zFNMIWWd2xd7eR
 CyBGDMPXhrDlSn14kdppX3YoIlCQOgr6WR9ceujxFu5/v3UOa6aco5oeS7ICpO7DT3
 X99wKAhoYUMjoeJnQWBkgWRUGRW2FtL1kD7MXXnI=
Date: Mon, 24 Feb 2020 14:49:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] firmware: imx: scu: Fix corruption of header
Message-ID: <20200224064904.GP27688@dragon>
References: <4389d4185aabbb94dfcbe79a9d0937fb57182335.1582215013.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4389d4185aabbb94dfcbe79a9d0937fb57182335.1582215013.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_224911_294820_C374DF66 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Franck LENORMAND <franck.lenormand@nxp.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 06:12:22PM +0200, Leonard Crestez wrote:
> From: Franck LENORMAND <franck.lenormand@nxp.com>
> 
> The header of the message to send can be changed if the
> response is longer than the request:
>  - 1st word, the header is sent
>  - the remaining words of the message are sent
>  - the response is received asynchronously during the
>    execution of the loop, changing the size field in
>    the header
>  - the for loop test the termination condition using
>    the corrupted header
> 
> It is the case for the API build_info which has just a
> header as request but 3 words in response.
> 
> This issue is fixed by storing the header locally instead of
> using a pointer on it.
> 
> Fixes: edbee095fafb (firmware: imx: add SCU firmware driver support)
> Signed-off-by: Franck LENORMAND <franck.lenormand@nxp.com>
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

When you forward a patch from someone else, it should have your SoB.

Shawn

> Cc: stable@vger.kernel.org
> ---
>  drivers/firmware/imx/imx-scu.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> This can manifest as random crashes so Cc: stable
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index 03b43b7a6d1d..2cf09f8a075c 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -132,24 +132,24 @@ static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
>  		complete(&sc_ipc->done);
>  }
>  
>  static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
>  {
> -	struct imx_sc_rpc_msg *hdr = msg;
> +	struct imx_sc_rpc_msg hdr = *(struct imx_sc_rpc_msg *)msg;
>  	struct imx_sc_chan *sc_chan;
>  	u32 *data = msg;
>  	int ret;
>  	int i;
>  
>  	/* Check size */
> -	if (hdr->size > IMX_SC_RPC_MAX_MSG)
> +	if (hdr.size > IMX_SC_RPC_MAX_MSG)
>  		return -EINVAL;
>  
> -	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
> -		hdr->func, hdr->size);
> +	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr.svc,
> +		hdr.func, hdr.size);
>  
> -	for (i = 0; i < hdr->size; i++) {
> +	for (i = 0; i < hdr.size; i++) {
>  		sc_chan = &sc_ipc->chans[i % 4];
>  		ret = mbox_send_message(sc_chan->ch, &data[i]);
>  		if (ret < 0)
>  			return ret;
>  	}
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
