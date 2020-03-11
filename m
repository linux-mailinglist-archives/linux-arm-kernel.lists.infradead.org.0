Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8A418205B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:05:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6UGxU9WXGPmF/z2rDz1fnB3M2yTySotfVc5q9nbwVo=; b=ilW9mEbpQypELN
	2M1z91nxvu2SVeUUgWeWzrvO37Bu/KaJioE3PBEccvpuAxbz4CHIv3E+l0SFq53MWR0w73vWnw+5m
	mOdtQEkWw2klnWjUP94YYQsrZq0aTkpL7n27QK4lLyXfWUdYnPd+cA4j8jqTQCXCAsZPSX3bwDoEK
	UTkiYYjGO2jtyHSbmkA+wib95oghOyUs4kLSZHfOEBhk/Uda2V4T9fVRYTYUgNwQxbusb82n1yWHg
	h0lt6zlVZayyscxZ1/sflDltM1d5AjaVONeTJ9C0N2A2Slmo7U+dtp4+MsfSc/prflCQhDHjbKpCN
	u8+IGcG8Fy2RJL31RekA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5iv-0002jT-EP; Wed, 11 Mar 2020 18:04:53 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5iN-0002Wa-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:04:21 +0000
Received: by mail-pj1-x1044.google.com with SMTP id np16so1345831pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=SClQ7RtJL8F3jBPIZG3Gn5B3ixRvlcw00FEz6HzQc64=;
 b=L1G2+Nx202ixQD5QeSXqhNHOV3lJjFXIgCI0SmX+xpubyONlUjhe+j3cqOiCV7NP7z
 qZZ18iH+gIP1wcStALWVraZAiPiQifn5ogaf/5mQMsVvy5iDex739Um3/NwmcCFvNNCU
 cBCQqPOmgsoEHCSrWr3VK5XptZw6csheM8lf4xP6KcH1NDcPVX/z3jglX9YziTksDArb
 KqBunZ1u0dxxa7UMIATQuTHw5ueh6j4FwFHe8aBocYGKR/q7D6gYBf4aQfhN0n89Qzt9
 8FbTBV3Z7R3Y3+vCY/aQ1rFWiPPKWo86TDI6slZgHgwPkGJ3atKVra8oIDeVc6rt49Cp
 TsKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SClQ7RtJL8F3jBPIZG3Gn5B3ixRvlcw00FEz6HzQc64=;
 b=iO/YiUGEJ7P2AcG9F0dmMr65b+tOo29bnj2mLCtw2TMUjaRzpWGUk372h5FmLLgbvn
 b0Un5jiets/WMKDn2gSAcjUe02IEfvNZou8LqreHzvmXZgnq3TMmEKvbueJ1lf1YUNBY
 vXcvV6HM5UELrHyqZd9M9b4ZQtg6oAKuRI7WHsHlAtlB3d60bI0RGI4Iv2zUlD51qZT/
 pCF9JDNuev18tBCBVGQbugrnCK2hlppS3/9iz8UjFOB9Mf1B4rpFADDwWIn6kDO7aVpd
 nKOIS3Pp72A4Tz0rK0BgAZ70OaNl9HT80JbwbMNHzMbaKhUfutakmwRefUPEP4t9Dzfp
 3Pwg==
X-Gm-Message-State: ANhLgQ2m9XMQQVDLfWYvpaA2XQlOQVIBy2hURqKjxA+5B9u7Sy3l8fru
 Snnz4uk9Jgb6Z37iqUNEWO6Yl5SLVaI=
X-Google-Smtp-Source: ADFU+vuofJSXLF5AfCGNXdKM3gy7aHHEKa66XF7hK4wV1opcIWIvPDGB8RB1i3gZf5QBq3sLYMpB4A==
X-Received: by 2002:a17:90a:9dc3:: with SMTP id
 x3mr4577263pjv.116.1583949858951; 
 Wed, 11 Mar 2020 11:04:18 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id k9sm6079383pjo.19.2020.03.11.11.04.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:04:18 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/6] arm64: Add asm/ccset.h header
Date: Wed, 11 Mar 2020 11:04:11 -0700
Message-Id: <20200311180416.6509-2-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311180416.6509-1-richard.henderson@linaro.org>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_110419_972345_7CBABDB5 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With gcc 10, arm64 includes support for flag outputs, much like
x86 has done for years.  Mirror the macros that x86 places in
asm/asm.h, with the necessary addition of CC_CLOBBER.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
 arch/arm64/include/asm/ccset.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 arch/arm64/include/asm/ccset.h

diff --git a/arch/arm64/include/asm/ccset.h b/arch/arm64/include/asm/ccset.h
new file mode 100644
index 000000000000..e733d383f515
--- /dev/null
+++ b/arch/arm64/include/asm/ccset.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_CCSET_H
+#define __ASM_CCSET_H
+
+/*
+ * Macros to generate condition code outputs from inline assembly.
+ * The output operand must be integral but type "bool" preferred.
+ */
+#ifdef __GCC_ASM_FLAG_OUTPUTS__
+# define CC_SET(c) "\n\t/* output condition code " #c "*/\n"
+# define CC_OUT(c) "=@cc" #c
+# define CC_CLOBBER
+#else
+# define CC_SET(c) "\n\tcset %[_cc_" #c "], " #c "\n"
+# define CC_OUT(c) [_cc_ ## c] "=r"
+# define CC_CLOBBER "cc"
+#endif
+
+#endif /* __ASM_CCSET_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
