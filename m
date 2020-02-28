Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCA3174326
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 00:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntftDe3sy4Z9iKGhdOZE1x24QxWClUVJPXD9k/6HG5M=; b=BbfCLIe4f6Ox/z
	3eXaGnbDxUSnYmt1OT8gwM5OlPHHaTikMGAaeA+Ae1qmKoe4mF1QtvmhhqFaR4psOg6DynH7bjWwB
	Sdp4sZPsJynuwlaZ+E9acKDtcFLazZCviCiOdq4jJkZlEUfEYzmAJL7+cI9tFzVkpKA9bH5QZNX8E
	43T4gx+9A5laeufU1m+ihjDhaiDO6fag9JFgD3wMS74p13u/wqgzS2M8AnirFG/YnrAzkURXo5bHl
	gnLJ5NoPLaUrvizffjfbSxeNkhzSv11WkIS5UsCsUtZruH+qOYsXqnQDcea5wiYK6lWrgSKByOWTm
	8ul1WSUXgMAupxlKOcqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7p69-0001Yh-8K; Fri, 28 Feb 2020 23:31:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7p5y-0001HJ-W8
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 23:31:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id u26so5023616ljd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 15:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FJMOjeid6sdwgXv4TTvMxMhevRyWK73UfsN1mnUN154=;
 b=sMe5Q6usg9+F4riRxov5cjG3cyELLD3oY3eqeIrCM0aMmY7BGEfLMLJT1SZ1gK0IwN
 UFNBkrP7J25JufhFor+00VbaiY0V3wNFi5Y0V6yp/yTwjh7YTnRrLqyZ7eaDMrvF/TzZ
 Dd+uXEyp9pONbPMH+vFvJHPbmE3J7xZx3HwKpXwcCLupuc+vQZA6GenODw9SfH6Az6nZ
 hzzXjyLjydDHeMjOWfWF8PjkvIagnRsfW3bwZi7A4bzOB19Lx7TbyhEccYzR/YHRJNAZ
 eoJubijvMqEQ04/8kdlkwXDI6wo5CzuUN5RPHEtk0Zeu1q+sM3u3109tFuStjvE6jYPa
 NuOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FJMOjeid6sdwgXv4TTvMxMhevRyWK73UfsN1mnUN154=;
 b=la9KRqXMBOg9DtvYOqJqLDLDkpmMAZVtjI7Q7lEuOLlY7eNxPQqrEKZZSVhhzClub7
 6JDuW5sczFdjx6H+ozskO67oxFvdLk5Oxy24nOctP25lJqkSV9AA4W0LFB1UzPKJwYoG
 +rJ8Boaa+mgjmOeLJcpfjiFK567Xqc1wzE9ioraOMC7dAbLsrGxteZynER8gKiX8Kwyq
 H4Nth57nKrVDqxlWe4KJ73qlcZ8RpJ6CK84Hj/0T7CVRvz0Nfz86O3V1ztvoYcsw8xfA
 G1YOwhAiR1qYdXOmv1Y+JEgDhw/PyBBIS/XdhyZID3FIVA1hSEypm/hF57pJNw9zFSas
 7AkQ==
X-Gm-Message-State: ANhLgQ1TJeVCCLnWE3qesgThZfej18X7ZFYrrh/J009jcx3mAFXxOk8/
 88hLcOpQLb80XV5caEtYXFdb/pK7CHE/1JzcWEwIWiwe
X-Google-Smtp-Source: ADFU+vsxoOHRMUZvXuoHzVp2SunBEAeVGYJ5QRP7my8lror2nKWFrPn2yB/CjkXexreMLjBZgrvV44n23yoajzkayqA=
X-Received: by 2002:a05:651c:2049:: with SMTP id
 t9mr4108228ljo.39.1582932660936; 
 Fri, 28 Feb 2020 15:31:00 -0800 (PST)
MIME-Version: 1.0
References: <20200227185837.GA4469@embeddedor>
In-Reply-To: <20200227185837.GA4469@embeddedor>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 29 Feb 2020 00:30:50 +0100
Message-ID: <CACRpkda4wEck_JYpMYuQ+pAkaVo1JUE9nUpNseCBRCFADpZ9Ug@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: sirf/atlas7: Replace zero-length array with
 flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_153103_038386_326F098D 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Barry Song <baohua@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 7:55 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:

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

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
