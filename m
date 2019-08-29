Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923CBA155E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 12:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbtKfr37Ps6EQ7rX0eepbsRPBX/XQy9tHd1z/XQoDtI=; b=BlG9utA08qyjRE
	hMZoRiQqZjntXmrrRrykHJwy99Cjl2ndPtzNI8MhznRbVULciww0Vc/q3eakUN9jfOmugVw6nKrVm
	3s+wuooiZHBDtHjBzZyjhz5XQSlOekspe3uJJ4+rKXU1hLySv1w7Ka+Am12hYv9EKlZSFiMowZNDz
	hYctbBNqdTN2II6MuomYFCFhqB5xlJrINKrgdyjSYg8GcJiGUbbKIYJbJ1v8l+Ya1ziCdB6F6/6DX
	G9tLS+1iWW4XqEvvt0ONKxC42og9BxJcRBjXHsvAZUsFLtitB/nMBL/CCInscKgxf8/m/2VB9XBEe
	ZZcbXUSfecJkMKJQF9Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HIY-0000Z7-KE; Thu, 29 Aug 2019 10:04:58 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HI0-0000YJ-L7
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 10:04:26 +0000
Received: by mail-qt1-x841.google.com with SMTP id t12so2958963qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 03:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vwod3g/h3wsMjoG1LnCiS/Wpf4N1PRkHzIkFBfQoSSw=;
 b=m/hgidyicegyPyO4Uspo+VjOeANso0tBMTHbGMnzh+IJJIAekQigkeObfhGQ43XJxX
 jkkuiNkzoUrtwU97MBaEka9FMd+Ws2GPbajDlQsP8f15aq9yPCjep3IbrRwYZIfI1ZfH
 TIOhZ9lnZvoaDYfehhTDLme2nOgKHArjb2M4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vwod3g/h3wsMjoG1LnCiS/Wpf4N1PRkHzIkFBfQoSSw=;
 b=uJ7srHRHf3qiAx+IJ/Ugc1BgECgWGDShwphqZ1931JeGjdHIKLAJH5t6uDM4EYtOtV
 F/dlqJxQlBz+ISkKdIZ4b21TDXTpDnJBUounpnChTKSKjPJy351FADlG95eLqOgQ6McT
 FlgDROKRNAmDV0Sif9XGZtJLipcODGrus3TIOVSzthOna8UtIZNjxoV6fRhT5Tuy5ydA
 qKjlAoKvsyr1sYnGgxERxssxF1mDGahNWItKI7o4UMhMFASCcicZY34gQltm65185W76
 R45lI12iu0aum/iWwmgLwffacDknYg+19TZiYHWYst2XTNfublgCLSXJrzSgkjbqsx6W
 EMXA==
X-Gm-Message-State: APjAAAXVdzSSYGAyg+2lsARHU24VOnjVEMdB9RPK2AZ997kfjLW1MDe4
 hamNT+pnR3cWsK9VhH+X4ZEaTqM9q0XUQBBZSnJhfA==
X-Google-Smtp-Source: APXvYqzFV2QhMMIOvBFm8kDuXBJDTG4ory3BugWe2SSfjqg6bDKB2bXQ/IBBCXioYRpHnhFbpw3YoE1Qsaz3ihPmKoA=
X-Received: by 2002:ad4:4050:: with SMTP id r16mr5793678qvp.200.1567073062956; 
 Thu, 29 Aug 2019 03:04:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190822071522.143986-1-hsinyi@chromium.org>
 <20190822071522.143986-3-hsinyi@chromium.org>
 <5d5ed368.1c69fb81.419fc.0803@mx.google.com> <201908241203.92CC0BE8@keescook>
In-Reply-To: <201908241203.92CC0BE8@keescook>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 29 Aug 2019 18:03:57 +0800
Message-ID: <CAJMQK-iDoPxbFUH3JUeJ7SehCptZOnjKZiUoFd1PqLjDdGHujA@mail.gmail.com>
Subject: Re: [PATCH v9 2/3] fdt: add support for rng-seed
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_030424_722679_34CBA6BF 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Grzegorz Halat <ghalat@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Guenter Roeck <groeck@chromium.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring <robh@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>, Yury Norov <ynorov@marvell.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Ingo Molnar <mingo@redhat.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>, Wei Li <liwei391@huawei.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Len Brown <len.brown@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Rik van Riel <riel@surriel.com>, Stephen Boyd <swboyd@chromium.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, lkml <linux-kernel@vger.kernel.org>,
 Armijn Hemel <armijn@tjaldur.nl>, Jiri Kosina <jkosina@suse.cz>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 1:36 AM Kees Cook <keescook@chromium.org> wrote:
>
> Can this please be a boot param (with the default controlled by the
> CONFIG)? See how CONFIG_RANDOM_TRUST_CPU is wired up...
>
> -Kees
>

Currently rng-seed read and added in setup_arch() -->
setup_machine_fdt().. -> early_init_dt_scan_chosen(), which is earlier
than parse_early_param() that initializes early_param.

If we want to set it as a boot param, add_bootloader_randomness() can
only be called after parse_early_param(). The seed can't be directly
added to pool after it's read in. We need to store into global
variable and load it later.
If this seems okay then I'll add a patch for this. Thanks

--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1096,13 +1096,15 @@ static const char *config_cmdline = CONFIG_CMDLINE;

+const void* rng_seed;
+int rng_seed_len;
+
 int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
                                                            int depth,
void *data)
 {
        int l = 0;
        const char *p = NULL;
        char *cmdline = data;
-       const void *rng_seed;

  pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);

@@ -1137,10 +1139,8 @@ int __init early_init_dt_scan_chosen(unsigned
long node, const char *uname,

         pr_debug("Command line is: %s\n", (char*)data);

-        rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
-        if (rng_seed && l > 0) {
-                add_bootloader_randomness(rng_seed, l);  //
Originally it's added to entropy pool here
-
+       rng_seed = of_get_flat_dt_prop(node, "rng-seed", &rng_seed_len);
+       if (rng_seed && rng_seed_len > 0) {
                /* try to clear seed so it won't be found. */

diff --git a/include/linux/random.h b/include/linux/random.h
index 831a002a1882..946840bba7c1 100644
--- a/include/linux/random.h
+++ b/include/linux/random.h
@@ -31,6 +31,15 @@ static inline void add_latent_entropy(void)
 static inline void add_latent_entropy(void) {}
 #endif

+extern const void* rng_seed;
+extern int rng_seed_len;
+
+static inline void add_bootloader_entropy(void)
+{
+        if (rng_seed && rng_seed_len > 0)
+                add_bootloader_randomness(rng_seed, rng_seed_len);
+}
+
 extern void add_input_randomness(unsigned int type, unsigned int code,
  unsigned int value) __latent_entropy;
 extern void add_interrupt_randomness(int irq, int irq_flags) __latent_entropy;
diff --git a/init/main.c b/init/main.c
index 71847af32e4e..f74a8c7b34af 100644
--- a/init/main.c
+++ b/init/main.c
@@ -645,6 +645,7 @@ asmlinkage __visible void __init start_kernel(void)
  * - adding command line entropy
  */
  rand_initialize();
+ add_bootloader_entropy();
  add_latent_entropy();
  add_device_randomness(command_line, strlen(command_line));
  boot_init_stack_canary();

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
