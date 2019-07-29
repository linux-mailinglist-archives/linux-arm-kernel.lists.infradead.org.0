Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2250B7910D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuOJsF7hAhzLWD76rLUM7f3qWzGgKJuz1rsxvZ/HJBo=; b=PBD1EX9oqd949I
	cdyY4/jyIxibiOvE8RKevU50gh/xTVug1kW0ueup4s+orVAKd/8apHUoN5++OE4vT/MuIElgm/IjR
	xAPnyj3U9ieWd1owCEHv99j5wh4ht3XBY/7AkCGqMcssNjGL264IJ8TAmUPbDbh9I+Uoh+Xy4yPv4
	2PNvib3rWEsfrPimCSz1YCjGCkfG6kDYRlCpSOeu97qI2MY5oOBQKZTKxL2e+9j237IgDRMR70Nku
	91i2sSgNS2n9e4xG8oHVnMyYL/BIWRVsb0wtfKkJtMUOl9BJXeboSAtjWL8ZeJFxSyenujpL3dqkg
	2Q1Fb0/tx9lE5qwd0ILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8cg-00074J-QZ; Mon, 29 Jul 2019 16:35:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8bx-0005Xx-SK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:35:00 +0000
Received: by mail-pf1-x443.google.com with SMTP id u14so28327899pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sDSCepMkR2bL5Wr/nR20Z2uWmhbnLcrsn71Gn90luLw=;
 b=XbJNhEas82gAqvT7+0uKPnBQXmY1bdSWMvlhGYnRuK2Tz53TPDGRi+sZihvQRqBA9E
 eH7iEjvJVAtqr4SwQkBV7kLJd9vGJP8LDI4g6xbbGLgfkVlamu0amAGZa06ft0WabEhb
 dW/YDi4mgPWPnbznja2Au4bxUF8sISHe/hfaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sDSCepMkR2bL5Wr/nR20Z2uWmhbnLcrsn71Gn90luLw=;
 b=XRku6QrtJ6O5x7PUz3dbc7tg0D5pgVO1/pEc47noqv/GFhzoUu0vKOqP8hQKdBcmxi
 0FNLcCr3yPmHHfTOCYPSh65NRGG+hmk40goQ/nc5ID7CQNFNfsidRHWRVY308U6Bjjt9
 jgpWuhIsljcWYfBJGhajMFq0sGS7dSjIeQ8SK3LIn/qzYupD0HT03kjBvN78/V0yTQ/E
 ymi8KNe2ljvUhzsb6IzXtA/Flaicqn86GuzpRRoVadVVtrND/5t5KELdYeohqmo6O57u
 nCRRZdcwKtzUKdRjlDUezT81RPnSbTZLcBFUKu/Fakr8VwpbXWd7IgZfkbKPv401cXx4
 Iv2w==
X-Gm-Message-State: APjAAAVwfDF2xt7yCfN55QVNwyQfWHQOCq7BQYZQGe04mQH9UDQCQ4t/
 NBOOk3NuWHX3/Vs3z5vijBsGfQ==
X-Google-Smtp-Source: APXvYqxaKTxKSNNjt8UOl7wNOOomuHl6ngrDpmPTgBkq84LNTpXKwVVinqdCXykfOa5exwsXSmvowQ==
X-Received: by 2002:a17:90a:b104:: with SMTP id
 z4mr112755496pjq.102.1564418097415; 
 Mon, 29 Jul 2019 09:34:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 2sm110616451pgm.39.2019.07.29.09.34.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:34:56 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:34:55 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] i2c: s3c2410: Mark expected switch fall-through
Message-ID: <201907290934.959721D@keescook>
References: <20190728235138.GA23429@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728235138.GA23429@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093458_065166_01DE99DE 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 06:51:38PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warning:
> 
> drivers/i2c/busses/i2c-s3c2410.c: In function 'i2c_s3c_irq_nextbyte':
> drivers/i2c/busses/i2c-s3c2410.c:431:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if (i2c->state == STATE_READ)
>       ^
> drivers/i2c/busses/i2c-s3c2410.c:439:2: note: here
>   case STATE_WRITE:
>   ^~~~
> 
> Notice that, in this particular case, the code comment is
> modified in accordance with what GCC is expecting to find.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/i2c/busses/i2c-s3c2410.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/i2c/busses/i2c-s3c2410.c b/drivers/i2c/busses/i2c-s3c2410.c
> index d97fb857b0ea..c98ef4c4a0c9 100644
> --- a/drivers/i2c/busses/i2c-s3c2410.c
> +++ b/drivers/i2c/busses/i2c-s3c2410.c
> @@ -435,6 +435,7 @@ static int i2c_s3c_irq_nextbyte(struct s3c24xx_i2c *i2c, unsigned long iicstat)
>  		 * fall through to the write state, as we will need to
>  		 * send a byte as well
>  		 */
> +		/* Fall through */
>  
>  	case STATE_WRITE:
>  		/*
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
