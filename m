Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ABB1BFF30
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8U747mWoFfRmUuUPVGHD5sij8Cfmgkqtqo4ofUkVOQU=; b=MDULtpQ1+Vyy7r
	2uMn25U1L7JjjOjinEstY/oQcc1LjHwZBkk6q9Zf5DJv1bO6W/EemaLt0jB9MF75d/JQ7zToH8AfK
	v7BYQWBJKgUY0jj3CtSYYAWcY9JbuNEbL23BP0pQMbDv+E5jndnuyxOUz5f4CGWOwCE/wnHhKy9Sy
	vnrAL/WfIs1jTd1WuVwrgHlrnfGPpQJNRuoX4PpAQwHIx5/Sqcuo2gq5qXrwDu0AE1F+cjVOI1St7
	/J9hwjv+C8MMeNfA5P/uETtJ9/svgx8igWYe490azq9wVrWgjLAu4RqVM6YGkjjvYpJV/M2wrX2zA
	1AOCd0thJL/povrmfAog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAWe-0007GX-GL; Thu, 30 Apr 2020 14:50:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUY-0003gj-Sx
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:48:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id e26so2183013wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SNF6UHAWqMkyYuIU0QRud/LtidR5txVpCjgq6hRS/rs=;
 b=G5oxdiVzQ6WQl8M6UOHfwP4pdHBU+qv5OHGvlNbCBI0z9EBiG+qssCu1yXAnrFN8gv
 lfko0Ni7uJjsvIxBetErtcwMm+mV2hclOUvBYr+lHY8ApffvotwdYZ9dxALl9nv92YtG
 ROYpq0EMuXYqoMaD8whW/Fjg8RSl+BhJYFo1rMpfzXKwF1hZRGTBo0M+YcbGHkp6zzbT
 G1k70B02KruRIlOfpfIyHn1hA+13411yMCiF3hwc3ZYt+xhsDWBoy8vjYIfZ/Y6/KMcN
 AzA0R3zvornaAnFTrqqiD/YsU76Cz4LdR6w7VuvVnoVzWhYndo+J2qimTWachzUtMCKQ
 5PtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SNF6UHAWqMkyYuIU0QRud/LtidR5txVpCjgq6hRS/rs=;
 b=rGcslupVjaDZDz8XupaNn10ukTCH0+ZvKdaSezUA8D4W5dvFHCU47wd8wlKhWyM5al
 irryi6G4Ji1ax2n9UfEmleQRfYmsFEOHbiAhNVRM3NSSCw+TAAG4ZWNAv+aicUtgZ3Lv
 NPFshoMXnqyzDS1gXpzFickmXlneH0oXppaBDcRBAeDF1/0V90WQ3rzl6ANKbZJfxzDv
 TsXj33AbSEdqyioFl0j0qlRl6W8hOGZagbaW7kCwL6t+0vZlnqv7uIBoITuxm/5AplHc
 ArVX/TmfSPZPSRfadCW9HZgRpksPMpp7uxPBHueaYc/JXh2gx43jPP8zakdo3mudZYgj
 FRNA==
X-Gm-Message-State: AGi0PuYWrfQWw81/uFcUVBoK1z3fLpi+8QC1w00GhKTC2DWHATfUjN6/
 b80ok76hRSGSDrMpi8hqe2GnpQ==
X-Google-Smtp-Source: APiQypKNM79/w8ZSyytfmzDWXe1CAhLCYA5tA2YOUJb4Z3naBNIFJxsLCPvYaCkYw96MVWpA4gCx5w==
X-Received: by 2002:a05:600c:21ca:: with SMTP id
 x10mr3222316wmj.113.1588258122596; 
 Thu, 30 Apr 2020 07:48:42 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id s8sm4287714wru.38.2020.04.30.07.48.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:48:41 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 00/15] Split off nVHE hyp code
Date: Thu, 30 Apr 2020 15:48:16 +0100
Message-Id: <20200430144831.59194-1-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074846_987583_1E7C16D2 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
preparation for being able to unmap .hyp.text from EL1 but has other benefits,
notably:
 * safe use of KASAN/UBSAN/GCOV instrumentation on VHE code,
 * cleaner HVC API,
 * no need for __hyp_text annotations.

nVHE-specific code is moved to hyp/nvhe and compiled with custom build rules
similar to those used by EFI stub. Shared source files are compiled under both
VHE and nVHE build rules. Where a source file contained both VHE and nVHE code,
it is split into a shared header file and two C source files. This is done one
file per commit to make review easier.

All nVHE symbols are prefixed with "__hyp_text_" to avoid collisions with VHE
variants (also inspired by EFI stub). Since this prefixes unresolved symbols
too, image-vars.h contains a list of kernel symbol aliases where nVHE code
still refers to kernel proper. This list will be further reduced in the future.

No functional changes are intended but code was simplified whenever the
refactoring made it possible.

Tested by running kvm-unit-tests on QEMU 5.0 with VHE/nVHE and GIC v2/v3.

This is based off Fuad Tabba's patch series "KVM: arm64: Tidy up arch Kconfig
and Makefiles". Available in branch 'topic/el2-obj' of git repo:
  https://android-kvm.googlesource.com/linux

-David

David Brazdil (13):
  arm64: kvm: Fix symbol dependency in __hyp_call_panic_nvhe
  arm64: kvm: Add build rules for separate nVHE object files
  arm64: kvm: Build hyp-entry.S separately for VHE/nVHE
  arm64: kvm: Move __smccc_workaround_1_smc to .rodata
  arm64: kvm: Split hyp/tlb.c to VHE/nVHE
  arm64: kvm: Split hyp/switch.c to VHE/nVHE
  arm64: kvm: Split hyp/debug-sr.c to VHE/nVHE
  arm64: kvm: Split hyp/sysreg-sr.c to VHE/nVHE
  arm64: kvm: Split hyp/timer-sr.c to VHE/nVHE
  arm64: kvm: Compile remaining hyp/ files for both VHE/nVHE
  arm64: kvm: Add comments around __hyp_text_ symbol aliases
  arm64: kvm: Remove __hyp_text macro, use build rules instead
  arm64: kvm: Lift instrumentation restrictions on VHE

Quentin Perret (2):
  arm64: kvm: Unify users of HVC instruction
  arm64: kvm: Formalize host-hyp hypcall ABI

 arch/arm64/include/asm/kvm_asm.h             |  26 +-
 arch/arm64/include/asm/kvm_emulate.h         |   2 +-
 arch/arm64/include/asm/kvm_host.h            |  32 +-
 arch/arm64/include/asm/kvm_host_hypercalls.h |  62 ++
 arch/arm64/include/asm/kvm_hyp.h             |  15 +-
 arch/arm64/include/asm/kvm_mmu.h             |  13 +-
 arch/arm64/include/asm/mmu.h                 |   7 -
 arch/arm64/include/asm/virt.h                |  33 +-
 arch/arm64/kernel/cpu_errata.c               |   2 +-
 arch/arm64/kernel/hyp-stub.S                 |  34 -
 arch/arm64/kernel/image-vars.h               |  44 ++
 arch/arm64/kvm/arm.c                         |   6 +-
 arch/arm64/kvm/hyp.S                         |  13 +-
 arch/arm64/kvm/hyp/Makefile                  |  12 +-
 arch/arm64/kvm/hyp/aarch32.c                 |   6 +-
 arch/arm64/kvm/hyp/debug-sr.c                | 214 +-----
 arch/arm64/kvm/hyp/debug-sr.h                | 165 +++++
 arch/arm64/kvm/hyp/entry.S                   |   1 -
 arch/arm64/kvm/hyp/fpsimd.S                  |   1 -
 arch/arm64/kvm/hyp/hyp-entry.S               |  62 +-
 arch/arm64/kvm/hyp/nvhe/Makefile             |  42 ++
 arch/arm64/kvm/hyp/nvhe/debug-sr.c           |  77 +++
 arch/arm64/kvm/hyp/nvhe/host_hypercall.c     |  22 +
 arch/arm64/kvm/hyp/nvhe/switch.c             | 271 ++++++++
 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c          |  56 ++
 arch/arm64/kvm/hyp/nvhe/timer-sr.c           |  43 ++
 arch/arm64/kvm/hyp/nvhe/tlb.c                |  67 ++
 arch/arm64/kvm/hyp/switch.c                  | 688 +------------------
 arch/arm64/kvm/hyp/switch.h                  | 438 ++++++++++++
 arch/arm64/kvm/hyp/sysreg-sr.c               | 227 +-----
 arch/arm64/kvm/hyp/sysreg-sr.h               | 211 ++++++
 arch/arm64/kvm/hyp/timer-sr.c                |  38 +-
 arch/arm64/kvm/hyp/tlb.c                     | 168 +----
 arch/arm64/kvm/hyp/tlb.h                     | 126 ++++
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c     |   4 +-
 arch/arm64/kvm/hyp/vgic-v3-sr.c              | 130 ++--
 arch/arm64/kvm/va_layout.c                   |   2 +-
 scripts/kallsyms.c                           |   1 +
 38 files changed, 1887 insertions(+), 1474 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_host_hypercalls.h
 create mode 100644 arch/arm64/kvm/hyp/debug-sr.h
 create mode 100644 arch/arm64/kvm/hyp/nvhe/Makefile
 create mode 100644 arch/arm64/kvm/hyp/nvhe/debug-sr.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/host_hypercall.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/switch.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/sysreg-sr.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/timer-sr.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/tlb.c
 create mode 100644 arch/arm64/kvm/hyp/switch.h
 create mode 100644 arch/arm64/kvm/hyp/sysreg-sr.h
 create mode 100644 arch/arm64/kvm/hyp/tlb.h

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
