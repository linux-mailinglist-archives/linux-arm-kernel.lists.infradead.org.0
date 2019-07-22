Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68799705A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt0Va8ZfN9m3iA1jmVxGXsmISzx783YIRryTz5TLmU0=; b=uCKoCH0ET0PzCq
	Ewsy0MWFsIQsyfWm3I/wb638bJtJIDX6ZerG4U4i/k4+8+pc7Tyn6F3YtACKs9WWW3/qdNwNQ9BNn
	EkO+CcHQ5HDPmkNA6NhyRQ1V0CwCydVCmT/DR5zHwdkCNKVFfdjjY9n5f5DFpLFy9P0ZNgksYvZax
	P52V7xQEaBayPiJCftikQscWlGkBASCtr0cBS/jKLxx47OJQ7rk/0RzCpP/IUHUfH105S1sO5QN9b
	hF6oXaEmvGD+hX/fWetgZx8Z+6yMTzBT6sMTEJkIvCDsFumh3hDb0r5zcC56eqWQBQkiGQWbUcJ1x
	15vTu2QFZdeWdnuYw7HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbQM-00010P-PM; Mon, 22 Jul 2019 16:44:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbPu-0000zZ-SH
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:44:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id c73so17632490pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 09:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0abIdXMJS5KPOhFRT6SKzkVu93s4PHysE2rJjgKCqec=;
 b=FHtnRkoZq8bsxohjwLB/4HIDcSah8xdLJFdC/tAu3aSZ4HuyGHyQbSOzIFDp7NvxdL
 ggD6NreGQMW2x+6eD0ihomZxAn43scirqovq/X4WzMhncsTcMOlxreruCcvyPR4CtDYs
 9RHowCfdey70t1KappcGEGqosaIjIGTPqZ1k0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0abIdXMJS5KPOhFRT6SKzkVu93s4PHysE2rJjgKCqec=;
 b=ZD91BS/vq59GzNO6W8PDV+40D0VKsn7Uimf2A+xSaa7TcoU+Xib0pJLoQaeWorMiDs
 jUg4XVIlAK3FCRV2da59H68TTZ2hwBlEsQm4l9k0ijsNQ4qf7JIXoA4IdSVo8fYXH34z
 ynnj/yXBmt4LSCmiV2xe80Gxh23jtUKLNchDHbK+p9Psln4CL2/2R8PY8Gv5KovRl2xQ
 zr8tiRnCARaZUrCjbPqed2I8KL2GcIGcVnvLj3Sc2+gE/cD6TKEU9qDN03/sLTvRze8a
 gHZ2aSmfsyIZmVHDr8+s8Su9AbTod3dZC+/Lv8IWAksVbiUDN7+ljHGLWx/UMlufRrBf
 vKhw==
X-Gm-Message-State: APjAAAXNFnOrQkxbixbiKRinnFLXkgONrQTiyzkgrDMg6DHha/U4Lis8
 aYBF5reitHTgqQ7xbiNAJQX1qw==
X-Google-Smtp-Source: APXvYqzInt6vun+j0FgTvCzZgE64G8r5FnZIJCUzhgSn3I9mRb4MNe17FpTaF6NXjQE/3QErdk0tnw==
X-Received: by 2002:a17:90a:cb81:: with SMTP id
 a1mr75960186pju.81.1563813835901; 
 Mon, 22 Jul 2019 09:43:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i7sm31991149pjk.24.2019.07.22.09.43.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 22 Jul 2019 09:43:55 -0700 (PDT)
Date: Mon, 22 Jul 2019 09:43:54 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
Message-ID: <201907220942.69F916657@keescook>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
 <CAKv+Gu9bCuXxJ54WMt=GcsRhkbwn_jXnjwJGuopS-7V3dHipLw@mail.gmail.com>
 <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_094403_336578_890CD577 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 01:21:18PM +0100, Will Deacon wrote:
> On Wed, Jul 03, 2019 at 08:12:12PM +0200, Ard Biesheuvel wrote:
> > There was a lot of pushback against the use of refcount_t in the
> > beginning, given that the checked flavor was slower than unchecked
> > atomic_t, and IIRC, it was mainly the networking folks that opposed
> > it. So the whole idea is that the code performs as closely to atomic_t
> > as possible, which is why the code is simply the atomic_t asm
> > implementations, but with a -s suffix added to the arithmetic
> > instructions so they set PSTATE, and one or two conditional branch
> > instructions added.
> > 
> > Your approach is going to require one or two additional compare
> > instructions, increasing the instruction count. This may not matter on
> > fast OoO cores, but it probably will affect somebody's benchmark
> > somewhere.
> > 
> > However, I'd be in favour of switching to your code, since it is much
> > simpler and more maintainable, so if you spin it as a proper patch, we
> > can do some comparative analysis of the performance.
> 
> I'll post the patches after the merge window, but I've pushed them here in
> the meantime in case anybody gets a chance to take them for a spin:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=refcount/full

Can the last patch get split up a bit? There's the inlining move, then
there is the atomic_fetch*() changes. Putting that all in one patch
makes the series a bit harder to review.

(Also, what happened to the *_checked() variations?)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
