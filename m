Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2C31E52D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nf03qgiQH51dFaR9h+yjyuj756NjUV/wrYEI4fQS60=; b=jVKwRE7epEK+PJ
	5ECBmYYoL4iMSwU1P/RBnBFQ9TixyfAAtuWTQYQCnIMMRKKbHQqz63uc7tfTc/cYgSojt/4eXgA0g
	g6bintuH2Z6MhHRyOD8a1K6xEIdVeclppBgcpOaQqliTNinE6Ba24e9ktmdShEDuNNTfVEtpdjWGD
	VmQIBI/Q8lZjH6HD3aYFLTmOCwfV9VqcGIIvtcjDfhuQ37oZY2Sl0Vi/pgPZcdMdra9j3z+rLbwNA
	U/N2giPJ3cRcKtqhePSdBhp2GyWsdGZ5SIZo4/z0O4Udcp5GvYw/WSgWYHj1oAMZNpP+bGLch7J5X
	dUq87ypgH2+e97xXol6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7Di-0004yL-2y; Thu, 28 May 2020 01:20:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7DY-0004xg-DX
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:20:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id k22so10857354pls.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 18:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VQ7LUQQZ/eVaGd5VEJD8oJklzM/fJyrG9ba3r7/1SoE=;
 b=TwSyLC8eiHi2IO8CR/d7V5Qvb8xA2M9Nl35lijvJ4ZPWcZraZiDNuo8HfBWx7Sce0X
 Bv6T8vUl/PB5CLJp1W7qmAOzmeZ9QHyynNj+YMnvfMcKbFghWLKAG5aGzrC/u8vi5e8W
 0tMS0MLZLkC5NpVvwvIJffw9mqVRG9CtmOphbnhppofBjDvmZjURgRm07Vw7YZxOdw2w
 z7w2kEp2z29Ih7QX+RuXo9B11yKEbFZL0N/GqusxSgtfWrWhShEwv+PgcB7UMrtDYKeL
 LXxaHazBly6uVv34fK2vIy03U523QrWgP2a2wblyrA/JV5j/kh/v9+MO2rpiPOvETIYw
 0d6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VQ7LUQQZ/eVaGd5VEJD8oJklzM/fJyrG9ba3r7/1SoE=;
 b=SaY8Ke89lFHMxqKuIuT/4VvK01vtDLxKLNrEj/M7YjEjE1JYpocC+EZoLdY4Svpbw9
 Vc4bw2cKmyrZqdhpsa67YY/7UCA6BVnWBYz1Dv868wO84raJHpBZaI7+YDNCUvvKCWW1
 r1n3XJ+1nrYj0xHIvZMo91PrOl7eFWP9a9FmYRTbFHZhOV6qfW+9i0PMx+D5qOl3RsWD
 h+MpRPMKuiRids3zvxtbG5nLORYgwWjUmZC6h9x/5IzGv5/qeDQHFH1Fh3FnKzwQJVmi
 DOgeUbtHyp9ixZ0jd1DV4TJYk25O7uEF3kNk4qClISOXTfIlIsmqRHqHaFevv7dJu03t
 gYhA==
X-Gm-Message-State: AOAM531h95Fe4cO2IceHjrP7g89R0uQ2C1hb+u1FribXzoyKmMGB1nx6
 8WDjtCSmcJi0NwG06H+g5/o=
X-Google-Smtp-Source: ABdhPJxxtSCpYuqOC2VnFEhiZ9l6NIkOXrrUOJLnOaecuTiUxgsIzz0zpHcFLL8l6Z397kEPj5y8Aw==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id
 h1mr1161911pjs.145.1590628818740; 
 Wed, 27 May 2020 18:20:18 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:400::5:ccc9])
 by smtp.gmail.com with ESMTPSA id n21sm3523989pjo.25.2020.05.27.18.20.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 May 2020 18:20:18 -0700 (PDT)
Date: Wed, 27 May 2020 18:20:11 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, taoren@fb.com
Subject: Re: [PATCH] usb: gadget: aspeed: fixup vhub port irq handling
Message-ID: <20200528012010.GA30405@taoren-ubuntu-R90MNF91>
References: <20200528011154.30355-1-rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528011154.30355-1-rentao.bupt@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_182020_474504_F37E62CE 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Ben,

I sent out the follow-on patch per Greg's suggestion, and the purpose is
to include the latest version (v4) of the original commit. As v4 was
already Acked-by you, can I add the tag for this patch? Or are you
willing to Ack it again?


Cheers,

Tao

On Wed, May 27, 2020 at 06:11:54PM -0700, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> This is a follow-on patch for commit a23be4ed8f48 ("usb: gadget: aspeed:
> improve vhub port irq handling"): for_each_set_bit() is replaced with
> simple for() loop because for() loop runs faster on ASPEED BMC.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> ---
>  drivers/usb/gadget/udc/aspeed-vhub/core.c | 10 +++-------
>  drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  3 +++
>  2 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> index cdf96911e4b1..be7bb64e3594 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> @@ -135,13 +135,9 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  
>  	/* Handle device interrupts */
>  	if (istat & vhub->port_irq_mask) {
> -		unsigned long bitmap = istat;
> -		int offset = VHUB_IRQ_DEV1_BIT;
> -		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
> -
> -		for_each_set_bit_from(offset, &bitmap, size) {
> -			i = offset - VHUB_IRQ_DEV1_BIT;
> -			ast_vhub_dev_irq(&vhub->ports[i].dev);
> +		for (i = 0; i < vhub->max_ports; i++) {
> +			if (istat & VHUB_DEV_IRQ(i))
> +				ast_vhub_dev_irq(&vhub->ports[i].dev);
>  		}
>  	}
>  
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> index 2e5a1ef14a75..87a5dea12d3c 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> @@ -67,6 +67,9 @@
>  #define VHUB_IRQ_HUB_EP0_SETUP			(1 << 0)
>  #define VHUB_IRQ_ACK_ALL			0x1ff
>  
> +/* Downstream device IRQ mask. */
> +#define VHUB_DEV_IRQ(n)				(VHUB_IRQ_DEVICE1 << (n))
> +
>  /* SW reset reg */
>  #define VHUB_SW_RESET_EP_POOL			(1 << 9)
>  #define VHUB_SW_RESET_DMA_CONTROLLER		(1 << 8)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
