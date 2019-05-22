Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8BD2667A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUI9EQqU4dzMuj4dj+fhKdljGh8DJxZsov9Eebu9vlE=; b=UL+70FVTD/1SZ2
	o8ei/Qm24SAeOpkvzwD0j715ukm5lIi2TQ6wCDdTHcFq21CzbcRa1DIlMnS9bOdWvK5UECQfE/BON
	Jmolw9bGZaM9BIVUKtRbSUmAEpQ0UyKI3CtRei97E+4EE26isXPQKsy0/eSArXO3XabvAiayDQQcY
	OH9qTjcgI7Zgss9Vi0jHxKPo9WbLdQ9PFvnZlU+2FNhlaDTiqx7PGlr+02Mua1Uycqo9fsekNeO0+
	33lx54U1QFFJegNJyciH3avhRC+bJ16lVbf4hJdPViCqzu6avr8penL35cBKswTSBhWHF1rzWf1Cz
	vdXVKwyQ68lPpiM6z89w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTSlZ-0002zD-1U; Wed, 22 May 2019 15:02:53 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTSlR-0002yE-8s
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:02:46 +0000
Received: by mail-io1-xd41.google.com with SMTP id g84so2130316ioa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 08:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vDrBocZqF5A9uvIRjwm8TlVuWA42reD9PHLLFCTbFI8=;
 b=KTZrZjLxDXab0dPMxFWXRl0eNy5ybOtX4eJo2UN5GMYS9KUvUQzE+BJ2oOkdLIs3Zj
 Jp2RILHcGS16ekSnEUBvKzm2hFcfnHE5Jr7612tdepE6cVhQ0m68o8JTg25/p2aYQOO3
 p9O7BC1ztcFxnGtwkZEwfAymH20dUnw0+/jFdte++fufR7JCWA21iKVnfocFpy8AbGzb
 eCPr1cAtcv2kqlo6rOh+ztAYbJcfnkL40ep1dNVnLYbmCic+1UqqhP8s+EvnZBvbAdHl
 RjLZyllNq3Utg6BZ11E+o5dyeu0yMlVy4v5JwWmfsm/Y+MuDgJV8yr3kBvfqx6dlWS2r
 wTXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vDrBocZqF5A9uvIRjwm8TlVuWA42reD9PHLLFCTbFI8=;
 b=VG73ykxlR88WZcIdgGGcV7WjX55wwY7aoLT0flXJO8D0i31BBnIbpMXsrEWpGXZzM2
 FeW5Aq4ShMHZPLYPJTC7Ku5VE9AB1XL59pOav5lCrXKaw2+VGmin2todrozCMNFvLaXi
 FPUOWXL93GIaGQ45vPKbXrCex4pY20t1bIw6WCmVQNw5ITeD2gdQUl1nO93cX5QgCMWH
 fH+EPrV5Pjisg7RSA3tW/ICzJsp7DEP7T+9nWVIuCPT2cNKbIdMcCyt+KJWOQxbTRK8n
 P5PQduHLUTG2oBX7AC9SjbqxNAxoF+mjRXDG7/Ni2mcoPuxWBc3He7oIdLhu0V3GzSPg
 F1/w==
X-Gm-Message-State: APjAAAXl95r+RpS5IxVxpLr7VPM1zMf/Un5RO3y9dxDPJoJQz/GWSvB5
 C16B9GwY9QSKr1CUzpj/H/NwdSQbi7mVGvH/GMA=
X-Google-Smtp-Source: APXvYqzLGNbsta34sjAK5yPAwpIwFYJUcC4AaRk6875xUEBJ05MhRdbGMYpQSWHnZpUcyA82CQZxP98IIXCSFC3pQV8=
X-Received: by 2002:a6b:b7ce:: with SMTP id
 h197mr26284954iof.169.1558537364407; 
 Wed, 22 May 2019 08:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190522120736.5521-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20190522120736.5521-1-alexandre.belloni@bootlin.com>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Wed, 22 May 2019 11:02:32 -0400
Message-ID: <CA+rxa6oabqMLAUyXVX-tvrAkpNDXVQ7KqiEqSf73J1HXwY-e5A@mail.gmail.com>
Subject: Re: [PATCH v2] usb: gadget: udc: lpc32xx: allocate descriptor with
 GFP_ATOMIC
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_080245_316413_E41DD1AF 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 James Grant <jamesg@zaltys.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

On Wed, May 22, 2019 at 8:07 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> Gadget drivers may queue request in interrupt context. This would lead to
> a descriptor allocation in that context. In that case we would hit
> BUG_ON(in_interrupt()) in __get_vm_area_node.
>
> Also remove the unnecessary cast.
>
> Tested-by: James Grant <jamesg@zaltys.org>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>
> Changes in v2:
>  - remove unnecessary cast as pointed by Joe Perches
>  - Collected tested-by
>
>  drivers/usb/gadget/udc/lpc32xx_udc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
> index d8f1c60793ed..2719194ebf42 100644
> --- a/drivers/usb/gadget/udc/lpc32xx_udc.c
> +++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
> @@ -937,8 +937,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struct lpc32xx_udc *udc)
>         dma_addr_t                      dma;
>         struct lpc32xx_usbd_dd_gad      *dd;
>
> -       dd = (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
> -                       udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
> +       dd = dma_pool_alloc(udc->dd_cache, GFP_ATOMIC | GFP_DMA, &dma);
>         if (dd)
>                 dd->this_dma = dma;
>
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
