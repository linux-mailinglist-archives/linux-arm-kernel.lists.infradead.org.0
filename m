Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9791F731A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 06:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A5i51rzqUcqkOei8oia8FwTKM3vcJIoSogWnaa2PtjA=; b=beF
	CqT2jaViKyJ3bFXhpUcimhNV+sxLqFgAewe8D+9bAzOVGpMkifMaO+Ox/SurxgDPGOwKUFc0auudP
	dPY6gRWUgD3W9oTWZ3KROWHsTZigOacp840dnunuOtkmWE0dssNfkMBiHA54akfZoFIQQff62RfXs
	L6WNrRZAODVNoq7wfNnmiGdgA/I7i4ufVKT3zmo8801wEzjuWpNUX3VXbVeycfHJ1t+2zLD7heCwY
	y7VuAMTLQbUoMa9PDpVG0kQGNF/kzLOW+zI+f1UjYUx0gcblEkWYqi6CaO1Khbs6L9jx9oytxFT55
	acUza+FAlaT8G1PeHAEtp6svcef4fnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjbWd-0003WB-Qe; Fri, 12 Jun 2020 04:42:43 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjbWU-0003Vm-Sv
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 04:42:36 +0000
Received: by mail-pl1-x644.google.com with SMTP id y17so3246166plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 21:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tnkNvIy4NyhOcfhzdkEEgf5Q0aBBdpOiKM99Ch2kRHo=;
 b=p2J2k390abBAM4NCbA9yAEM/LrDNElIECJSQNv3Nr8adiQVAS5SzbFY95WgXXxsQIh
 WJkHweRSLgzRw+GhG7AdtIsCCWhBM8XJSKuStAPyg5GzWrP6UfZokkvvSDuCia7LKDe8
 71ujb6m40rMGRbwrRU+cN48oUNWf6r0I2VKCdk3XFkhd7SI1mBjeH2MYM00dZWC5qOCP
 FHXiJVbAQiG/K5Obfn+8x9PhykJbXAlXcTajBOJKJlM1Wemqs6OzfESWAa5E+VfI9uFY
 0/YzlC1zdTftffN4s1iJyIMA8CW79XvwgF/CZ2Um4s/Uxf3elaXGjlbcz4Tn9Hlj3jV0
 d2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tnkNvIy4NyhOcfhzdkEEgf5Q0aBBdpOiKM99Ch2kRHo=;
 b=EL91+SkEFb3CWfIS0YY+w//xbeOPzfdo03eeSqHhTW7ZrZJUqFZvq93l3QiYgmdkBD
 PWsGDOFjT0c/GWxsu1oTZhE0ffuVF3kUB3P6YuPQQvX7n5gzjYFvehkMK8BXty7id8My
 K1nEqzq+Xrx8ipb5KIpEFOZkymAKrrgmmsp1MjshpuEtaVMkbrSnCcc7GhKWv7DaMEHl
 PkLwczMSZ3VrkK9PGlNnuZqBikYhcQ7Cn9TMHvYWHOl6JZguKj83B48y5xFWeYXhygem
 RKFgV3sYS9tU7t1MugiZLyyr9ga72GnkZ07oF6IeiQBUQTtwMEb2cvn4Rh9JhFR9jRMA
 OPYA==
X-Gm-Message-State: AOAM532xJp4jpcgPF3CgTc1OEQAJGvJDfHXvtWWK1X8hEqK7jrJZ+26P
 76mBTVgEQxaDB5NhZejtJwKP9MB9
X-Google-Smtp-Source: ABdhPJwVfVwWuvBqsmyJQUwzIkKhTVDfAOSa0G75EXUmTNsmKXeQmrkCijvdn4svfC9O7GaAMKn6pA==
X-Received: by 2002:a17:902:c30c:: with SMTP id
 k12mr10389411plx.130.1591936953486; 
 Thu, 11 Jun 2020 21:42:33 -0700 (PDT)
Received: from localhost.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s9sm4084239pgo.22.2020.06.11.21.42.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 21:42:32 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH stable 4.9] arm64: entry: Place an SB sequence following an
 ERET instruction
Date: Thu, 11 Jun 2020 21:42:18 -0700
Message-Id: <20200612044219.31606-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_214234_951912_88FA9B1C 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:KERNEL VIRTUAL MACHINE KVM" <kvm@vger.kernel.org>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>, will@kernel.org,
 "open list:KERNEL VIRTUAL MACHINE FOR ARM64 KVM/arm64"
 <kvmarm@lists.cs.columbia.edu>, Christoffer Dall <christoffer.dall@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 679db70801da9fda91d26caf13bf5b5ccc74e8e8 upstream

Some CPUs can speculate past an ERET instruction and potentially perform
speculative accesses to memory before processing the exception return.
Since the register state is often controlled by a lower privilege level
at the point of an ERET, this could potentially be used as part of a
side-channel attack.

This patch emits an SB sequence after each ERET so that speculation is
held up on exception return.

Signed-off-by: Will Deacon <will.deacon@arm.com>
[florian: Adjust hyp-entry.S to account for the label]
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Will,

Can you confirm that for 4.9 these are the only places that require
patching? Thank you!

 arch/arm64/kernel/entry.S      | 2 ++
 arch/arm64/kvm/hyp/entry.S     | 1 +
 arch/arm64/kvm/hyp/hyp-entry.S | 4 ++++
 3 files changed, 7 insertions(+)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ca978d7d98eb..3408c782702c 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -255,6 +255,7 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 	.else
 	eret
 	.endif
+	sb
 	.endm
 
 	.macro	get_thread_info, rd
@@ -945,6 +946,7 @@ __ni_sys_trace:
 	mrs	x30, far_el1
 	.endif
 	eret
+	sb
 	.endm
 
 	.align	11
diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index a360ac6e89e9..bc5c6cdb8538 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -83,6 +83,7 @@ ENTRY(__guest_enter)
 
 	// Do not touch any register after this!
 	eret
+	sb
 ENDPROC(__guest_enter)
 
 ENTRY(__guest_exit)
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index bf4988f9dae8..3675e7f0ab72 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -97,6 +97,7 @@ el1_sync:				// Guest trapped into EL2
 	do_el2_call
 
 2:	eret
+	sb
 
 el1_hvc_guest:
 	/*
@@ -147,6 +148,7 @@ wa_epilogue:
 	mov	x0, xzr
 	add	sp, sp, #16
 	eret
+	sb
 
 el1_trap:
 	get_vcpu_ptr	x1, x0
@@ -198,6 +200,7 @@ el2_error:
 	b.ne	__hyp_panic
 	mov	x0, #(1 << ARM_EXIT_WITH_SERROR_BIT)
 	eret
+	sb
 
 ENTRY(__hyp_do_panic)
 	mov	lr, #(PSR_F_BIT | PSR_I_BIT | PSR_A_BIT | PSR_D_BIT |\
@@ -206,6 +209,7 @@ ENTRY(__hyp_do_panic)
 	ldr	lr, =panic
 	msr	elr_el2, lr
 	eret
+	sb
 ENDPROC(__hyp_do_panic)
 
 ENTRY(__hyp_panic)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
