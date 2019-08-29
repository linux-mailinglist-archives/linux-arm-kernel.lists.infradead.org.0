Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A9EA1927
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbGw2Z0SAnNn5mN3/FzeLpCQGz32aKJ/L+1xY+rI7a4=; b=mGdkUyPfU2cVbJ
	cy/VuzETCHw2vFWB7eWN/l25QY8febx38h/L4NTWmhTAVDZ+pK8cCB3/A9Il6f/LGlJK+Gcrwr84t
	Xd1BP56oyhfTK89nhIiYxj4H7s4eqhZk/INSyWLMNWmH9YNhoU7jN6oS6s1Jq94KXeE481bxts4Ks
	FYcyG6GRJcH59RCkk+czn3XtujYlz9CK5UB9b93mHzP+Qq1cBI0D2fVs5N2FnT/z8NQcxgROtZD+S
	zygHivAcWPFknZ72tT6+d6DC1VFEmiokqPLvRHIZQy5IAlOKjTLVj8NyzHsTRJWNlnQoMLtKKPkjy
	U8sGnMl2gJu3J3Ucr/XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IsE-00009U-CI; Thu, 29 Aug 2019 11:45:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ij9-0007JW-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so1888367pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z7GSqiJ6aBNFVvBBcZiH2v3S1Pbs9vo106t8SFNGIe4=;
 b=HgYnyGY4Rvd7slKtSgD2nVDXkz275HIQ36S3JKlkT4lokdLsPwPgvEl64gMOtQhwoR
 BCCxQ+H8X4Q+NI9D0eL8DYKBL/D6asVeu/EasBxUJowSJkoZH1OWjViiWuabjArYWvxb
 JyBBiReJRZcnDI2MUi4QOmTpU7cwrvuG+CKHjEZt4AwbbvERYwCk+KslDSJq+IZ5qrDo
 Lhs2nja4pa1NBi/PzS5RBmkR4KhGIicqAWPrDVId+QPTpBD48VQ2aU3ImZ+honyRF5lK
 Mufu0YHo7Tumu/1P9ZdZS6SiFlTgbuXwyrghtoZuVcxDypApPLumFMO6kc7c9ez0a6WL
 9GAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z7GSqiJ6aBNFVvBBcZiH2v3S1Pbs9vo106t8SFNGIe4=;
 b=iAc3iViVMPkuvMudDU0X50Xbe6S2PmXfiN5sMzKvD6Z1Zss3Osmo+QRdYStsLGbSM6
 AWNGVQnDVRuVtBbcHKsk0Qh09XkGUHNbnzJB+BvembW5hKafBl4C76RY/8SFFJIVmYkC
 JhqKjBb9P8F1hBi87nNiMj0kgIJN80uHNC4ROFXILzrCbeUt4D1BqvnCkRSEsrrMRz5r
 G2MljtbHb741n+d4MTbrVxeN4KhA0kk7DzqVOpOh6x4661l9f9ZfAAYCty2WRvNKVbM3
 GIkoRScJxFzIGxnsIiBrHBo+LlvHor2b8y9wdPBmG+kt9lfxRoM0EodBc1finJQOO3I+
 zBvQ==
X-Gm-Message-State: APjAAAVKpti4HwUFfb2PWmPJu9JyTzCqaf68PtqTy9F8WV+aIg0SN64i
 S4VCT9bkgj9Aj1TCzQptLTMhpA==
X-Google-Smtp-Source: APXvYqzmk7md9jQJV+ApWtMrsLlocKHDNdnxUDcrnOu1rs1/rBoLz9mL+zo3xlPKf8O+tfPSI4BZ/Q==
X-Received: by 2002:a65:68c8:: with SMTP id k8mr7774608pgt.192.1567078591024; 
 Thu, 29 Aug 2019 04:36:31 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id t4sm3412949pfd.109.2019.08.29.04.36.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:30 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 37/44] arm64: KVM: Report
 SMCCC_ARCH_WORKAROUND_1 BP hardening support
Date: Thu, 29 Aug 2019 17:04:22 +0530
Message-Id: <d41b4ecd51a3337b41c41b67c4adc704f7a766ed.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043631_915435_A520CD8B 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit 6167ec5c9145cdf493722dfd80a5d48bafc4a18a upstream.

A new feature of SMCCC 1.1 is that it offers firmware-based CPU
workarounds. In particular, SMCCC_ARCH_WORKAROUND_1 provides
BP hardening for CVE-2017-5715.

If the host has some mitigation for this issue, report that
we deal with it using SMCCC_ARCH_WORKAROUND_1, as we apply the
host workaround on every guest exit.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ Viresh: Picked on only arm-smccc.h changes ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index da9f3916f9a9..1f02e4045a9e 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -73,6 +73,11 @@
 			   ARM_SMCCC_SMC_32,				\
 			   0, 1)
 
+#define ARM_SMCCC_ARCH_WORKAROUND_1					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 0x8000)
+
 #ifndef __ASSEMBLY__
 
 /**
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
