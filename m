Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6881F1D57A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wy+hOMDYzW4uADjgXQscykHePsoc++1olovUPQ9V9AU=; b=PDEw5BB78oYzin
	HYMiO276DtN77QdwatTXck90SFCtig5K9lgEm3u7wvM9/NSeb6TzHZL5U34uh9OHeNFYCGFhZBcDP
	cNoU4EJKb83HrJIIXlHcG0Tk2pE7EU04hCN5FK8wPuwduX7oPHVxJ1ZrtuLbT/waRvBUWB+f0w1dD
	dPJarT6IPBw/VDRAOAdfJPgMyhFdqH3lV0PiVqNV31WVpBlt3PU4Olv1cBeXHEthg+mLlJmO5mArN
	aq8Wd7ZVhayS5j6iB7wCsCQNXZYBpPfAFi1Xkpnavb+AlaI+Vdsbrl2OoCC1W+2tFUHwO12rQ/zI1
	ovVz5cEgbeHL/sowKhTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe3u-0002Ra-2t; Fri, 15 May 2020 17:23:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdxQ-0002pw-OI
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:17:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A70DA11FB;
 Fri, 15 May 2020 10:17:11 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 17B333F305;
 Fri, 15 May 2020 10:17:09 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 25/26] arm64: mte: Kconfig entry
Date: Fri, 15 May 2020 18:16:11 +0100
Message-Id: <20200515171612.1020-26-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101713_053923_0FE331E6 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

Add Memory Tagging Extension support to the arm64 kbuild.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

Notes:
    v4:
    - select ARCH_USES_PG_ARCH_2
    - remove ARCH_NO_SWAP
    - default y

 arch/arm64/Kconfig | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..70deb14d78e0 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1606,6 +1606,39 @@ config ARCH_RANDOM
 
 endmenu
 
+menu "ARMv8.5 architectural features"
+
+config ARM64_AS_HAS_MTE
+	def_bool $(as-instr,.arch armv8.5-a+memtag)
+
+config ARM64_MTE
+	bool "Memory Tagging Extension support"
+	default y
+	depends on ARM64_AS_HAS_MTE && ARM64_TAGGED_ADDR_ABI
+	select ARCH_USES_HIGH_VMA_FLAGS
+	select ARCH_USES_PG_ARCH_2
+	help
+	  Memory Tagging (part of the ARMv8.5 Extensions) provides
+	  architectural support for run-time, always-on detection of
+	  various classes of memory error to aid with software debugging
+	  to eliminate vulnerabilities arising from memory-unsafe
+	  languages.
+
+	  This option enables the support for the Memory Tagging
+	  Extension at EL0 (i.e. for userspace).
+
+	  Selecting this option allows the feature to be detected at
+	  runtime. Any secondary CPU not implementing this feature will
+	  not be allowed a late bring-up.
+
+	  Userspace binaries that want to use this feature must
+	  explicitly opt in. The mechanism for the userspace is
+	  described in:
+
+	  Documentation/arm64/memory-tagging-extension.rst.
+
+endmenu
+
 config ARM64_SVE
 	bool "ARM Scalable Vector Extension support"
 	default y

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
