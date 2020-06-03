Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44671ECBC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 10:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xF88q6BJZlj8ze8yU+SMjC38kSe9LVJwlkbKxhhczg=; b=CR4qd8Zf50k4yk
	joV8+kjnuHBZWJqUIiqJqyVY0iTc7SEY4oz/qg8mI4INbU8ma3OPShmw/jPRa2sO+tCT+W3EAjuMh
	CxKblMlVlnrGUPa+1gMEy6tob6pMQec69w97Nw7iSOcAhUgSNHsBtEqUROPfxrW0GxVsXsQl2OWzV
	EJGu0LvADGloZ70AzbLhVHmwVyALKb2CsltaGqZgAT+8cabfTbtGoLY0Jkj6EixDrGKxVwLCJrlM/
	8rdV9pneyZhidoEBju/E06LVR5tLK0d1JNWtDQfFvnqqhnnaWqzJ+/YYg/+nOCyQbcqI5UMAsFM13
	Lcm3zOUhTbiVY09sva6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgP2I-0005Pa-OL; Wed, 03 Jun 2020 08:46:10 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgP22-0005GW-29
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 08:45:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id c17so1644969lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 01:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IiZ16AABXKC/jfnmOTdkfXpapmUuW9O0WK122WmS7yQ=;
 b=Lv8iDTVNSZqhSM8JcCi7HWd4AfWw65V/RM3BW51pDO5ci1jAPlEudJYbGH9bPB3ZL6
 upTF5wKnPx58IdqBjNjFNit0v/Wiky/r+jXHHmulzbmwJn0PWvRtlT8HqHR8+wmTd8kJ
 YTrdT0DMBgdqNg7019iGTwDydjTUtH1ohNt8vHxa3oK7DV3P8r3hs/CnDvpAqK8bZipL
 EqC6Yk6UkdKz9md9zcMs4AeUp3VqzzhdUkZ1A4jNC/PS5qwwaeimaRyVwBL+TOXCPspF
 gMDe/dhGuhTguUqBjfNDCwoAo24s2zRlDyEuIo4Pf6WbB5gSrQoo+CgKU3RGED7YzjdV
 xPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IiZ16AABXKC/jfnmOTdkfXpapmUuW9O0WK122WmS7yQ=;
 b=IQAqpDXq9I6yjwpRt61EhF1NkK1AUk+KZ/tWeRMrjyTztJ0VX+pQke4wIJJZPOMGWl
 vujQtcYzsg5KBF3l54ha+GVmhwIv74SMW9U9mb2UXkj0OuPCDA2VQZ89BFfPEKuiXQFJ
 eDtAHFz3ILEkl+YlUXf6mrdPe3dIQivGmqr+qaE71YB42bHgnxiInPqvCd7vgIhAA6Eg
 p7XNaCkHwa/XCiljedKVve6KQtuvE6ryeaktJp5iMAkUaDA9Psg44qky2b3HuBk6M6Aw
 aDO5pB82RtkTmeDB3dG9mGcVQQ0ePdW3d3OcYsK6J5ErXyUwq8yM8wbFmr0ldpT/Fkws
 bUqg==
X-Gm-Message-State: AOAM530cVvqlrfiBm9o8X0KVNgnIpTd0o9h2+k1MrZExPlz5u+9f/2vf
 w0h94qDZt2q7AXflOibt5M9ayPNqhp26i18oLp15OA==
X-Google-Smtp-Source: ABdhPJzfVZC8kpL2tUZvyZBEfHsJcw8hsURJkAqK7mmHGKEBmGjerhWnLkh7x7vo6AdrJWcg3q4U7+I4N6YmqrwDEjk=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr1503952ljz.104.1591173950919; 
 Wed, 03 Jun 2020 01:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200412002407.396790-1-linus.walleij@linaro.org>
 <107be5e0-3acd-1bf5-d1dd-e27f796e87d9@gmail.com>
 <CACRpkdZ5Dd92QYtKU8X+HHBFXXWm5m16htZ7vxeMTanxTQ=L1A@mail.gmail.com>
 <25cdd13f-1f95-1ca5-c28b-917538643590@gmail.com>
In-Reply-To: <25cdd13f-1f95-1ca5-c28b-917538643590@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jun 2020 10:45:39 +0200
Message-ID: <CACRpkdbEhnOfvHEQZ1GbdKuTchfBn1TozeD02NBFJ_YF6WwH=g@mail.gmail.com>
Subject: Re: [PATCH 0/5 v2] KASan for ARM
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_014554_143735_3EABDBA4 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abbott Liu <liuwenliang@huawei.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 6:37 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> This branch got me a bit further,

Thanks, at least we get improvements. :)

> but still failed to fully initialize
> (see attached kasan.log), on another platform with a slightly different
> memory map, I ended up getting a different error (kasan2.log).

I have this error too on a Qualcomm board, it is what I report
in the cover letter, that if I load the kernel into 0x40200000
this happens but when I load it into 0x50000000 it does not
happen.

I think it is because the device tree unflatter reads from
non-kernel memory. The device tree can be placed pretty
much anywhere in physical memory, and if that physical
memory happens to end up to be inside kernel virtual
memory we are fine, and if not this happens. (This is
just my working hypothesis.)

I think the issue is a kind of bug since the kernel is
indeed accessing non-kernel memory, but on the
other hand it has to. So it has to be done under
controlled forms.

I tried to de-instrument the DT parser but that did not
help me, but possibly it is one part of the solution:

From f02ac4adf784cff9fa7b4780d5e7ff5f1c830165 Mon Sep 17 00:00:00 2001
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 12 May 2020 00:19:04 +0200
Subject: [PATCH] lib: fdt: De-instrumentize core FDT parser for KASan

When the architecture initialize and want to inspect the FDT
using this call sequence:

setup_arch()
  unflatten_device_tree()
    early_init_dt_alloc_memory_arch()
      fdt_check_header()

The KASan shadow memory is set up at this point, but
fdt_check_header() will reach out into non-kernel memory
not shadowed by KASan by just casting a pointer into virtual
memory into a ((const struct fdt_header *) by way of
fdt_get_header(). KASan will attempt to shadow these memory
accesses leading to a crash like this:

Unable to handle kernel paging request at virtual address b7600619
pgd = (ptrval)
[b7600619] *pgd=00000000c
Internal error: Oops: 5 [#1] PREEMPT SMP ARM
Modules linked in:c
CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc1-00009-g667a8ab4ee5e-dirty #29
Hardware name: Generic DT based system
PC is at __asan_load1+0x1c/0x48
LR is at fdt_check_header+0xc/0x2f4

Fix this by de-instrumenting fdt.c from libfdt.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 lib/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/Makefile b/lib/Makefile
index 685aee60de1d..13ea92191788 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -236,6 +236,10 @@ libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o
fdt_sw.o fdt_strerror.o \
 $(foreach file, $(libfdt_files), \
  $(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt))
 lib-$(CONFIG_LIBFDT) += $(libfdt_files)
+# The early kernel setup will attempt to read properties from the FDT which
+# may very well be in some memory area that is not kernel memory, leading
+# to problems when KASan tries to shadow these memory accesses.
+KASAN_SANITIZE_fdt.o := n

 lib-$(CONFIG_BOOT_CONFIG) += bootconfig.o

-- 
2.25.4

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
