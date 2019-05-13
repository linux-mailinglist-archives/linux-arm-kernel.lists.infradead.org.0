Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800ED1B49D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thFbvQ/iN0rhS+wrHaKIgN6d1dZoffmOT1P67PI1I40=; b=dzHikGza6Yzv0n
	qSsiosK/xTB6EaRTyIVGk2Tbys3mIMBhc6ZqAHsSrBLrzxYv60kQsvkQfPcFy7Fpu5tMIhitITrDt
	M9vQx+1h7pveVRODj2nzghrmSpDCpE85cqVGwaQ6mfuUtrp9BzDvmhws8KgDZ3Z/G6z9sRs/SP9hh
	URVYJBuUOSCOXsyoGhCI5kumeAO6tYA8mSLWtLjP8Ysp3ZKSsdyyQ3bfMnKWNHTjoG14jRRyU6EbL
	PVL6MmAsgVFbM2AFHX2/3aInvfkQXXh6OQkBhUOAFFh3to+iPXVE97wtau61+SwkPoGVmpN+fayK/
	P3TNI64rHC5J7pg2NGTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8vJ-0000EZ-6g; Mon, 13 May 2019 11:15:13 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8v5-00006w-Ii
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:15:01 +0000
Received: by mail-qt1-x842.google.com with SMTP id y22so10724107qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 04:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7ZfFsSLpKN7HyaM6v93FCUf+4/Rm0naSo5dp2W2IoAs=;
 b=P7ipmsq9G0+9OQ54tSFpZgx4uejZvqKec5RS4a3yX+3drQ7fHtnDqSGIIgcnEEtqk7
 JkP2QLEsEoGnD0hS/v+0AtmraeSEhBrD6jM+/soz3CKbv0M54wMXOYJGVOld0lzQuNdh
 q0lc45XDBoD1Pt+YWPhZ7I4v05Ywg6KPt8S5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7ZfFsSLpKN7HyaM6v93FCUf+4/Rm0naSo5dp2W2IoAs=;
 b=IlAGTxft4wFAG8RGleEYR6NpLkX52OFYe20m0gVEDJuYZiWAVv6hGZeflr0yVl7cal
 dGl97J5Zt6sgFojVciCZhXbRu2DmmSHEwX7Jak+zSPhZb/xzPzkciOB+vbA7XtrXzSa4
 dDCd74Dmg2xr+tfW4fixiuOevPzAqXWZOhYr5T6+pR6BJ0QPIdHodx/hVwCA8bL6PaFT
 AgrHKOKrsG8qWKPOHJprl7nHg+KbrFxw/JTzBTMfX2t7Q1qWsv2EaAbDgH88KuXQwS57
 aGaR10JQlxunK0b5m9XHdjaDiwrMXX/0V1lO3e9A2U2cG1sFY33njrf5xY/pmAYv3iqh
 OIcg==
X-Gm-Message-State: APjAAAWcnvn7spKAPXYP7/tuql6//hIZqLQyHLsrgKvUkbZZa0rLPuSz
 9JLEqaONULQP+ynq2e2+1SptxfWyNaP+bZk6qzpvUw==
X-Google-Smtp-Source: APXvYqyBfY131U29dBbU/X4gXO3dZg+CiqpFSNzlD1lAHQ8Z1Q1egpybgdc6YHf9RPbXTaQ8EFaZSNZK9NLwjWHnaJY=
X-Received: by 2002:ac8:22d3:: with SMTP id g19mr1436241qta.236.1557746098383; 
 Mon, 13 May 2019 04:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190513003819.356-1-hsinyi@chromium.org>
 <20190513003819.356-2-hsinyi@chromium.org>
 <20190513085853.GB9271@rapoport-lnx>
In-Reply-To: <20190513085853.GB9271@rapoport-lnx>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 13 May 2019 19:14:32 +0800
Message-ID: <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041459_639435_EFC46BE3 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, May 13, 2019 at 4:59 PM Mike Rapoport <rppt@linux.ibm.com> wrote:

>
> This makes the fdt mapped without the call to meblock_reserve(fdt) which
> makes the fdt memory available for memblock allocations.
>
> Chances that is will be actually allocated are small, but you know, things
> happen.
>
> IMHO, instead of calling directly __fixmap_remap_fdt() it would be better
> to add pgprot parameter to fixmap_remap_fdt(). Then here and in kaslr.c it
> can be called with PAGE_KERNEL and below with PAGE_KERNEL_RO.
>
> There is no problem to call memblock_reserve() for the same area twice,
> it's essentially a NOP.
>
Thanks for the suggestion. Will update fixmap_remap_fdt() in next patch.

However, I tested on some arm64 platform, if we also call
memblock_reserve() in kaslr.c, would cause warning[1] when
memblock_reserve() is called again in setup_machine_fdt(). The warning
comes from https://elixir.bootlin.com/linux/latest/source/mm/memblock.c#L601
```
if (type->regions[0].size == 0) {
  WARN_ON(type->cnt != 1 || type->total_size);
  ...
```

Call memblock_reserve() multiple times after setup_machine_fdt()
doesn't have such warning though.

I didn't trace the real reason causing this. But in this case, maybe
don't call memblock_reserve() in kaslr?

[1]
[    0.000000] WARNING: CPU: 0 PID: 0 at
/mnt/host/source/src/third_party/kernel/v4.19/mm/memblock.c:583
memblock_add_range+0x1bc/0x1c8
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 4.19.38 #125
[    0.000000] pstate: 600001c5 (nZCv dAIF -PAN -UAO)
[    0.000000] pc : memblock_add_range+0x1bc/0x1c8
[    0.000000] lr : memblock_add_range+0x30/0x1c8
[    0.000000] sp : ffffff9b5e203e80
[    0.000000] x29: ffffff9b5e203ed0 x28: 0000000040959324
[    0.000000] x27: 0000000040080000 x26: 0000000000080000
[    0.000000] x25: 0000000080127e4b x24: 0000000000000000
[    0.000000] x23: 0000001b55000000 x22: 000000000001152b
[    0.000000] x21: 000000005f800000 x20: 0000000000000000
[    0.000000] x19: ffffff9b5e24bf00 x18: 00000000ffffffb8
[    0.000000] x17: 000000000000003c x16: ffffffbefea00000
[    0.000000] x15: ffffffbefea00000 x14: ffffff9b5e3c17d8
[    0.000000] x13: 00e8000000000713 x12: 0000000000000000
[    0.000000] x11: ffffffbefea00000 x10: 00e800005f800710
[    0.000000] x9 : 000000000001152b x8 : ffffff9b5e365690
[    0.000000] x7 : 6f20646573616228 x6 : 0000000000000002
[    0.000000] x5 : 0000000000000000 x4 : 0000000000000000
[    0.000000] x3 : 0000000000200000 x2 : 000000000001152b
[    0.000000] x1 : 000000005f800000 x0 : ffffff9b5e24bf00
[    0.000000] Call trace:
[    0.000000]  memblock_add_range+0x1bc/0x1c8
[    0.000000]  memblock_reserve+0x60/0xac
[    0.000000]  fixmap_remap_fdt+0x4c/0x78
[    0.000000]  setup_machine_fdt+0x64/0xfc
[    0.000000]  setup_arch+0x68/0x1e0
[    0.000000]  start_kernel+0x68/0x380

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
