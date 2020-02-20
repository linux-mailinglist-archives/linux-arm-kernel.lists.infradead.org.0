Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10994165474
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 02:40:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hi+utICFjM2TjeUuExNjJkWsLAXKJ0FdWTa7SMAVaSM=; b=UGd2NtKYDszs/q
	JuRlzGsN2l4vci5yd7SobNGQ0iv7YLfTc9Kkw2LbNhav21JTNNon3K9SceLhqP8+bIps/yQCYykwX
	/lIdEapvgYQaAKLLUcWj8HFkHoYV1AAapW8NyIdvYLXcIxfaplUmLQ0qSSK3GHDBhooccGalyt72s
	d59Eza4RRqZOntvfCd9Nz1yQx6zyMnJdhjw5EICveSiZRwu5eb94jzBAiW/vM0kSIN7GlyBVYpCsh
	kE1SIgjPPjfDlK5aNJguZBE6scju0C5B+XvWLNEx+iwwdp+i3r6wt7iOc6xDfzcSFbjITVWfEFJXx
	lUf/WatJRAX3hGRVwL2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4apH-0000gU-Hb; Thu, 20 Feb 2020 01:40:27 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ap8-0000fz-AF
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 01:40:20 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01K1dkWX028195
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 19 Feb 2020 19:39:49 -0600
Message-ID: <55e77bcb37ec780094b8d226f89bd5557e30d913.camel@kernel.crashing.org>
Subject: Re: [PATCH 2/2] usb: gadget: aspeed: fixup usb1 device descriptor
 at init time
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: rentao.bupt@gmail.com, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>, Stephen Boyd
 <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 20 Feb 2020 12:39:45 +1100
In-Reply-To: <20200218235600.6763-3-rentao.bupt@gmail.com>
References: <20200218235600.6763-1-rentao.bupt@gmail.com>
 <20200218235600.6763-3-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_174019_045697_51F877F5 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-02-18 at 15:56 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> This patch moves fixup-usb1-device-descriptor logic from get_descriptor
> handler to "ast_vhub_fixup_dev_desc" function so the device descriptor
> is only patched once (at vhub init time).

I don't like this either. We should make ast_vhub_dev_desc and patch a
copy here too. I know today there's only one instance of the vhub in a
given SoC but that might not always be the case.

> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> ---
>  drivers/usb/gadget/udc/aspeed-vhub/hub.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> index 4e3ef83283a6..b8bf54b12adc 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> @@ -76,13 +76,6 @@ static struct usb_device_descriptor ast_vhub_dev_desc = {
>  	.bNumConfigurations	= 1,
>  };
>  
> -/* Patches to the above when forcing USB1 mode */
> -static void ast_vhub_patch_dev_desc_usb1(struct usb_device_descriptor *desc)
> -{
> -	desc->bcdUSB = cpu_to_le16(0x0100);
> -	desc->bDeviceProtocol = 0;
> -}
> -
>  /*
>   * Configuration descriptor: same comments as above
>   * regarding handling USB1 mode.
> @@ -316,10 +309,6 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep *ep,
>  	if (len > dsize)
>  		len = dsize;
>  
> -	/* Patch it if forcing USB1 */
> -	if (desc_type == USB_DT_DEVICE && ep->vhub->force_usb1)
> -		ast_vhub_patch_dev_desc_usb1(ep->buf);
> -
>  	/* Shoot it from the EP buffer */
>  	return ast_vhub_reply(ep, NULL, len);
>  }
> @@ -878,6 +867,15 @@ static void ast_vhub_fixup_dev_desc(struct ast_vhub *vhub)
>  		if (of_str[id])
>  			ast_vhub_str_array[i].s = of_str[id];
>  	}
> +
> +	/*
> +	 * Update USB Release Number and Protocol code if vhub is running
> +	 * at USB 1.x speed.
> +	 */
> +	if (vhub->force_usb1) {
> +		ast_vhub_dev_desc.bcdUSB = cpu_to_le16(0x0100);
> +		ast_vhub_dev_desc.bDeviceProtocol = 0;
> +	}
>  }
>  
>  void ast_vhub_init_hub(struct ast_vhub *vhub)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
