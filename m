Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991E31BE2DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CZxa/PSiLJMbe1AtpL3E6HTiJlspbsRf+2XUrJ8Ggyw=; b=Oy6uIp7P8G+FTq
	nbCPXd3rOQK4FnHxPc+YqcjFfmTZF4Yr36Y4BC31IZjbjxyJq3prcqqI0oFnFVGnuJTdwBIhTIzY7
	wBzJ1zmoOtI8fPqez1xxtwzr0ksvmkw6mFsYNbdYNUmPF+9FQGlcktscX1fXEzdZSxnEPOFULFGw5
	QU0M9Ts02LlfEv2VZJnFXXPAspoWudYEq5rM3D2pKkweefanTBoy7k3KfcIBKRSTfMYEMn97O+P4H
	pYjdz+Sp/RjWCmkP0ZpV+4QHIPBV87H+HhiezW76GESIrczjk8ED+ajt6Q0+AI3fWYwtnfqNY6iI1
	LtWwO1iRrBvDMurWTi2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTol4-0005u2-3r; Wed, 29 Apr 2020 15:36:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTokq-0005sC-CZ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:36:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id f7so1226891pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 08:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TJNMR4oboW7WFcnPibORXRu4vpOcald9BO/lcSdsbJU=;
 b=KbYqDwbe+5X2nV8lcrIde+ORFQeQ3rrbblUybL+zsc2dj8sGqWcFfvo39qh+lAI4oJ
 VdbNlNrsY53rPimDsbKp88S8EZty1oNEqB/jbnsypAH6oezvvyGw8TImxfPIF7FNzB/t
 0X4d9EzhWgVFzM61F1G/Lysa9eDK30EsCR7Zu2O92SVY5CsPOaw7QU0taQ/9GdVemUYk
 gM5YoXIyRiO+98yvLLVXRPpL2yI99XAB72IypjVXubKwncZtvnx6iwDEh4iH91RB5KCd
 cukyO6mDVHCqrum+Lo7fNhtfITpRmCEQYdzwtE1/VF2FwojqoTUD2FnJpUmA/1M5mhl5
 NOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TJNMR4oboW7WFcnPibORXRu4vpOcald9BO/lcSdsbJU=;
 b=jvx+yCUn+7PIwU3GFIofnXuPvgAnRbr9+pkA9KzGuk+zD7Hpwk0PPeL50V6D6VGEoF
 r8cwkiYgBT7mZmDDr7ELMATryp/+qMRycltROh8zase/TNyohL2EWreYB47x/kkewEQ+
 mSY2f2iLFzbUogE0ctAOOdhsSlQYdp3gOiKwzjVxPvVMIXyDVnYq8csQ58s8lbNCjVMK
 NvTci4iG2gzhjMjEkilktPmYEVm+j3z7Etu15AukM7zFIObkVHMiJwDdXOOPVn8qaF4h
 Dg8gQgRK5O8ZWdJ5d+mVAA123wVazvhxr8xOIrts7lfLx9ygV/NbdyLxJPrf6eIXAxQM
 iRtw==
X-Gm-Message-State: AGi0PuYcx/omP1A2e+gkOME71y1L1DDWv8oHrcktNKqa3uYX8ASkaypc
 K4BgcTHfb/diczbHwjwUNz4=
X-Google-Smtp-Source: APiQypIljJQgPqTe8smMDubFOAi16dTLZaugpCJiNx+uWdfsu5l1tiz7Y3oSKdpcSrNdtXqmb+p5xA==
X-Received: by 2002:a62:144c:: with SMTP id 73mr36548770pfu.37.1588174567209; 
 Wed, 29 Apr 2020 08:36:07 -0700 (PDT)
Received: from localhost ([89.208.244.169])
 by smtp.gmail.com with ESMTPSA id y7sm1367321pfq.21.2020.04.29.08.36.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 08:36:06 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: mark.rutland@arm.com, maz@kernel.org, daniel.lezcano@linaro.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1] drivers/clocksource/arm_arch_timer: remove duplicate error
 message
Date: Wed, 29 Apr 2020 23:35:59 +0800
Message-Id: <20200429153559.21189-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_083608_449042_B26464EB 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

it will print an error message by itself when acpi_gtdt_init()
goes wrong. so remove the duplicate error message.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 drivers/clocksource/arm_arch_timer.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index 2204a444e801..ecf7b7db2d05 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -1588,10 +1588,8 @@ static int __init arch_timer_acpi_init(struct acpi_table_header *table)
 	arch_timers_present |= ARCH_TIMER_TYPE_CP15;
 
 	ret = acpi_gtdt_init(table, &platform_timer_count);
-	if (ret) {
-		pr_err("Failed to init GTDT table.\n");
+	if (ret)
 		return ret;
-	}
 
 	arch_timer_ppi[ARCH_TIMER_PHYS_NONSECURE_PPI] =
 		acpi_gtdt_map_ppi(ARCH_TIMER_PHYS_NONSECURE_PPI);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
