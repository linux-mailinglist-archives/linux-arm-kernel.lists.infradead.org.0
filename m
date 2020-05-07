Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0BD1C97BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lEQzpjhXs2EhZ5sFynAgPALRod1r14quAcGQk2f/E4=; b=q9vSQ10VWy3Fnj
	OXp2mrCcy0YwxK7+nSH5j+zORY1YYShj/smLbOGYsrOwq7zpAJKU6twQhPYtnckswE6joJX1i1n2D
	Z8xU9uRTAUOAcpR7Zc57bO3NM1n2Bee28YXpLLA33KW5eUE52ZwnOcSOt3UPO9mgKsSwN9pV+VhFA
	J1JnpJYv9mJp0NXEK+9iJVo8IiquE7MCGPgE3IRehqbqtKNXSfzGap88XquPoaDaezhQ472Hfd5Mg
	QaQPIvneUI0+9mtQMpt17SEd9vT010zMoYNV154f13aSCF3QBMa3Cd5V6JBInFmGMjCMZS+4HdPFy
	aCnUFfPNJbN/n3U8LMxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkKK-0000aF-Dh; Thu, 07 May 2020 17:28:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkHQ-0006SK-PL
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:25:55 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D5DF20A8B;
 Thu,  7 May 2020 17:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588872352;
 bh=9KNeEZ9yT61LM+tDy3iWpNwrPJvjApeusNann5XiEp0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gckFiA8AzP9avJzQvY6yESOfc83RkFITRA/qDCh+5xRpEdt2ex2XCTj9nRDBwrCoG
 SjtCKiR2H97ff3sIyo4x96aSg9yZXr4dKCX6/Uey61w+GHhSIzoikOjwWLhwL+x+7M
 6yU+OtbKfCh4eP5pFkIWOA7RjbqyZReb+B2m8EjA=
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Date: Thu,  7 May 2020 18:25:45 +0100
Message-Id: <158887040257.259348.5991230542535891850.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506195138.22086-1-broonie@kernel.org>
References: <20200506195138.22086-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102552_849065_1128F856 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Amit Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 20:51:27 +0100, Mark Brown wrote:
> This patch series adds support for protecting the kernel and vDSO with
> BTI including code compiled with the BPF JIT at runtime.
> 
> We build the kernel with annotations for BTI and then map the kernel
> with GP based on the support on the boot CPU, rejecting secondaries that
> don't have BTI support. If there is a need to handle big.LITTLE systems
> with mismatched BTI support we will have to revisit this, currently no
> such implementations exist.
> 
> [...]

Applied to arm64 (for-next/bti), thanks!

[01/11] arm64: Document why we enable PAC support for leaf functions
        https://git.kernel.org/arm64/c/717b938e22f8
[02/11] arm64: bti: Support building kernel C code using BTI
        https://git.kernel.org/arm64/c/92e2294d870b
[03/11] arm64: asm: Override SYM_FUNC_START when building the kernel with BTI
        https://git.kernel.org/arm64/c/714a8d02ca4d
[04/11] arm64: Set GP bit in kernel page tables to enable BTI for the kernel
        https://git.kernel.org/arm64/c/c8027285e366
[05/11] arm64: bpf: Annotate JITed code for BTI
        https://git.kernel.org/arm64/c/fa76cfe65c1d
[06/11] arm64: mm: Mark executable text as guarded pages
        https://git.kernel.org/arm64/c/67d4a1cd0976
[07/11] arm64: bti: Provide Kconfig for kernel mode BTI
        https://git.kernel.org/arm64/c/97fed779f2a6
[08/11] arm64: asm: Provide a mechanism for generating ELF note for BTI
        https://git.kernel.org/arm64/c/3a9b136c998f
[09/11] arm64: vdso: Annotate for BTI
        https://git.kernel.org/arm64/c/a6aadc28278a
[10/11] arm64: vdso: Force the vDSO to be linked as BTI when built for BTI
        https://git.kernel.org/arm64/c/5e02a1887fce
[11/11] arm64: vdso: Map the vDSO text with guarded pages when built for BTI
        https://git.kernel.org/arm64/c/bf740a905ffe

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
