Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A9E19B804
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 23:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSq5RaShLWRTaaANQFxStp4TbmYjtgSHlRgjZspv0W8=; b=LS12DT748gktXG
	LtBgH2WjX5eZmud59HBwtHlkToWzN2mnoNP54/55dOWijJy1ZMofUurCFwZMSTFSnt6KUE9/S4v6b
	NlQtvMaWub77o11J+83X9Adv78Vbn/zfjQVUkjT/56hJV7wSqkkL0bD+jorOASR0pHmT3VmHGK+c/
	Wi6W2tsO9TmCQFHE0jMupW17GACElCgJuGlec68LZ2ey85NB4fA1oxIa44AjxZ6V6XHNdknr8ylVX
	c0zafDEWAcToKudtWhzgTR3O3ND59+hAqCc086O3hSgA59gnFqEk4CIM7XfkHuYkhDFVIIkaKzzYS
	v4/C9L3T7FtE7ntewkkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJlNk-0007pE-0S; Wed, 01 Apr 2020 21:58:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJlNc-0007oT-Rp
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 21:58:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id d17so823319pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 14:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T6l/yr6Cjt15a6YDL3tI21z3eGbnhRLGQpcGGdkH3G0=;
 b=Aug+9ANMwfqMqTPoXflHoLnWAPyOIweS23iswm7clSDXgqDQCTiLRSSoMNZ0io2ytz
 4kmqK7K8TsoX8Oa1qCNIKmfyfFCeASbGk09hbmJT9JzSZOyO7y+qxD+tj+NEFilvfBwD
 Pkv6lnNNptyY6BsU/XB8/PfyksA6Z9Xm2tp++boXtgRMNr0fUMtwTmaeW6aqhqgBxxzh
 T3T/9LrClkN4dUYuEDANTY429B46thKNnNF8CWPF0AWe3YNUzg+3U1nhKB6vWT5uoZ9P
 z8TEIs2da5LgN87NKawCzRGQZ9m5Isbl8/I1AM+wuDNKZL4b1/4vZvFmT2cR6NyhM9bK
 U/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T6l/yr6Cjt15a6YDL3tI21z3eGbnhRLGQpcGGdkH3G0=;
 b=C4GEud5QINa5fjts99JCadtoqRnY7EiMX7Jq6YdAlZU+QLxtQTJl8RIbCIH/p0VXIO
 Eqis4qiLPg2ApSKcUaLuBXCTvkD0tquhxrruJWsGiX+7ABVGhP4WajQMiYkGjFbXb4ui
 381wRef5IDZjzRaKkDAwMp3gWlH2F8yMIMfRArN388aYF1cRQuNACfvw4fcZ2dZtplej
 16Nd7jw0ZRr/6yHg4bWpYbJaSh0Yh4CXCLQqemDnLEVoCztOTQY5mmymbRmKZ2ceO+VT
 7RJIbI/Xls+SW0UEFam5OoTtiVO/5hRlijaPIqEwQz4pTtrgWJu39DHpTKz9YQJok/Ia
 rnwA==
X-Gm-Message-State: AGi0PuYMHEgaLUqcV/l5Dl6wzk01MNwyVotXZJzcAqNqoCymOPEe74dZ
 +aCgrZ3akDUK1B/DS//QLhE=
X-Google-Smtp-Source: APiQypKQLNXXWccupxCJd6/Wi/Nq14WhOAQB8ADTtsp5VWa5/Aot0+vBabx18lkkpwOAaRkoEYxr3g==
X-Received: by 2002:a63:134e:: with SMTP id 14mr288009pgt.380.1585778314374;
 Wed, 01 Apr 2020 14:58:34 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 (c-73-252-146-110.hsd1.ca.comcast.net.
 [73.252.146.110])
 by smtp.gmail.com with ESMTPSA id q71sm2378551pjb.5.2020.04.01.14.58.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 Apr 2020 14:58:33 -0700 (PDT)
Date: Wed, 1 Apr 2020 14:58:27 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, taoren@fb.com
Subject: Re: [PATCH v3] usb: gadget: aspeed: improve vhub port irq handling
Message-ID: <20200401215826.GA8248@taoren-ubuntu-R90MNF91>
References: <20200315191430.12379-1-rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200315191430.12379-1-rentao.bupt@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_145836_902558_C6CCC9CF 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Any further comments on the patch?


Cheers,

Tao

On Sun, Mar 15, 2020 at 12:14:30PM -0700, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> This patch evaluates vhub ports' irq mask before going through per-port
> irq handling one by one, which helps to speed up irq handling in case
> there is no port interrupt.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> ---
>  Changes in v3:
>    - assign istat to (unsigned long) bitmap before calling
>      "for_each_set_bit_from".
>  Changes in v2:
>    - use "for_each_set_bit" to speed up port irq handling.
> 
>  drivers/usb/gadget/udc/aspeed-vhub/core.c | 12 +++++++++---
>  drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  8 +++-----
>  2 files changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> index f8d35dd60c34..555e8645fb1e 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> @@ -134,11 +134,15 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  	}
>  
>  	/* Handle device interrupts */
> -	for (i = 0; i < vhub->max_ports; i++) {
> -		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> +	if (istat & vhub->port_irq_mask) {
> +		unsigned long bitmap = istat;
> +		int offset = VHUB_IRQ_DEV1_BIT;
> +		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
>  
> -		if (istat & dev_mask)
> +		for_each_set_bit_from(offset, &bitmap, size) {
> +			i = offset - VHUB_IRQ_DEV1_BIT;
>  			ast_vhub_dev_irq(&vhub->ports[i].dev);
> +		}
>  	}
>  
>  	/* Handle top-level vHub EP0 interrupts */
> @@ -332,6 +336,8 @@ static int ast_vhub_probe(struct platform_device *pdev)
>  
>  	spin_lock_init(&vhub->lock);
>  	vhub->pdev = pdev;
> +	vhub->port_irq_mask = GENMASK(VHUB_IRQ_DEV1_BIT + vhub->max_ports - 1,
> +				      VHUB_IRQ_DEV1_BIT);
>  
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	vhub->regs = devm_ioremap_resource(&pdev->dev, res);
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> index fac79ef6d669..23a1ac91f8d2 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> @@ -51,14 +51,11 @@
>  #define VHUB_CTRL_UPSTREAM_CONNECT		(1 << 0)
>  
>  /* IER & ISR */
> +#define VHUB_IRQ_DEV1_BIT			9
>  #define VHUB_IRQ_USB_CMD_DEADLOCK		(1 << 18)
>  #define VHUB_IRQ_EP_POOL_NAK			(1 << 17)
>  #define VHUB_IRQ_EP_POOL_ACK_STALL		(1 << 16)
> -#define VHUB_IRQ_DEVICE5			(1 << 13)
> -#define VHUB_IRQ_DEVICE4			(1 << 12)
> -#define VHUB_IRQ_DEVICE3			(1 << 11)
> -#define VHUB_IRQ_DEVICE2			(1 << 10)
> -#define VHUB_IRQ_DEVICE1			(1 << 9)
> +#define VHUB_IRQ_DEVICE1			(1 << (VHUB_IRQ_DEV1_BIT))
>  #define VHUB_IRQ_BUS_RESUME			(1 << 8)
>  #define VHUB_IRQ_BUS_SUSPEND 			(1 << 7)
>  #define VHUB_IRQ_BUS_RESET 			(1 << 6)
> @@ -402,6 +399,7 @@ struct ast_vhub {
>  	/* Per-port info */
>  	struct ast_vhub_port		*ports;
>  	u32				max_ports;
> +	u32				port_irq_mask;
>  
>  	/* Generic EP data structures */
>  	struct ast_vhub_ep		*epns;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
