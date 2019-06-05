Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90B8359D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlsCMpC2FphnVxiw+LhdSqTm54Mk1RGx9EhcV9Op7ac=; b=RlBSfhHGU0jFyO
	GYuM/F/oqqCrqgIz6mND6QbzOp3aoaPsSbNC3J/XBph6wKpD5eyD8bCaRAJSdq3FbsG2MiRnJvauo
	5jZe5aiFrs7fRnJPmzAE5qMjpivvyAVjy82ORgznbOsh57120jbhp0Gn/AP2/UIuAgD2tAOMDhhsv
	4mKqoF9lLPyTbSjvaQupzTD5nlgcQzwqrIsTepEiGl0o5SyaB+3nqAwEiFazwMKKHxjF5C2zT+kQ/
	2m+t8w5PLG3o2S69s9IBP8UvSzvn7gpyEUSdHjU9LP4Zji9un1HUUIKHJVpIoc+Z+2+NPqZFSWpCl
	tOMWg1Y/L9s7PzoD9hmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSWz-0007LH-Ml; Wed, 05 Jun 2019 09:48:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSWs-0007Kx-Kt
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:48:23 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 572B42075C;
 Wed,  5 Jun 2019 09:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559728101;
 bh=7SIWnOjgiMy1b7rUmC/gSPkhsL7uXGeybj6tOT/Hcec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CHNcmKtAUNao/BKpbzcv3RjI9wl1xJBFmgol4wiEZY5h0w3GDW8NeRLSIqDmNXznl
 E4zIQ5ifFMtgqgzopffpIchNetLax2b2CfJ2uDBa/rwy2VhCfFleXF4/P+6/K9B3J+
 0ZV1UKb+aksfIxwDNxDHo4v9FoKbZawCmCHKQu3A=
Date: Wed, 5 Jun 2019 11:48:19 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Duyanlin <duyanlin@huawei.com>
Subject: Re: [PATCH] drivers/usb/host/imx21-hcd.c: fix divide-by-zero in func
 nonisoc_etd_done
Message-ID: <20190605094819.GB24282@kroah.com>
References: <1559564879-88739-1-git-send-email-duyanlin@huawei.com>
 <52727B2E0D7DFC4A945AFC14D2E3E5A92211C6FE@dggeml529-mbx.china.huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52727B2E0D7DFC4A945AFC14D2E3E5A92211C6FE@dggeml529-mbx.china.huawei.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_024822_703733_3C91447A 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zengweilin <zengweilin@huawei.com>, "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 02:02:40AM +0000, Duyanlin wrote:
> 
> If the function usb_maxpacket(urb->dev, urb->pipe, usb_pipeout(urb->pipe)) returns 0, that will cause a illegal divide-by-zero operation, unexpected results may occur.
> It is best to ensure that the denominator is non-zero before dividing by zero.

Please wrap your changelog comments at 72 columns.

> Signed-off-by: Yanlin Du <duyanlin@huawei.com>

This name HAS to match the From: line of your email.  For that reason
alone I can not take this patch.

> ---
>  drivers/usb/host/imx21-hcd.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/host/imx21-hcd.c b/drivers/usb/host/imx21-hcd.c index 6e3dad1..6a47f78 100644
> --- a/drivers/usb/host/imx21-hcd.c
> +++ b/drivers/usb/host/imx21-hcd.c
> @@ -1038,6 +1038,7 @@ static void nonisoc_etd_done(struct usb_hcd *hcd, int etd_num)
>  	int cc;
>  	u32 bytes_xfrd;
>  	int etd_done;
> +	unsigned int maxp;
>  
>  	disactivate_etd(imx21, etd_num);
>  
> @@ -1104,13 +1105,13 @@ static void nonisoc_etd_done(struct usb_hcd *hcd, int etd_num)
>  		break;
>  
>  	case PIPE_BULK:
> +		maxp = usb_maxpacket(urb->dev, urb->pipe,
> +				usb_pipeout(urb->pipe));

How can this ever be 0?  Don't we abort a lot earlier if a pipe length
is 0?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
