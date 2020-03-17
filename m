Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F97A188D74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 19:49:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X49aNNW7RQvaoC6qahY6MjJtCYwE4NQEcB/DgovooSE=; b=SU4LWQE9+fQ2ce
	EPjdHwiACpjeKRfBt3yLSqxUjLss/uveSuenkzTnGCqLcWVQwv471aUj7EfqMW2C0kp4gh0DUrxXR
	A7XcRXGp2XmA/ffi8Yoaykv1QvG0iGdHcoUfq1ooxX0+Gc3hSqQi0OVa5dr8P8uP4wiE3U+Q6tX+D
	gzVObo4kHhJd3UNZ4JzW+EYK8WN3UPYfndQStxDJpTyFMENkK2S2Laomk193edio3CiM/SSBw2AIc
	XH5l1dpqK6rSdduovhLvUqiz7ozXaUNs5Hz9rP9ogAA2Z7tOtBRmJi2B0ZVE9KaBfwOkoD++Rc+UZ
	FtFMhyj+RiX8Sry5x1mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEHHS-00061N-Nz; Tue, 17 Mar 2020 18:49:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEHHK-000612-J0
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 18:49:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5557831B;
 Tue, 17 Mar 2020 11:49:25 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5F9F53F67D; Tue, 17 Mar 2020 11:49:22 -0700 (PDT)
Date: Tue, 17 Mar 2020 18:49:20 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200317184920.GI632169@arrakis.emea.arm.com>
References: <20200316165055.31179-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316165055.31179-1-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_114926_670095_B13A080A 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 04:50:42PM +0000, Mark Brown wrote:
> Daniel Kiss (1):
>   mm: smaps: Report arm64 guarded pages in smaps
> 
> Dave Martin (11):
>   ELF: UAPI and Kconfig additions for ELF program properties
>   ELF: Add ELF program property parsing support
>   arm64: Basic Branch Target Identification support
>   elf: Allow arch to tweak initial mmap prot flags
>   arm64: elf: Enable BTI at exec based on ELF program properties
>   arm64: BTI: Decode BYTPE bits when printing PSTATE
>   arm64: unify native/compat instruction skipping
>   arm64: traps: Shuffle code to eliminate forward declarations
>   arm64: BTI: Reset BTYPE when skipping emulated instructions
>   KVM: arm64: BTI: Reset BTYPE when skipping emulated instructions
>   arm64: BTI: Add Kconfig entry for userspace BTI
> 
> Mark Brown (1):
>   arm64: mm: Display guarded pages in ptdump

I provisionally pushed this patches to linux-next (and arm64
for-next/bti).

I'm not sure whether they'll make it into 5.7 yet (still missing acks on
the fs/* changes) but at least they'll get some wider exposure,
especially as they go outside arch/arm64/.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
