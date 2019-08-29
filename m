Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE5FA1920
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyQKICsRL4bdEk460xFN5vkT2JDw4zFYDIceE0Gjn6g=; b=diJ4ZNCoX/Ds5n
	DGLLKTXNDA7kJWvYcgAgmwcU8mItSZtIMeEm+QTcPXTKnqV7Z1DkoCB7wKO5bfGtd12STEMC26GZ/
	VSAhlxjXk4XCXleml48TbzTCtkoz6uZoPI3GMJzrPoaQF1J6Hhh1pWkbvuqn6MX4NtemFplWln6T4
	uYhVzef5jG1/sVh5RcOXyddkpGtJoD2W9tryXgPot2sp84mVvT6tOWK7WY3LFG871Ebi7GyLZ5R5v
	aNCD7uok/JXsh8j4o9jeDRsK7ufI+03gKTqt4teiDFyNebuf+XUgwOHeVrJrIpVOdW8IYNdguf/tt
	ISu035evAm82GDVIAHxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IrE-0006Qy-4Z; Thu, 29 Aug 2019 11:44:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Iiw-000774-JR
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:19 +0000
Received: by mail-pg1-x543.google.com with SMTP id p3so1436581pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s6UKYk23he3dGgebGJrG3RauZikPx4goXsUxb0kpSkg=;
 b=xvti4GEQ0/UPk2nKKLyO2tTOZPg7+31lw96qhbCVrk3QdQo4q4HNqbarF3AYx73djD
 V5arFRASUiOZIduD8dflJdHV2Nd9NMdb/daV+e+zGAsfXaOgWF/DLP7TzshTPE7EtJ+I
 sbhroYXEYVv+nS26O7sc8qM7ZOEMZT/V5bMtiDWFA2lsa8bZ8xDLtcnM9lzolhWMuBNJ
 Ao7Fne0gvklPDie5i5YFRhMjZzETIoVSv8Ve4igx3A5V5Hn7zrjFHu6RIFY9BfGl7R+C
 8qFaRLGk6xC4U0Evaqi1ejKpFDEcSjJ47F1a6IKa6MT+fLoe9IbnBBbQgwgNMQkktr46
 sHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s6UKYk23he3dGgebGJrG3RauZikPx4goXsUxb0kpSkg=;
 b=OJJGap/bZZHTIK+3Ckqay/ofBbcAxxh+7hsSqFOyhtY1DyaX4aGGK6BtILpfYjB8Ua
 O9zQHe+bpsJ8gVVQBt5laDcteuEDJfaxSw7Fz/PES6BqlCH/zocby3HGnlH0VfIXNOxW
 1xFGu0sWPKf2b3mbDaIG8y/327id3MCrO3bRUmyu0Id6rpldFQQLiBSWcnDtyCBt6jnb
 KK4VMhEApse4WNhH7S1P7Dmq93JTzCFw8+UqFliIBRk5cuujdXUayB+0TmqaIR5JePiC
 7y7NStKJbRwLASrhJE0x2HneFd4xmgYjKO3sH7L2z65EpJpUdQcuA0ZJV0DQJBbm+6+T
 GWRw==
X-Gm-Message-State: APjAAAUQwDaF41sJCCRNVbZQLiEVf8M+KNSaGiKo7gGYdEnHU7Z9u5Yi
 BBvfZRdsl4q2HPx3kL8usHYmMg==
X-Google-Smtp-Source: APXvYqxCwoWhuvuYuIIilS6mbpIrwxMkJOFDxNipnZBvLlgkotjfztm7kAJkUAfNPzqEJ8oBkpCzaQ==
X-Received: by 2002:aa7:91d3:: with SMTP id z19mr10725682pfa.135.1567078578038; 
 Thu, 29 Aug 2019 04:36:18 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id u7sm2042123pgr.94.2019.08.29.04.36.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:17 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 32/44] arm64: cputype info for Broadcom Vulcan
Date: Thu, 29 Aug 2019 17:04:17 +0530
Message-Id: <245df11a4507b678b87e3dea9116afd23f7b0041.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043618_714179_4E4A56D1 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

From: Jayachandran C <jchandra@broadcom.com>

commit 9eb8a2cdf65ce47c3aa68f1297c84d8bcf5a7b3a upstream.

Add Broadcom Vulcan implementor ID and part ID in cputype.h. This is
to document the values.

Signed-off-by: Jayachandran C <jchandra@broadcom.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cputype.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index 2a1f44646048..c6976dd6c32a 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -73,6 +73,7 @@
 #define ARM_CPU_IMP_ARM			0x41
 #define ARM_CPU_IMP_APM			0x50
 #define ARM_CPU_IMP_CAVIUM		0x43
+#define ARM_CPU_IMP_BRCM		0x42
 
 #define ARM_CPU_PART_AEM_V8		0xD0F
 #define ARM_CPU_PART_FOUNDATION		0xD00
@@ -87,6 +88,8 @@
 
 #define CAVIUM_CPU_PART_THUNDERX	0x0A1
 
+#define BRCM_CPU_PART_VULCAN		0x516
+
 #define MIDR_CORTEX_A55 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A55)
 #define MIDR_CORTEX_A72 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A72)
 #define MIDR_CORTEX_A73 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A73)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
