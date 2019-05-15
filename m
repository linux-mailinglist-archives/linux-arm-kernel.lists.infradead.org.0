Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C86B1EC29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLkh3HVo26V5CH7G5t2m80B33usE7s8sExTjgbdr6+g=; b=KTqr2/cbklLP/e
	tP4IG8SG/LICpcMn9ZAzy8aI/+Ut24UIzaIkgt/pNJ+bzcQrYyHSQV7LP4SP6bf1ucTZVxshvbA43
	M9nMvTOAE+j/OWoWTtsS5DCmv++XN2t7wUH3UmuN6X4xVur5XN6spG7xLah4JNsBAQBu9ANLwaHM+
	Eh//OupG3C6NpiO9X3u59iVAsmErKWdiQuHipQXEmt/HZ0WdZiWSEGalKiUaVfC5J2ooW+jwmiPiB
	tW9yQZCUc1WLLZpu2+E2FwxKVQ6V5nPLnB13sC15x9SZJxjQE6Zp0Bw/doqUN5tGHJ2jSIQ4tSGOn
	5XyT81cB3xSng/xAzmeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrFA-00060A-VK; Wed, 15 May 2019 10:34:40 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrF3-0005zK-Ns
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:34:35 +0000
Received: by mail-qk1-x743.google.com with SMTP id g190so1122795qkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 03:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wBnzaBIfj+VJI+Xtrd1Dlp5yMK/LG93WwPhwqIDDvn4=;
 b=YwxCRQ0Sftfr2BZal7AHb+p7cshOTkpVOdkSUGAChfZfPJbU6wba/NR76m4J30rnFT
 iBBMrikElQYf6bsXWI93nYm2OXWc8wOSuuxMuoyQgrQIsV2ccOvzgronYIMhL940cz8N
 jolmhnNoGaiC+eqT26fs74q5eJmU6K9lXIg3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wBnzaBIfj+VJI+Xtrd1Dlp5yMK/LG93WwPhwqIDDvn4=;
 b=Lzx/lzS4vSmPaT5MTWYjOXAA9NjegzJYFtJAVbo43mN0XOet6cg+wCihWOEN2djNFl
 rifreRrgFoEkT2RN41rS/pOoQ9nq5kVpXGg6vffn8MAFqbiHfn6TknhtOvJVecKIIu1J
 voPLWVv/WlDNotZnw0aqCWZzdKB/aNVkCuumbtghhGQEbKgBlSBUfMVaDUdYugHmNNK9
 7m5v4ubiSXhPXJabsyeouejis7tiUTBQurkh3UFV+xlBTxDbuMGNClSXL7wicnBXHQzr
 0RBg5v9dJqTUEq5KiVznsSOKT7G8uWUub/71ib7P5ETV7WS7fAKv34Pxwww6CZpFfRNR
 V3Vg==
X-Gm-Message-State: APjAAAWO90HaJTqcAY51R2f3Rjbk1JxecXvnWi//v+ZqUlMeYdjcwwUc
 We3hqS69SAYpkw0A1OBtWv5IMQT8Sglyr3+A3pGVzw==
X-Google-Smtp-Source: APXvYqxzaWty/pcJA3F9yFKN3kO92+0zWjAvItmiZ8fb0cYKsHAr5CMq7sSvA2KfS3dKL0erckWodpEpqMDQwVQNbc4=
X-Received: by 2002:a05:620a:1278:: with SMTP id
 b24mr31171654qkl.265.1557916472423; 
 Wed, 15 May 2019 03:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190513003819.356-1-hsinyi@chromium.org>
 <20190513003819.356-2-hsinyi@chromium.org>
 <20190513085853.GB9271@rapoport-lnx>
 <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
 <155786794318.14659.2925897827978978040@swboyd.mtv.corp.google.com>
 <20190515050059.GA4081@rapoport-lnx>
In-Reply-To: <20190515050059.GA4081@rapoport-lnx>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 15 May 2019 18:34:06 +0800
Message-ID: <CAJMQK-hGyuM=+C0ZPUbUwMqH8zPoYPF43L8oMP=p8MUeXrco4g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_033433_799453_B359FF34 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 1:01 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> >
> > Why not just have fixmap_remap_fdt() that maps it as RW and reserves
> > memblock once, and then call __fixmap_remap_fdt() with RO after
> > early_init_dt_scan() or unflatten_device_tree() is called? Why the
> > desire to call memblock_reserve() twice or even three times?
>
> There's no desire to call memblock_reserve() twice. It's just that leaving
> the call for it in kaslr rather than in setup_arch() may end up with
> unreserved FDT because kaslr was disabled or even compiled out.
>
> I've suggested to use fixmap_remap_fdt() everywhere because IMHO this
> improves readability and allows to un-export __fixmap_remap_fdt().
>
> --
> Sincerely yours,
> Mike.
>

How about adding an arch hook that's not limited to be called at init
(like fixmap_remap_fdt). In this way we don't have to change currently
arm64 setup structure and only map fdt to RW before we need to modify
it (and can map back to RO after write). Since it can be called after
init, for CONFIG_KEXEC, we can also use it before updating fdt with a
new seed.

Does nothing by default, and for arm64 it can be like[1].
It's similar to __fixmap_remap_fdt on counting fdt size but using
update_mapping_prot() (will flush the TLBs).
And suppose fixmap_remap_fdt() is called at least once, region
checking is skipped.

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 8080c9f489c3..e0fff8a009da 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -32,6 +32,7 @@
 #include <linux/io.h>
 #include <linux/mm.h>
 #include <linux/vmalloc.h>
+#include <linux/of_fdt.h>

 #include <asm/barrier.h>
 #include <asm/cputype.h>
@@ -919,6 +920,22 @@ void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
        return dt_virt;
 }

+extern phys_addr_t fdt_pointer;
+
+/* Should be called after fixmap_remap_fdt() is called. */
+void update_fdt_pgprot(pgprot_t prot)
+{
+       u64 dt_virt_base = __fix_to_virt(FIX_FDT);
+       int offset, size;
+
+       offset = fdt_pointer % SWAPPER_BLOCK_SIZE;
+       size = fdt_totalsize((void *)dt_virt_base + offset);
+
+       update_mapping_prot(round_down(fdt_pointer, SWAPPER_BLOCK_SIZE),
+                       dt_virt_base,
+                       round_up(offset + size, SWAPPER_BLOCK_SIZE), prot);
+}
+


example use:
update_fdt_pgprot(PAGE_KERNEL);
fdt_delprop(initial_boot_params, node, "rng-seed");
update_fdt_pgprot(PAGE_KERNEL_RO);

I tested on arm64 device and it works. But if this doesn't seems
right, I'll probably just don't don't map fdt back to RO if kexec is
set.

Is this reasonable?

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
