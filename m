Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DDA1D5499
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1rQYmx7tzgYh2Mo0w11DGCZdFSj7LnhxoWR700ziQik=; b=JVk33M+exAFB1A
	QpwwI3+ZBi8npZQFt5sdLxp9RonqtFQvEJz0eW4g86DkujDo/c8bqSFuh/FFClhoFGRf9LnGfhp+e
	kDeEaoRTvU+nDaVgehV8DjF7IWnVBYIRAfrcCKc8NgzKYPSynn1DTA9GQjFK4BqWBfD1BrU/k25Hi
	Jgmf6zaJFAvb/IelPK5KpczS+Q6Mf8Lxmqqaz1gQF4VRR4xc073hRL/CCueiBd+fbrzPWMm3u4ODs
	UJfQoT6+AxwZBumySNIbPmw4dIgTALPu1ELn7jy8392sBQlWmApcq9ADt3Bng8MfNVj5t+6cwUE76
	ONdwwSf+CYMvxgWjks6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcED-0007fX-Ep; Fri, 15 May 2020 15:26:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcDn-0007bp-2H
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:26:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id z4so1558384wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 08:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4YHxui3Yo0vMHsmaXOJkEoFjwBV06P7bv7E8zziz5hQ=;
 b=WLHC5KfExF6hPKo7XxaA64czaJ7BpoHLU2zJICyp3N6zf6g0Vz7Ph3aIbdNXAiCrOP
 tCbYqwUu4plPR/NdJdRZvUjxei0rh8/YA/1+lG34HUVqWq+9tW7M1/9WoNIlK1ChRmRt
 FtiWhlL+mdGntWnLltUD93FSVO6Q5VQCVMEaissAi0MSH3OWJmd8fovGarXXhoHPA7Cc
 h/zjCz6NPCujmxrfEKJ5IUQzqUhdXa6zLo7R2i4rDhTiUFozm0g/1c4+tZkBvy31sEvf
 unYFk2EIKZ4XRkziKU6DzIwHGm2BA/B5Pw6A4MI3p+wf8Vwq3765fAuEnv3dimZiyAx7
 F03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4YHxui3Yo0vMHsmaXOJkEoFjwBV06P7bv7E8zziz5hQ=;
 b=QWUbGQJPv0fr23i9PHJtI0EawEzGfNBzVFi1TZGjYO3NccJQZCyHU7PEw+uIFJniDs
 PeMd+DMQPCU9hnDVkNC6IsEpmAwJ/UGA+hcCpGZNbHv+Ts+lVeRbxcemPL7li8VciHNi
 vnL+uNYX6ko42u/4mt0PskuJ1pZHNk2zRfCXBTZnIsH1uHDirUlKWLqF5ps9zrN70wZS
 owEhiOs3bAEfyYAo2MQCdM9DyvQSRtnLqt9oPubQLZicDW4qZF4lUt6IHyglpNnvlrDg
 KcsfBM2P1I2tovCAOaHPrGb3EqklCVBOT8f200y+KBdCFnfYX08Yw0xMXFNyVIYEVvyS
 DzWg==
X-Gm-Message-State: AOAM530lq8yA+e+EEsnDszc/Pmq5mQQ/4rIE5uitulmMkBbsdA2VlXpS
 riErU3gTtUiW/+yNr4W3R0sQ9PaI+5s=
X-Google-Smtp-Source: ABdhPJw3mKWVBSJfaO5wBBJqm/u5qU4h/LdI+37noVfSRuxmHsjjAxJo3FbZwUFQLSDIbvqJipPA8A==
X-Received: by 2002:a1c:6042:: with SMTP id u63mr4545603wmb.65.1589556356308; 
 Fri, 15 May 2020 08:25:56 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d11b:f847:8002:7411])
 by smtp.gmail.com with ESMTPSA id y185sm4005761wmy.11.2020.05.15.08.25.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 08:25:55 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [PATCH] arm64: kvm: Fix incorrect comment on kvm_get_hyp_vector()
Date: Fri, 15 May 2020 16:25:50 +0100
Message-Id: <20200515152550.83810-1-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_082559_234873_8FF7303E 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The comment used to say that kvm_get_hyp_vector is only called on VHE systems.
In fact, it is also called from the nVHE init function cpu_init_hyp_mode().
Fix the comment to stop confusing devs.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_mmu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 30b0e8d6b895..796f6a2e794a 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -473,7 +473,7 @@ static inline int kvm_write_guest_lock(struct kvm *kvm, gpa_t gpa,
 extern void *__kvm_bp_vect_base;
 extern int __kvm_harden_el2_vector_slot;
 
-/*  This is only called on a VHE system */
+/*  This is called on both VHE and !VHE systems */
 static inline void *kvm_get_hyp_vector(void)
 {
 	struct bp_hardening_data *data = arm64_get_bp_hardening_data();
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
