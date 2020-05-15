Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307A41D4BEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TuuzWEkYL75pscLo8mZpT8G4n4HYJXElEbOvNQV8Mdk=; b=HS/qZFZLCDk0Zm
	cMrsKHniuomJp07SoOYrdIFjQ68D93AqlLpmC2mfdAt308euMeSm7EWZvz7RpaAcPMwmhdHVZ98dZ
	TQJmeNSwHFK6zvQ44Voy6diUzvSca8VD6lkj0srhlGpk4hQlOhNxU8DEdwUCqIzB2MtYpExThMWIo
	2EnRhw59wvLTX+rn3sZQ0JzTgkcZCFWp4PPdWbkGYmAngJ2o44F4gXUJFZegmowxlqRXBtU8G18lY
	ijieSz1tlqnmLYkg3Vm44xWxZO/cWmRmM33NLObV5bZ29tAYZRIt/Q9aWYmtsbceiU4StimKE1Rxj
	GrOvWjol1I0U9mlw/png==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY40-0001uw-4g; Fri, 15 May 2020 10:59:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY3O-0001fN-EB
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:59:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id u188so2179975wmu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nz5T7Ti8J6fFByDN7jOu8omjWEMvQxD/kfVl2PcIzCU=;
 b=T+jG2gdoHAiFMGlPBUlnH03zcMMorDiITXPXucXkn/GIGjnkQO+jeBVCZ2a5wadM5r
 moE4Sx4biP9FnWYkKowwtGpFns0jtPDK9cYB0VrB6HSWaAHHSifPvmDwq6pKLyoRtvag
 MaKowrZyO66h/EL1u/mBdDVvZDI+jlSkCYyd7p+rN7LhxzUUqiBzFik/3rAwwMeCUDHb
 YCsAzblgWg8QrIGJzlpH1dNC7EklX67Qs4MW8egbDagsgAmbA+bYX2erCDO5+pRXPw3P
 pXuGoQj5cFaYfmwHWU6Klmm/PsF4wGtEeRSQ9U6AVPZBz9NZ9koDinlhv96IKplT7LhI
 Omrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nz5T7Ti8J6fFByDN7jOu8omjWEMvQxD/kfVl2PcIzCU=;
 b=OEOwNWjmRpvYoZ8SWcDlzxsgbIMh+FB1nwF/4FHqArGUtiS+5aM6LpBI18csLH4XoT
 6LXnZcwMMfogBfzvLYAlq4DuKtzcOvj920+xJmvDeX0ypH6bR8g+dUQdYcBUMD9x3XoJ
 MPYMFrwTG02iilGiTxeNl04Y/VSNew1BQGf/N29c/7qnCeafqLxz5qc3+4GFNcT6fbMS
 w8vRudfi7pNwlStq/d90hfT3yKYpSsi6lUFNK6aNBUShQSDXbWJDS2HBB2wS+hh5wcwa
 LkOrwK5euOlYROZe58UYXF+Lz7TjYrBZpkIrgC0xbdhGuDQMYjPbONCXArbJU9MlmVcM
 wscg==
X-Gm-Message-State: AOAM531xARfPwZcosafe74THMrFRcjQvA8LYAIS0frQmikXeKpo4sAPo
 5PvtXu0+WUAszD/LEoanc/aMiA==
X-Google-Smtp-Source: ABdhPJxWMYThFcLucYF0IjewRo2gtUyqiGrfOuZ3Lj0ioN+1L/iHTKXER/IB0GkMggNvnKrZEH6YSw==
X-Received: by 2002:a05:600c:2dd0:: with SMTP id
 e16mr3626689wmh.121.1589540333968; 
 Fri, 15 May 2020 03:58:53 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d11b:f847:8002:7411])
 by smtp.gmail.com with ESMTPSA id y3sm3005132wrm.64.2020.05.15.03.58.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 03:58:52 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v2 00/14] Split off nVHE hyp code
Date: Fri, 15 May 2020 11:58:27 +0100
Message-Id: <20200515105841.73532-1-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035858_604546_96A51B66 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Refactor files in arch/arm64/kvm/hyp to compile all code which runs in EL2
under nVHE into separate object files from the rest of KVM. This is done in
preparation for being able to unmap hyp code from EL1 and kernel code/data
from EL2 but has other benefits too, notably:
 * safe use of KASAN/UBSAN/GCOV instrumentation on VHE code,
 * cleaner HVC API,
 * no need for __hyp_text annotations.

nVHE-specific code is moved to hyp/nvhe and compiled with custom build rules
similar to those used by EFI stub. Shared source files are compiled under both
VHE and nVHE build rules. Where a source file contained both VHE and nVHE code,
it is split into a shared header file and two C source files. This is done one
file per commit to make review easier.

All nVHE symbols are prefixed with "__kvm_nvhe_" to avoid collisions with VHE
variants (also inspired by EFI stub). Since this prefixes unresolved symbols
too, image-vars.h contains a list of kernel symbol aliases where nVHE code
still refers to kernel proper. The list grows fairly large as the patch series
progresses and code is moved around, but at the end contains 17 symbols. These
remaining dependencies on kernel proper will be further reduced in the future.

No functional changes are intended but code was simplified whenever the
refactoring made it possible.

Tested by running kvm-unit-tests on QEMU 5.0 with VHE/nVHE and GIC v2/v3.

Dual compilation of code shared by VHE/nVHE increase the size of the kernel.
Bloat-o-meter vmlinux diff shows an increase of 21 KB on the ELF symbol level.
Size of Image.gz is up by 10 KB; size of Image is unchanged, presumably due
to ELF section alignment.

This is based off Fuad Tabba's patch series "KVM: arm64: Tidy up arch Kconfig
and Makefiles". Available in branch 'topic/el2-obj-v2' of git repo:
  https://android-kvm.googlesource.com/linux

Changes v1 -> v2:
 * change nVHE symbol prefix from __hyp_text_ to __kvm_nvhe_
 * rename __HYPERVISOR__ macro to __KVM_NVHE_HYPERVISOR__
 * use hcall jump table instead of array of function pointers
 * drop patch to unify HVC callers
 * move __smccc_workaround_1_smc to own file
 * header guards for hyp/*.h
 * improve helpers for handling VHE/nVHE hyp syms in kernel proper
 * improve commit messages, cover letter

-David

David Brazdil (14):
  arm64: kvm: Fix symbol dependency in __hyp_call_panic_nvhe
  arm64: kvm: Move __smccc_workaround_1_smc to .rodata
  arm64: kvm: Formalize hypcall ABI
  arm64: kvm: Add build rules for separate nVHE object files
  arm64: kvm: Build hyp-entry.S separately for VHE/nVHE
  arm64: kvm: Split hyp/tlb.c to VHE/nVHE
  arm64: kvm: Split hyp/switch.c to VHE/nVHE
  arm64: kvm: Split hyp/debug-sr.c to VHE/nVHE
  arm64: kvm: Split hyp/sysreg-sr.c to VHE/nVHE
  arm64: kvm: Split hyp/timer-sr.c to VHE/nVHE
  arm64: kvm: Compile remaining hyp/ files for both VHE/nVHE
  arm64: kvm: Add comments around __kvm_nvhe_ symbol aliases
  arm64: kvm: Remove __hyp_text macro, use build rules instead
  arm64: kvm: Lift instrumentation restrictions on VHE

 arch/arm64/include/asm/kvm_asm.h             |  29 +-
 arch/arm64/include/asm/kvm_emulate.h         |   2 +-
 arch/arm64/include/asm/kvm_host.h            |  12 +-
 arch/arm64/include/asm/kvm_host_hypercalls.h |  59 ++
 arch/arm64/include/asm/kvm_hyp.h             |  15 +-
 arch/arm64/include/asm/kvm_mmu.h             |  16 +-
 arch/arm64/include/asm/mmu.h                 |   7 -
 arch/arm64/kernel/cpu_errata.c               |   4 +-
 arch/arm64/kernel/image-vars.h               |  43 ++
 arch/arm64/kvm/arm.c                         |   6 +-
 arch/arm64/kvm/hyp.S                         |  18 +-
 arch/arm64/kvm/hyp/Makefile                  |  13 +-
 arch/arm64/kvm/hyp/aarch32.c                 |   6 +-
 arch/arm64/kvm/hyp/debug-sr.c                | 214 +-----
 arch/arm64/kvm/hyp/debug-sr.h                | 170 +++++
 arch/arm64/kvm/hyp/entry.S                   |   1 -
 arch/arm64/kvm/hyp/fpsimd.S                  |   1 -
 arch/arm64/kvm/hyp/hyp-entry.S               |  77 +--
 arch/arm64/kvm/hyp/nvhe/Makefile             |  42 ++
 arch/arm64/kvm/hyp/nvhe/debug-sr.c           |  77 +++
 arch/arm64/kvm/hyp/nvhe/switch.c             | 271 ++++++++
 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c          |  56 ++
 arch/arm64/kvm/hyp/nvhe/timer-sr.c           |  43 ++
 arch/arm64/kvm/hyp/nvhe/tlb.c                |  67 ++
 arch/arm64/kvm/hyp/smccc_wa.S                |  30 +
 arch/arm64/kvm/hyp/switch.c                  | 688 +------------------
 arch/arm64/kvm/hyp/switch.h                  | 443 ++++++++++++
 arch/arm64/kvm/hyp/sysreg-sr.c               | 233 +------
 arch/arm64/kvm/hyp/sysreg-sr.h               | 216 ++++++
 arch/arm64/kvm/hyp/timer-sr.c                |  38 +-
 arch/arm64/kvm/hyp/tlb.c                     | 168 +----
 arch/arm64/kvm/hyp/tlb.h                     | 131 ++++
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c     |   4 +-
 arch/arm64/kvm/hyp/vgic-v3-sr.c              | 130 ++--
 arch/arm64/kvm/va_layout.c                   |   2 +-
 scripts/kallsyms.c                           |   1 +
 36 files changed, 1867 insertions(+), 1466 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_host_hypercalls.h
 create mode 100644 arch/arm64/kvm/hyp/debug-sr.h
 create mode 100644 arch/arm64/kvm/hyp/nvhe/Makefile
 create mode 100644 arch/arm64/kvm/hyp/nvhe/debug-sr.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/switch.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/timer-sr.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/tlb.c
 create mode 100644 arch/arm64/kvm/hyp/smccc_wa.S
 create mode 100644 arch/arm64/kvm/hyp/switch.h
 create mode 100644 arch/arm64/kvm/hyp/sysreg-sr.h
 create mode 100644 arch/arm64/kvm/hyp/tlb.h

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
