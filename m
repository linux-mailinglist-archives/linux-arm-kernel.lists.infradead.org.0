Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F920161E88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:26:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZ8FE1PBwy9/DPShEfuOWQ8cra9aU0ha3DuoGyBhHYg=; b=cMgUJWyS5CVqv7
	zm1BkysiiA2GmrShBrGQUoIx4cTTo+Rkiq7oFWqXgWGAShtqnQ8OwvusMrVea0IdphVWqOWQTTZh+
	4AdTfk7E7G2WXfZA/JVZKfYZ4wEcsHOJyhtaNnuy1vQ0X83ziyGvzmMhrxiP8BBktE1jNBGzG48YI
	f3sgnTV2uBN/DcZf7OFur55dK+/2BU+d3TcNGwHY0ubnEiDeOJhnRAGFADPiQFWeq8Gs0HLDX2YRZ
	0RYRnZPgkohrvK6RGuuF4+zEMDHEri+OvVz/4d4zkjPbFNZlI3LcbchKRDmFNkYFYFCCPDfSIH6cX
	ut0ow1/TQ0nemlGe0ZDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3reZ-0000uM-3q; Tue, 18 Feb 2020 01:26:23 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3reI-0000in-38
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 01:26:08 +0000
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 01I1PODp019175
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Feb 2020 10:25:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 01I1PODp019175
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1581989125;
 bh=3MSw5JkyO/9OCsOPRafhwqlFQ7vR48exeqQSqYgqIIk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YWjMhh0RDcuF1rO+m3rS+CCSH36MMqHbRScYqqwvGFMku4Tq+v22CxsX/fM++yXyw
 1DHR6fMH6vHE1heRP/TFE/EXFFbvg9rRE6E6qb/6ZBx5OpdtdNwXGrT/vmdPq+hdqV
 +7dnSo43yaPKVv3+lBhpbcIJMWkjAvJTFaMoKNvwxvIHpNUMxB0mLcWEDRVu2noWpP
 BSi55H6OkKOQHkM1t4FXEEBnwuQQbfTdZRjx1OLWKeRVVK447bGPfq8fmZ4KvQBZDD
 KKh2OrmNwAV2g/99xnOY0M7g8n8yT6NXrHz7zH35sobirTwOt1XTVzuaxNHIFsrPf4
 QU1+QB3oo5eHA==
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id a33so6848964uad.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 17:25:24 -0800 (PST)
X-Gm-Message-State: APjAAAXaR9qURzBXcIHSJI2yQsisZJP6yFLn5rIHNaCoQ/tSi3xbh6jO
 /phv4YVVY3MX+sPFfU9QfieD8uvyAkESxwCyht0=
X-Google-Smtp-Source: APXvYqyMjSb6Wor89MN0MqasMN0Ke1opsU3txiROIMZz+gj33FtHTfdKKQM+xuUZHJtMCoN2zBnUWZRVF3IUcxqLjh0=
X-Received: by 2002:ab0:2881:: with SMTP id s1mr9271966uap.95.1581989123428;
 Mon, 17 Feb 2020 17:25:23 -0800 (PST)
MIME-Version: 1.0
References: <20200217185437.GA20901@embeddedor>
In-Reply-To: <20200217185437.GA20901@embeddedor>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Feb 2020 10:24:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR6mKUnr5bJSNy7aVzcdS7tzsj1VEbbsFA2Y3_7vpUi2A@mail.gmail.com>
Message-ID: <CAK7LNAR6mKUnr5bJSNy7aVzcdS7tzsj1VEbbsFA2Y3_7vpUi2A@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: uniphier: Replace zero-length array with
 flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_172606_395875_182E1B1C 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: 3.5 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 3:52 AM Gustavo A. R. Silva
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
> inadvertently introduced[3] to the codebase from now on.
>
> Also, notice that, dynamic memory allocations won't be affected by
> this change:
>
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
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
>  drivers/pinctrl/uniphier/pinctrl-uniphier-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c
> index 57babf31e320..ade348b49b31 100644
> --- a/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c
> +++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c
> @@ -29,7 +29,7 @@ struct uniphier_pinctrl_reg_region {
>         struct list_head node;
>         unsigned int base;
>         unsigned int nregs;
> -       u32 vals[0];
> +       u32 vals[];
>  };
>
>  struct uniphier_pinctrl_priv {
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
