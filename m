Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6AF5992D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjJl3RQMmOqrXk0YcdtRDttsqpgJf18L1UTr0g9ia1Y=; b=r6DVezzFnRAgRP
	/a0wiHTZth9CSfxxyFPQK+6Xe8j3alwWcbw9DvlyM93Xv/VjCWGL2gfeER01z5HUS1zAQwMN3WI11
	Adi/B/I5sjJ/ZA3KUxatNRvxLbDagbc4Nb5IJAFHPSrh/q3ATUhFciS3Qcu900B9mORiSLeIL2UPS
	2UKkJUWhcs6atVsKD7VpLdWBP3zYnM6MF22K3QsO7hoXu9pX6fHrxrzpYzP/WvLaudmBML/SLyrXF
	LOJgVSvYt2oxHbKRdqx/ALqiuozUeNmZmtuwOsyrX7PWv1Ylc4U1fvBfTagB9RorlsJsjSCPcGRun
	l+HvOwLpp93TWZX4OSWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgozU-0002Tg-3a; Fri, 28 Jun 2019 11:24:28 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgozE-0002St-VP
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:24:15 +0000
Received: by mail-qt1-x843.google.com with SMTP id i34so5803501qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 04:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X/Ug5dzWgzAo254GigTyB3K1N9vqEmjljvMsZ1gZJ+s=;
 b=mYrk7KIObHI2/13Kp27Vl24AfH1GeS822BC9Blo1INXT9dMN8zg1hOJrqg0OUujE9r
 o/sACm63p6WZMySZR7m28wnwBaSvEaJE65i+L0PXmSg8id7jHR/maNMUwPP1xoB6OFpK
 d55TI5ehAD9OWc3poyR68Yx5AxYZlp1MwGf0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X/Ug5dzWgzAo254GigTyB3K1N9vqEmjljvMsZ1gZJ+s=;
 b=Xj9bCBkM9ADwFrrK6hZI1bVQ4KcAc/N5ocEN6kP2FgOgfB9ZDk6Lx039Z2FFccDkl8
 3RvywEVhkArSqZ9rMg4NmtPS9Qp+y/Zz9Zb6TLDCCGf5wbFaDgfLHTj4OnJaGIP/ETYK
 SgnFSLEn1Gxp8izrXNlHkOAhnkF91zdkFwpbeRZYG+J5w7Rp1FKBFBTyCNzWF9GP7LSL
 qrNUHhTb6bLbqV6JmEkfcrIwK/C9hiPKEQ4YVmc3zGZnh6UFYZOm/N64UOr0Pprp0hQv
 A1dme0vrSNffWiqH4nR/7Cdsrl+5FGmInO0VfqTLW42C6RybEOX7AD1vjsR8PpyNIKBp
 jCWw==
X-Gm-Message-State: APjAAAXXYr0+CMuQk3AZB9DnHHE4JPL+TQpOHG4rz3zOin2zyGUR7XPB
 LJra+q1eOk+PdGAX8+a3rRKEgh58RLANNxMsxpkZww==
X-Google-Smtp-Source: APXvYqyma+rIlgBTxFdrPMygxhmPVjGgIj7WgGfVJNGUReXJEloaTE7RwdyJzDCp0z57gIOQR4eTrJoCGDnA/EKAxmI=
X-Received: by 2002:ac8:4601:: with SMTP id p1mr7671783qtn.181.1561721051369; 
 Fri, 28 Jun 2019 04:24:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190612043258.166048-1-hsinyi@chromium.org>
 <20190612043258.166048-3-hsinyi@chromium.org>
 <20190628093529.GB36437@lakrids.cambridge.arm.com>
In-Reply-To: <20190628093529.GB36437@lakrids.cambridge.arm.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 28 Jun 2019 19:23:45 +0800
Message-ID: <CAJMQK-g_9bDHJgKr-qKpQ6HwombB+6Asg_z3r6nv+pC4q4j-Aw@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] fdt: add support for rng-seed
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_042413_036046_55C972A8 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 5:35 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Jun 12, 2019 at 12:33:00PM +0800, Hsin-Yi Wang wrote:
> > Introducing a chosen node, rng-seed, which is an entropy that can be
> > passed to kernel called very early to increase initial device
> > randomness. Bootloader should provide this entropy and the value is
> > read from /chosen/rng-seed in DT.
>
> Could you please elaborate on this?
>
> * What is this initial entropy used by, and why is this important? I
>   assume that devices which can populate this will have a HW RNG that
>   the kernel will eventually make use of.
There are a few discussions here[0]. We basically want to add more
randomness for stack canary when device just boot and not much device
randomness was added.
[0] https://lore.kernel.org/patchwork/patch/1070974/#1268553

On Thu, May 9, 2019 at 1:00 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> This early added entropy is also going to be used for stack canary. At
> the time it's created there's not be much entropy (before
> boot_init_stack_canary(), there's only add_latent_entropy() and
> command_line).
> On arm64, there is a single canary for all tasks. If RNG is weak or
> the seed can be read, it might be easier to figure out the canary.

With newer compilers[1] there will be a per-task canary on arm64[2],
which will improve this situation, but many architectures lack a
per-task canary, unfortunately. I've also recently rearranged the RNG
initialization[3] which should also help with better entropy mixing.
But each of these are kind of band-aids against not having sufficient
initial entropy, which leaves the canary potentially exposed.

-Kees

[1] https://gcc.gnu.org/git/?p=gcc.git;a=commitdiff;h=359c1bf35e3109d2f3882980b47a5eae46123259
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0a1213fa7432778b71a1c0166bf56660a3aab030
[3] https://git.kernel.org/pub/scm/linux/kernel/git/tytso/random.git/commit/?h=dev&id=d55535232c3dbde9a523a9d10d68670f5fe5dec3
>
> * How much entropy is necessary or sufficient?
64 bytes should be enough. But depends on how much bootloader can provide.
>
> * Why is the DT the right mechanism for this?
EFI based systems can inject randomness in early boot. This is aimed
to support DT based systems to also have this feature.

https://github.com/torvalds/linux/commit/636259880a7e7d3446a707dddebc799da94bdd0b#diff-3ded2fe21b37c6f3e86c2a8418507714

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
