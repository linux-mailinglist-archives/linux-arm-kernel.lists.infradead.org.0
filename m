Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D0713A300
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nzf/paTyp3N9xHn2K+6qh4whcepPn1LGtBGXG2IMR5U=; b=aIwUWJtnYNMxu/
	e+58E2g/Q6nhxJybIUl+95/+Xgpk44sGBnJ9YQ2fqBz2seO2+7w4/50NqT931P5lS0/+HvqiDgPDq
	bfztpRPXAPc09eZ9KF2NcfSUTOAkkFG9rguz4GdrbT3vlsczE6sqiCBNF/XftArsJ75R7kP1NeUkR
	YeyOLbddtM/YRh7r1tGbxpb/67xC9/Z5xKBAS7ZhUZod3FD45xkcA7hP5olEx9V5eNkDha17jGrQU
	DF+cAc0AUHTTikH7yUBj50czWoOR8S8fkwpG2vNv2dRmeNsZk2aT2UTB3InT3Fq88prL8R1lxP0kH
	Y03ra2i/9JjKVSTTRxrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHan-0004tX-9Z; Tue, 14 Jan 2020 08:30:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHae-0004rz-9q
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 08:30:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so11232764wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 00:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e3nJMNyQkRtEjdVgCzBtNOhrTK9Iwh6sRszLOAZjqV8=;
 b=lftlN0YN81jg+wU6o3PcZ1f6aB05s504QexQgbl6VotS/qHC/jZwzm+AFVg6KUDmL3
 AyvTSo/9IV0yZm2dYQH+VeZuGJPBaaJYcu+uJMXSFgVl/MCHWBh0Hamsf9/3NqrttRii
 5E885wk++DjZKUtMt0Tj/q4ZsQbhrlzB6wD5g+u73IVROhjOpB1fUmu5K6D5NrCOLkSO
 Jq+Up8kkeYGJArUbcZctgJGp0Cj+PXA86bv80SyOBGaCxxhqhLWKPwcf6d2LQYJbdH8P
 hNlgBLfTysnwDX5UxMwR0wkGZk4VGIDK6hLFPnqc4/zAI7V5zk8DnOIjcrFAwo5E3lXW
 TijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e3nJMNyQkRtEjdVgCzBtNOhrTK9Iwh6sRszLOAZjqV8=;
 b=bK5YUPmwJIzfENOGZB2qz/KR+/o2GJHyjyTuxo2RpBnfHy5oXvuHAqlU3n/Brk7bdc
 7D5N0Z1BeBpLoL3aZMTW8Xneisvf0qjSL7O0vGw+au41q4PnZY3WgV3A5/UvMab1NzpX
 qmSbLISPW25L35loW0+nmzSacYjOXg6fwZbXsp1l4EcNudivXZsH6RMpfIB1BRfJuG4h
 1m+6pgFtQDzK62QaZymFw8HHHMumHdAcGAss8bGR9TgtO5jWaY2lzBDN457Sv653H9cu
 ri8g+Ak50FkCBU/L2cuBravdjlWMiJoznEdNuo0AKbD7HHCmf2n+oXzgq/ZpHAp6hfFA
 e47A==
X-Gm-Message-State: APjAAAU6GPQ4BafqMJ+0HURsmnvfa0C94d5phJxLO47QzpNsacaNPlgP
 Yq1GXmIJ528Vxp+RdMVB9wmO/QgQBs/IKolivUuWNw==
X-Google-Smtp-Source: APXvYqwyaD8rx5KGxPXA7tMRPkvwrH/FIPWObNwSRAE6tAohM/fc3nWDL/OOZzuG/nAMcBddoz4i8mSstsea6HYgdUs=
X-Received: by 2002:a5d:5345:: with SMTP id t5mr24518975wrv.0.1578990616356;
 Tue, 14 Jan 2020 00:30:16 -0800 (PST)
MIME-Version: 1.0
References: <20200113233023.928028-1-suzuki.poulose@arm.com>
In-Reply-To: <20200113233023.928028-1-suzuki.poulose@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 14 Jan 2020 09:30:05 +0100
Message-ID: <CAKv+Gu96ObCumQmsc_O=7-AkfTghe7KZEjrsaSpWU0jnDFiv4w@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] arm64: Fix support for no FP/SIMD
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_003020_374053_505A1176 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 at 00:30, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> This series fixes the support for systems without FP/SIMD unit.
>
> We detect the absence of FP/SIMD after the SMP cpus are brought
> online (i.e, SYSTEM scope). This means, we allow a hotplugged
> CPU to boot successfully even if it doesn't have the FP/SIMD
> when we have decided otherwise at boot and have now advertised
> the ELF HWCAP for the userspace. Fix this by turning this to a
> BOOT_RESTRICTED_CPU_LOCAL feature to allow the detection of the
> feature the very moment a CPU turns up without FP/SIMD and also
> prevent a conflict after SMP boot.
>
> The COMPAT ELF_HWCAPs were statically set to indicate the
> availability of VFP. Make it dynamic to set the appropriate
> bits.
>
> Also, some of the early kernel threads (including init) could run
> with their TIF_FOREIGN_FPSTATE flag set which might be inherited
> by applications forked by them (e.g, modprobe from initramfs).
> Now, if we detect the absence of FP/SIMD we stop clearing the
> TIF flag in fpsimd_restore_current_state(). This could cause
> the applications stuck in do_notify_resume() looping forever
> to clear the flag. Fix this by clearing the TIF flag in
> fpsimd_restore_current_state() for the tasks that may
> have it set.
>
> This series also categorises the functions dealing with fpsimd
> into two :
>
>  - Call permitted with missing FP/SIMD support. But we bail
>    out early in the function. This is for functions exposed
>    to the generic kernel code.
>
>  - Calls not permitted with missing FP/SIMD support. These
>    are functions which deal with the CPU/Task FP/SIMD registers
>    and/or meta-data. The callers must check for the support
>    before invoking them.
>
> See the last patch in the series for details.
>
> Also make sure that the SVE is initialised where supported,
> before the FP/SIMD is used by the kernel.
>
> Tested with debian armel initramfs and rootfs. The arm64 doesn't
> have a soft-float ABI, thus haven't tested it with 64bit userspace.
>
> Applies on linux-aarch64 for-next/core
>
> Changes since v2:
>  - Rebase on to for-next/core, resolved conflict with the E0PD
>    handling changes
>  - Address comments from Catalin
>      - Remove warnings from static functions
>      - Add WARN_ON in may_use_simd() if called before initializing
>        capabilities.
>  - Add "active" hook for FP regset
>  - Remove dangerous WARN_ON from KVM, replaced with an additional
>    check to make sure that the FP/SIMD is always trapped.
>  - Added tags from Catalin, Marc
>
> Suzuki K Poulose (7):
>   arm64: Introduce system_capabilities_finalized() marker
>   arm64: fpsimd: Make sure SVE setup is complete before SIMD is used
>   arm64: cpufeature: Fix the type of no FP/SIMD capability
>   arm64: cpufeature: Set the FP/SIMD compat HWCAP bits properly
>   arm64: ptrace: nofpsimd: Fail FP/SIMD regset operations
>   arm64: signal: nofpsimd: Handle fp/simd context for signal frames
>   arm64: nofpsmid: Handle TIF_FOREIGN_FPSTATE flag cleanly
>

For the series,

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>


>  arch/arm64/include/asm/cpufeature.h |  5 +++
>  arch/arm64/include/asm/kvm_host.h   |  2 +-
>  arch/arm64/include/asm/simd.h       |  8 +++-
>  arch/arm64/kernel/cpufeature.c      | 67 +++++++++++++++++++----------
>  arch/arm64/kernel/fpsimd.c          | 30 +++++++++++--
>  arch/arm64/kernel/process.c         |  2 +-
>  arch/arm64/kernel/ptrace.c          | 21 +++++++++
>  arch/arm64/kernel/signal.c          |  6 ++-
>  arch/arm64/kernel/signal32.c        |  4 +-
>  arch/arm64/kvm/hyp/switch.c         | 10 ++++-
>  10 files changed, 121 insertions(+), 34 deletions(-)
>
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
