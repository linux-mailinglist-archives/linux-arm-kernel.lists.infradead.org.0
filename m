Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B26D1626DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukH1bIa1WvapyGbqdEgxfdNQjwLxR4ZdR9c2QElteYU=; b=EyPGw7xKvNn8ZW
	lMFdOMMTI402F+6AcIC4Z2d2fHZOrLqlKuoPHPXyhnQcR0NvhBQC3nTzwS0S9Zuu1Iy44UfSFF0dk
	g/kzjJPEpDo6xNuWYmy4Nf44eFz0GdJt6B/QrZqtYWBANF3a62XDblCNU4BDX9A0Ptsp86BMpyg7x
	loLgpDHCuKwk0a+704KTi4te5J2AJrUXXcKoRImEoZQaOu1mh2aDtTg+b6b0+6fZtCSraPZGPOZ3X
	4kP8yr0+rJA8z5zjIHDyFomqOhfyW2LvAAqZBeAE/6j118qDOfu54Lu03fWdpbYVbk6SBgDc0e6YY
	MPePgBaQxU6T8J4v10nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42di-0003dl-4x; Tue, 18 Feb 2020 13:10:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42dS-0003dU-I5
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:09:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFC6E22B48;
 Tue, 18 Feb 2020 13:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582031398;
 bh=iZo3lTLBwRcWtzxFLrZ/PPJnn8uh6OcUqPq9jjsb7JA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q4yfUNd2ekp8WaDMi4EHhuP7kkTy6FeIq4j9nZhBSiGeI8FgwgthCX44opkrJF105
 r4fwPJMIXRjX5aWMGOZ97P6mKlv1dh92/HCk5v15p/vsOio01JKmrqIBfjC29HV/3n
 D217w48s1M8X0uDmhykbLBtSmKpfLN6cAy+gur7U=
Date: Tue, 18 Feb 2020 13:09:53 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
Message-ID: <20200218130953.GD20212@willie-the-truck>
References: <20200218124456.10615-1-broonie@kernel.org>
 <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_050958_624383_9DC20F1A 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 12:56:52PM +0000, Marc Zyngier wrote:
> I'd really appreciate it if you could send these as a series, instead of
> an isolated patch every other day.

Same for the non-KVM parts, please :)

I *think* the current ones to track are:

[PATCH v2] arm64: sdei: Annotate SDEI entry points using new style annotat
[PATCH 1/2] arm64: crypto: Modernize some extra assembly annotations
[PATCH 2/2] arm64: crypto: Modernize names for AES function macros
[PATCH] arm64: entry: Annotate ret_from_fork as code
[PATCH] arm64: head: Annotate stext and preserve_boot_args as code
[PATCH 1/3] arm64: entry-ftrace.S: Convert to modern annotations for assem
[PATCH 2/3] arm64: ftrace: Correct annotation of ftrace_caller assembly
[PATCH 3/3] arm64: ftrace: Modernise annotation of return_to_handler
[PATCH] arm64: vdso: Convert to modern assembler annotations
[PATCH] arm64: vdso32: Convert to modern assembler annotations
[PATCH] arm64: entry: Annotate vector table and handlers as code
[PATCH] arm64: head.S: Convert to modern annotations for assembly function
[PATCH] arm64: kernel: Convert to modern annotations for assembly data
[PATCH] arm64: kernel: Convert to modern annotations for assembly function
[PATCH] arm64: entry: Additional annotation conversions for entry.S
[PATCH v2] arm64: kvm: Annotate assembly using modern annoations
[PATCH v6 00/11] arm64: Branch Target Identification support
[PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs

but it's a bit much to follow, especially as there are three trees
involved in the above!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
