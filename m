Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC7E1BFF4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRSZHRVVFrtkIMYkzATmKrTCjW4mI6ZjPzHvbsJxfg4=; b=hFdtY/KD8/ZIee
	935u5lSzD1zR2BmR1GUS4tLo36BbMFxpFhsxIpeiXun/f0grgLVKfSHVOdMYnOrh9O94GOhFTJzKv
	mmCyeCp7EyVKZdcN849yKAViEdw4VfKOcI1WlSwf4c9sEdPoLzPWhM9hXMKz70D/ZvB+iXlPl+Wa0
	HT9ZlOI4n6tmDmc7BKb8odis1pykOd6NwvTHwa1YgcOE32u1KLgx0PxGGPadS7nJR8tldu8IZ+MS1
	ZDDJquuGhaUAm4e+PjwhYCMuABAMFiAPFaRsaHCm325CJxfh2B5e4vsVAwTFRAQOHLLCCiRLB/Xt/
	r2nzTUoBO+y9oGYOdCfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAaP-00027P-MH; Thu, 30 Apr 2020 14:54:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUx-000447-8t
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so2188341wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wdv9+QboSB0n8mCt4SCrZeIquYs40oZsiEsRDsuUlz0=;
 b=d2VkIY9z2QxMTr9h0uS1PRKv10w2VGgdwRE0sKCV0WjUfaxd1zset/EMhBFQfskuJe
 goCtRuSXhK3kBgyLdjxZkBMTTngcnKPaSof2L7u3yexydH49mW/U9M2iAHHQSRFilRvM
 k5KEZcFespm6qTVeA32TSRCr6jhm8eRQ7Ym71GbZAd8JnCvyrcI6hKtB2OiGX+xOYXeV
 ZJH2zA3r+wbu9/VfJjCHzG1bm+FreLspb3qUpNwgCGbxVqCG0mvKmtssm+3ikb0CfkWM
 4I5A3chetvEn8rgjOt0JZFuLRpLheKnZsDVdY+eVw++ctr0guSEm0z28nbRuzNSgGdil
 gVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wdv9+QboSB0n8mCt4SCrZeIquYs40oZsiEsRDsuUlz0=;
 b=snSiZAwAENe/j7PLFuPOXCpCrOvdVyqBSIUjjKnft5LHh299vr0P4H18/bP4btafME
 DBgDDyVn0QXPMv3Mw8nQsIXB/2Om2ijqIc+ZwDFm4h35X8uU+s65vW3c+GOVr0mcaaQh
 9dTOv2OOsN3qKZK7Mn+t28Zy2vSZ4d1G5qcls0MgAAZWcr9zJHjgw2pA6TTowfilgBy6
 niHRLbJZ//6KqqLa/jlCwv0x7DdRiE1CMcp25yH1H0ny9/4/hT0N1c3CYthsseWQDi20
 WF7Y7qYoMWOEi3oqBwRoOsN3en5lsvyCevuEb/ay0HpCiW6mUNcyIFiakvn4EHlV2TWG
 5lzw==
X-Gm-Message-State: AGi0Pub8Xhn2ZGEKA80uYg9e9j0pkg++ZWQgvCAcj3ufl9C0tahd8JAY
 CY5RCYIwmYorb5Dh5ZF+kbQwWA==
X-Google-Smtp-Source: APiQypI5dMJz38mZmwtrxPPLvPMzBmrs/Qs1QaCKD/ikyZpdAJowByuEdCLiCgMzdGxwo2O5sdWohw==
X-Received: by 2002:a1c:7905:: with SMTP id l5mr3549110wme.5.1588258149457;
 Thu, 30 Apr 2020 07:49:09 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id a24sm12220432wmb.24.2020.04.30.07.49.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:49:08 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 13/15] arm64: kvm: Add comments around __hyp_text_ symbol
 aliases
Date: Thu, 30 Apr 2020 15:48:29 +0100
Message-Id: <20200430144831.59194-14-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074911_335204_3E938953 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

This patch is part of a series which builds KVM's non-VHE hyp code separately
from VHE and the rest of the kernel.

With all source files split between VHE/nVHE, add comments around the list of
symbols where nVHE code still links against kernel proper. Split them into
groups and explain how each group is currently used.

Some of these dependencies will be removed in the future.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kernel/image-vars.h | 49 +++++++++++++++++++++-------------
 1 file changed, 31 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index e272eedfe19a..04a3ee21e694 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,24 +61,37 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
-__hyp_text___icache_flags = __icache_flags;
-__hyp_text___kvm_handle_stub_hvc = __kvm_handle_stub_hvc;
-__hyp_text_arm64_const_caps_ready = arm64_const_caps_ready;
-__hyp_text_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
-__hyp_text_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
-__hyp_text_cpu_hwcap_keys = cpu_hwcap_keys;
-__hyp_text_cpu_hwcaps = cpu_hwcaps;
-__hyp_text_kimage_voffset = kimage_voffset;
-__hyp_text_kvm_host_data = kvm_host_data;
-__hyp_text_kvm_patch_vector_branch = kvm_patch_vector_branch;
-__hyp_text_kvm_update_va_mask = kvm_update_va_mask;
-__hyp_text_kvm_vgic_global_state = kvm_vgic_global_state;
-__hyp_text_panic = panic;
-__hyp_text_physvirt_offset = physvirt_offset;
-__hyp_text_sve_load_state = sve_load_state;
-__hyp_text_sve_save_state = sve_save_state;
-__hyp_text_vgic_v2_cpuif_trap = vgic_v2_cpuif_trap;
-__hyp_text_vgic_v3_cpuif_trap = vgic_v3_cpuif_trap;
+/* If nVHE code panics, it ERETs into panic() in EL1. */
+__hyp_text_panic			= panic;
+
+/* Stub HVC IDs are routed to a handler in .hyp.idmap.text. Executed in EL2. */
+__hyp_text___kvm_handle_stub_hvc	= __kvm_handle_stub_hvc;
+
+/* Alternative callbacks, referenced in .altinstructions. Executed in EL1. */
+__hyp_text_arm64_enable_wa2_handling	= arm64_enable_wa2_handling;
+__hyp_text_kvm_patch_vector_branch	= kvm_patch_vector_branch;
+__hyp_text_kvm_update_va_mask		= kvm_update_va_mask;
+
+/* Values used to convert between memory mappings, read-only after init. */
+__hyp_text_kimage_voffset		= kimage_voffset;
+__hyp_text_physvirt_offset		= physvirt_offset;
+
+/* Data shared with the kernel. */
+__hyp_text_cpu_hwcaps			= cpu_hwcaps;
+__hyp_text_cpu_hwcap_keys		= cpu_hwcap_keys;
+__hyp_text___icache_flags		= __icache_flags;
+__hyp_text_kvm_vgic_global_state	= kvm_vgic_global_state;
+__hyp_text_arm64_ssbd_callback_required	= arm64_ssbd_callback_required;
+__hyp_text_kvm_host_data		= kvm_host_data;
+
+/* Static keys shared with the kernel. */
+__hyp_text_arm64_const_caps_ready	= arm64_const_caps_ready;
+__hyp_text_vgic_v2_cpuif_trap		= vgic_v2_cpuif_trap;
+__hyp_text_vgic_v3_cpuif_trap		= vgic_v3_cpuif_trap;
+
+/* SVE support, currently unused by nVHE. */
+__hyp_text_sve_save_state		= sve_save_state;
+__hyp_text_sve_load_state		= sve_load_state;
 
 #endif /* CONFIG_KVM */
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
