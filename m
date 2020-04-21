Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3861B216D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hrg6HhtXopYGgdIt5YkmelGpDnd1lHNBwKGBIFFVzBY=; b=jAqwxhgnEXY4fq
	/W4XyQoDUvPOC1NMJWp5xNxz6K0/y/HVL39/kQFow/QJJXSy1wBieZtniT8C6qFo7T7tdXFUGjE+F
	CsSoweXKMY27BdCLFw+wmh43HWKbXAl7EztN6PhQK45Y511gMnKcOXy1Z+yqc+seHVAxhbODSyQ/m
	pAnhz8ZsjJ7Bg3DyoyYpX5TS2IXpgM35UkFpHwZq6gNnoi8BI/W5u9eiTDEO0OQId+buqwauc50SN
	oEdevDjNzaOHATJXrcYYgRCmDPACXSX77+1kcsD0XJIKUoMzpXWcVbjo57eFKFPQrBKOkpTKkVvOn
	NZX2KRoMM7CaA8FFx9rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQo7o-0000Yg-7k; Tue, 21 Apr 2020 08:19:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQo66-0007as-0V
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:17:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id 145so4017624pfw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R51EKoGdprYIzq4mz86f7ksK2LhT5dJfZ4/kQMPqWXU=;
 b=VzMHbZmGtC1cli7/MzDUNjXVYWUl1NxixqtpJm0/9P/EzaLVRa8g8WgYud0Qm6Rchk
 /0trL5SM2/Zrj2mYcg8pq0A+qXdeLRNhfMiAZsy5X8Q7FkKkUcxE3FT4l8B0EtAmdA+a
 qWQTbQU8+OIZBMPZCnCgj1bgpLATeorKYHYYWZhPAzfAJg7qSDI1mvGlLkPsXDXc0xmQ
 nHxUsek7TS8kNEMxedKCaVU/PPk6efmG7yA1N7bxrcxILkRxr4XHk7vAf799he9GgfVg
 ZXr8nDGGsq+0uBoSEWHxoMPWrO9TNXqLg4+rs5s/lfX6Mf18km5fSJ2iKKhhbu7/Mopp
 enAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R51EKoGdprYIzq4mz86f7ksK2LhT5dJfZ4/kQMPqWXU=;
 b=CBCH7PzdIZw7hh1UIhwyVdSpIqHfYJRaaxgVa4hhcBYT7EKVEX/D6Rqa9UQ6hR6pwk
 WNnIJsvgNFIP5x4B9uRvwMk5gAv6ccCVnkiDT81WKmOtAJ81/LeSwVc8jgcJE5JsObbz
 1nYgNf4rmKfv4vjhh0Do44p0MYfLWIGygn7BV1uNmh1Qf+Uu6VjFriB4BX37ejVYnABr
 KV6RmepQMiT4oGEXm6RPapggbPcpa0ea7/IicXIG+7JP4jjUf5SUsIQw8DDNlpqxzUs6
 3979EnVdX9oNk2odLccdHBfK13vfeYZvLpDep9ew4ARNjZqSlLI6kntnV6j4mLD6JfUY
 sEHQ==
X-Gm-Message-State: AGi0PuZUk53zpDGBVL4ODpGv/mfvPSSRfNOcLnM3A2nEcKWGrDVyNcqJ
 8wziettmo+jJXYvaje3NDizOrA==
X-Google-Smtp-Source: APiQypJD+fzqoCjmoNF33zw6GUvSp1zVm+GJEMjBcSfH6XjMDUyeBTOm2mgFujSrzxWUd3wuELt89Q==
X-Received: by 2002:a63:4e21:: with SMTP id c33mr21379911pgb.305.1587457056828; 
 Tue, 21 Apr 2020 01:17:36 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id v9sm1610067pju.3.2020.04.21.01.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:17:36 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: mm: use ARCH_HAS_DEBUG_WX instead of arch defined
Date: Tue, 21 Apr 2020 16:17:15 +0800
Message-Id: <e19709e7576f65e303245fe520cad5f7bae72763.1587455584.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587455584.git.zong.li@sifive.com>
References: <cover.1587455584.git.zong.li@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_011738_171993_075A7336 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 arch/arm64/Kconfig       |  1 +
 arch/arm64/Kconfig.debug | 29 -----------------------------
 2 files changed, 1 insertion(+), 29 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..a16e2ce80854 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -9,6 +9,7 @@ config ARM64
 	select ACPI_MCFG if (ACPI && PCI)
 	select ACPI_SPCR_TABLE if ACPI
 	select ACPI_PPTT if ACPI
+	select ARCH_HAS_DEBUG_WX
 	select ARCH_HAS_DEBUG_VIRTUAL
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_DMA_PREP_COHERENT
diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
index a1efa246c9ed..cdf7ec0b975e 100644
--- a/arch/arm64/Kconfig.debug
+++ b/arch/arm64/Kconfig.debug
@@ -23,35 +23,6 @@ config ARM64_RANDOMIZE_TEXT_OFFSET
 	  of TEXT_OFFSET and platforms must not require a specific
 	  value.
 
-config DEBUG_WX
-	bool "Warn on W+X mappings at boot"
-	select PTDUMP_CORE
-	---help---
-	  Generate a warning if any W+X mappings are found at boot.
-
-	  This is useful for discovering cases where the kernel is leaving
-	  W+X mappings after applying NX, as such mappings are a security risk.
-	  This check also includes UXN, which should be set on all kernel
-	  mappings.
-
-	  Look for a message in dmesg output like this:
-
-	    arm64/mm: Checked W+X mappings: passed, no W+X pages found.
-
-	  or like this, if the check failed:
-
-	    arm64/mm: Checked W+X mappings: FAILED, <N> W+X pages found.
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
 config DEBUG_EFI
 	depends on EFI && DEBUG_INFO
 	bool "UEFI debugging"
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
