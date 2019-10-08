Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFACCFDE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9hnHYQp+Wse4yKc1N9XqGozSR/Rt1vLldHY9zHQRx5M=; b=P/1jFN0KtDW58/
	5BSsVcOZY0msEwe7MLgyUoBPcSbJ5Gbn/T1WbcYXQH2Hx26WAW6efs8uqm449r/cD3SFZTIrJ6syj
	zLS5qZt0RgvNLrdd1CGUl+zbZxNWl6hqyAUJkAM31UlxaY80cdW+KLWKs5tvhElWBLL2gnX7dt6QG
	e/GiEJrdc5uJhgBXjWN1sGUWtsQGgxFZxgXaLLhPgLwUMpleAcaSoDzDOcojTb8b3yTMUeC16TT3h
	jOLj8xXnpLlzJtYEkr1gJotN2bEETl6X8kfd/ZRVNw8KJvEOTi3Fw/LKoVYLSnrw0PpOVxlByrcrD
	9aJ3YJqffDi0h7od7ORg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrb5-0006of-4U; Tue, 08 Oct 2019 15:40:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHras-0006bi-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id r19so3701689wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=diDivMgLXxuR/dp1WMntvozvsVcQ0F0QeA8wBSWu1Ss=;
 b=GVgHpm2UCTHFvL3+smHn0WlrR+C7nsz0x7DXsSgoTVQaBwWZh5Q2YpxtPpMYbDa2rG
 SB5icwZApCsf36zbj1fmz8qmm9JYeieWTgVv3R6tvKkDDVLiDiuUY+yAWbSpOi5hLEI9
 CYyJ/HCs+NSgG6nCL2Ibcia0gF6Oj5xhfKUW8LHZKlwXdfi0XD55sNm2DK9UTOpeEpl/
 DrEHsMKA2dleKinjrLQairFJXEGrIi81A3xIQhUoS7FaaLNge5V7aEcC5B2tM3Kr367M
 dbsSTZTxUMFtWo38Oq7E+5Yo0MzadfDmxa2yJbC7Ww5nYJ7MrNwEso6imysuYcguCs1o
 Te/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=diDivMgLXxuR/dp1WMntvozvsVcQ0F0QeA8wBSWu1Ss=;
 b=CV2CSYxy9WcsczYO/ImRj5BnlzX15seqFq5ljbxuvPe6rmjQPauB6rUOYcTP/j/VOy
 owd/sPpCIKaWobCE96dTBATvjgpSYuMTYev8f/Upyck8GGGPYqb10hiUBXzyJ7tipWBB
 P9OvBIv5wDSnXsBbjOSbvmKHjoeo4DV05DxvnArcIXSa//XIgtTBh0aZccC+46A8ivfW
 hqSSis4ejMFUqGfyswM9BYeVUa35Gawe1tKqK0EoLGRlh52fTIfp8tS1xCoNrn7AOPv4
 MRNqwYOIUD6CcTYwHCJeI5Q/23HWhgVPD+14+JQXY8adnPk92PbX+EDryTmQGylq/fO9
 ZJBg==
X-Gm-Message-State: APjAAAUoOKWgQfpV+tKSiBDPQV1m2/IlGZBFnkBoHGi/t1u0cfey6ymM
 j1YmsGnoc0bANAghe6z5rVG3UMZg6GgBVA==
X-Google-Smtp-Source: APXvYqwdJRY6MzBrjAaUva5DmFNlSG5y1BY/jadH0gR+q2kQx8JHKuz+jXYI2UEnZJW7t5OhqiGKXw==
X-Received: by 2002:a7b:cf38:: with SMTP id m24mr3949082wmg.24.1570549208408; 
 Tue, 08 Oct 2019 08:40:08 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:07 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 00/16] arm64 spec mitigation backports
Date: Tue,  8 Oct 2019 17:39:14 +0200
Message-Id: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084010_381455_C0673C35 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, stable@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a backport to v4.19 of the arm64 patches that exists in mainline
to support CPUs that implement the SSBS capability, which gives the OS
and user space control over whether Speculative Store Bypass is
permitted in certain contexts. This gives a substantial performance
boost on hardware that implements it.

At the same time, this series backports arm64 support for reporting
of vulnerabilities via syfs. This is covered by the same series since
it produces a much cleaner backport, where none of the patches required
any changes beyond some manual mangling of the context to make them apply.

Build tested using a fair number of randconfig builds. Boot tested
under KVM and on ThunderX2.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Jeremy Linton <jeremy.linton@arm.com>
Cc: Andre Przywara <andre.przywara@arm.com>

Jeremy Linton (6):
  arm64: add sysfs vulnerability show for meltdown
  arm64: Always enable ssb vulnerability detection
  arm64: Provide a command line to disable spectre_v2 mitigation
  arm64: Always enable spectre-v2 vulnerability detection
  arm64: add sysfs vulnerability show for spectre-v2
  arm64: add sysfs vulnerability show for speculative store bypass

Marc Zyngier (2):
  arm64: Advertise mitigation of Spectre-v2, or lack thereof
  arm64: Force SSBS on context switch

Mark Rutland (1):
  arm64: fix SSBS sanitization

Mian Yousaf Kaukab (2):
  arm64: Add sysfs vulnerability show for spectre-v1
  arm64: enable generic CPU vulnerabilites support

Will Deacon (5):
  arm64: cpufeature: Detect SSBS and advertise to userspace
  arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3
  KVM: arm64: Set SCTLR_EL2.DSSBS if SSBD is forcefully disabled and
    !vhe
  arm64: docs: Document SSBS HWCAP
  arm64: ssbs: Don't treat CPUs with SSBS as unaffected by SSB

 Documentation/admin-guide/kernel-parameters.txt |   8 +-
 Documentation/arm64/elf_hwcaps.txt              |   4 +
 arch/arm64/Kconfig                              |   1 +
 arch/arm64/include/asm/cpucaps.h                |   3 +-
 arch/arm64/include/asm/cpufeature.h             |   4 -
 arch/arm64/include/asm/kvm_host.h               |  11 +
 arch/arm64/include/asm/processor.h              |  17 ++
 arch/arm64/include/asm/ptrace.h                 |   1 +
 arch/arm64/include/asm/sysreg.h                 |  19 +-
 arch/arm64/include/uapi/asm/hwcap.h             |   1 +
 arch/arm64/include/uapi/asm/ptrace.h            |   1 +
 arch/arm64/kernel/cpu_errata.c                  | 235 +++++++++++++++-----
 arch/arm64/kernel/cpufeature.c                  | 122 ++++++++--
 arch/arm64/kernel/cpuinfo.c                     |   1 +
 arch/arm64/kernel/process.c                     |  31 +++
 arch/arm64/kernel/ptrace.c                      |  15 +-
 arch/arm64/kernel/ssbd.c                        |  21 ++
 arch/arm64/kvm/hyp/sysreg-sr.c                  |  11 +
 18 files changed, 410 insertions(+), 96 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
