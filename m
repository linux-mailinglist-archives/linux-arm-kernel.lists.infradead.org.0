Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6DE1B216A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNxM0QLpcXylo5ApYafJuvEWoaIJFJt8FOj2KVl7vIM=; b=NGVdCkUy5QjmJV
	eT/GVo/3mDG0flRvrKa+5z+1VbIBISp3eu0LcK9ndryhj5CSysTFIQfeE8bLMDVp34qTD876qhJkL
	tFL2SCdmlzPbWzGzJk2kOTMPL+Ls+akgsNRuN4jkWrS0PulGshjAAidLXmSN0Ode9DZhs7qzt2S50
	tlLWP10i69NRItGfjguJTzqFNjCb9hIE5FFh2iZ7NVYNra5tZJXMUQkYFxRtqGZJtU3jzjrS33bSy
	lMvA4HZj6twLuUYYSPtez3sbazhxK0V3Mnjbns1n0VN1wJ6l7xPwuj0z4OJAgb1ThFvlN6kR7ffaZ
	FbG6SZ+zAqggTdUD4lEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQo7S-0000ET-R3; Tue, 21 Apr 2020 08:19:02 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQo62-0007Xr-WF
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:17:37 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a5so298023pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ESIASWIVcw318N0kQ2X0Oi3Z+uroC+zqbTtsgDKDwxc=;
 b=d1EGEWeHYHIQOJqJjvQeV7F5XbEP5dKBW7WEsc7KqFePlpur3HEhURVt2nLAxU8R+t
 LZja7jNyrv/MqDehV+bIv3O2awu6Vc6wo5ja/99Fg3/zkOA/b8rUd12iwLrEVBqYNlL8
 LTf7evXymEDmOXlZdm6r9x20Y2/6tY/73gMtdIWA1Ts91bYya8o7iZL7Qbyo1a9l5cHq
 Mb2NIZKnrqizgtSPU1Euc0ALQsGOdKx8TVzUdXCIOumRJtoGHAnWec62IkND8QTrmOQM
 nPH12sz33bLqzDbK623zAsgvXfGv/SPO4JkjRvc6iRfRE03SIsd9LDw4+o2qcXqrSP8N
 SPpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ESIASWIVcw318N0kQ2X0Oi3Z+uroC+zqbTtsgDKDwxc=;
 b=TcxVCXF3j8pPhqljsX48n0JW4pkhjS+CxcMOyEfSilEs4WfkCNvcnnV/esIjK5pylo
 4w4VLeY1ew0uKSpXjDhdaKYDtWV6qBpOtf+1OEOJc+mFZLrIFc3iBld+bvJdpprCBrdU
 1wocuuDluB2zWmfA33ovWgavSmeaIamOPDmWy11xGP8/nMpwXBozzAz5KMRq07Kwl0Y2
 ZNkMV/chjIJQQJ4fMlWncWTNBrjz9bgT6rvrRm3fMEXE9FGZcn8FFGsiUh+20tUJzV1l
 zXsOqiaB1lCqPkJK3BNSsTxYHe0E4/dm3QZq+AcS8+fcUZBtjyn0e5yxutAPnOjmvikm
 66PQ==
X-Gm-Message-State: AGi0PuY5Uo48Rg92Obk96HpNaaCw84mEXajL2o07zD2e1z30YoW+9D1p
 gyWaAp/Y1TrIsqF7mZ59D9eTTw==
X-Google-Smtp-Source: APiQypI7y+F6n5TeayUTsoUy+jp+f5r/1IV7aARGN/1mj8/tNHv7iVWTrDqjni/i9mOVUg3YAWeuFQ==
X-Received: by 2002:a17:90a:7e4:: with SMTP id
 m91mr4322055pjm.155.1587457053972; 
 Tue, 21 Apr 2020 01:17:33 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id v9sm1610067pju.3.2020.04.21.01.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:17:33 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] x86: mm: use ARCH_HAS_DEBUG_WX instead of arch defined
Date: Tue, 21 Apr 2020 16:17:14 +0800
Message-Id: <430736828d149df3f5b462d291e845ec690e0141.1587455584.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587455584.git.zong.li@sifive.com>
References: <cover.1587455584.git.zong.li@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_011735_069574_FB4D9F94 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extract DEBUG_WX to mm/Kconfig.debug for shared use. Change to use
ARCH_HAS_DEBUG_WX instead of DEBUG_WX defined by arch port.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/x86/Kconfig       |  1 +
 arch/x86/Kconfig.debug | 27 ---------------------------
 2 files changed, 1 insertion(+), 27 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 1d6104ea8af0..310a49ee3c25 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -80,6 +80,7 @@ config X86
 	select ARCH_HAS_SYNC_CORE_BEFORE_USERMODE
 	select ARCH_HAS_SYSCALL_WRAPPER
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
+	select ARCH_HAS_DEBUG_WX
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG
 	select ARCH_MIGHT_HAVE_ACPI_PDC		if ACPI
 	select ARCH_MIGHT_HAVE_PC_PARPORT
diff --git a/arch/x86/Kconfig.debug b/arch/x86/Kconfig.debug
index 2e74690b028a..de1846ed41b3 100644
--- a/arch/x86/Kconfig.debug
+++ b/arch/x86/Kconfig.debug
@@ -72,33 +72,6 @@ config EFI_PGT_DUMP
 	  issues with the mapping of the EFI runtime regions into that
 	  table.
 
-config DEBUG_WX
-	bool "Warn on W+X mappings at boot"
-	select PTDUMP_CORE
-	---help---
-	  Generate a warning if any W+X mappings are found at boot.
-
-	  This is useful for discovering cases where the kernel is leaving
-	  W+X mappings after applying NX, as such mappings are a security risk.
-
-	  Look for a message in dmesg output like this:
-
-	    x86/mm: Checked W+X mappings: passed, no W+X pages found.
-
-	  or like this, if the check failed:
-
-	    x86/mm: Checked W+X mappings: FAILED, <N> W+X pages found.
-
-	  Note that even if the check fails, your kernel is possibly
-	  still fine, as W+X mappings are not a security hole in
-	  themselves, what they do is that they make the exploitation
-	  of other unfixed kernel bugs easier.
-
-	  There is no runtime or memory usage effect of this option
-	  once the kernel has booted up - it's a one time check.
-
-	  If in doubt, say "Y".
-
 config DOUBLEFAULT
 	default y
 	bool "Enable doublefault exception handler" if EXPERT && X86_32
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
