Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C1E8DBAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aEDIXQi0xxoDPjyphBjhNeJ9XoDNltOmBwzk/AxzNVM=; b=JEZAUmPDbqT8lt
	Odaw8aoDH75QYvVWQfTaAeyqyzNEHzmkyrL+F7JTcybSIlLDDDs3ZCfuD3fQBzf6oZVsAH10pmBfB
	oJcVQITR6TRQdqVpwkr/3vah9PVeGKWybCphOuAZs39Y+C33YAQMumL8VGcArut8exXYYDSAyqIIr
	NFooHwLU5gJKlJK/bkahOzQI11J/LJMCKNbvrMV3kg00cEBW/X0T9zzo9kdQw49f9CV2LrSCF/Qwr
	6qbuSQRnp9vRE4VRR7p1dir9A2fpgoyBhqRSRCNsyHU7/XUanOO2xpC/0/XwOFy8MKRrlm9JQDB6c
	D/VRNlv8GqmzNPZqZFwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxx3B-0002cl-Eg; Wed, 14 Aug 2019 17:27:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxx2q-0002YS-Jc
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:26:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so5136346wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 10:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xNjTRM/T7OXW0nZJunZsUPEa7EgL/wJtZiGTQlV3OHQ=;
 b=T9pRcmqG6NuGeq8Z11fIDsWIww+aIe02v4ziKCzBf6quxQBZuci9T0nbxltbJkKUzM
 kLU2rvIfHM1nQ0j0K3OQjPN5BqNzks7m6baXJaYMy5Jz3dbQHUk0lbQMfXRHaPbgqBQL
 ZoJBMkEgH888ZAVE4AAqW1mAUwJab0yL5pCoDGMvWfWqfOxgqcVenbL4BYwocBMem82a
 mj4GTf3sJb5UagumaVIhq9StuEVnwm90WOJOE1n3F+kKiCWpeqejSY9S+G09xH3N6MqL
 8rUqLfqWhPc5Np9qs0XPLaQvHCcd2J/7hw/h/qDmg/zRjt2NdYVaC5KIr/V3RX2vH1Jo
 FoNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xNjTRM/T7OXW0nZJunZsUPEa7EgL/wJtZiGTQlV3OHQ=;
 b=DiMmHXKpn7OT5v1CSsNHi/kRdxQbyCww72XeybHG03nsHsP1y6LAmsQbGmegWlG79h
 H/JT9NHsEAKqhHZnFOyZj1vlMgJoRNfSdauaCJfrW1qQ+1SlxfTWucIeQ+1UI9/Ab37b
 UJ3fwxNBKW5M0HRZt8ts9bNX5bUMYoXa+4cvN+zpOWgEzdzCzeSNDEHw/qHbJDh82///
 OYKGo+z+LJUfQNIbdXr9ka64wpJc+ApECbcppchDGMGHQIxM8UM1VNm1NRX1A4xWesHI
 ZFW2uLtTp+2Hk7Jhu5Eftm8INa5nmqmrAl5NbjqgCQuctPJi7pquhk03TN2noL+eGDHV
 oZMw==
X-Gm-Message-State: APjAAAXvPWGY2MZknm9GzkvVC/s/e5uaXw0Z308xlOFmdsCGAYcctsxn
 ignnKzGzKsyZKjO6O5lsB/4=
X-Google-Smtp-Source: APXvYqxhoLfBKKYxZC9FhueVnfsOm9dE5gx8yqSEV3RTDUAW1pkOq/EFjsOI95yEQvdMFwm2C7ssQQ==
X-Received: by 2002:a7b:c155:: with SMTP id z21mr202651wmi.137.1565803602609; 
 Wed, 14 Aug 2019 10:26:42 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id p4sm373092wrs.6.2019.08.14.10.26.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 10:26:42 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:26:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: Explicitly marking initializer overrides (was "Re: [PATCH]
 arm64/cache: silence -Woverride-init warnings")
Message-ID: <20190814172640.GA116758@archlinux-threadripper>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <20190808170916.GA32668@archlinux-threadripper>
 <20190809083251.GA48423@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809083251.GA48423@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_102644_651531_743269D6 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Qian Cai <cai@lca.pw>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 09:32:51AM +0100, Mark Rutland wrote:
> On Thu, Aug 08, 2019 at 10:09:16AM -0700, Nathan Chancellor wrote:
> > On Thu, Aug 08, 2019 at 11:38:08AM +0100, Mark Rutland wrote:
> > > On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> > > > The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> > > > VIVT I-caches") introduced some compiation warnings from GCC (and
> > > > Clang) with -Winitializer-overrides),
> > > > 
> > > > arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> > > > overwritten [-Woverride-init]
> > > > [ICACHE_POLICY_VIPT]  = "VIPT",
> > > >                         ^~~~~~
> > > > arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> > > > 'icache_policy_str[2]')
> > > > arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> > > > overwritten [-Woverride-init]
> > > > [ICACHE_POLICY_PIPT]  = "PIPT",
> > > >                         ^~~~~~
> > > > arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> > > > 'icache_policy_str[3]')
> > > > arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> > > > overwritten [-Woverride-init]
> > > > [ICACHE_POLICY_VPIPT]  = "VPIPT",
> > > >                          ^~~~~~~
> > > > arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> > > > 'icache_policy_str[0]')
> > > > 
> > > > because it initializes icache_policy_str[0 ... 3] twice. Since
> > > > arm64 developers are keen to keep the style of initializing a static
> > > > array with a non-zero pattern first, just disable those warnings for
> > > > both GCC and Clang of this file.
> > > > 
> > > > Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> > > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > 
> > > This is _not_ a fix, and should not require backporting to stable trees.
> > > 
> > > What about all the other instances that we have in mainline?
> > > 
> > > I really don't think that we need to go down this road; we're just going
> > > to end up adding this to every file that happens to include a header
> > > using this scheme...
> > > 
> > > Please just turn this off by default for clang.
> > > 
> > > If we want to enable this, we need a mechanism to permit overridable
> > > assignments as we use range initializers for.
> > > 
> > > Thanks,
> > > Mark.
> > > 
> > 
> > For what it's worth, this is disabled by default for clang in the
> > kernel:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/Makefile.extrawarn?h=v5.3-rc3#n69
> > 
> > It only becomes visible with clang at W=1 because that section doesn't
> > get applied. It becomes visible with GCC at W=1 because of -Wextra.
> 
> Thanks for clarifying that!
> 
> Do you know if there's any existing mechanism that we can use to silence
> the warning on a per-assignment basis? Either to say that an assignment
> can be overridden, or that the assignment is expected to override an
> existing assignment?
> 

I don't think there is, from the brief amount of research I did.

> If not, who would be able to look at adding a mechanism to clang for
> this?
> 

I've filed https://github.com/ClangBuiltLinux/linux/issues/639 on our
issue tracker so that I can try to remember to distill all of this
down and file an LLVM bug.

> If we could have some attribute or intrinsic that we could wrap like:
> 
> struct foo f = {
> 	.bar __defaultval = <default>,
> 	.bar = <newval>,		// no warning
> 	.bar = <anotherval>,		// warning
> };
> 
> ... or:
> 
> struct foo f = {
> 	.bar = <default>,
> 	.bar __override = <newval>,	// no warning
> 	.bar = <anotherval>,		// warning
> };
> 
> ... or:
> 	
> 	.bar = OVERRIDE(<newval>),	// no warning
> 
> ... or:
> 	OVERRIDE(.bar) = <newval>,	// no warning
> 
> ... then I think it would be possible to make use of the warning
> effectively, as we could distinguish intentional overrides from
> unintentional ones, and annotating assignments in this way doesn't seem
> onerous to me.
> 
> Thanks,
> Mark.

I definitely think it is an interesting idea, hopefully some of our
resident clang experts can weigh in and see how feasible it would be to
implement.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
