Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA627D75F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zx8Z0n/2YYvilAQurRgMuBinsQX9muiqo5CgJoevMBQ=; b=uFKAYr+X3pSQY6
	EAyYE3GMuPSkwPfSKrz1hFVEGpqYQqSKRaEB8IOmenxytA04VaAkkLFHr7zLXEalfGqLay0r/SOTG
	QM2/GO9H15vHE9KjSJUFmtXRXXgoMH/Z7ZReEDedBmHDqY5ymxda5saivz1ccYfkj+mJSGofjoTM3
	sVyQKyz5i7jBXZkbSvGtuOyfSebPo5+1ls4KqiQ+bjor082ln+eqfZAK/oCDsKRA1sV8Oen9PGDKe
	7oll2ycgraHLpSGrJ9kDonU9JN1NVLD8ichdMH1ROO72JwyLOVp/MmVOD4ibyanIXeRzaGLbNN5tr
	B4H9Q+VV2OWb/61L80OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6LM-00044D-VY; Thu, 01 Aug 2019 08:21:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Jc-0000Zb-Ud
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id 4so24862496pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2QHSmiN7bxUJS4+X9m2RMygxyxd4x6cpBibWrQPbZA4=;
 b=gyCpFTJuLM7MvHrK8TfXUg8OQIEf7DynnCZ6YICKbZ9EiGi8EM99TONAPxKGNc6kQm
 3hFuJY62i5Ew+NEtv8tSafNG/qzhe+cjGbtSARPHQUEgyKa7zHEXbRZAV4BDT2ZJm6vJ
 jsLinmkCLSYDBM41ms3BOPj8dWBOwQy+qV8V5vfjzLG2LWvD7CT76RgDp7eQxoUPllQP
 vB6D8S6tyncSIKwqOQTMSKQsjlWIlrO3dpDkeEEquvQuhJq8dk9JzFU9i1ub9dz0xX/t
 usBd+1LWn0IdleXWHo43HxgyU9wCR0JTA+VhNBKRy+wm9IC1f13K/7l7mVnHPaBOBMZd
 3YAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2QHSmiN7bxUJS4+X9m2RMygxyxd4x6cpBibWrQPbZA4=;
 b=D0cz33WbknXVxGhlriA/qk6wBmAuW59uB3tEHNnsGVPTxLw7AMLeaweUBsEMBH+Zh8
 sRAKK8q3Z9l6rVr3K6ATSxEEsOVWA7J+FR8C0W2xADW54RvUe/bmK0tff3ojgmt4SCKP
 iBtRzTyNEQL2RCbOLKbXKRv7OlapAmIDEbC0U1r1y+FpoFiZNd9PsxDQdulTNfdnqf8Q
 gLDWTxuEjtabAnIKZq9YUa7mtW0UKcjsXHXNuzEac6btYvp3IYuJZHSyk99HixkbLrZg
 TsqfB55prVar8jAn+/M+he6+79iXJbNm6pxTsPF3LflljPDrTbZpxr89OcsAL6PoZlmD
 v07Q==
X-Gm-Message-State: APjAAAXccq5NouO2CkH5huJsbHF5yR89hKOCpjm0clK1WXZci2iHF5Tw
 yRrxCyWDeMGOSYDTayJmA2J4Zg==
X-Google-Smtp-Source: APXvYqyVg3JM0Xy4ecN/+7+J9RLJ0NX9tIxjkO6xCJk1Yj66fP0gTNTIsUc9HEVBU4hgAjikmydkbw==
X-Received: by 2002:a17:902:968d:: with SMTP id
 n13mr77405641plp.257.1564647598670; 
 Thu, 01 Aug 2019 01:19:58 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id l1sm91580486pfl.9.2019.08.01.01.19.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:19:58 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 09/47] ARM: add more CPU part numbers for Cortex
 and Brahma B15 CPUs
Date: Thu,  1 Aug 2019 13:45:53 +0530
Message-Id: <c6914b21df89806a01da68a8b4abcdd427b7b75e.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012001_061971_288D588D 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit f5683e76f35b4ec5891031b6a29036efe0a1ff84 upstream.

Add CPU part numbers for Cortex A53, A57, A72, A73, A75 and the
Broadcom Brahma B15 CPU.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/cputype.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/include/asm/cputype.h b/arch/arm/include/asm/cputype.h
index e9d04f475929..76bb3bd060d1 100644
--- a/arch/arm/include/asm/cputype.h
+++ b/arch/arm/include/asm/cputype.h
@@ -74,8 +74,16 @@
 #define ARM_CPU_PART_CORTEX_A12		0x4100c0d0
 #define ARM_CPU_PART_CORTEX_A17		0x4100c0e0
 #define ARM_CPU_PART_CORTEX_A15		0x4100c0f0
+#define ARM_CPU_PART_CORTEX_A53		0x4100d030
+#define ARM_CPU_PART_CORTEX_A57		0x4100d070
+#define ARM_CPU_PART_CORTEX_A72		0x4100d080
+#define ARM_CPU_PART_CORTEX_A73		0x4100d090
+#define ARM_CPU_PART_CORTEX_A75		0x4100d0a0
 #define ARM_CPU_PART_MASK		0xff00fff0
 
+/* Broadcom cores */
+#define ARM_CPU_PART_BRAHMA_B15		0x420000f0
+
 #define ARM_CPU_XSCALE_ARCH_MASK	0xe000
 #define ARM_CPU_XSCALE_ARCH_V1		0x2000
 #define ARM_CPU_XSCALE_ARCH_V2		0x4000
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
