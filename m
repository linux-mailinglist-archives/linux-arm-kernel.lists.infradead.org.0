Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6765C167E6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:23:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Noc3wNl8JZL/9RKKXCiijPCr60fj7uppYdwC9shRloo=; b=MZzz6g8qscwADl
	mqIxiEARVFyYDjcKUt3xY6hjPZvJfRbTZ828U3qcOVTykP5DLA+VuItK1CwrTiulOnngpKw8XxmWZ
	g2keoOYgpjd0yprWzsEqm4wd5lIqKBgPJdxEzKAxM7k5vYrsDeqj5MrHlVcgbTpQg5+27kNnd0TmB
	sOQLkOHoR8zkZug92ZFNJ4gZyK+ucMj85xQqCjMqrZcPFAtXaz4exmUZGwgK9fwGjgeq3GmX+O7iX
	jgeVYZQlmPapctppa+/fpj9JVeiJNCwPcuJnqBnaBRV+J6JffGb4NbPpGP4GJpIqoj7mKfZPkfB2n
	1Bj3Dr/aeNS1LAMJ1CzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j58Gg-0006rT-1K; Fri, 21 Feb 2020 13:22:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j58GX-0006r7-Ei
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:22:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id u6so2078616wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 05:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LupOIHAKWSc8bkPWCrjlMuaWyu078T4CP+r5z8z8lJw=;
 b=s67nz8XOQsK7dOajpOx9UkoHZkuXQx1Us5oc83pDz9jdM9eoGRMebWb3SjpoJxVDfP
 VaCqM4aocUt4fbTFy76Eu/uOFO7wxKsne/xSkWCKAjtG8/eJ5+hpKxXIXUovmrCd6FfB
 fgQ/JIfIvFVKPgF74lKEEuRfxaHLjBIlRHU+/Wzh+QhlRgs9bSFummuJqHdKHmNNRrFM
 O9gOsWE31FME6zdqe3C46J3SCeVXxc3Oesmth1taui2RytoEtHcD6Lgp0XxheKp3fKNU
 Z1j+mx2ClQDmgjuuEmHjr5Bgn0QMh2Mb08paY2Knp/mi1s+yzCth0jrmgj2WYmLqmwZd
 SU6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LupOIHAKWSc8bkPWCrjlMuaWyu078T4CP+r5z8z8lJw=;
 b=Rslj+I1fXGr9yX34r8Br8CG2CJSw8FdrtVDNSwJcTXHWheTV246TNy8jkHACtcBwQI
 xaWh8XGoAhXFRaHqO4w+D8urcoYj8RsWuPoq0ciAqirMZ3fhlQkTSQNUihidIMVLUFAK
 tvYrZzIAwIXBqz5dAd6kDiyWhKCrVU8TY0yT2kWcrypeE3h/gZHk52lv19n/0i0rImin
 0Mw+XgzJi0UgpXRz35F+OO5mLP6yhTL02H57h1/+kVPNp0elmdow3q5or1TbwiRDG6v3
 Gcv1pfZPtEK9SpxjZwAq0g0BlNtoa9HLLQ5ZUPISerC2AUyf+KDjWG2e70+cPX6sfRol
 p5vQ==
X-Gm-Message-State: APjAAAVP04tFkXQnP+oJ5IKt5mteqQHPCsSzcmjEhyXcP7Q2GQSjitOn
 u51yAI0/fOMsjlvkc9cSpFBgl5ma1Y1mK/S7or1sww==
X-Google-Smtp-Source: APXvYqwtx0llCvX7Lk3O5i+7ghJ0cy4o35oIbItATSsMNzzvLQiIvd1i9jgdalyYHgt2MTpujEj8MOa63okIMZZ/F+I=
X-Received: by 2002:adf:8564:: with SMTP id 91mr50038536wrh.252.1582291367956; 
 Fri, 21 Feb 2020 05:22:47 -0800 (PST)
MIME-Version: 1.0
References: <20200220165839.256881-1-james.morse@arm.com>
 <20200220165839.256881-4-james.morse@arm.com>
 <20200221131328.GA13460@willie-the-truck>
In-Reply-To: <20200221131328.GA13460@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 21 Feb 2020 14:22:36 +0100
Message-ID: <CAKv+Gu_ORoUi046thZ4D7wUCzPa9YLpGcYvm+FLBpRPTHwrgmw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: Ask the compiler to __always_inline functions
 used by KVM at HYP
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_052249_499494_BEB37DFC 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 kvmarm <kvmarm@lists.cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 at 14:13, Will Deacon <will@kernel.org> wrote:
>
> On Thu, Feb 20, 2020 at 04:58:39PM +0000, James Morse wrote:
> > KVM uses some of the static-inline helpers like icache_is_vipt() from
> > its HYP code. This assumes the function is inlined so that the code is
> > mapped to EL2. The compiler may decide not to inline these, and the
> > out-of-line version may not be in the __hyp_text section.
> >
> > Add the additional __always_ hint to these static-inlines that are used
> > by KVM.
> >
> > Signed-off-by: James Morse <james.morse@arm.com>
> > ---
> >  arch/arm64/include/asm/cache.h      | 2 +-
> >  arch/arm64/include/asm/cacheflush.h | 2 +-
> >  arch/arm64/include/asm/cpufeature.h | 8 ++++----
> >  arch/arm64/include/asm/io.h         | 4 ++--
> >  4 files changed, 8 insertions(+), 8 deletions(-)
>
> Acked-by: Will Deacon <will@kernel.org>
>
> It's the right thing to do, but if this stuff keeps trickling in then
> we should make CONFIG_OPTIMIZE_INLINING depend on !ARM64 because seeing
> "__always_inline" tells you nothing about /why/ it needs to be there and
> it's hard to know if/when you can remove those annotations in future.
>

We might need to follow the same approach as we took for the EFI stub,
and create a special __kvm_hyp symbol namespace so that we can
carefully control which routines from the kernel proper it has access
to.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
