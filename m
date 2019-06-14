Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B515F452D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CD+xk6IqUou6GsdTzS1a9ZpuNOhDuwobd6r8idwalk=; b=Z4DBO0DhxcY8Rm
	UO5y1jeKmWagCrO4t0oZGjleowo5xuggutLjNTNfk/tX5rGFfvgXQW22jzsp23tlBGdJgYj3uptNi
	4FoA7pJUv6cK0JQVczxTilh08JvSONIux7PoKbw+VZNAGNPxvebD+tq9pCCq2vqTS71cV2nee8iZ5
	loxyKMq5lpSbeVCzeAoME/pwvQV2QwfmtNs261gcmnGL13HiCIDFp9/FA8EBfxm5UdMtzfu2UaEUj
	Mc7Vcre3swsFSkiV3XQHV3Fs1BuISiin4uw3qyJB5/JbyoqQUrQ2IyyDBAHgpc1uD8ZwE/OBCzJZn
	Obh2yPN4ri+9aMxZzi0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbco2-000387-3k; Fri, 14 Jun 2019 03:23:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceS-0000rY-3A
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so498924pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RBs1rUgoU6ONwGkddceY1nFBB7cQx3Xs99bBwFEL95E=;
 b=Y+C3vCm4FkAIC9ch5xg5mi8S62oaHgpJnjqQq+9lw8g9Xph7XUJlAmNDCc33ug39w6
 e/FxICYL1v+gXJSPGpk4abMVGyBOrKwE/0zjP4smzzCzNga3q90iJtaLrxAMC1tz/wO4
 fYKov71NsbdHsYB+kGPyzeMqqqn3qVMEdnwq5VGs/UawuNFTPwh0GTBWmOr8exKBwGM0
 HCnGqmdUj/OrLoPiL3ABfRNC5FWKxQfoupQcwJe7fzwger9I++tW2np6m5KhLbY6oHqR
 D5K3XavaqFUz33yhK5eXM/BXTUiaxAip93SGy2tDEVN/C0lP2cPT0x1nl5fZuDHreUDV
 JC3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RBs1rUgoU6ONwGkddceY1nFBB7cQx3Xs99bBwFEL95E=;
 b=L+0dq8G/YzrSAjo5FSn7RwEXHY+GFQ/bjLXXFfuv0sC1Zor2CSxQiTJNNMA7EJ7ISk
 RG3lXyRijy6sLnhdb7HEbXpNJzF/okLiGgIE87MKybNa/kAe/Ps3Su60X6U6YmAUjsJi
 zlJ1gr3QynytCmzYPNwXcWlSCspVN9gaSYB1xUr27jxPHlma+w2FTf13ZMr9/U6nKlhh
 q75X1gdo8/cv0ny8v0eJ2+t+vFYcsaiTUILNtPOE3pXN4Sdp7kIXraGRTEfmxLdszt2y
 jvSvR/vPabXI54wGbnK0jZZPrieGpimQFkkeXu8q+mAlu0O896Zj0srExXXIagR/lCyT
 wViQ==
X-Gm-Message-State: APjAAAVCp32xBYe5sUcMe3g9zB2HRDh6J/vbMaC8pBzFf4jk7bE3u/qb
 98qUQThnGnnOsuvQUYsuWPPtl9P1nb4=
X-Google-Smtp-Source: APXvYqx1w5jIHExWIUiykLHbam+LKm0LbPJSJi662J7oNbLxNPX3VOKBfV57rgpjB/MT0Ts0/xEdpg==
X-Received: by 2002:a63:1617:: with SMTP id w23mr25538091pgl.183.1560481993805; 
 Thu, 13 Jun 2019 20:13:13 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id f17sm1131479pgv.16.2019.06.13.20.13.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:13 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 30/45] arm/arm64: KVM: Consolidate the PSCI include files
Date: Fri, 14 Jun 2019 08:38:13 +0530
Message-Id: <165e8628ae4e24397d1dcee69d10487d53a7df98.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201316_342867_6CB87B2C 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

commit 1a2fb94e6a771ff94f4afa22497a4695187b820c upstream.

As we're about to update the PSCI support, and because I'm lazy,
let's move the PSCI include file to include/kvm so that both
ARM architectures can find it.

Acked-by: Christoffer Dall <christoffer.dall@linaro.org>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: account for files moved to virt/ upstream ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/kvm_psci.h               | 27 -------------------
 arch/arm/kvm/arm.c                            |  2 +-
 arch/arm/kvm/handle_exit.c                    |  2 +-
 arch/arm/kvm/psci.c                           |  3 ++-
 arch/arm64/kvm/handle_exit.c                  |  5 +++-
 .../asm/kvm_psci.h => include/kvm/arm_psci.h  |  6 ++---
 6 files changed, 11 insertions(+), 34 deletions(-)
 delete mode 100644 arch/arm/include/asm/kvm_psci.h
 rename arch/arm64/include/asm/kvm_psci.h => include/kvm/arm_psci.h (89%)

diff --git a/arch/arm/include/asm/kvm_psci.h b/arch/arm/include/asm/kvm_psci.h
deleted file mode 100644
index 6bda945d31fa..000000000000
--- a/arch/arm/include/asm/kvm_psci.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * Copyright (C) 2012 - ARM Ltd
- * Author: Marc Zyngier <marc.zyngier@arm.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
- */
-
-#ifndef __ARM_KVM_PSCI_H__
-#define __ARM_KVM_PSCI_H__
-
-#define KVM_ARM_PSCI_0_1	1
-#define KVM_ARM_PSCI_0_2	2
-
-int kvm_psci_version(struct kvm_vcpu *vcpu);
-int kvm_psci_call(struct kvm_vcpu *vcpu);
-
-#endif /* __ARM_KVM_PSCI_H__ */
diff --git a/arch/arm/kvm/arm.c b/arch/arm/kvm/arm.c
index d7bef2144760..96fa300cf581 100644
--- a/arch/arm/kvm/arm.c
+++ b/arch/arm/kvm/arm.c
@@ -28,6 +28,7 @@
 #include <linux/sched.h>
 #include <linux/kvm.h>
 #include <trace/events/kvm.h>
+#include <kvm/arm_psci.h>
 
 #define CREATE_TRACE_POINTS
 #include "trace.h"
@@ -43,7 +44,6 @@
 #include <asm/kvm_mmu.h>
 #include <asm/kvm_emulate.h>
 #include <asm/kvm_coproc.h>
-#include <asm/kvm_psci.h>
 
 #ifdef REQUIRES_VIRT
 __asm__(".arch_extension	virt");
diff --git a/arch/arm/kvm/handle_exit.c b/arch/arm/kvm/handle_exit.c
index 05b2f8294968..ed879e3238d3 100644
--- a/arch/arm/kvm/handle_exit.c
+++ b/arch/arm/kvm/handle_exit.c
@@ -21,7 +21,7 @@
 #include <asm/kvm_emulate.h>
 #include <asm/kvm_coproc.h>
 #include <asm/kvm_mmu.h>
-#include <asm/kvm_psci.h>
+#include <kvm/arm_psci.h>
 #include <trace/events/kvm.h>
 
 #include "trace.h"
diff --git a/arch/arm/kvm/psci.c b/arch/arm/kvm/psci.c
index 443db0c43d7c..b4acfec9b459 100644
--- a/arch/arm/kvm/psci.c
+++ b/arch/arm/kvm/psci.c
@@ -21,9 +21,10 @@
 
 #include <asm/cputype.h>
 #include <asm/kvm_emulate.h>
-#include <asm/kvm_psci.h>
 #include <asm/kvm_host.h>
 
+#include <kvm/arm_psci.h>
+
 #include <uapi/linux/psci.h>
 
 /*
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index c43e0e100c11..5b7fb5ab9136 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -22,11 +22,14 @@
 #include <linux/kvm.h>
 #include <linux/kvm_host.h>
 
+#include <kvm/arm_psci.h>
+
 #include <asm/esr.h>
 #include <asm/kvm_coproc.h>
 #include <asm/kvm_emulate.h>
 #include <asm/kvm_mmu.h>
-#include <asm/kvm_psci.h>
+#include <asm/debug-monitors.h>
+#include <asm/traps.h>
 
 #define CREATE_TRACE_POINTS
 #include "trace.h"
diff --git a/arch/arm64/include/asm/kvm_psci.h b/include/kvm/arm_psci.h
similarity index 89%
rename from arch/arm64/include/asm/kvm_psci.h
rename to include/kvm/arm_psci.h
index bc39e557c56c..2042bb909474 100644
--- a/arch/arm64/include/asm/kvm_psci.h
+++ b/include/kvm/arm_psci.h
@@ -15,8 +15,8 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#ifndef __ARM64_KVM_PSCI_H__
-#define __ARM64_KVM_PSCI_H__
+#ifndef __KVM_ARM_PSCI_H__
+#define __KVM_ARM_PSCI_H__
 
 #define KVM_ARM_PSCI_0_1	1
 #define KVM_ARM_PSCI_0_2	2
@@ -24,4 +24,4 @@
 int kvm_psci_version(struct kvm_vcpu *vcpu);
 int kvm_psci_call(struct kvm_vcpu *vcpu);
 
-#endif /* __ARM64_KVM_PSCI_H__ */
+#endif /* __KVM_ARM_PSCI_H__ */
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
