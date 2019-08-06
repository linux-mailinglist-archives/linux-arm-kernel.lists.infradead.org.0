Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8062A838B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 20:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8TP43OZns6NPfOckyh3ehe0qyhRPM6G8k56hpo5/0Gs=; b=rfVdTvadlWQEFk
	Wzz7UKZdtsX1F1pG4iLoDzvJafhL236mnbPXS9XqE7uiUmBtpe0J+v16778H0tNbzL9S7gCm014q5
	fGIWHcgyAYi2TuIiZ4n+UDO2fQde21C5LNscbh8ROfLTInlXRhgPUqVtmWIXXInH2H3WiyJTVpY7b
	hWewa9wLDr2nmZscRYaPQtkkDjvMfv92SrZYGz/M475nZwNzb0CfY4RIUZSjP7usn+Ud0rgvBXXUL
	XjPJ2z4+Hk6pjwfpRHS+Zq6LHG4q0LmkSzMxhtSszNSgOaMMsf2odeuZnbTtUkb7O7ICoppGOWAtf
	jsQ1ODKd9+77+phWBh4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4NQ-0000EQ-Op; Tue, 06 Aug 2019 18:40:04 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4NH-0000E4-Ob
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 18:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cpKSMr3aMRit+OTK++cxQ0+sv+8y10M4RTKYQmUROXc=; b=vu5okr7cav6UuHHhZaJW2gX8F
 2JvBzeQaO0B1/FW9zIP2JgBwPqmEECH02VP0Cqcz6MzMcoOm5SRBBdwpA8xM4R4knZgi4YCuC+qXI
 Z2VGcW7TZnvMbaCWAyeDnyMst2i2jDXl8dqEBbKV0lDJTC9SdaZq8CDqvFR1y4aQEKfKM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hv4NB-0005Rn-EJ; Tue, 06 Aug 2019 18:39:49 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9C4B02742B68; Tue,  6 Aug 2019 19:39:48 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Tri Vo <trong@google.com>
Subject: [PATCH] arm64: Disable big endian builds with clang
Date: Tue,  6 Aug 2019 19:39:18 +0100
Message-Id: <20190806183918.41078-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_113955_804046_B7D049E8 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: clang-built-linux@googlegroups.com, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current boot tests with clang built big endian kernels in KernelCI are
showing problems with the kernel being unable to interpret big endian
userspace. This is a bug and should be fixed but for now let's prevent
these kernels being built, we may end up needing to add a version
dependency on the compiler anyway.

Signed-off-by: Mark Brown <broonie@kernel.org>
---

The clang people (CCed) are aware and looking into this.

 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 990fdcbf05c7..1c32d9889e0f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -813,6 +813,7 @@ config ARM64_PA_BITS
 
 config CPU_BIG_ENDIAN
        bool "Build big-endian kernel"
+       depends on !CC_IS_CLANG
        help
          Say Y if you plan on running a kernel in big-endian mode.
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
