Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9683130539
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XXVtu5S2mk4VJnbcEoVB0JdzS5+xFlHcnhS78tkCgEg=; b=qpR
	riOwEqO+/zJHeUzaiqqOmWCrx1s1EImTscV2fHn7QvzpiOuzV0XNm8IJ4OkRAv7O33U+RQJnrlAJ/
	TcSxUbp4dfj6vZ3wJqSW7saH08ahJbFMPsF2PHsm7tafBPGYifCM/xaBhSE99I1jMJNlR0QD/qsQd
	qctIc4AvJla9n8ehDQRtlvCHwJ2W6bfPf6h3D0wihzz8BwEGMEG9uIRpcg5K5OKotxVDbVhXVNCZV
	syooheIqC16VPrO9UmFtJGitHG16idi6nRHEQyGAHGnLV1pl9QW8p09UTgzGz7Owe5OIscfQjmFJn
	U45fRZxRD4S87hlWCQnDn5eWguPMutQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWUBc-0004Yh-4i; Thu, 30 May 2019 23:10:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWUBV-0004YK-1r
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:10:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so2866304pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 16:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HnaOzrwwH51oiIcYbbiBCTmS7Rc7gDAzx83ZpPiCGcM=;
 b=t2huDdkmSslScVjL94JKcIQCMTMwwACkvRwPfUenZ7x2N/8P/OndXymZV/ztYmff3n
 Yk91NpO1iA0Ra2DTWifvaZl+HZnhGShz3a9IH8XU6PkSoLOoaL0pUgZe3BpUWMTjOh1N
 PkPNkT2KEJ8KweJSbM9uvyv3d9n7MOE9gjf9Bbmj/0Jc/NUlS1bwaqgvfYcIrTwFJzpJ
 ytlES1SMoigWeXgb70wxf+NpnrJ0vQTOGQoenE/O40jCq1Qf7PDz0AQtJh6wC58PInvG
 aJvqv5XNX4CiYEm+o1ckIBYPJi9N2c6hfY+4qbHaLN0SL6TxgOL/iuF5Sc3/1T5ebnJZ
 AhUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HnaOzrwwH51oiIcYbbiBCTmS7Rc7gDAzx83ZpPiCGcM=;
 b=cpfcFzhL9BjFnBwryIiuUtLnABmNIn9X8gI0ICLYRsJHT/7wQFOYyD6RQludWXoVfq
 XT5XhFWvbNMl46agSDw/uKN5wcGk9P7VIt1CPmvj61SKnXYsluido5hyYCLJVBQVxyOw
 WVKoUmA0CNshK1HyrmpjGCGeb6K3YXY0lgn2zRLK0gvBU5VOS/MYaGZLYgSBm6Pchh48
 BSwvqP8cBFvCfayqPTRxiIQNsNmkGoStF7YBFjNJxqYEu9PeQ/f4Nd2v5yJuIyvf5jRZ
 FOZDMzVN2ajQZSmPuRY6Nh0HrIutrh1m6JZklhUf6G2rxH4FXXQaacQ1YPlGg8FKCD6G
 36iQ==
X-Gm-Message-State: APjAAAVOCeBPGpqSvkaRC3UAB11+RXKOAJr+9KGw9hkoZZR0FBiK0HRO
 fo41arDkqs+QCzjX6Vlj46EiKqTH
X-Google-Smtp-Source: APXvYqx7aB3hSQRS2ZPzY3sVELO8sZe8zAAyeqzVXweS1UkqAbfC9T/d66uiLnWGgbp5+RvPfchtIQ==
X-Received: by 2002:a17:90a:aa85:: with SMTP id
 l5mr5502041pjq.69.1559257808071; 
 Thu, 30 May 2019 16:10:08 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k8sm3871643pfi.168.2019.05.30.16.10.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 16:10:07 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: bcm: Enable BCM7038_L1_IRQ for ARCH_BRCMSTB
Date: Thu, 30 May 2019 16:09:58 -0700
Message-Id: <20190530230958.7059-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_161009_196796_36B6D64A 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARCH_BRCMSTB makes use of the irq-bcm7038-l1.c irqchip driver, enable
it.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/mach-bcm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index 4ef1e55f4a0b..ef4600cd2ce9 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -211,6 +211,7 @@ config ARCH_BRCMSTB
 	select ARM_GIC
 	select ARM_ERRATA_798181 if SMP
 	select HAVE_ARM_ARCH_TIMER
+	select BCM7038_L1_IRQ
 	select BRCMSTB_L2_IRQ
 	select BCM7120_L2_IRQ
 	select ARCH_HAS_HOLES_MEMORYMODEL
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
