Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CEE161E86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gn8UTexE69gEBSRlh87uq1koRbGWXBrYKw8Zc5k6VNM=; b=sSHxa5PEgpdkvR
	7lBkZ2RvzBtkWNh34PPKwJV9cBuFWCpjAVQrlff51R7ag5EL19kAByKfk38q+DwVxCgUSjP8gpbnq
	QRSsQbe7tuOMwQR8pEp+5Rz76xbncTBQrhqZU34U7gzhumHdq4E8ORXs+C+5vRGk5yM57+3f6uNi6
	oQ6AeDqwEhTed+NQ6hjGSoul6seWLQdSW2o4KuLWOPkoQ3DSxSLoIwS4z46a8jFx21ZzTRVnPoVvi
	uzLkBmBRNV2NdJ2pu4D3k45INWvziBkY4Ykpa3MDWyOgRxpy8i/aZ/DgUppw/HS9OM6nMtDtbg7rW
	sMhzHd8i7fSi+4DWrAUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3reJ-0000h9-Ju; Tue, 18 Feb 2020 01:26:07 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3reB-0000gM-G9
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 01:26:01 +0000
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com
 [209.85.221.175]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 01I1Pjxi029199
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Feb 2020 10:25:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 01I1Pjxi029199
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1581989146;
 bh=aHC68Gt/bTCwhaQGD8YtBd8mxysiY1ksslwULIMw21M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xbEqK3B/f3ZeMYMcEPTAwBLvw/Ioli6bXibu/eckH3BDDXYHgqFmWCrnJYxXXOyGO
 AFeSVqb5NsZHr8kjUSTnwPHpgJgcWnajxN4MDVTrRLBSIERI1ol1T69DCm+lISgKQs
 4wWoHI+CoQSGN9EKnI0jtyJik53CnvaFH4mxJofHuhgFEPNlQfB/vcXtEPErRdL1/y
 c1wLpig6ijRKdqUor0kQTVWy3ygub06fsVPGUIH4PYniCUj0HQZDtbiIexE/aNURzr
 j31xvcEE4jSd2F/XdiuXtI5YUcioAO02a17Gus4CVxAmR73eAkvlpogH7wTwAv6CIN
 h4kbOzU+id4Rw==
X-Nifty-SrcIP: [209.85.221.175]
Received: by mail-vk1-f175.google.com with SMTP id w4so5097412vkd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 17:25:45 -0800 (PST)
X-Gm-Message-State: APjAAAVSWnr7+Nl2RVkrTJxqvS+0OphiSEm+Gcvg/jtivKUAWPxnGS2H
 9ljn7V8QHpFZmL6oaz+7wzlPbwetaVlPI2q0l48=
X-Google-Smtp-Source: APXvYqy1ybYtwGWK9rAxqG/hSwwoXAw5Wot5iv+8VzvGaL2uwXfJVUdhHC48DVLj7zfTqgLkFc5MMVzBt7ScX6KrvQ0=
X-Received: by 2002:a1f:6344:: with SMTP id x65mr6933830vkb.26.1581989144317; 
 Mon, 17 Feb 2020 17:25:44 -0800 (PST)
MIME-Version: 1.0
References: <20200211210618.GA29823@embeddedor>
In-Reply-To: <20200211210618.GA29823@embeddedor>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Feb 2020 10:25:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNASABqhpCjoQkQAZAVOjTvVG+4PDWaP+a8=hcv6GsgeQMQ@mail.gmail.com>
Message-ID: <CAK7LNASABqhpCjoQkQAZAVOjTvVG+4PDWaP+a8=hcv6GsgeQMQ@mail.gmail.com>
Subject: Re: [PATCH] gpio: uniphier: Replace zero-length array with
 flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_172559_759294_D3FD94D2 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 6:03 AM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
>
> struct foo {
>         int stuff;
>         struct boo array[];
> };
>
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertenly introduced[3] to the codebase from now on.
>
> This issue was found with the help of Coccinelle.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>


> ---
>  drivers/gpio/gpio-uniphier.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
> index 0f662b297a95..9843638d99d0 100644
> --- a/drivers/gpio/gpio-uniphier.c
> +++ b/drivers/gpio/gpio-uniphier.c
> @@ -33,7 +33,7 @@ struct uniphier_gpio_priv {
>         struct irq_domain *domain;
>         void __iomem *regs;
>         spinlock_t lock;
> -       u32 saved_vals[0];
> +       u32 saved_vals[];
>  };
>
>  static unsigned int uniphier_gpio_bank_to_reg(unsigned int bank)
> --
> 2.25.0
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
