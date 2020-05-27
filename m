Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D371E4C71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 19:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXfx69Vcz9HMfso9J/CuQSyLIjehe4iRNM0x7wmVDI4=; b=gJErTfNXeyGMRc
	Yu4t7ZIrV/wAIR0VAlIIv/ThiO8JQWU8eHOowwHon9CUmYX5hQ7BuQyknf5dS8OpaxmPKaDk7MkWO
	DamuDWAOMWeLQ5VhHNP1GTspUO6aqQb0aK6sMBWhMhSiA0Qb/7M8BcfX0Nv2sPpV27NPGlVvAvUtN
	kogcHmEc/vlGboyuT5w7G57ufdHw4GBW6me94XEjsrj+P+EK7ZVM8+9Uzm8w7LefMIVo6aHwBioMM
	cH8Obo9HwTCpprOLZDQpNuDnZqnWv9bGrc5UorjVmrMfbfQ49k00Ed2uyYO3sewdy0ljwPHw0WIyq
	Iq2g4/7quHB5TDNuOpRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0HN-0006ad-4s; Wed, 27 May 2020 17:55:49 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0HB-0006Zz-IJ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 17:55:39 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nu7so1856710pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 10:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VJBYNC82NEK7x8dg+i0heBurZRdVbjA3vrgBU6V12M4=;
 b=aXTIpopGmyddAjXhIqoKG+WhFjn8oDlcxZJA54zQq7ysZKo1Efm/lBVPNknrDfpFbE
 tdjxJvEcB7VtuSIuFr8lrwXjv3t+M42UgIb7qKO3AP5eSqzEFAl3mKK65x+LRU3+5cFB
 owtzO27omqQlHzQ93AqPLuiCYgqSVNpn6nsRVY2v+TrLVyAOeKg8DgMIWntL14c+svfu
 42XE/24+FRgxOGUmfzcc20FRcrKrKz4Z9CGOcL4bfZTT2/z/sKipItoUpWwcOem0ItpY
 kWfVuJHCPFkkZY21ascjp5VhGk9iTN0AFdap29/F54VByjmzHWgiuhY7q5j1HkOdsy+p
 FJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VJBYNC82NEK7x8dg+i0heBurZRdVbjA3vrgBU6V12M4=;
 b=fJc5c53ep0wjFvrsfSNaNLTlVHGwIHcDNzIpUGmsBJYpPPMnUWLU4XBsDVcn6UJ6R1
 ZmKQG7PuFJ5LJ1Kfr35lGpsY5EmCXGg8vn6caB5f/LKJ0q0MEHHIz98GI0Cq6161uhif
 b/hOjo9/g6KAuLcIT8m0AWNDQTDK+Fkedv47GaKgBzIF6LKSjh1Y4Y9gD65rK/ohRkLe
 W7zIYzXQkLBhf6vUINgYhOLKTKaTrg8kINIp8nRSJs7N3KYA8joJVyYD24X8HoW/eDzq
 XIXrQUcCWynC5slL4t7ZxNE6cyEtWsauHPv3z0uSlcSi6tn71AoHBCs02URhCb9huUoR
 wJJQ==
X-Gm-Message-State: AOAM533ccGXmdAD6u9G+GKtiVp87FEHOiova2d3e4vQJqAhtbFeBjwun
 hElI7Sv9f7J9edH9ewZmb+WlgM8Z4w5c9j/cRzTYHQ==
X-Google-Smtp-Source: ABdhPJyJQQ2c1D01xZIN8zVnubpyY/DMXiTEzIKKdFF28gU5xSU/7XCGzI6d/c9CFiYJSE0m6MbG1hDAZRiVQq6XR6U=
X-Received: by 2002:a17:90b:4c47:: with SMTP id
 np7mr6497081pjb.101.1590602135592; 
 Wed, 27 May 2020 10:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
In-Reply-To: <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 27 May 2020 10:55:24 -0700
Message-ID: <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_105537_631750_41949D61 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 6:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-05-26 18:31, Nick Desaulniers wrote:
> > Custom toolchains that modify the default target to -mthumb cannot
> > compile the arm64 compat vdso32, as
> > arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > contains assembly that's invalid in -mthumb.  Force the use of -marm,
> > always.
>
> FWIW, this seems suspicious - the only assembly instructions I see there
> are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the
> -march=armv7a baseline that we set.
>
> On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and
> built a Thumb VDSO quite happily with Ubuntu 19.04's
> gcc-arm-linux-gnueabihf. What was the actual failure you saw?

From the link in the commit message: `write to reserved register 'R7'`
https://godbolt.org/z/zwr7iZ
IIUC r7 is reserved for the frame pointer in THUMB?

What is the implicit default of your gcc-arm-linux-gnueabihf at -O2?
-mthumb, or -marm?
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
