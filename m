Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E455466
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vujmYtCmSYMsiIokRZdAWN9NQCaArdwLwR+wAsPYeY8=; b=FrIQwD5S7aAOUL
	Rv5iBekamkaicigTl/kp3oCQRvZa9XACUr6SK7sECJJ6fbDvuIIEMjOlLtNHOYxuICJimNaesHCnr
	nkezpq55Jwwtx6Sy6Iib6MVDvSrYGX3ZZmCXgQfPDqYMZDuhT7xGpM6cL3qpWTQvkVTO6tShz/aau
	nqjwGI4ptO99bpB8uc15PMSdEM1cRhD4Lm9P9U+Nta045egyhaLCI46c3lNfdCIHK3SRY2xQd4cO6
	u3j1Bo7DWWg5GPOI5eYnYI/hmEUQiJcdy2py/RfUpWU8QfDdrjy/CIYzV+vKS2edWDj1/gUWTH7W3
	tvaX77/ZQ1pB3PDzEYfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoFv-0007dJ-TB; Tue, 25 Jun 2019 16:25:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoFm-00078u-2e
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:25:07 +0000
Received: by mail-io1-xd41.google.com with SMTP id m24so1299060ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9MBXjiD979h+FiHJN8+t7NOeVh1GY/H389vrTRT+gaM=;
 b=cMT8vG86Hg6neVu4tnHP4RQWf7KrqRGjMRZpr6M4IqNH71xoA2wOv6pWVSAMl9MEvv
 jQ3jtKXoZUg0yBUD+miNwpnAzUXJj6MdM7QOrrpjJj2j2EQ/XjCLnWxCtUazzaOMGT8V
 xMo7N7953TL1jVcw1m9EgimE5cBbiSix2UErpzX9Q4qJx5blYFlpv+RyjiMpfVFfR03C
 kTz3LjQsPv8foYG9mPl7xGZ4SwrqDkXrmaB2LHCgqcUS105Yjz17GhaUqlgI9mX8Nhi4
 qzhTHqG5AXUinw6GuCti0de80izSdiZih2WbfUANmI/0QZAsnaG+McztDmIWHRKIZfx/
 l7iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9MBXjiD979h+FiHJN8+t7NOeVh1GY/H389vrTRT+gaM=;
 b=ohLKj0AP1Zi2iO7eYZHKFPQA3XgSzB9oeS5ppAdBVoJb97kqTaZRN50kZW6VWZdiuo
 SZ+IVB1/9hjh2acSfUpbA8cyfVWODNi6k3S1tbZ1f3SZR+tR5tR/QwV0AVpEXdoYtcbn
 0hGSs5LBRj3uwqaDWLyA6Fra6j/ZPZKGKm5Ay7/tH8YI+MdLQS7CxA2yjQ85hqPVmg02
 Uuf/NQ/MMKfy/WlZKkHLR/qrns18fZpvTx2NszjLV3PL+sBf5YIfS5K28/iOmWyboQZ4
 YlVYUiTh5xx+tVThZOBPwhHSTj0oPqvYqfmUqIrFmEcCfc/QBjYnXvAe922sqBq9TtVK
 6OOA==
X-Gm-Message-State: APjAAAVU5VRy2fDUz1g6Z4KLaghlsOQfs99ohFu8X5LJ64hpDfrZI/eN
 8qL7aAcX95b773kdJZTvi+GNMe3F8BS8g8iVngDi6w==
X-Google-Smtp-Source: APXvYqy/1yx6pCml0+o4hg0PH5iRgFbi5lBDtqd5gF0EH2yP5Hk/kC1hI6M/XU+t5NixF+fW5eWMOsVGyDE8QL2GR+E=
X-Received: by 2002:a5e:820a:: with SMTP id l10mr43998333iom.283.1561479904800; 
 Tue, 25 Jun 2019 09:25:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
 <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
 <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
 <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
 <CAKv+Gu8G2GQGxmcAAy1XQ5gkN-2fJSWAKCQQm9T4skYdh5cT3Q@mail.gmail.com>
 <20190625153918.GA53763@arrakis.emea.arm.com>
 <CAKv+Gu8Kz8fN-xKoEqPBiKWaEza6wUkbGxbKPPZxe14QzYLbJQ@mail.gmail.com>
 <20190625160350.GC53763@arrakis.emea.arm.com>
In-Reply-To: <20190625160350.GC53763@arrakis.emea.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 25 Jun 2019 18:24:53 +0200
Message-ID: <CAKv+Gu_DqkptEW8pN_XGcOGhBFqD=d-6NeC1OL==UvVb-+vbVQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_092506_142923_83C5D930 
X-CRM114-Status: GOOD (  26.39  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jeffrey Vander Stoep <jeffv@google.com>, Olof Johansson <olof@lixom.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@google.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 at 18:03, Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Jun 25, 2019 at 05:42:49PM +0200, Ard Biesheuvel wrote:
> > On Tue, 25 Jun 2019 at 17:39, Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > On Mon, Jun 24, 2019 at 12:06:18PM +0200, Ard Biesheuvel wrote:
> > > > On Mon, 24 Jun 2019 at 11:57, Will Deacon <will@kernel.org> wrote:
> > > > > Thanks for having a look. It could be that we've fixed the issue Catalin was
> > > > > running into in the past -- he was going to see if the problem persists with
> > > > > mainline, since it was frequent enough that it was causing us to ignore the
> > > > > results from our testing infrastructure when RANDOMIZE_BASE=y.
> > > >
> > > > I had no idea this was the case. I can look into it if we are still
> > > > seeing failures.
> > >
> > > I've seen the panic below with 5.2-rc1, defconfig + RANDOMIZE_BASE=y in
> > > a guest on TX2. It takes a few tries to trigger just with kaslr,
> > > enabling lots of other DEBUG_* options makes the failures more
> > > deterministic. I can't really say it's kaslr's fault here, only that I
> > > used to consistently get it in this configuration. For some reason, I
> > > can no longer reproduce it on arm64 for-next/core (or maybe it just
> > > takes more tries and my script doesn't catch this).
> > >
> > > The fault is in the ip_tables module, the __this_cpu_read in
> > > xt_write_recseq_begin() inlined in ipt_do_table(). The disassembled
> > > sequence in my build:
> > >
> > > 0000000000000188 <ipt_do_table>:
> > > ...
> > >      258:       d538d080        mrs     x0, tpidr_el1
> > >      25c:       aa1303f9        mov     x25, x19
> > >      260:       b8606b34        ldr     w20, [x25, x0]
> >
> > This was fixed recently by
> >
> > arm64/kernel: kaslr: reduce module randomization range to 2 GB
> >
> > (and arm64/module: deal with ambiguity in PRELxx relocation ranges to
> > some extent)
>
> Thanks. This explains it.
>
> And another weird case that triggers only with 64K pages, KASan and
> KASLR combination (guest on TX2). My test script modprobes all the
> modules it finds installed (including some test kernel modules like lock
> torture). At some point during modprobing, vmalloc trips over the
> WARN_ON(!pte_none(*pte)) in vmap_pte_range():
>

When KASAN and KASLR are both enabled, modules are allocated in the
dedicated module window, since the vmalloc space is already shadowed
by KASAN zero pages and so the modules must be kept out of it. since
they have their own real shadow pages that are allocated on demand.

Looking at the backtrace, it seems like the failure may be due to the
shadow space clashing, probably because the top of the module region
exceeds MODULES_END.

Does the below help at all? (patch soup courtesy of gmail, apologies)


diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index f713e2fc4d75..7e94e1f948c9 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -32,6 +32,7 @@

 void *module_alloc(unsigned long size)
 {
+       u64 module_alloc_end = module_alloc_base + MODULES_VSIZE;
        gfp_t gfp_mask = GFP_KERNEL;
        void *p;

@@ -39,9 +40,11 @@ void *module_alloc(unsigned long size)
        if (IS_ENABLED(CONFIG_ARM64_MODULE_PLTS))
                gfp_mask |= __GFP_NOWARN;

+       if (IS_ENABLED(CONFIG_KASAN))
+               module_alloc_end = MODULES_END;
+
        p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
-                               module_alloc_base + MODULES_VSIZE,
-                               gfp_mask, PAGE_KERNEL_EXEC, 0,
+                               module_alloc_end, gfp_mask, PAGE_KERNEL_EXEC, 0,
                                NUMA_NO_NODE, __builtin_return_address(0));

        if (!p && IS_ENABLED(CONFIG_ARM64_MODULE_PLTS) &&

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
