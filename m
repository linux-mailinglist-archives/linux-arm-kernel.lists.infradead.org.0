Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D5F1FF1CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GH+1ZEMmRf3Isahh8nN6C2rjZQ6msvdQ/CSLQJeY1OA=; b=HUlgOFyqXkQfdK
	c4dGLjH32dsi5XrX7NsRRPWOmalPTrHdr382LlIApWdaFiVDTB5GA/vSbzA78CC++WBgV/U4tFvG9
	P2KvibXqcgJ8ChO+IcDw39qUjw8lobPxyoa33s2fXhEyaufQWgttmgzuISMOjKnQhDlJioAOfsHh2
	ZaDrzodPyMAJ/SotvWUQBceZtttARb9NNwWRZbOnX/18i8/PlNbPfn/3anjisvOqIfyx7aA/ttY/A
	FInTj7h9R2f3fOrKZXnh3PlOMhb6q/WjJDgouNi6MIqYG7jkkpbXJ9zXBqCE/pZ4EXdzHlurgzQ13
	BHYwOKheUWpZY+TWCT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltgy-0002N8-Px; Thu, 18 Jun 2020 12:30:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcU-0004hp-2F
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:26:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id e1so5858678wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5ceSCnqPU+qhFBApWd37Hj9Iarz1DhO8p+J0NPEP0HY=;
 b=XImm0NWhTRSHFfFBJjAzpQWgVma/Daqep8ONE/WtU0eu796P/BJ1Ml/kY6divma1BZ
 divyMCuPOWy2+Na9sCUHeEQHXDGfXSrgILV1ChiotyZiFrKWVTKqgspfJUGxjfiEFgAL
 bs5UNOB+ODc6oS4w10pOJ3JbNBTelTewFdDqnIa1dm5DMNHubszjkQpu58Yxu8UYt6kH
 0U8YLbm977SDUYSQKiIzCGXda5Ch3oM5q6dqt+qPLbB2dq6mnOVBJyXBQWnz3EztZbB2
 sQWwr4W/YZTBEUbTz1tEwW8ducrc7HBqZu1rOprt/H5743BsmmMTZQKJee9lmFylU00/
 TXyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5ceSCnqPU+qhFBApWd37Hj9Iarz1DhO8p+J0NPEP0HY=;
 b=bzKooUtthGY4ot8E6Sq2EZ7pprGctVwBMKmhcCsb3qm6Z4SqrEbxgZhQ6KvfDzwCW6
 xlhQ8LpnwDnS4mRkVqh81YPWp7fnuMyWwm1mm/9KUHN3eDdcfqaYl50aRL5XOnU7xbCr
 6LnpQbvaYccWosVbUlmPnELPU4+4hHY/pJH7a4haAL6WgAZIcOVsv444vMQNUmoBncNr
 vIAqDE6OKkU8w5U057OWpoHFOirlT2ffPuQa6cTMGlfLsasUi4y1few5cxLhBf/vRcT6
 2UdmXnLY4Yo6+VzVnAi0Ivnf2hp/88RZkATHGfEitzeOo5SN967G8XcxAfye5HHTYsHe
 LHnA==
X-Gm-Message-State: AOAM533grd/Ax05Lid53csU+Gyc6++zgaPBY3sMEEZy/KaNIkB30gohs
 XAs1w3+zcgo14gz5X/sd2/fRKg==
X-Google-Smtp-Source: ABdhPJwR+2X7OijhjCKVfnY0bd5pmPZUZ3Q1eOHRC2W/NjdYmx/NZTyrTPK2hq0x8R87nRQuJSwogQ==
X-Received: by 2002:a5d:654c:: with SMTP id z12mr4248011wrv.315.1592483171911; 
 Thu, 18 Jun 2020 05:26:11 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id 125sm3467359wmc.23.2020.06.18.05.26.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:26:11 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 13/15] arm64: kvm: Add comments around __kvm_nvhe_ symbol
 aliases
Date: Thu, 18 Jun 2020 13:25:35 +0100
Message-Id: <20200618122537.9625-14-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052614_146018_A2F4A838 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: android-kvm@google.com, linux-kernel@vger.kernel.org,
 David Brazdil <dbrazdil@google.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is part of a series which builds KVM's non-VHE hyp code separately
from VHE and the rest of the kernel.

With all source files split between VHE/nVHE, add comments around the list of
symbols where nVHE code still links against kernel proper. Split them into
groups and explain how each group is currently used.

Some of these dependencies will be removed in the future.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kernel/image-vars.h | 53 +++++++++++++++++++++-------------
 1 file changed, 33 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 2cc3e7673dc2..da8f39fae5e8 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,30 +61,43 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
-__kvm_nvhe___hyp_panic_string = __hyp_panic_string;
-__kvm_nvhe___hyp_stub_vectors = __hyp_stub_vectors;
-__kvm_nvhe___icache_flags = __icache_flags;
-__kvm_nvhe_arm64_const_caps_ready = arm64_const_caps_ready;
-__kvm_nvhe_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
-__kvm_nvhe_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
-__kvm_nvhe_cpu_hwcap_keys = cpu_hwcap_keys;
-__kvm_nvhe_cpu_hwcaps = cpu_hwcaps;
+/* If nVHE code panics, it ERETs into panic() in EL1. */
+__kvm_nvhe___hyp_panic_string		= __hyp_panic_string;
+__kvm_nvhe_panic			= panic;
+
+/* Values used by the hyp-init vector. */
+__kvm_nvhe___hyp_stub_vectors		= __hyp_stub_vectors;
+__kvm_nvhe_idmap_t0sz			= idmap_t0sz;
+
+/* Alternative callbacks, referenced in .altinstructions. Executed in EL1. */
+__kvm_nvhe_arm64_enable_wa2_handling	= arm64_enable_wa2_handling;
+__kvm_nvhe_kvm_patch_vector_branch	= kvm_patch_vector_branch;
+__kvm_nvhe_kvm_update_va_mask		= kvm_update_va_mask;
+
+/* Values used to convert between memory mappings, read-only after init. */
+__kvm_nvhe_kimage_voffset		= kimage_voffset;
+
+/* Data shared with the kernel. */
+__kvm_nvhe_cpu_hwcaps			= cpu_hwcaps;
+__kvm_nvhe_cpu_hwcap_keys		= cpu_hwcap_keys;
+__kvm_nvhe___icache_flags		= __icache_flags;
+__kvm_nvhe_kvm_vgic_global_state	= kvm_vgic_global_state;
+__kvm_nvhe_arm64_ssbd_callback_required	= arm64_ssbd_callback_required;
+__kvm_nvhe_kvm_host_data		= kvm_host_data;
+
+/* Static keys shared with the kernel. */
+__kvm_nvhe_arm64_const_caps_ready	= arm64_const_caps_ready;
 #ifdef CONFIG_ARM64_PSEUDO_NMI
-__kvm_nvhe_gic_pmr_sync = gic_pmr_sync;
+__kvm_nvhe_gic_pmr_sync			= gic_pmr_sync;
 #endif
-__kvm_nvhe_idmap_t0sz = idmap_t0sz;
-__kvm_nvhe_kimage_voffset = kimage_voffset;
-__kvm_nvhe_kvm_host_data = kvm_host_data;
-__kvm_nvhe_kvm_patch_vector_branch = kvm_patch_vector_branch;
-__kvm_nvhe_kvm_update_va_mask = kvm_update_va_mask;
-__kvm_nvhe_kvm_vgic_global_state = kvm_vgic_global_state;
-__kvm_nvhe_panic = panic;
+__kvm_nvhe_vgic_v2_cpuif_trap		= vgic_v2_cpuif_trap;
+__kvm_nvhe_vgic_v3_cpuif_trap		= vgic_v3_cpuif_trap;
+
+/* SVE support, currently unused by nVHE. */
 #ifdef CONFIG_ARM64_SVE
-__kvm_nvhe_sve_load_state = sve_load_state;
-__kvm_nvhe_sve_save_state = sve_save_state;
+__kvm_nvhe_sve_save_state		= sve_save_state;
+__kvm_nvhe_sve_load_state		= sve_load_state;
 #endif
-__kvm_nvhe_vgic_v2_cpuif_trap = vgic_v2_cpuif_trap;
-__kvm_nvhe_vgic_v3_cpuif_trap = vgic_v3_cpuif_trap;
 
 #endif /* CONFIG_KVM */
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
