Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515201C40C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:05:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Eoco7cCG8aETBEFdhtx1DAvY49NKNdLNy5hONv1s7A=; b=ad4eGhI7TZ3X36
	rrD2Bu34PXIUt7im3z36q2j5bQVCTfHPSs3Zz9b1RhSsKb0GzZlmSNNKFftzd9IaQ1brfErKmSMYt
	2Ta+HwTaTMY56+LuXPhxqou4QwTSnrDOJzY27QJldxunJ0Rdx0FU9yjfuBhhb/BbPV9RU8pncNJax
	jmMP/CdyLknGIi20hLr0/YNbSm1R965UL2NL2P8H75aTfxNtiUcvo0WudaPvhefaLKwZ1ZkvQygOE
	9sO8kqt2pqJhpyp5vOLyqq+8/YN8j7ZVHMbW4FYw7TrVO0KeZ2bBsVkKhROUvJL++ZESY0IxYXSkz
	829ID5+31TZL5plBxrCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeXH-0001YI-JY; Mon, 04 May 2020 17:05:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeX9-0001Xl-3Q
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:05:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id u16so308771wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 10:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6inNII5kkrOkGxC9SM+OHKVL1fdGg+tB1bP7x4RQ9Z4=;
 b=cijHvyVGcv+Hb9axsZx8Iukpxxstp2yEPu+xziQQvcvVnwyZPuSmisGyalVyoLyC3A
 NG1oq92orVjdooXhp0vRTjTznKlTUbi2XCVMrupD13j2JeFGpQucEO8TwLBivmDepKs3
 ob/QKRCyzB26vB1I3HfrnlnA1vEXnhyAsv7jc8RvWFvVfnSVRpQFeXLrdHml8LPRLP66
 Dtcr0HjtM6aiKT9YnYEbJjzSyNjveIkTNT/W6rIWa5bx2Jd0GS9Ywdm6C3mVueSg8JEc
 IhtuoH7UgMky0TuoxzyY8McDmODkJ0MS5CmJcxgaI8Z8AxX15u6TCcMdjaq8JeVLDV8H
 Q65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6inNII5kkrOkGxC9SM+OHKVL1fdGg+tB1bP7x4RQ9Z4=;
 b=acktNf2t+H2x6FvLe44kDcY2PdyW+HSD/YbbBDa1VKaN694B55dbyw+mkX4J0HThNK
 BnuKKPSHwM2Xx0+MAsIfD5aMBe1MihePVvsPoFxl2dWsWVRAyRTv0EX6rrlx+MuFbpAb
 z9Ug9JBU6TXn3FH6pxnikG8UavNx6hyBVsOPamgu/V26IhkGMqcgHSbHX51HPqX16VqX
 mhp3SCfN/xy8QyOanjZ/UxogHnQ+/3QMFW87gHUPz8Q//+NiAZ+3a8F6j1JWa0U/Q/Df
 odJ+nMhg1xRfUud8JDZh/9Xbyb4+GGZmXe9qBIoRNGIGT7WO6jqhbKORf6YWR1fJYRRD
 Rxpg==
X-Gm-Message-State: AGi0Pua9VNvCa/5bp3KcHgzdCBsRNjRkDrEJI64B+3+rRgiqZrLQMJ97
 pgjhA1HPhYMdSYEv/YMeHVjQbA==
X-Google-Smtp-Source: APiQypLEH8rWgUJNRBujiwV8QQWpBqFdu3lEr6ulnlk/jeyXwqeuTWfHXN16q97LrCSCICrrlo4YJw==
X-Received: by 2002:a1c:bc09:: with SMTP id m9mr15131404wmf.145.1588611933238; 
 Mon, 04 May 2020 10:05:33 -0700 (PDT)
Received: from wychelm.lan
 (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net. [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id w9sm3067718wrc.27.2020.05.04.10.05.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 10:05:32 -0700 (PDT)
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: cacheflush: Fix KGDB trap detection
Date: Mon,  4 May 2020 18:05:18 +0100
Message-Id: <20200504170518.2959478-1-daniel.thompson@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_100535_176722_EEB0AD9B 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>, patches@linaro.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

flush_icache_range() contains a bodge to avoid issuing IPIs when the kgdb
trap handler is running because issuing IPIs is unsafe (and not needed)
in this execution context. However the current test, based on
kgdb_connected is flawed: it both over-matches and under-matches.

The over match occurs because kgdb_connected is set when gdb attaches
to the stub and remains set during normal running. This is relatively
harmelss because in almost all cases irq_disabled() will be false.

The under match is more serious. When kdb is used instead of kgdb to access
the debugger then kgdb_connected is not set in all the places that the
debug core updates sw breakpoints (and hence flushes the icache). This
can lead to deadlock.

Fix by replacing the ad-hoc check with the proper kgdb macro. This also
allows us to drop the #ifdef wrapper.

Fixes: 3b8c9f1cdfc5 ("arm64: IPI each CPU after invalidating the I-cache for kernel mappings")
Signed-off-by: Daniel Thompson <daniel.thompson@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---

Notes:
    v2: Improve the commit message based based on feedback from Doug
        Anderson

 arch/arm64/include/asm/cacheflush.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
index e6cca3d4acf7..ce50c1f1f1ea 100644
--- a/arch/arm64/include/asm/cacheflush.h
+++ b/arch/arm64/include/asm/cacheflush.h
@@ -79,7 +79,7 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
 	 * IPI all online CPUs so that they undergo a context synchronization
 	 * event and are forced to refetch the new instructions.
 	 */
-#ifdef CONFIG_KGDB
+
 	/*
 	 * KGDB performs cache maintenance with interrupts disabled, so we
 	 * will deadlock trying to IPI the secondary CPUs. In theory, we can
@@ -89,9 +89,9 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
 	 * the patching operation, so we don't need extra IPIs here anyway.
 	 * In which case, add a KGDB-specific bodge and return early.
 	 */
-	if (kgdb_connected && irqs_disabled())
+	if (in_dbg_master())
 		return;
-#endif
+
 	kick_all_cpus_sync();
 }


base-commit: 6a8b55ed4056ea5559ebe4f6a4b247f627870d4c
--
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
