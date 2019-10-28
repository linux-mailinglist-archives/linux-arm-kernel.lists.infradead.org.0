Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2616DE7B11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TpFiQbQ90ArLft85IafcsM4Ova8N3QkYGMratbm4x7E=; b=GjcAXZt0W76hzOBGc6MXGbKiMC
	CzkqdZl1plZPsd4NJ8yCpS/gL1LbHIMzd/bbu0A1ornPzj56VStkvQD6lGjr2NU5YWeWIp/Ymfd3Y
	meVQ2Le7k4vkE3YVNAI1oG8twIaGmS5fuxkP59/cnz+mEUoCFjLVTm+z/cqXrcORcTlRe8cobTGzB
	bUiIf+73F9eGlB6M9lUQ/5z7PH49cUpbH4GtJEeO4zdOu/Ov0QfSY1HRaihPbNU7JRjCF9pMUIBfL
	RttJGiLaxjHDn067ouhsOdUVZm2groa2w2mH1QpdGO00G9H2YVOlGgLGFVDYv8/Kz8FDRSRb/EMG8
	9kBillyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCF8-0000PS-DG; Mon, 28 Oct 2019 21:08:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCDI-0007U6-PF
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:06:10 +0000
Received: by mail-wr1-x442.google.com with SMTP id n15so11347938wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 14:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OA1lEVPUVah/nj9y4NPe9mpA4YmtUJ45alybXkd0IGY=;
 b=odEkHLjSN3JWnD5C17Txi1cL9gpWHsxbz/541i6HonY1afq+jCmqm6gjraAZ5IF+E5
 3g5eNOzZKQSnRPN35Ido+e/kuRQqORGuoNGHzAuQQLx6oWni+DDSeDvsOW+yofnFtlQC
 0KTVYObE7IiOiNlxdatiKqYf37B1LSAWNDDPYMxFahwK4p9pedn8j6CNfwVcs42oflWp
 TBmfFgdkCjRAYh0LIo2msRLbcL3jnQA1v2rQNPiG8DZnE2NWXfwmz4QQHDhLGC2CkMdP
 kiWYPILROM1iiiG5p0Wz8b4RcFHnytBC85i2qQ/q7Tt0PafGD08vMQ2L1YqvEoDTrMkQ
 gE6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OA1lEVPUVah/nj9y4NPe9mpA4YmtUJ45alybXkd0IGY=;
 b=jiZun998/dOpeXAvOrWKsvufEmPf7Giqke8zv/FwnYb1RHTZMf+bel2vCLS/lzeARs
 hhAzZEx4f4o1cP/r2qt9gOSjSfoMJDW3clvfpIEAIRqaFunUTymOH7drqK9Y0T5+ruvd
 gUNRoJevdXqA4Lr788PrfztaNDXtT1C0TWR+5qV1uuGNfBYvw10iPt2aLgXIxYMUrTlc
 nlZXweiZFHjBrsMYd/zBo5QW4aPUITLpweDbX0W6CvaUwD+8eIQ+G2tAsxqWMm2Ng8Tm
 MIdtSKy2tRfdeaRnkkETTRp2P5CU/mw+mHXNJ+HbPF5pTS8cPpnbu/IfIM17xRqexdQA
 A0jw==
X-Gm-Message-State: APjAAAWfuRn+k9PnPfAEqYSTYNo5G5hQTjfV9jgYJFqOjhTtzlGVXv6Q
 FjTeq83B3qxRoVd7wQ4jYIIB9w==
X-Google-Smtp-Source: APXvYqxc7HPshldpApCL1t58Sst+B72c5dhOqq43UkylGW9qCLLj3H1LeTQb93H8/kIqXI/hDnfPUg==
X-Received: by 2002:adf:82d2:: with SMTP id 76mr15985163wrc.52.1572296766984; 
 Mon, 28 Oct 2019 14:06:06 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id b196sm927822wmd.24.2019.10.28.14.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 14:06:06 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-arch@vger.kernel.org
Subject: [PATCH 4/6] powerpc: Use bool in archrandom.h
Date: Mon, 28 Oct 2019 22:05:57 +0100
Message-Id: <20191028210559.8289-5-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028210559.8289-1-rth@twiddle.net>
References: <20191028210559.8289-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_140608_838152_22BAFD6C 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: linux-s390@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic interface uses bool not int; match that.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
---
 arch/powerpc/include/asm/archrandom.h | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/powerpc/include/asm/archrandom.h b/arch/powerpc/include/asm/archrandom.h
index 9c63b596e6ce..f8a887c8b7f8 100644
--- a/arch/powerpc/include/asm/archrandom.h
+++ b/arch/powerpc/include/asm/archrandom.h
@@ -6,27 +6,28 @@
 
 #include <asm/machdep.h>
 
-static inline int arch_get_random_long(unsigned long *v)
+static inline bool arch_get_random_long(unsigned long *v)
 {
-	return 0;
+	return false;
 }
 
-static inline int arch_get_random_int(unsigned int *v)
+static inline bool arch_get_random_int(unsigned int *v)
 {
-	return 0;
+	return false;
 }
 
-static inline int arch_get_random_seed_long(unsigned long *v)
+static inline bool arch_get_random_seed_long(unsigned long *v)
 {
 	if (ppc_md.get_random_seed)
 		return ppc_md.get_random_seed(v);
 
-	return 0;
+	return false;
 }
-static inline int arch_get_random_seed_int(unsigned int *v)
+
+static inline bool arch_get_random_seed_int(unsigned int *v)
 {
 	unsigned long val;
-	int rc;
+	bool rc;
 
 	rc = arch_get_random_long(&val);
 	if (rc)
@@ -35,15 +36,16 @@ static inline int arch_get_random_seed_int(unsigned int *v)
 	return rc;
 }
 
-static inline int arch_has_random(void)
+static inline bool arch_has_random(void)
 {
-	return 0;
+	return false;
 }
 
-static inline int arch_has_random_seed(void)
+static inline bool arch_has_random_seed(void)
 {
 	return !!ppc_md.get_random_seed;
 }
+
 #endif /* CONFIG_ARCH_RANDOM */
 
 #ifdef CONFIG_PPC_POWERNV
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
