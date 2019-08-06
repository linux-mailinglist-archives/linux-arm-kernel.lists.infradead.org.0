Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70577839B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X+dNk3xKsI8eOrohr3f0DHdMS+wO6DiAf2DNqe1/Q4M=; b=W3Pa1lsbmOzTsE
	+l2geAIgGlEQBZ8O7ZZZNDttfx3gikublwk8CMvXA/TM6aCAF6Zx0JVml9FGHGj7WJYUKTtAC3v5e
	L27fTvf2bCyM0xb27c1aJPjpl4bIR/XpPRvfx6wnEul9K9pcDLqx8sp2zbomj2cIUXu0eiWfchvZT
	k5xwxRLmxlDdA8gBLBt3Eztg0SwOvk99pxlxBBGKZqAd5zkOPYAMas3CeBADWFwdATUUHGBzIeT5B
	XP9omoQcEi282GRwpPbF3xCpR6eTrdiw7hkcXbPXQQWJkxGPnLfujB97llt7pKuc9nDszclNuR0Rz
	QYYcA8CnVnr5Zs97HiPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5Ev-0004cm-KN; Tue, 06 Aug 2019 19:35:21 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5Eo-0004c2-69
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 19:35:15 +0000
Received: by mail-qt1-x841.google.com with SMTP id x22so12399847qtp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 12:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZC9qslcCrd9LAJb+xVAgGZabPCxU3+95aq+tE0LEHpk=;
 b=QAjrYxx3+yXc9YPNpegH6ocJSiZIrPEtvnv6d6NXuo/9Y8gtp+C+UL2IOwCDH5MjLD
 adXdIMjWu8sb9nreDpOwEsMd5LTRzLHtE8iqUicZytIdje5R2VuPAvQ9skkp8Ukbgcaj
 2YOwbd5xaEDbEIEWP+j/B8a55rV5mchMVTHV+NWwM0JFy+N+0ubrf1SOc+mz98IqAOPZ
 ZxsEZsMdqyZ0tkZiwUfnfHjO9VNcpMaWaCpuJMBGLRuu8OxXuxMaT6hPJcfBpxbZu0GP
 GHMlCWYHzjYcb0YC8QNdhfzJEKVZ+rLAcrjFUaoxZqj4dxjbGEpBldrf5KBLaU6zwJs0
 WQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZC9qslcCrd9LAJb+xVAgGZabPCxU3+95aq+tE0LEHpk=;
 b=QuCml2XQNer8BrE+Wki7IsFPMK77jRI5RpC1+qPEixA/uSoHpueavGH/CzEZLfQ3sr
 e1azofLrGU++R4jJNT1GfNjZKjkfiFat2Q9C2FLw7Mk/LhqCgvSC9o+tatAGbqffs5V9
 DR4hCG+GQCf4fpdAzuBvTLr2UlsI80o9WAKKuTh2By53BqYeARRsgnH0KQ8s7yo1Srow
 bUNqsstW5jqrxHPj9rDYOdllqRCmzEKO39A5hD03z8li+HihRKsvL3BDNnLBpdXKZlPe
 Py1axFE5jhuQuOZh3jS0N7WRNtw60xP9kVPBneQRpVM9Nbolm+cma8EMhNISkaQNS7uB
 vx4g==
X-Gm-Message-State: APjAAAVsX8GftYU/Qs5re13xYVSFpVe+HkiLJdjEhfwIW+ZBC8k3pi0V
 LHnzVzcGLpjU4wVBaPVFp9rHPg==
X-Google-Smtp-Source: APXvYqxqbqCvos8lzUfbDdxAGlCp4GIVPMNYbOWFZ6RCFiUoRpZ6EHfOicvxWp4f8jQiZ1hGTTji2Q==
X-Received: by 2002:ac8:4a9a:: with SMTP id l26mr4622738qtq.67.1565120111113; 
 Tue, 06 Aug 2019 12:35:11 -0700 (PDT)
Received: from ovpn-123-215.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id q56sm45073004qtq.64.2019.08.06.12.35.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 06 Aug 2019 12:35:10 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v2] arm64/cache: fix -Woverride-init compiler warnings
Date: Tue,  6 Aug 2019 15:34:34 -0400
Message-Id: <20190806193434.965-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_123514_368744_7D728124 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Qian Cai <cai@lca.pw>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
VIVT I-caches") introduced some compiation warnings from GCC (and
Clang),

arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
overwritten [-Woverride-init]
 [ICACHE_POLICY_VIPT]  = "VIPT",
                         ^~~~~~
arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
'icache_policy_str[2]')
arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
overwritten [-Woverride-init]
 [ICACHE_POLICY_PIPT]  = "PIPT",
                         ^~~~~~
arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
'icache_policy_str[3]')
arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
overwritten [-Woverride-init]
 [ICACHE_POLICY_VPIPT]  = "VPIPT",
                          ^~~~~~~
arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
'icache_policy_str[0]')

because it initializes icache_policy_str[0 ... 3] twice. Since the array
is only used in cpuinfo_detect_icache_policy(), fix it by initializing
a specific field there just before using.

Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: Initialize a specific field in cpuinfo_detect_icache_policy().

 arch/arm64/kernel/cpuinfo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 876055e37352..a0c495a3f4fd 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -34,10 +34,7 @@ DEFINE_PER_CPU(struct cpuinfo_arm64, cpu_data);
 static struct cpuinfo_arm64 boot_cpu_data;
 
 static char *icache_policy_str[] = {
-	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
-	[ICACHE_POLICY_VIPT]		= "VIPT",
-	[ICACHE_POLICY_PIPT]		= "PIPT",
-	[ICACHE_POLICY_VPIPT]		= "VPIPT",
+	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN"
 };
 
 unsigned long __icache_flags;
@@ -310,13 +307,16 @@ static void cpuinfo_detect_icache_policy(struct cpuinfo_arm64 *info)
 
 	switch (l1ip) {
 	case ICACHE_POLICY_PIPT:
+		icache_policy_str[ICACHE_POLICY_PIPT] = "PIPT";
 		break;
 	case ICACHE_POLICY_VPIPT:
+		icache_policy_str[ICACHE_POLICY_VPIPT] = "VPIPT";
 		set_bit(ICACHEF_VPIPT, &__icache_flags);
 		break;
 	default:
 		/* Fallthrough */
 	case ICACHE_POLICY_VIPT:
+		icache_policy_str[ICACHE_POLICY_VIPT] = "VIPT";
 		/* Assume aliasing */
 		set_bit(ICACHEF_ALIASING, &__icache_flags);
 	}
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
