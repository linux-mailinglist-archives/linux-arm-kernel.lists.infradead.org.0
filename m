Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D101BD249
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 04:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptPQDHk7qEE+yJnbTx0S0VJ9CyiZDIRrJGa7pW5Vl9I=; b=OCux3zFTB9hhAS
	dsCNrJdcMHMpzTseoXm3csIcAq/iXp76EqnkRFvhvP+k58qZBWWB2w8RotoV70Z/FRcHc3zjEQLha
	3BZr8AohZW9nlxkazh/4eqccE4hPVUoYrU1NE1x9sBs5yfp12M1xqoVXPQM8XsfTgoCbN3IQ7j/u6
	sVwtWOrNTgoYxPLx+NN1CaYAN6ypcH627Ek2HRIqOzkra4+HHxtz8cwUH5bP8W5fEOK/FFKMHVbjW
	sZPhSlOKZbue8YdohJU3yRAvC3gY3KiZc/i6fWL4uiQwRdinGb3e27BqkqpRfdwgSqYjmtd9/NdZm
	wTvBqgU4auWykIhmL19A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTcWJ-0000jz-SH; Wed, 29 Apr 2020 02:32:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTcWA-0000jX-Ni
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 02:32:11 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12F8620730;
 Wed, 29 Apr 2020 02:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588127530;
 bh=W8/EyZPYK/miEiqAgzNxrcEQq3GEA2RTZHOJSMhHw38=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jCbkO5/izw0BXWLaRIUG1HrsPMhgFXEcXH8Pohqne7jNYyiRUTUlVyZlPW3wl+sGv
 3xtV0TcqiyNQqsPIm6u433+WVvpUQX6IE4LbkPyaiOe7lvYPVnAEv+FflIFNSQkG7P
 d6vF5sg58rwM4gPwwwa+RKyDl+82lGfIxXkZnwag=
Date: Wed, 29 Apr 2020 10:32:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V1 2/4] ARM: imx: cpu: drop dead code
Message-ID: <20200429023201.GJ32592@dragon>
References: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
 <1584004645-26720-3-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584004645-26720-3-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_193210_794126_F5673C7A 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ard.biesheuvel@linaro.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 05:17:23PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> imx_soc_device_init is only called by i.MX6Q/SL/SX/UL/7D/7ULP.
> So we could drop the switch case for i.MX1/2/3/5 which are dead code
> that never be executed.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm/mach-imx/cpu.c | 24 ------------------------
>  1 file changed, 24 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
> index 2df649a84697..0302cb66134b 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -108,30 +108,6 @@ static int __init imx_soc_device_init(void)
>  		goto free_soc;
>  
>  	switch (__mxc_cpu_type) {
> -	case MXC_CPU_MX1:
> -		soc_id = "i.MX1";
> -		break;
> -	case MXC_CPU_MX21:
> -		soc_id = "i.MX21";
> -		break;
> -	case MXC_CPU_MX25:
> -		soc_id = "i.MX25";
> -		break;
> -	case MXC_CPU_MX27:
> -		soc_id = "i.MX27";
> -		break;
> -	case MXC_CPU_MX31:
> -		soc_id = "i.MX31";
> -		break;
> -	case MXC_CPU_MX35:
> -		soc_id = "i.MX35";
> -		break;
> -	case MXC_CPU_MX51:
> -		soc_id = "i.MX51";
> -		break;
> -	case MXC_CPU_MX53:
> -		soc_id = "i.MX53";
> -		break;

The code is here to completeness.  If it doesn't get in your way, let's
just keep it.

Shawn

>  	case MXC_CPU_IMX6SL:
>  		ocotp_compat = "fsl,imx6sl-ocotp";
>  		soc_id = "i.MX6SL";
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
