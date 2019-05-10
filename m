Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874A11990E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5xGxYnjIhqnft4YEv0rqwr4P4ddbBiJgxL9+ffgzLg=; b=nkln2uy1jnN3xg
	ZKtlbNJn+glKk0pDxoSCeFSfjOgE810xHXy7UDTrXmm5DiGBEkFctmYzshHYK3YrKQGVboj7BjsVE
	DAJpWM6BCuoy4OeUjxG+oWgUWloVjIC2hLXq/tb8r7Y6UaeLooAUyrWOlFBZuWcpdyDc95gmh7K65
	jQPc97pbjb4FnAwWaQxn3PFAi/jC/fC7+SuJpHHPs7Z7iTSDh4DLcaD/9KjW6LrLPWqSwF7K725dn
	Y5CzsSEms1EUHb1GVrWzfvyUIGMCoTgbkRa4yDqcvMa6ZlbxJo/1gH7kf9jk6pkBGNoXTKvYWCXhU
	azDzAnAuYxmCAF/WXvKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP06Y-0002CL-2k; Fri, 10 May 2019 07:38:06 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP06Q-0002BU-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:37:59 +0000
Received: by mail-qk1-x743.google.com with SMTP id n68so505601qka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 00:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YPIdmEziEMHUxazGM82nUeKFs82CMeVb0svBlAIM9mc=;
 b=YOQP0dtsuHdYUa3VJGsw06uyx6HBDRcu7CqZFjC6R74X5SCqFH/fbolbZ4NikUGBOB
 01VRHlTKWDTKyNcqr0mx3OXaYA78NK/XUYGPfVgakaCkbsccPVHl+QvhvJFgRCvxbuDG
 KJ3D9BUxmIMQh16Ljn7fZFKLA8Vj0mFGbYJho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YPIdmEziEMHUxazGM82nUeKFs82CMeVb0svBlAIM9mc=;
 b=lP+1dsaA7HpS7LftgbxE/ZkyDKBB7ixYgUy/i7eVf7Rp9q4LD2RBtN8Gh+PuXuT9cM
 4baESDYwp84zXPYW+p4V/oKObAKEHvsZRny4CFC9vlZ/H5UGWXLdb6/md9Y0fZYHERDE
 S+BgevaQk9KpgBjAqxxEpx/5x3Tcypel5/vYiaSjQVNVBj0OVDVrC85duMBwwTXI/5fR
 3uvkVbkQ1YLkQ3WBUtK3cG7ZqwZ/HCjTFyTL4V+tYeKJMkUsrxzYWL5qUUmYRHXnTegm
 Y/1PacRby2C/VZw6OjwXlWbCPJ1uTKRsqDXPlKO0Yidd83LJ0gAJZiumZwBi/g2Tpg8E
 8lpA==
X-Gm-Message-State: APjAAAVEBpptbaau83S8IRHunAAaFxy/okcUYrGiKTDmQAcoxHolOLSq
 7+1Fg6CkRJXENZrOV1f+kAa1LNJMfuefC4rYEGU6Ow==
X-Google-Smtp-Source: APXvYqw0oTMu+CovlvxeRY9ocZTmZNLydi0JE63J09a1MhVGCcjf777Api8V4IshlZIMqAkICDBwoldY3iKTtUIQcho=
X-Received: by 2002:a05:620a:1585:: with SMTP id
 d5mr7444463qkk.212.1557473876989; 
 Fri, 10 May 2019 00:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
 <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
 <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
 <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
 <36fab640-b98e-9781-f96f-0ed988a71077@rasmusvillemoes.dk>
In-Reply-To: <36fab640-b98e-9781-f96f-0ed988a71077@rasmusvillemoes.dk>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 10 May 2019 15:37:31 +0800
Message-ID: <CAJMQK-hpA7rkaznW2REYbO=6rOvEMfJOvo6xxPkNb9o1VNUqTA@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_003758_589044_CD7E8013 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 2:14 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:

> So, why not just have the bootloader add whatever entropy it has via the
> commandline, which already gets mixed in? That requires no kernel
> changes, and works for all architectures.
>
> If anything, perhaps instead of just adding gobbledygook=abc123, make an
> official command line parameter (there was talk about this at some
> point), and have the kernel overwrite the value with xxx so it's not
> visible in /proc/cmdline.
>
> Rasmus

For some arch, besides commandline, we also need to overwrite bootargs
in fdt, otherwise it's still visible by
/sys/firmware/devicetree/base/chosen/bootargs for example.

Originally planned to land v2 as

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index de893c9616a1..96ea5eba9dd5 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
+#include <linux/random.h>

 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -1079,6 +1080,7 @@ int __init early_init_dt_scan_chosen(unsigned
long node, const char *uname,
 {
        int l;
        const char *p;
+       const void *rng_seed;

        pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);

@@ -1113,6 +1115,15 @@ int __init early_init_dt_scan_chosen(unsigned
long node, const char *uname,

        pr_debug("Command line is: %s\n", (char*)data);

+       rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
+       if (!rng_seed || l == 0)
+               return 1;
+
+       /* try to clear seed so it won't be found. */
+        fdt_nop_property(initial_boot_params, node, "rng-seed");
+
+        add_device_randomness(rng_seed, l);
+
        /* break now */
        return 1;
 }

(For arm64 RW/RO issue, it will be done in other patch.)

If we add parameter into commandline, I think we probably also need to
do similar changes here since there are fdt related overwrite.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
