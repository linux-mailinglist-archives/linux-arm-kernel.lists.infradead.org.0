Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64A7156DB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 03:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcsWV+0v6kf6BL94bOFTnEjRHB3Yjm5CD/ptYa4BqII=; b=KiML82sGxmG5td
	h8+0lSaHajDvVa/7PXNFif1oMdPRLjTwDb9Eu/RHZgdpg7ZwIlAN58FlMIPNCVZf9qB/PBxAZy60j
	eHmCnImzJyqwD8HQy6D+sQURC5SrnLZWkONZBLZM70b1aJ291zWng2dFGEByQWgk/hDjvTYiDzzin
	vGm7siLnrP/hlJDUw+hFOm5WsWLS/U6o7+DlRxmsXPD7XnNyM0lVhEhSwYJMR/xK33HwHV4xeCufx
	v7GeBt9d/M0D3VZKY7rKwTkW/AY9XOWkecF3ON1vIT8Cek4C5j71Tp5IMFCNIygDCW7oDjjmtbHIP
	LqttapcrZvwN8FODboDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0z7n-0004vr-1C; Mon, 10 Feb 2020 02:48:39 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0z7d-0004um-Qr
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 02:48:31 +0000
Received: by mail-qk1-x741.google.com with SMTP id a23so5180310qka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 18:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KhNOBWw692sW7TLm9JHYqZ1FYMPS0CnqLtLM69UIajg=;
 b=WOEeBQJ0t4o7kDPXaLRu2aiMGXa9fWpVN/m5JJSOjmwXl7Q2FdrY09xHs+kchDgXNs
 CkiFINK0K96swqWpkyUXYEeNGIfRuDlGs9agaZPvrJrN/8ArqvluPjUd5mGk8PP/BZde
 hmwlVX4z4biZzsRlWmJEelEq+bmi9W6kRHULM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KhNOBWw692sW7TLm9JHYqZ1FYMPS0CnqLtLM69UIajg=;
 b=U3SgYeSIVlxT4KQJ7OMIc8xm0XiQLYPV6m843yOJ7xOxkhlbJFIHXvLTuglyzR4wFG
 n8+1vkpSBo++keaM88ZMEuUZlrQOAHYd/Lve+z11ZZva9dpRWi8gLV6mxxUiQjf8iDwh
 zx0oMUgod0bpXoEgSTcuWuZbrdQ5YIMA5xgleKzPOAg4Nn3sgMdpj7GyVEqi0TU7MH64
 ir7JBUoIzWht50aIz3W21LLPvFQeNfUnVZR+cdg4cAa+OflA8yiNpwf/039dTlQYB0CD
 Y1NjDeSsPMKXzHNQO+mB2FPGHv08Du4O3VyQu8jc0QQtaO24QSVIcUakA38+pCyb6XQg
 m+Xg==
X-Gm-Message-State: APjAAAVJhUMmsl5FmcK+RT+j6W4/8vtDJSTIjPHP7eUiwfihUYOQXofH
 p/O9RDYfEOFdT/8T2vjWXT0lrTq7oupeHdH0WFw=
X-Google-Smtp-Source: APXvYqwi4wpb+TDqKMc2Iotgad5SAilC7344vZRaKVrhKX1IL3F/3MiUz7/wpQomKlkUZEydEsGijhtRhBVNloF/UGs=
X-Received: by 2002:a37:9dc8:: with SMTP id g191mr8766106qke.171.1581302908581; 
 Sun, 09 Feb 2020 18:48:28 -0800 (PST)
MIME-Version: 1.0
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
 <20200131222157.20849-3-rentao.bupt@gmail.com>
In-Reply-To: <20200131222157.20849-3-rentao.bupt@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 10 Feb 2020 02:48:17 +0000
Message-ID: <CACPK8XcmUYhnePr1AG2M9P-oGvOM=zCM+r44jWUzPYGxUEGOGw@mail.gmail.com>
Subject: Re: [PATCH 2/3] usb: gadget: aspeed: add ast2600 vhub support
To: Tao Ren <rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_184829_869019_B14C139D 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 31 Jan 2020 at 22:22, <rentao.bupt@gmail.com> wrote:
>
> From: Tao Ren <rentao.bupt@gmail.com>
>
> Add AST2600 support in aspeed-vhub driver. There are 3 major differences
> between AST2500 and AST2600 vhub:
>   - AST2600 supports 7 downstream ports while AST2500 supports 5.
>   - AST2600 supports 21 generic endpoints while AST2500 supports 15.
>   - EP0 data buffer's 8-byte DMA alignment restriction is removed from
>     AST2600.
>
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/usb/gadget/udc/aspeed-vhub/Kconfig | 4 ++--
>  drivers/usb/gadget/udc/aspeed-vhub/core.c  | 9 +++++++++
>  2 files changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> index 83ba8a2eb6af..605500b19cf3 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> @@ -4,5 +4,5 @@ config USB_ASPEED_VHUB
>         depends on ARCH_ASPEED || COMPILE_TEST
>         depends on USB_LIBCOMPOSITE
>         help
> -         USB peripheral controller for the Aspeed AST2500 family
> -         SoCs supporting the "vHub" functionality and USB2.0
> +         USB peripheral controller for the Aspeed AST2400, AST2500 and
> +         AST2600 family SoCs supporting the "vHub" functionality and USB2.0
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> index 94081cc04113..c827bf420278 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> @@ -42,6 +42,11 @@ static const struct ast_vhub_config ast2400_config = {
>         .max_epns = 15,
>  };
>
> +static const struct ast_vhub_config ast2600_config = {
> +       .max_ports = 7,
> +       .max_epns = 21,
> +};
> +
>  static const struct of_device_id ast_vhub_dt_ids[] = {
>         {
>                 .compatible = "aspeed,ast2400-usb-vhub",
> @@ -51,6 +56,10 @@ static const struct of_device_id ast_vhub_dt_ids[] = {
>                 .compatible = "aspeed,ast2500-usb-vhub",
>                 .data = &ast2400_config,
>         },
> +       {
> +               .compatible = "aspeed,ast2600-usb-vhub",
> +               .data = &ast2600_config,
> +       },
>         { }
>  };
>  MODULE_DEVICE_TABLE(of, ast_vhub_dt_ids);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
