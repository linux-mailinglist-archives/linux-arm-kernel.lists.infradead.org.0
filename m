Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564E31DD10D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qu5Emx5xp6hnAKt/asuSH7OQeajGu1jzQzCbouOPutI=; b=PWqoHizHr9YHr7
	kSqZfpzeJ7+W+jGwKFu6r6rNZSCB9WGSxSPhRS5pgesIiPIorMs+tsPXaYoA1FV+OvqvjO4qDraOH
	pH7G3E7GCo/kZXmSYulfySj2v/VaTOnrXh9CMQeGBoEgScoRpFOHgl+BQMo++eVYjsj3TYzJfhP2H
	JsO6Etlypg7rN/ZbyQf7PS/XxARUrOCCzLJw8+QB0Cdi7p5uXMKEk6Wy068MtGEgvss4/yr9dREKy
	eyCVQRFFkUdaoaqBaO8RO/j6KOu7tuDjdd0zmvVi3fZ0vkUlJXhcXGd1JPHyccS/8oObo572mwN2j
	H4C481gNbTnOJlPH712g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmzg-0002km-QN; Thu, 21 May 2020 15:20:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmzP-0001sk-Eb
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:20:09 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABAE320826;
 Thu, 21 May 2020 15:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590074407;
 bh=f1nY7jMdmh7McepRPv1Zarzh/Gloc+JyYZU3lokNqRw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=S1X0EAO5sYAiIS6QlUdEH52gOZOm948HKqbAmgyDoW3t0QgRZKNjh7F7ocqqR55sS
 bldU9fFYFue5Ov5s0b/tw80ZCMdwoccF2LmPyw19HXmdsqXnYKe+K1Hx5p0h3VvYpr
 hxBsW8VxOT+dmePNZna11IYbp9hZMN65jdcmOt+s=
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V4 00/17] arm64/cpufeature: Introduce ID_PFR2, ID_DFR1,
 ID_MMFR5 and other changes
Date: Thu, 21 May 2020 16:19:58 +0100
Message-Id: <159007243559.201193.1705879548179051424.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_082007_560309_B8A27259 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 15:10:37 +0530, Anshuman Khandual wrote:
> This series is primarily motivated from an adhoc list from Mark Rutland
> during our previous ID_ISAR6 discussion [1]. The current proposal also
> accommodates some more suggestions from Will and Suzuki.
> 
> This series adds missing 32 bit system registers (ID_PFR2, ID_DFR1 and
> ID_MMFR5), adds missing features bits on all existing system registers
> (32 and 64 bit) and some other miscellaneous changes. While here it also
> includes a patch which does macro replacement for various open bits shift
> encodings for various CPU ID registers. There is a slight re-order of the
> patches here as compared to the previous version (V1).
> 
> [...]

Applied to arm64 (for-next/cpufeature), thanks!

[01/17] arm64/cpufeature: Add explicit ftr_id_isar0[] for ID_ISAR0 register
        https://git.kernel.org/arm64/c/2a5bc6c47bc3
[02/17] arm64/cpufeature: Drop TraceFilt feature exposure from ID_DFR0 register
        https://git.kernel.org/arm64/c/1ed1b90a0594
[03/17] arm64/cpufeature: Make doublelock a signed feature in ID_AA64DFR0
        https://git.kernel.org/arm64/c/e965bcb06256
[04/17] arm64/cpufeature: Introduce ID_PFR2 CPU register
        https://git.kernel.org/arm64/c/16824085a7dd
[05/17] arm64/cpufeature: Introduce ID_DFR1 CPU register
        https://git.kernel.org/arm64/c/dd35ec070457
[06/17] arm64/cpufeature: Introduce ID_MMFR5 CPU register
        https://git.kernel.org/arm64/c/152accf8476f
[07/17] arm64/cpufeature: Add remaining feature bits in ID_PFR0 register
        https://git.kernel.org/arm64/c/0ae43a99fe91
[08/17] arm64/cpufeature: Add remaining feature bits in ID_MMFR4 register
        https://git.kernel.org/arm64/c/fcd6535322cc
[09/17] arm64/cpufeature: Add remaining feature bits in ID_AA64ISAR0 register
        https://git.kernel.org/arm64/c/7cd51a5a84d1
[10/17] arm64/cpufeature: Add remaining feature bits in ID_AA64PFR0 register
        https://git.kernel.org/arm64/c/011e5f5bf529
[11/17] arm64/cpufeature: Add remaining feature bits in ID_AA64PFR1 register
        https://git.kernel.org/arm64/c/14e270fa5c4c
[12/17] arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR0 register
        (no commit info)
[13/17] arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR1 register
        (no commit info)
[14/17] arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR2 register
        (no commit info)
[15/17] arm64/cpufeature: Add remaining feature bits in ID_AA64DFR0 register
        (no commit info)
[16/17] arm64/cpufeature: Replace all open bits shift encodings with macros
        (no commit info)
[17/17] arm64/cpuinfo: Add ID_MMFR4_EL1 into the cpuinfo_arm64 context
        https://git.kernel.org/arm64/c/858b8a8039d0

Note that Suzuki had comments on 12-16, so assume you'll respin those (I fixed
up the trivial comments on earlier patches myself).

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
