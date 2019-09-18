Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450FFB6CB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 21:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSh5dgy+pFeE3WglGLeWGS+OvNR957rZykpdzkynEH4=; b=MhyZCReQGzrpWb
	YT1ZnfMHZaU9Qwypvav24oXk8Cu5v38HwEy/GpBPRBQUKNuo5ezlHN5qEUrP1NuMrc7F2CC/oJ3wK
	WsEOHY1Jc48yN9MO9W8vyG/b1h+MZ3PaiRKXbWAnVw56CJzAZCwM9PaM4vy9eS14VQQ4FpZyFSd/H
	JWqgsg33oFWsap0cGELPKUz66fAywGIC+7BUToQIj3XUWsJTVjfgRtejFn4IF+xGWzGqziC9I6XFK
	b6I5rgB6c4MUHwU0OGyygE0Rs5oVvJBlgIY3cJDYotNoAVSw5sQuo+W/j1uz/5REOpdmHR0eV7uI0
	fDxsxL5RZko2uLq2lJOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAfmZ-0004GD-Ae; Wed, 18 Sep 2019 19:38:31 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAfmL-0004FL-LD
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 19:38:19 +0000
Received: by mail-lj1-x243.google.com with SMTP id m7so1151135lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 12:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kYdtJ7oCFnyBm2ZB4A+7C5h6gT7MMWnprnThe/izcYI=;
 b=FJYQZJbLlwnYy90gnbw5gVV6ZxnBb7ZVOPYNbwk/X+uv7Q2AcvUbaxXr5/I3hc68iC
 o1mnY1UhXLgFzBZgYShNRfik8r1itqOopd6dCzEH/iFUnarQHiflR2MAQp1g87ruIzZa
 GzycbwAQfEs/XaWi9qqDvP4CUHCYoSy9wDLwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kYdtJ7oCFnyBm2ZB4A+7C5h6gT7MMWnprnThe/izcYI=;
 b=Yc6b2LB4pG7z0xT60P3ujg6vaPiNgGjGlmwFe83t0EoOaia/yJWuKG4BA9hAju7Bso
 U0VS8Mb+AQukafN4Mc9LNdJ8ZSa/nhwSQi6WOM1/xW3y1tATf7Ui3yj8qTjMFR5eo/Kb
 5gSw8HG3utFUHvH1J3Hd80XbZEcElzMeNvmxuo8i2vDKESMY+fCVvbvJlgG5PrWa6crO
 NXkfF593HbcbeVselbULOEvGT0eWvlesT7zCaVp0FrgW3f7Fj3zQvOpe2h7brm5hUtfC
 Bvrp+YnpXx1OEcAiPsrRdkyGUOV4XH+v5It7OZVFJ4jGnvrY12La7/3Nhv/PKTTItkgx
 EiVA==
X-Gm-Message-State: APjAAAXzgsx5hCVcJyDZ+Kr0uDqu7UtaYV9WHllTvzu9TIyGA/3XsGOd
 fWGd7lJqpwtzWMxdj5Q504vXE2aPYTc=
X-Google-Smtp-Source: APXvYqzNBm4oMvi8QKz3yh1jt3gZS3dUGNQYPgNNIvEI5UKqTF3/vm6KnWKrtbTOIIHm0WgrNvOOeA==
X-Received: by 2002:a2e:7a16:: with SMTP id v22mr3240968ljc.61.1568835493016; 
 Wed, 18 Sep 2019 12:38:13 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com.
 [209.85.208.169])
 by smtp.gmail.com with ESMTPSA id z18sm1094280ljh.17.2019.09.18.12.38.11
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 12:38:11 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id q64so1078320ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 12:38:11 -0700 (PDT)
X-Received: by 2002:a2e:9bcc:: with SMTP id w12mr3122310ljj.181.1568835490845; 
 Wed, 18 Sep 2019 12:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190910160903.65694-1-swboyd@chromium.org>
 <20190910160903.65694-4-swboyd@chromium.org>
In-Reply-To: <20190910160903.65694-4-swboyd@chromium.org>
From: Evan Green <evgreen@chromium.org>
Date: Wed, 18 Sep 2019 12:37:34 -0700
X-Gmail-Original-Message-ID: <CAE=gft6YdNszcJV67CwcY2gOgPHrJ1+SnKMLr63f2bix2aZXXA@mail.gmail.com>
Message-ID: <CAE=gft6YdNszcJV67CwcY2gOgPHrJ1+SnKMLr63f2bix2aZXXA@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] memremap: Add support for read-only memory mappings
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_123817_726939_F5B1B470 
X-CRM114-Status: GOOD (  27.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 9:09 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Sometimes we have memories that are supposed to be read-only, but when
> we map these regions the best we can do is map them as write-back with
> MEMREMAP_WB. Introduce a read-only memory mapping (MEMREMAP_RO) that
> allows us to map reserved memory regions as read-only. This way, we're
> less likely to see these special memory regions become corrupted by
> stray writes to them.
>
> Cc: Evan Green <evgreen@chromium.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  include/linux/io.h |  1 +
>  kernel/iomem.c     | 20 +++++++++++++++++---
>  2 files changed, 18 insertions(+), 3 deletions(-)
>
> diff --git a/include/linux/io.h b/include/linux/io.h
> index accac822336a..15a63efcd153 100644
> --- a/include/linux/io.h
> +++ b/include/linux/io.h
> @@ -148,6 +148,7 @@ enum {
>         MEMREMAP_WC = 1 << 2,
>         MEMREMAP_ENC = 1 << 3,
>         MEMREMAP_DEC = 1 << 4,
> +       MEMREMAP_RO = 1 << 5,
>  };
>
>  void *memremap(resource_size_t offset, size_t size, unsigned long flags);
> diff --git a/kernel/iomem.c b/kernel/iomem.c
> index 62c92e43aa0d..6d76b7398714 100644
> --- a/kernel/iomem.c
> +++ b/kernel/iomem.c
> @@ -19,6 +19,13 @@ static void *arch_memremap_wb(resource_size_t offset, unsigned long size)
>  }
>  #endif
>
> +#ifndef arch_memremap_ro
> +static void *arch_memremap_ro(resource_size_t offset, unsigned long size)
> +{
> +       return NULL;
> +}
> +#endif
> +
>  #ifndef arch_memremap_can_ram_remap
>  static bool arch_memremap_can_ram_remap(resource_size_t offset, size_t size,
>                                         unsigned long flags)
> @@ -45,7 +52,7 @@ static void *try_ram_remap(resource_size_t offset, size_t size,
>   * @offset: iomem resource start address
>   * @size: size of remap
>   * @flags: any of MEMREMAP_WB, MEMREMAP_WT, MEMREMAP_WC,
> - *               MEMREMAP_ENC, MEMREMAP_DEC
> + *               MEMREMAP_ENC, MEMREMAP_DEC, MEMREMAP_RO
>   *
>   * memremap() is "ioremap" for cases where it is known that the resource
>   * being mapped does not have i/o side effects and the __iomem
> @@ -53,6 +60,9 @@ static void *try_ram_remap(resource_size_t offset, size_t size,
>   * mapping types will be attempted in the order listed below until one of
>   * them succeeds.
>   *
> + * MEMREMAP_RO - establish a mapping whereby writes are ignored/rejected.
> + * Attempts to map System RAM with this mapping type will fail.

Why should attempts to map RAM with this flag fail? MEMREMAP_WB will
allow RAM and quietly give you back the direct mapping, so it seems
like at least some values in this function allow RAM.

Oh, I see a comment below about "Enforce that this mapping is not
aliasing System RAM". I guess this is worried about cache coloring?
But is that a problem with RO mappings? I guess the RO mappings could
get partially stale, so if the memory were being updated out from
under you, you might see some updates but not others. Was that the
rationale?

> + *
>   * MEMREMAP_WB - matches the default mapping for System RAM on
>   * the architecture.  This is usually a read-allocate write-back cache.
>   * Moreover, if MEMREMAP_WB is specified and the requested remap region is RAM
> @@ -84,7 +94,10 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
>         }
>
>         /* Try all mapping types requested until one returns non-NULL */
> -       if (flags & MEMREMAP_WB) {
> +       if ((flags & MEMREMAP_RO) && is_ram != REGION_INTERSECTS)
> +               addr = arch_memremap_ro(offset, size);
> +
> +       if (!addr && (flags & MEMREMAP_WB)) {
>                 /*
>                  * MEMREMAP_WB is special in that it can be satisfied
>                  * from the direct map.  Some archs depend on the
> @@ -103,7 +116,8 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
>          * address mapping.  Enforce that this mapping is not aliasing
>          * System RAM.
>          */
> -       if (!addr && is_ram == REGION_INTERSECTS && flags != MEMREMAP_WB) {
> +       if (!addr && is_ram == REGION_INTERSECTS &&
> +           (flags != MEMREMAP_WB || flags != MEMREMAP_RO)) {

Isn't this condition always true? Did you mean flags != MEM_REMAP_WB
&& flags != MEMREMAP_RO?

>                 WARN_ONCE(1, "memremap attempted on ram %pa size: %#lx\n",
>                                 &offset, (unsigned long) size);
>                 return NULL;
> --
> Sent by a computer through tubes
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
