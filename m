Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428C11C6EAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKrwEj0p4msWCd+vAaOHEeekO7p41iclw15zG5Pszh0=; b=AonLEi5T3TClcL
	7bef8OqI64FeiGqyx1q/aiA/YCzdYejUE7weAGreRh0bkJq5p34KLC+eMhojSFHSUf1F30wHbY75t
	PxONTco4zlMFbZVSOELAwrVLYsMTdo67m7AMy0KkiuhJsr8pp3ETcFoT5eGfk0VYFV6gqQLaOHgqq
	3ossws9QHnndZtfcg5Z5APBZNukyt+Pnoc1umrdRHhpyx0xQuABPWbyTEm6jbFuXOvk1pl/0cSGws
	8ceW7BklTvKADiKDkXWsdN9wTloulVyP7geEW9fEfRx7pUNNTUJZlCm3TUDlq9ritmjoBBMSeKVnF
	cLzJ1sP0SiD45QhRsDUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHXl-0003NH-0c; Wed, 06 May 2020 10:44:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHXd-0003Lf-1i
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:44:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87C1B206B8;
 Wed,  6 May 2020 10:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588761880;
 bh=R4oDh1JNBKwNmv8buFb+tjw5BVnKfUttIGjk1ipMKeY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r488l/qgml8kF5PEtBUWZlF3u+xseTrLaWZEhGQc2u4iaQcYTbk8KcSROyzpxTgm4
 4seZ/sIFO7g38xulvXWVZfVeqf3GCu/LnPrerY0p1+BwGu3b+qRO3FCw8qwLWcXmKd
 6oai+TmHRtaT+B+4N2m+KL0dnk+GZ3g31VefQX0Y=
Date: Wed, 6 May 2020 11:44:36 +0100
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] arm64: atomics: Fix the issue on xchg when switch to
 atomic instruction
Message-ID: <20200506104435.GB8043@willie-the-truck>
References: <1588669355-38741-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200505091503.GC16980@willie-the-truck>
 <a48b7408-adb4-08f2-129b-f71e1c79db5a@hisilicon.com>
 <20200506075352.GE7021@willie-the-truck>
 <90dde2e8-ea11-fa7b-1a44-4d357a61cd66@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90dde2e8-ea11-fa7b-1a44-4d357a61cd66@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_034441_131785_D440672D 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Yuqi Jin <jinyuqi@huawei.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 06:39:16PM +0800, Shaokun Zhang wrote:
> Apologies for my noise, you are right and it's my mistake.

No need to apologise, but thanks for letting me know.

> On 2020/5/6 15:53, Will Deacon wrote:
> > On Wed, May 06, 2020 at 03:00:39PM +0800, Shaokun Zhang wrote:
> >> On 2020/5/5 17:15, Will Deacon wrote:
> >>> On Tue, May 05, 2020 at 05:02:35PM +0800, Shaokun Zhang wrote:
> >>>> From: Yuqi Jin <jinyuqi@huawei.com>
> >>>>
> >>>> Since commit addfc38672c7 ("arm64: atomics: avoid out-of-line ll/sc atomics"),
> >>>> it has provided inline implementations of both LSE and ll/sc and used a static
> >>>> key to select between them, which allows the compiler to generate better
> >>>> atomics code.
> >>>> However, xchg still uses the original method which would fail to switch to
> >>>> the atomic instruction correctly, Let's fix this issue.
> >>>
> >>> Please can you elaborate on the failure mode? The current code looks alright
> >>
> >> When enable CONFIG_ARM64_LSE_ATOMICS, xchg is failed to switch to swp instruction
> >> or dynamic replacement instructions are not seen.
> >>
> >> We do some tests on the copy of xchg_tail,:
> >> u32 xchg_tail_my(struct qspinlock *lock, u32 tail)
> >> {
> >>         return (u32)xchg_relaxed(&lock->tail,
> >>                                  tail >> _Q_TAIL_OFFSET) << _Q_TAIL_OFFSET;
> >> }
> >> and the asm code is as follows:
> >>
> >> ffff80001015b050 <xchg_tail_my>:
> >> ffff80001015b050:       a9be7bfd        stp     x29, x30, [sp, #-32]!
> >> ffff80001015b054:       910003fd        mov     x29, sp
> >> ffff80001015b058:       a90153f3        stp     x19, x20, [sp, #16]
> >> ffff80001015b05c:       2a0103f3        mov     w19, w1
> >> ffff80001015b060:       aa0003f4        mov     x20, x0
> >> ffff80001015b064:       aa1e03e0        mov     x0, x30
> >> ffff80001015b068:       97fd07ee        bl      ffff80001009d020 <_mcount>
> >> ffff80001015b06c:       53107e61        lsr     w1, w19, #16
> >> ffff80001015b070:       91000a83        add     x3, x20, #0x2
> >> ffff80001015b074:       f9800071        prfm    pstl1strm, [x3]
> >> ffff80001015b078:       485f7c60        ldxrh   w0, [x3]
> >> ffff80001015b07c:       48027c61        stxrh   w2, w1, [x3]
> >> ffff80001015b080:       35ffffc2        cbnz    w2, ffff80001015b078 <xchg_tail_my+0x28>
> >> ffff80001015b084:       53103c00        lsl     w0, w0, #16
> >> ffff80001015b088:       a94153f3        ldp     x19, x20, [sp, #16]
> >> ffff80001015b08c:       a8c27bfd        ldp     x29, x30, [sp], #32
> >> ffff80001015b090:       d65f03c0        ret
> > 
> > This should get patched at runtime, but you're saying that's not happening?
> > 
> 
> My mistake, I didn't check the runtime carefully.

Good to hear there's not a bug, but if you see a performance benefit from
using the static-key for xchg() then I'd obviously be open to changing it
over as well.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
