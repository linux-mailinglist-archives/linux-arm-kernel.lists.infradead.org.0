Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CDD1A34DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 15:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ldhf5ViAN2gBGVu9u+wb10VOmx9BKVGVmdeMgR+umrY=; b=OZEFgDp2er6WXf
	ytTo7tqVja9Da7cwAAMl6g3XbpggY9QOdm2lC9zzJt1Ruc81IlVun4lsEJR8kaUJRiuNlNVkYAl2t
	4rQHK2pUZ77uW/ZZsrqOmrjZuGxO19BFDq5pPfmF4caxMVDQguZ3gobkh3qzA6OrbLfpU8vTRZjjD
	pEuWH/qGdjRNWJFmrTI1XU0uU5SS66Z9sLFkhsE+RnAPYVfYLXFLFP+9LrBddkISkRSZl4C0K/zBc
	WJuoVNDrih9jKwFrGq+lNbs/FYh4/cnBwjXAcb7G4MLsUgYQiQircXUo/ZtAnJ4CTQMWKsJGNB8pr
	rXGMpzOCRZ3WYYFxzNcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXCi-0007ls-K6; Thu, 09 Apr 2020 13:26:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXCb-0007lX-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 13:26:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62E882072F;
 Thu,  9 Apr 2020 13:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586438801;
 bh=cV6hSehyX6lw4Tv9+IglB58tggNYFJ6BalVHwJs8cI8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H9uzvWqkZoza1WwcQy6lLYj+vDp8hvrlgELwPMjzCUzfYJ5JZZHkeINQiHfngaRFe
 7WOLZlaXP9ZxF2dUO/OHweSokzXySPzG3A+GzKiIDeTCRFX6R5SSdhlywofkdfwzLU
 IdwaSKjwyHFZtTWRiPWDOJOI9+eAPT6vkZvZF0Jk=
Date: Thu, 9 Apr 2020 14:26:34 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
Message-ID: <20200409132633.GD13078@willie-the-truck>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
 <20200315183151.GE32205@mbp>
 <4914ad9c-3eaf-b328-f31b-5d3077ef272f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4914ad9c-3eaf-b328-f31b-5d3077ef272f@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_062641_820259_E2990A93 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-mips@vger.kernel.org,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo,

Sorry, I was on holiday when you posted this and it slipped through the
cracks.

On Mon, Mar 16, 2020 at 03:37:23PM +0000, Vincenzo Frascino wrote:
> > On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
> >> The vDSO library should only include the necessary headers required for
> >> a userspace library (UAPI and a minimal set of kernel headers). To make
> >> this possible it is necessary to isolate from the kernel headers the
> >> common parts that are strictly necessary to build the library.
> >>
> >> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
> >> code. This allows to replace the second isb() in __arch_get_hw_counter()
> >> with a fake dependent stack read of the counter which improves the vdso
> >> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
> >> 100 iterations.
> > 
> > The subject seems to imply a non-functional change but as you read, it
> > gets a lot more complicated. Could you keep the functional change
> > separate from the header clean-up, maybe submit it as an independent
> > patch? And it shouldn't go in without Will's ack ;).
> > 
> 
> It is fine by me. I will repost the series with the required fixes and without
> this patch. This will give to me enough time to address Mark's comments as well
> and to Will to have a proper look.

Please can you post whatever is left at -rc1? I'll have a look then, but
let's stick to just moving code around rather than randomly changing it
at the same time, ok?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
