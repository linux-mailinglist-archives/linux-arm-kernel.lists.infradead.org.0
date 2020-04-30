Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389801BFF3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vv85meMwN+6ztWGn2tztnaesuXb3zDr6FxSEnk7X0Wk=; b=MPHm2NTozv4p90
	Eax/nKmmHcJg5AJ37q7L22aPLVcWvjjYfj5ZZG8GYTtQ8Du+UTAGrNf3HFH5Vyx+dTlDXdGudDNE5
	un3evH2H/oFmhqjT1pAsMm1Xh1/WV4ErO2md6/q0rBEkI2x5hh3vxn/dpdbR3OcLL58MkFHZxFOvi
	05X1EyRrwYaN34zY+BIYrLxyGWQyixrFGR1eolxefCGisvZgIfJRy3l51JsZdBUUkXAENVsGAnb7l
	9YUy+X7i4H+VxvVUa9t+z0ldNoIcNp/uWZe/nWcmAAI08wgoRWWdCaDQFmvqMbMvZWFGSL3CeLupy
	1MNGK3mr4/eJsVkSiiBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAYB-0008TF-Da; Thu, 30 Apr 2020 14:52:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUj-0003tM-R3
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id u16so2239950wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bbHNVTpXzIBH43k7+53bLmR3Osutfa9At2Hme6Sb9BQ=;
 b=llTRbViex/wVjycqDYpppwsQ0xUzk4iAPlw0uNFjdIhsppV/SKrvZbyK35stLuiFrz
 AUBMsiXjZ6vVVymfv1M2Ih94IKnRUaJ+o0SgAcyJS+ZLfYOlLp2IjBrMMv2h69dKvgSd
 oS11PAuOK+5C2Fh+LaUFFFdZCkeiH/1TK3J3zoHJ5I7xtgGHfnCkOOCuSqvjx4YKceV1
 Fh9LJ1Xy4SFCRK59Fg5/k8WPH9+rjpd/VwKOKWpdUyCxmI8LwsuS2VMQHTR+CSxnLn4O
 EmSNclgJIW+TaBUAkSzTL/tIC3mm2zNJ/14mode5DBV9vfGzVkVSFtYV7BiJV1ezNIzY
 52AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bbHNVTpXzIBH43k7+53bLmR3Osutfa9At2Hme6Sb9BQ=;
 b=Jb9XNS8JGqgQLWOFzTrM9DohQr2YnA2MtHdmt4VZkd88iOIscYJiLGplK3FHWWzdoY
 3MkFOZkAEMPLMNPJAOxhC6w5UP/4/6clQLBW3pUO/++5kMzM5iEnJV5l2HP8172ftJuu
 nhLYSKteO6Ba94kndFccnq3hoEFb0rixpgLeToNPKzkJaGW5MaLJXZE8U3mEcWWtfv3Z
 mcP3QjK7wQ6umEEwUazob8ijlWk1PwlVQL4v/EfPx2XiZPR0WIqaxLhyu4edsOz43SPU
 eljfPS5U8GMs8pSiq2/jV/+G+3QsIbEUTovPt60UV8X8xVsczh49Q0pRikcMs+UZ9At5
 N1cA==
X-Gm-Message-State: AGi0PuZ5d/el/hrPYRqQPqDlcbdaVnI/09PafJty+xp86ogCSEAG7lRb
 O/EttdHS0B2hG3J1t/BbcyRdVw==
X-Google-Smtp-Source: APiQypKHpehC+NoZtiH6O1b+EgH40+ocC2ldPt1fuV9Crb6tjR/KtOsD6F8IOBtbo+KoSxGe4rMN3g==
X-Received: by 2002:a05:600c:2c04:: with SMTP id
 q4mr3264060wmg.7.1588258136239; 
 Thu, 30 Apr 2020 07:48:56 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id c10sm4180096wru.48.2020.04.30.07.48.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:48:55 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 06/15] arm64: kvm: Move __smccc_workaround_1_smc to .rodata
Date: Thu, 30 Apr 2020 15:48:22 +0100
Message-Id: <20200430144831.59194-7-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074857_905590_D1594187 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

This snippet of assembly is used by cpu_errata.c to overwrite parts of KVM hyp
vector. It is never directly executed, so move it from .text to .rodata.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kvm/hyp/hyp-entry.S | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 5986e1d78d3f..7e5f386c5c2d 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -364,6 +364,11 @@ SYM_CODE_END(__bp_harden_hyp_vecs)
 	.popsection
 
 #ifndef __HYPERVISOR__
+	/*
+	 * This is not executed directly and is instead copied into the vectors
+	 * by install_bp_hardening_cb().
+	 */
+	.pushsection	.rodata
 SYM_CODE_START(__smccc_workaround_1_smc)
 	esb
 	sub	sp, sp, #(8 * 4)
@@ -377,5 +382,6 @@ SYM_CODE_START(__smccc_workaround_1_smc)
 1:	.org __smccc_workaround_1_smc + __SMCCC_WORKAROUND_1_SMC_SZ
 	.org 1b
 SYM_CODE_END(__smccc_workaround_1_smc)
+	.popsection
 #endif /* __HYPERVISOR__ */
 #endif /* CONFIG_KVM_INDIRECT_VECTORS */
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
