Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4A2114358
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:16:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QM5KUk0OyFNyBCT0oXgb1EudLOZ26HXNZxmnso4VXNg=; b=prP
	b9hsTnZq9gEBXuptVzriASl1ivfVKMQBIoQ1HDIxmNF+gcBfmTfw2uEZDdAjIdXzGJuJc40VNbgBq
	dWzxwstlJDo8XREgruP/yEz4zxYLcgmgHSe3kcLMIcYzPjl5yVhcx33uf/Y36c2gPd6qrMloHpnht
	u/MPusJboL8VwYBb59QZ1wf0eAs17DTfqlrhqSm4MDu70xhtiXkZHpqACKBFDXQxsdwMUSycknShN
	U5tdsg9aM8tKpLRtOz3i5qaKUaOzF0cvxh7ZE2ofNy+ilKea82AiDlVOsEJv8b8j4mXMxnzAIFqI5
	g/NKDAVXR/UnRsrBYqJtPtBMql8Gvng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsrt-0006iI-Vl; Thu, 05 Dec 2019 15:16:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsrn-0006hr-EL
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:16:32 +0000
Received: by mail-pl1-x641.google.com with SMTP id bb5so1378012plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 07:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6PpUMK/fvtT3W2NQbLvKL8csxRNa6vIgk1xEDsjC6bI=;
 b=agIiHZBwD4X5eZ0FNWuNuFEwyyeG1sXOLk5+FriDOsaSzxa3MftJloe+Eb3HU+mEMF
 +BFkAT2AYJcwIxM72XrI/wVwTmK77NJ0sDLSiIhv33rAuYzkN93P5sQ7E1d13EAvA7lC
 eaMCmZVA7V8OnShoviJE8zmCdeReAA7HHPxCPbyaZejfcj0LwDC3ns/yoZfLlC6rccwu
 FV0wL2F96vi4HN3hc+F5B8rYywfSeRXYae6W0JuatA5KCL9MoNiUfeC9Xttt+XUtQN8z
 77zv3RLRf8K6rFY5u2ikhCXV05beD2NU52hcEPDXRG6bdjyyAbcQxkh2xB3FLXKjjbIi
 wpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6PpUMK/fvtT3W2NQbLvKL8csxRNa6vIgk1xEDsjC6bI=;
 b=V/XRQzu8p+iVNhbEACa7MaBmrvyDwo7WyzQ/7hE+GXSZLU9facqo+3FM+BmL/CXL7r
 51JSkieLOiVvOwsp+bUftGj9U11/PVe1PnjcyCrqpmkkjUdYjShHpSz5KS1p70tVVS4z
 U8+4EQ6JGC8mkG+ZuHg32zkeK3T+D80082NxWe63wAZc4BVpgRDDjWiDZbCVUu5Lrmze
 D9NV0AST3Asc7wGI8h2wg/w2Sxp3Au1qGtQnWLBpETM1wicFeFdWOD3WvJ7vuNPEx6gf
 6fub2rMyo+YF6e6NGnsTbWsxdwct2jFH3U5lCM4D6wQhT09iydPXQ4ortPMdkRkzlEk7
 hQbg==
X-Gm-Message-State: APjAAAWPwi4Ic+DBwmGNASSWM+X1pHHvKZGfOzAr6CT8Lh8AJAbwC58u
 zLdQEJ/DevSFca25Mm9Kiu3Du3kr
X-Google-Smtp-Source: APXvYqw3eI/RuygT54i529DFXj+zt6Jrf7+Fj+SlopqLW1OBVQAeuG03gyLEYDJ1t8s+hIVci3cAlw==
X-Received: by 2002:a17:90a:c68f:: with SMTP id
 n15mr9968588pjt.20.1575558990424; 
 Thu, 05 Dec 2019 07:16:30 -0800 (PST)
Received: from localhost.localdomain ([211.243.117.64])
 by smtp.gmail.com with ESMTPSA id m68sm13055101pfm.85.2019.12.05.07.16.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:16:30 -0800 (PST)
From: Hyunki Koo <hyunki00.koo@gmail.com>
To: krzk@kernel.org
Subject: [PATCH] ARM: exynos: add select EXYNOS_IRQ_COMBINER
Date: Fri,  6 Dec 2019 00:16:14 +0900
Message-Id: <20191205151614.23268-1-hyunki00.koo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_071631_482599_6D808122 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hyunki00.koo[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Hyunki Koo <hyunki00.koo@samsung.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hyunki Koo <hyunki00.koo@samsung.com>

This patch add select EXYNOS_IRQ_COMBINER
on aarch32 Exynos devices

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
---
 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 4ef56571145b..c0efd544501e 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -18,6 +18,7 @@ menuconfig ARCH_EXYNOS
 	select EXYNOS_THERMAL
 	select EXYNOS_PMU
 	select EXYNOS_SROM
+	select EXYNOS_IRQ_COMBINER
 	select EXYNOS_PM_DOMAINS if PM_GENERIC_DOMAINS
 	select GPIOLIB
 	select HAVE_ARM_ARCH_TIMER if ARCH_EXYNOS5 && VIRTUALIZATION
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
