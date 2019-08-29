Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C03BA1928
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omxFKkPj3yeX66G+BQ9myurZnQJtPMEODMip6b24S9U=; b=dUyuDwE+GY0P5j
	gv5xphfhFkixHhvF4yHt72vx9F+v0eihjzVoNhiD0V5o6gWC2brTATcq862jnLpgLod2rpIyQxd14
	hiLcb6ThgrnXUWikTzE7HJPp8YWPNDfbAInC4gX7yqZwiNJK2jU0JgEjXgq5ELKqZKKCmVIvjx6ml
	8OJyJHM63VXF5AWXyeL9wCAIXE5KbohgyJw1V+NrZDvIsiQew4OBQ7Ff2N6jWsHG5F4UaX5Fqdr3x
	xoq7RxJBrfcN+mlLe1d36qHbufmQdIg9oPjLOOKUey2ihnBkVpz3rEnUyWldJzSn0+8Qr5MjGVNL6
	79UBvNzXH+p+0imeZJ6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IsR-0000NG-NC; Thu, 29 Aug 2019 11:46:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ij7-0007HJ-PR
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:33 +0000
Received: by mail-pg1-x541.google.com with SMTP id e11so1449485pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FDb8snX7fHtHRXPBtLwcic7/q7BlhqslXapsBvvT9m4=;
 b=MxVDtRC9Y4lv4jG9hpAos0s+xIe/ARHMDGnoPf/99+Afqj27WqVXGxDp3whA9QF9rj
 zy6wvMMqo4wV7qE94YEu6uNAYmR1PdZl7H1LI3+jvKB3HAGDQVz2VXLAu5QxQQce/tBe
 tijrc9X0p0SFXFGpn7D1/0Vt2zlF/lfu/jfnPZBOego/s4nfxvYu+221uEN/M+F0kZIQ
 i62nKBUOyZX4z8HEn4x2m79tYCUbVRXtoorbzSgzRr+smMy30rrjJW+3cMfV3nV4jg9R
 RxjZkvAcYmnbOSd/PLmZv80PXkXR0tDFpIGhFn5lfhXWdkjuEyokQp/zUJDuKEjCWkcj
 mPwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FDb8snX7fHtHRXPBtLwcic7/q7BlhqslXapsBvvT9m4=;
 b=d1V/ZQxZ83t8jVdat+KZRb7nehYXu3nir0dSsbEL5ZVJ26G/dyWDYWK2hO87W6uZMK
 rz8026irgbfcb8GBxhYl7KneuzITse4MvEbCOFEmJ3VGW1qklxWiHVFAGndi28fM0F4y
 djhqlaWN+31WGLKG+r3tMwwsxB6LdKeMrpfzAH1Hvsn2mJ2yrsGmtoDCzvsUolZGVJSX
 HSwNSLOLVedfId9pGDsP2JxKYeL4s0ME2eoBaWZ9R4nVxE9VP0kMLNMOZ+P/DYg0gcWm
 va1RmrZWZE35lhGlehNj/Ch8VnhPNZYW2laNMXgCFx6BVgjkuxju7rYxBfLZ5S4tKRQ+
 WCzw==
X-Gm-Message-State: APjAAAWHEyPPjKpqJVAEI3EZpXea1adKF10Kq8cPrEkPJQUsS+O653Sk
 yed259N8qNi9TuoIa3Me2uYSuw==
X-Google-Smtp-Source: APXvYqyH8cMp3WI3VBt9ncmvLARVo/vLVagqPQxUJLvSZXGXVCuTfpF8P7BWJIc9lHP6S0Bj2H1TKA==
X-Received: by 2002:a65:6850:: with SMTP id q16mr6555728pgt.423.1567078588390; 
 Thu, 29 Aug 2019 04:36:28 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e9sm3945514pfh.155.2019.08.29.04.36.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:27 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 36/44] arm/arm64: KVM: Advertise SMCCC v1.1
Date: Thu, 29 Aug 2019 17:04:21 +0530
Message-Id: <b3927577b8837116f55cc21a028377d97f79cf30.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043629_915317_9DF852C7 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

commit 09e6be12effdb33bf7210c8867bbd213b66a499e upstream.

The new SMC Calling Convention (v1.1) allows for a reduced overhead
when calling into the firmware, and provides a new feature discovery
mechanism.

Make it visible to KVM guests.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ Viresh: Picked only arm-smccc.h changes ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 611d10580340..da9f3916f9a9 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -60,6 +60,19 @@
 #define ARM_SMCCC_OWNER_TRUSTED_OS	50
 #define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
 
+#define ARM_SMCCC_VERSION_1_0		0x10000
+#define ARM_SMCCC_VERSION_1_1		0x10001
+
+#define ARM_SMCCC_VERSION_FUNC_ID					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 0)
+
+#define ARM_SMCCC_ARCH_FEATURES_FUNC_ID					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 1)
+
 #ifndef __ASSEMBLY__
 
 /**
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
