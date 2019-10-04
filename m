Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE90ACB9EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fTuafTJ68r7TSoLmW9/ivNn/gMvhMVjJoo4om/PfPi0=; b=MQcHEZ+almbIEs
	vm7MFYpM7lBAwjakDS8LRsE+sZ9mggsEHl7AsV0qWE5TGGOox7OyAd8VdC/OXhzGmeX3YCzCC0Drk
	mC2DLNJ3hm5VLnX3jBQ/Zf2dr/qCld0C4PM+oF0pJlBG7bN1wUioQF/9apBRUFRdLR/ykE0BI8rbn
	Bz2Ha5RXdAoWe6ePgU/HZrAjI2SeAuveI75uWcYLFMlJaZaY4IjgMdBHHoSL8vUz4ZjSyEkkP3LMZ
	QzE12nIpoBi67W5axwRJ+CJTo2qKrtcCvxrVfIUsWMpM88I6jM6Luk5HD93FxdX7pl95Gs58Iu3pL
	5TIudoZD6ZPJkKY2IXLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMNy-0006GO-FP; Fri, 04 Oct 2019 12:08:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMK7-0001hx-EB
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:41 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5so5563621wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VY+USa9i/kXs7BTndBMXNfHNpatEmVT9KDGs/zJSsa4=;
 b=AQ+xOcxarRv9XdxLDUQPHHIafDbTmfJrXDN8rVjP4YLcjGL4mrcH93I1mP3APozpJh
 EuWZMG8i5MVCOLDMdVKPnk8K0QphVNbbkUNEczyCTiGJV2eRtwcY5GgnjS8oMnmgfgl+
 K9GmEanm2PDqlQbOxf9H7t/0WjNBezuoPwbltqxFXTMuv8O1HWBFzD3BT3Ubb7gwN+7e
 LwjjaMZSy7UQnlrQo+E3+Dvvar0ld9WahhP+9hzNO+tj4+qispU6M1OU+6sc/6r/JG3S
 TybnYX8zrXBug0hlR6TGHRE/ZvvNDe8ulFVDDIsc5ImhVcdvK5bPbY96gRN/EosQK7yp
 RSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VY+USa9i/kXs7BTndBMXNfHNpatEmVT9KDGs/zJSsa4=;
 b=e7dkA1on+CrpcXG+e1UN/hlDFiFzIIS3/OhpQhuwqidtCsttMqDaSqcsketAz8C4zw
 tsJuaG8/3sQfix/0UFZcPfsXB5vqXukRPbxKgh/bNaNdz9TKZZemXwidXdUILOjMQ+Kb
 W6Q3lCXI+nc4u8pHzVQkU9tOr4UUvQb4Sq2TO0YzcvTDfUEdkOJnG+g3Q9h0iQKdeYmr
 ykTLcg24XmV9KVBRc+t7G6mQxHe3yRvzKc5a/K1OXET9E+oIoCtkPKTx+7B7tJzKQBla
 gjzqo13Neo/zS+7UTpa81vi98Yz+vvcdkqX1GH7qqqUG7e7ItwlDK8xwJRXDtP8NPvRY
 tClw==
X-Gm-Message-State: APjAAAU5lgFO9uOSz7Kib5sfeDsm7ztDcaVbMJpb2L4NTFotT/HIywrJ
 yBXeUKWnVRNK6jWqbQVDWDKEQzD2RGv7bMBh
X-Google-Smtp-Source: APXvYqyKuF16UaaorOjWydy4S/uEUQ1ugnnD2ugXJ30QujHdhfZjBEFtaWeJ1pqIWTkXeUfQHC16OQ==
X-Received: by 2002:a7b:c00e:: with SMTP id c14mr10787413wmb.60.1570190676497; 
 Fri, 04 Oct 2019 05:04:36 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:35 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 00/16] arm64: backport SSBS handling to v4.19-stable
Date: Fri,  4 Oct 2019 14:04:14 +0200
Message-Id: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050439_549910_69E71AB3 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a fairly mechnical backport to v4.19 of the changes needed to support
managing the SSBS state, which controls whether Speculative Store Bypass is
permitted.

I have included Jeremy's sysfs changes as well, since they are equally
suitable for stable and made for a much cleaner backport, so it made
little sense to handle them separately.

These patches are presented for review, and are not being cc'ed to the
-stable maintainers just yet.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Jeremy Linton <jeremy.linton@arm.com>
Cc: Andre Przywara <andre.przywara@arm.com>

Jeremy Linton (6):
  arm64: add sysfs vulnerability show for meltdown
  arm64: Provide a command line to disable spectre_v2 mitigation
  arm64: Always enable spectre-v2 vulnerability detection
  arm64: Always enable ssb vulnerability detection
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
 arch/arm64/kernel/cpu_errata.c                  | 257 +++++++++++++-------
 arch/arm64/kernel/cpufeature.c                  | 122 ++++++++--
 arch/arm64/kernel/cpuinfo.c                     |   1 +
 arch/arm64/kernel/process.c                     |  31 +++
 arch/arm64/kernel/ptrace.c                      |  15 +-
 arch/arm64/kernel/ssbd.c                        |  21 ++
 arch/arm64/kvm/hyp/sysreg-sr.c                  |  11 +
 18 files changed, 407 insertions(+), 121 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
