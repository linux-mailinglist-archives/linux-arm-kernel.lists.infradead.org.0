Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0446C66699
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SN6CbOE6sJwLsMZWWfqvuVy/FQqu158LBIK0N6r25TE=; b=DobS3cuCUMMCVp
	Sb6kpHO/5RI3+ZYz79cRJUudfJ//TPo4IdxZU54VVG7hiEoz8xySfxQJmBfBX1EKx6Gl/QQsUu00C
	bvdPPpWngzSNsW6KJYTYOZNvyio5LF/72zwY2qsGfCqRt9X/wBG3jWPhdR+JLyuBtKPYZ7aZpmvow
	XOg3uhewCxSm1Xrjr+P1RbarCB6KffMZzu75T9IOvtS95E5ITIfSAKjTM3jTbFkQSdq6yDivZqrRw
	0ruj7bMDb2o4w2aA9ofS/dNnsrAcIsAuK+Utrs4qlaToUHix+n8a2NGhi875TqDVeosyqoljJNmfZ
	84Tq/spXbNI0ib5bVZjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloOp-0007Fv-Lb; Fri, 12 Jul 2019 05:47:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8t-0002mu-9t
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so4188603plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QAkAWOSid7lK0+CYFipQ6VxUVVXehQyD0WFI7UyGT+o=;
 b=rbBb9SC7giz0oauYvdP9cYHAqoGTPD+ykkopvCPSbIgttQxtYQqn1F6B5rA5OjrbOf
 MOKCdYW04llywRPGqJfvEeh4VcYLl/+4Ru/hdae+vjnPM0Uuiuryp5dNor6Mx9/RykRk
 GcmAEq29koH5jLv1c1LQTyqkDgH46WVu30cCdcE2YJLHSXjx9FUwtVjqTRvKB5UqbxaK
 xQGQvV+NE6OdjeTjcJxJAv19LEEVjuHp3lKY/t6Dj3nFj6ARNGu/5tp09Z5HmUjEJY0f
 hyWya3YF02NzZU6T23Q4MHmEjDyyq45W8aEu2vmZIcEosQ2QD0Nl0IP2BkclGU/e/7hE
 OHFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QAkAWOSid7lK0+CYFipQ6VxUVVXehQyD0WFI7UyGT+o=;
 b=dCu9JE1Snz0fzccJF09aEViz+GTzvLOr4gQLF0dUhuHzVZySF0xNBvODc+wWv9iblJ
 7OazI4GlRZZ6qU7Fx7ZhERjuavbvnz4jNg83sc84uf1EOme8Y1SL7gkubLAt9MZMZNTC
 HIePB+rQByN3JQ9RN4+iAF5UI1GMgji62Y6QX3AsNvnYKSOJWgx0K+tHaxAl1A9jugmC
 MuY/ndx1+zW4DUWDaZ3MCv2iSFaFnwzqj+v1V+Ah4z/smQSaP0c5jqrftvwcWPpJGsqS
 4+GoDmXaRYJTjbkHT1EDz3rdPmlQJaKZIrmY+P7zTXtTvH3IFQi+Nm6W+l0VA8tYs9N/
 Q6Yg==
X-Gm-Message-State: APjAAAWoHp0D9rFlgXoKyJ5w/8BltPj2XUK1q8CT57+zktHplYCuEyM0
 6dpixPJr7zL2VpirOGlhi3uCmQ==
X-Google-Smtp-Source: APXvYqzQUr91c7RMVVSjz4gI1vWy+u6byT52DlkWRpIc8d/4BmB+KBzszkR1LOCHuFRYN4uI2KTgjg==
X-Received: by 2002:a17:902:24c:: with SMTP id 70mr9134247plc.2.1562909446241; 
 Thu, 11 Jul 2019 22:30:46 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id b3sm11909341pfp.65.2019.07.11.22.30.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:45 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 39/43] arm/arm64: smccc: Make function identifiers an
 unsigned quantity
Date: Fri, 12 Jul 2019 10:58:27 +0530
Message-Id: <22d449cd63d5d718d3aec3e55b4805c03592b265.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223047_414173_11E21C4B 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit ded4c39e93f3b72968fdb79baba27f3b83dad34c upstream.

Function identifiers are a 32bit, unsigned quantity. But we never
tell so to the compiler, resulting in the following:

 4ac:   b26187e0        mov     x0, #0xffffffff80000001

We thus rely on the firmware narrowing it for us, which is not
always a reasonable expectation.

Cc: stable@vger.kernel.org
Reported-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 1f02e4045a9e..4c45fd75db5d 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -16,6 +16,7 @@
 
 #include <linux/linkage.h>
 #include <linux/types.h>
+#include <uapi/linux/const.h>
 
 /*
  * This file provides common defines for ARM SMC Calling Convention as
@@ -23,8 +24,8 @@
  * http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html
  */
 
-#define ARM_SMCCC_STD_CALL		0
-#define ARM_SMCCC_FAST_CALL		1
+#define ARM_SMCCC_STD_CALL	        _AC(0,U)
+#define ARM_SMCCC_FAST_CALL	        _AC(1,U)
 #define ARM_SMCCC_TYPE_SHIFT		31
 
 #define ARM_SMCCC_SMC_32		0
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
