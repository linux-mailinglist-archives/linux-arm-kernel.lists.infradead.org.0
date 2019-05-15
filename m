Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E51E1EC10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYKHiuojat+3NrRn7JWbpEFQC2nB36knFRs4piTrXnY=; b=ERgwqP/YqccFEO
	Lg8ue8LINGgW5AFj75hqqyerOFG6U48gRNz/pZIKEuiBZN/pB5XTDPLRo0m39x9FK6b6IZ8/I0Z2Z
	MHatOxtUyasKRztmbd9SSD3qLxhxZjK5Pa3+S7sgIIuXP2ijkXEV9JhPOzUcZfc3Emc20eJB0ow65
	gR8G/gkyeWJw2xjJqODgSuBubl/rFa5QW+Si5SwJ5xYdy0qniUNDGSamzjBXpgPpxwhCRTnaWTTty
	naKZ4th1042CxgWrFsb84MJpKgBPxojohu47WbbDfgjAb0boXfbaXwr7IBVtWsiZk45wm7DMB+x5n
	Zg9s7XHk0xHa2XzOyRow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQr5W-0002fb-1E; Wed, 15 May 2019 10:24:42 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQr5K-0002U6-Ad
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:24:34 +0000
Received: by mail-qt1-x842.google.com with SMTP id j53so2559339qta.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 03:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VF1vS3G86+JyyviSBTnGeyRAdDK6321ns1o68qnsEFU=;
 b=lwkIwhecfWX/tDLKzc8VdqHJkJpbhOhTyKZcxaWBPha90AwOblRBCJoPTfoYsG5asR
 x7kYV+1i+iu7NEpCGYVNy1oGD3lOX9UBqIIvq2GJspyjXE3SCLBfzH6kJ18ezT1amnpn
 3dbjuaAnNJyV02GfuY1N3LfQsOySeH3+Cjr3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VF1vS3G86+JyyviSBTnGeyRAdDK6321ns1o68qnsEFU=;
 b=rnPW+95U5B6d1+Lu63v8GbUomZmCdFGNGA0ismyoTXJJS9XmFy0RgT/edVhu1Z8c6C
 JdtxgRH7tyFIcU9uxJGLEEHfOy8RBRt8Q33CG+iFfsG0prPuIjevoxKscbCWeBjXc/UZ
 3EEqmDpoMJIm39pObjSukfH4ktxfbdFD9x4RmTUxgYPuqGrGyc7+RwtE4SL+QIbjODDD
 wP79IJL6btxWX1ZERvGZBQdID8338MneVsLphGLoztqfpcz4F8I+cq8aaowoAZwZ4rC5
 3HWYjw8l8hnOs28Gq420HAol3t1MkshpBsPPIPLuVlGn2jsI8t9+x7JhFbUUVmrde4jT
 xeYA==
X-Gm-Message-State: APjAAAXsgDMYscCvymUY4MsjSvdkn4b7zYZIrf5L6N2FoDW4hq/DbyDm
 Y7AY+bLvw5PzpteD5w3bROdtCMd7rhGPwg4fuy6AzQ==
X-Google-Smtp-Source: APXvYqwJ3aw2EBWvbMfqY6pmIypZyyJaGuIQTDf+at1oH9RsnMy+pwkcQe7c5MAIBPn6XcOgFBmXDJQI5LsaEmxJs8M=
X-Received: by 2002:ad4:534b:: with SMTP id v11mr32936859qvs.31.1557915868951; 
 Wed, 15 May 2019 03:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190513003819.356-1-hsinyi@chromium.org>
 <20190513003819.356-2-hsinyi@chromium.org>
 <20190513085853.GB9271@rapoport-lnx>
 <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
 <20190514154223.GA11115@rapoport-lnx>
In-Reply-To: <20190514154223.GA11115@rapoport-lnx>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 15 May 2019 18:24:03 +0800
Message-ID: <CAJMQK-gMa81kHaTS1kwTcOy+Avt5GsmNcagfscdLdmzS31Tobw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_032430_521847_B216889D 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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

On Tue, May 14, 2019 at 11:42 PM Mike Rapoport <rppt@linux.ibm.com> wrote:

> I'm not sure if early console is available at the time kaslr_early_init()
> is called, but if yes, running with memblock=debug may shed some light.
>
> > I didn't trace the real reason causing this. But in this case, maybe
> > don't call memblock_reserve() in kaslr?
>
> My concern that this uncovered a real bug which might hit us later.
>
Hi Mike,
Thanks for the hint. I tried on my device but seems that earlycon
happens after the warning call trace, so can't more information.

Since on my device kaslr will be runned, I tried call
memblock_reserve() in kaslr and not in
setup_machine_fdt()#fixmap_remap_fdt, but got following warning

[    0.000000] memblock_remove:
[0x0001000000000000-0x0000fffffffffffe] arm64_memblock_init+0x28/0x224
[    0.000000] memblock_remove:
[0x0000004040000000-0x000000403ffffffe] arm64_memblock_init+0x64/0x224
[    0.000000] memblock_reserve:
[0x0000000040080000-0x00000000413c3fff]
arm64_memblock_init+0x188/0x224
[    0.000000] WARNING: CPU: 0 PID: 0 at
/mnt/host/source/src/third_party/kernel/v4.19/mm/memblock.c:583
memblock_add_range+0x1bc/0x1c8
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 4.19.38 #222
[    0.000000] Hardware name: MediaTek kukui rev2 board (DT)
[    0.000000] pstate: 60000085 (nZCv daIf -PAN -UAO)
[    0.000000] pc : memblock_add_range+0x1bc/0x1c8
[    0.000000] lr : memblock_add_range+0x30/0x1c8
[    0.000000] sp : ffffffab68603ea0
[    0.000000] x29: ffffffab68603ef0 x28: 0000000040954324
[    0.000000] x27: 0000000040080000 x26: 0000000000080000
[    0.000000] x25: 0000000080127e4b x24: ffffffab68716000
[    0.000000] x23: ffffffab680b5000 x22: 0000000001344000
[    0.000000] x21: 0000000040080000 x20: 0000000000000000
[    0.000000] x19: ffffffab6864bf00 x18: 00000000fffffc94
[    0.000000] x17: 000000000000003c x16: ffffffab67d49064
[    0.000000] x15: 0000000000000006 x14: 626d656d5f34366d
[    0.000000] x13: 7261205d66666633 x12: 0000000000000000
[    0.000000] x11: 0000000000000000 x10: ffffffffffffffff
[    0.000000] x9 : 0000000000011547 x8 : ffffffab68765690
[    0.000000] x7 : 696e695f6b636f6c x6 : ffffffab6875dd41
[    0.000000] x5 : 0000000000000000 x4 : 0000000000000000
[    0.000000] x3 : ffffffab678a24a0 x2 : 0000000001344000
[    0.000000] x1 : 0000000040080000 x0 : ffffffab6864bf00
[    0.000000] Call trace:
[    0.000000]  memblock_add_range+0x1bc/0x1c8
[    0.000000]  memblock_reserve+0x60/0xac
[    0.000000]  arm64_memblock_init+0x188/0x224
[    0.000000]  setup_arch+0x138/0x19c
[    0.000000]  start_kernel+0x68/0x380
[    0.000000] random: get_random_bytes called from
print_oops_end_marker+0x3c/0x58 with crng_init=0
[    0.000000] ---[ end trace ea99802b425f7adf ]---
[    0.000000] memblock_reserve:
[0x000000005f800000-0x000000005f811536]
early_init_dt_reserve_memory_arch+0x38/0x48
[    0.000000] memblock_reserve:
[0x00000000ffe00000-0x00000000ffffffff]
early_init_dt_reserve_memory_arch+0x38/0x48

So I guess we just can't call memblock_reserve() in kaslr?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
