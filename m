Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F302F1D4C0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPzM6VSl0fbNZMTlehhvJCZBpwyyu1bO6pcd+XGHEmk=; b=dPBvZS80gnAdpY
	0r6zMI0NOxneYwB9l44f5ljzLMBWBY+a/Y3YpBgz2JQ13Tb9vZcePu35vQEAqlX/C7bh7UBMVk/dF
	EQ5775VsL/CuK6XiUkNb3XZFHkP6V/tneC1hwkAksAuoUMEbrf7uKF2EhOcT1Uyw5hopRGP6Fr5qD
	D+tldTddXs0ui6Vu09Ds4Y2Mnp1pfuAcJcyB8LI5lFDHm8GAVwmmqufSwryHWPyKOn5ZXxZ6e7Fp0
	UGavxkX3HArI3weyW2uG4lTH71WZbIf7pS8XsvWs+tb7ePh+tBf+35MqQ914IA9uig4HhaoaQvObB
	2YFZGOzL1cxwmi8MfNwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY7r-0000DC-26; Fri, 15 May 2020 11:03:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY3j-00023V-0p
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:59:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id l17so3033127wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qIsoQzx8QXc1ir+dRugWu1fsq9J9q4alaZWOk635tTE=;
 b=hem7MA7Smzp8TqztYBuB5W3IWuLc4iqDhkp4S4YrnIqEmIZYd5pPdRcokkZiSQCBXL
 58opF2y7yXszqJ3evDxLwos9xZqkclw8sRQh7P0+fHtLZlqrEbIdYFuY2QzUT/3oNp3+
 56D/84m33gXnqSp+cu9AJxgtA7yK1RJAbAO0VQpW+NCdV214WKsw960f4Toq0JR2zORt
 KAesZDc+Dr2ZIqP8yY5XwJ6nLSGu7pB7APkga9EQl8I78PToaK+HwDB54eqVuf/tRtOS
 pzcnoFrrzdZU3MnypcCryPp2ei+6BLBHpvUaf/5Qk4Uvog7s+owQl8nsBFbR/RUPagH9
 HC7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qIsoQzx8QXc1ir+dRugWu1fsq9J9q4alaZWOk635tTE=;
 b=rgIsfnlMEmH+Ic81NcjdtYik0ZDNXXV14LO6szp+qY+ebgsKkAJ6vma8dQnOXrm6Fj
 p0GEZeYdePa6Q0LiCEeqYOBzCABtyBKDO11ybZ7pFck/jSaNomrUbIA8RUVY9dKA4pLV
 +6CQcwqdCcunOSxfA7u9zOlYDjANDn9Mh/RmUsPQSDhX/k3f4wWaNg+E0ZBAXXPuEY5Q
 aENGG8LcjIA+hzZoVvdgQPYG7CBCvO7NQwV/jDsDGqdliBaBYAqfTfQrErhyKoBgtZ1l
 CGl+Khl5sryrg/nsytaGVjovEyiGQeqbJBoaHYO434tcQpiGe4H09V+qcsx3TmD1x5Uf
 227g==
X-Gm-Message-State: AOAM532SE6yTgPZDXD6wEnfT58whRXcpXtQbeDcJEAXvuMJuY3CFDQ44
 1/Mqrn5f/rclOzrWC9yLggRtvQ==
X-Google-Smtp-Source: ABdhPJyxwMkIRcpBncYa6eIwpuEAvcR55Rq93vJeaU2e4BAy6oJpiroVdqRq+R0wPBTMFUMxTSk9rw==
X-Received: by 2002:adf:fa44:: with SMTP id y4mr3731198wrr.135.1589540357099; 
 Fri, 15 May 2020 03:59:17 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d11b:f847:8002:7411])
 by smtp.gmail.com with ESMTPSA id 128sm3156597wme.39.2020.05.15.03.59.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 03:59:16 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v2 12/14] arm64: kvm: Add comments around __kvm_nvhe_ symbol
 aliases
Date: Fri, 15 May 2020 11:58:39 +0100
Message-Id: <20200515105841.73532-13-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515105841.73532-1-dbrazdil@google.com>
References: <20200515105841.73532-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035919_095853_CFB0B023 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

This patch is part of a series which builds KVM's non-VHE hyp code separately
from VHE and the rest of the kernel.

With all source files split between VHE/nVHE, add comments around the list of
symbols where nVHE code still links against kernel proper. Split them into
groups and explain how each group is currently used.

Some of these dependencies will be removed in the future.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kernel/image-vars.h | 47 ++++++++++++++++++++++------------
 1 file changed, 30 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 217e5e5a101d..0b3a3fe07a64 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -61,23 +61,36 @@ __efistub__ctype		= _ctype;
  * memory mappings.
  */
 
-__kvm_nvhe___icache_flags = __icache_flags;
-__kvm_nvhe___kvm_handle_stub_hvc = __kvm_handle_stub_hvc;
-__kvm_nvhe_arm64_const_caps_ready = arm64_const_caps_ready;
-__kvm_nvhe_arm64_enable_wa2_handling = arm64_enable_wa2_handling;
-__kvm_nvhe_arm64_ssbd_callback_required = arm64_ssbd_callback_required;
-__kvm_nvhe_cpu_hwcap_keys = cpu_hwcap_keys;
-__kvm_nvhe_cpu_hwcaps = cpu_hwcaps;
-__kvm_nvhe_kimage_voffset = kimage_voffset;
-__kvm_nvhe_kvm_host_data = kvm_host_data;
-__kvm_nvhe_kvm_patch_vector_branch = kvm_patch_vector_branch;
-__kvm_nvhe_kvm_update_va_mask = kvm_update_va_mask;
-__kvm_nvhe_kvm_vgic_global_state = kvm_vgic_global_state;
-__kvm_nvhe_panic = panic;
-__kvm_nvhe_sve_load_state = sve_load_state;
-__kvm_nvhe_sve_save_state = sve_save_state;
-__kvm_nvhe_vgic_v2_cpuif_trap = vgic_v2_cpuif_trap;
-__kvm_nvhe_vgic_v3_cpuif_trap = vgic_v3_cpuif_trap;
+/* If nVHE code panics, it ERETs into panic() in EL1. */
+__kvm_nvhe_panic			= panic;
+
+/* Stub HVC IDs are routed to a handler in .hyp.idmap.text. Executed in EL2. */
+__kvm_nvhe___kvm_handle_stub_hvc	= __kvm_handle_stub_hvc;
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
+__kvm_nvhe_vgic_v2_cpuif_trap		= vgic_v2_cpuif_trap;
+__kvm_nvhe_vgic_v3_cpuif_trap		= vgic_v3_cpuif_trap;
+
+/* SVE support, currently unused by nVHE. */
+__kvm_nvhe_sve_save_state		= sve_save_state;
+__kvm_nvhe_sve_load_state		= sve_load_state;
 
 #endif /* CONFIG_KVM */
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
