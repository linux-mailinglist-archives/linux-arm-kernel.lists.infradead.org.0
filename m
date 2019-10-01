Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C984C302F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+R2nB3olwd8Ml93e8XJ2hg+hQihESis4lTmX5ZW5G9o=; b=YSs5wwercGWoOE
	fW8cLthDNocNX5m0fkRdVTBRaHTDAL2VGFv+o66nutUp8bsZ2ygRya1+/LhUD4+RgpzT5uggv8Efc
	PhSkfdvj/57o3f44JL3ljSoyzvLCG14qnKGIFevl9Sq/tGOckSvNuIcHBjoVnzpMIyjqlXIGaqX6G
	3QsRoahLUbBubNLU8INHeNU/EyYGKM9C7mAh0uO1fZZUBTrIcdy1sPhC5GmgaDPONEgO5hJ8CRsnI
	pqLESd7CqR0aptVdlwN53Uc32qiccSJe/LeEya+gREL6GGU0JLBF09hSazoB9txM1JtrPispGwQth
	IGPK8R2qR+WGgwVq2fIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFESH-0007rx-1A; Tue, 01 Oct 2019 09:28:25 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFES8-0007rG-5q
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:28:17 +0000
Received: by mail-ot1-f65.google.com with SMTP id o44so10919768ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 02:28:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7GWGh2D7aZcVTalvii3cK7UDmHvdrp+om18ofNeVba8=;
 b=dqO0qH0zn/heJ8ZDdd6ZAGH2XNl7sniJdHpmPJXyuW5t+if3T9GZ2zIltm8QSzXH2D
 HrSwTsjs+8ZmJcNCnkKRw2kWS1pJBjQRtHpg8q+eVB2WWIQ6O4hfBQP5qeKbG7d9wmfi
 eqJxNPa1O1s8YGexLPgQpcjEoBvdXGdJJFt88dFz0kcnATa8CKuprp34VrQO7gBNrX93
 G/QxugNdICWzXUHRGQB78ZCBN2lyhQFJ0qywoLHz5h9SMSa+YOzoUjjTBoYq2DWp5rMN
 lxaFaUFityv+p8AlTOokh6fdbkM1Qp4e0frZVNFdG8pAXgJ5NzRxLZfeebnWRNtPOIBO
 0rmA==
X-Gm-Message-State: APjAAAWfcqoiqH4MlhotBunlKtkS6FKkqaMsWge0ZlGez+8MeHA8f4Jq
 zLfW8WzIYecLKsh3yTB6ehWb/RsUGk9twFUVAKQ=
X-Google-Smtp-Source: APXvYqxUufz8LGb/JAoIgX1fGGEw9iT8aiUJjPt7oB7FJ2AuPPMS33WxhIxXcjmTRYGD42MwfUAanBkCEJnpdi94Fqg=
X-Received: by 2002:a9d:404d:: with SMTP id o13mr17559692oti.39.1569922094967; 
 Tue, 01 Oct 2019 02:28:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190930055925.25842-1-yamada.masahiro@socionext.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 1 Oct 2019 11:28:03 +0200
Message-ID: <CAMuHMdW3e5bYfinAjqUWcONK_s4iFhwG2CXUvNR0wz3+Cf_YWA@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_022816_222651_8BCAC5C3 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 8:01 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
> KernelCI reports that bcm2835_defconfig is no longer booting since
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly"):
>
>   https://lkml.org/lkml/2019/9/26/825
>
> I also received a regression report from Nicolas Saenz Julienne:
>
>   https://lkml.org/lkml/2019/9/27/263
>
> This problem has cropped up on arch/arm/config/bcm2835_defconfig
> because it enables CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends
> to prefer not inlining functions with -Os. I was able to reproduce
> it with other boards and defconfig files by manually enabling
> CONFIG_CC_OPTIMIZE_FOR_SIZE.
>
> The __get_user_check() specifically uses r0, r1, r2 registers.
> So, uaccess_save_and_enable() and uaccess_restore() must be inlined
> in order to avoid those registers being overwritten in the callees.
>
> Prior to commit 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> inlining functions, except on x86.
>
> Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> So, __always_inline is now the only guaranteed way of forcible inlining.
>
> I want to keep as much compiler's freedom as possible about the inlining
> decision. So, I changed the function call order instead of adding
> __always_inline around.
>
> Call uaccess_save_and_enable() before assigning the __p ("r0"), and
> uaccess_restore() after evacuating the __e ("r0").
>
> Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Thanks, this fixes the issues I was seeing on r8a7791/koelsch.

Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
