Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7924B1AA39C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiuGOPJnRnWUglem1A1TuGbr++lZ/IvSeqyzk/hAaEg=; b=l2vn/LEN9UNlw7
	O6ej7Zjg33KVRVtY7Vnd+OFCW8aVQ4al5X5sQSXitb1SP284mIGZeV7+BtxPKye795k4TgJ7FQGpG
	cJsCB36Y+L9rbDonbmfkjN1m0q8ujDkNGUGI4HqM+oCKRqviPMX1R2ZQvsvTWcFjWS6QM996/6yeY
	6RjL/YlBUojF/Rx3cjUFaiX9K87mNbK8nh70a01G4QTsHDVRY5wE1lko/ffHEidZCUtzCfd0++met
	OvTCTuDnWzWRoIEwpBwgfycTdvh8nH2xF1d4pftWmYkQIxw9fY2YfTpWRPkr0gBhVLBEQwyKPQgy3
	qkd7cP/ZQ5J0JFxcaMGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhrR-0002Qm-Hx; Wed, 15 Apr 2020 13:13:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpp-000185-N8
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:12:11 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 251AD20775;
 Wed, 15 Apr 2020 13:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956328;
 bh=lb2x+d+qv890mrgcac6eFSNvFx24tJF1hBcwgnKZWWA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oeaO0FyR+yySzfHOWkY8N+h5xti0qNBvX8glWK62YBZZ4Tds+YCJhVnNlnMElwRkH
 Sdp7ZX1QWgZIRJrjK7qsrIHzX7JpMseD+qZSbekPLEsleuR2RmF6usaA8+NXDQZ2sh
 LX5Vh+ClGy56wVmukI79UXIv9njfj7pYnVV2Vcjs=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 06/10] arm64: bti: Provide Kconfig for kernel mode BTI
Date: Wed, 15 Apr 2020 14:07:45 +0100
Message-Id: <20200415130750.18645-7-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061209_808872_A47628D0 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all the code is in place provide a Kconfig option allowing users
to enable BTI for the kernel if their toolchain supports it, defaulting it
on since this has security benefits. This is a separate configuration
option since we currently don't support secondary CPUs that lack BTI if
the boot CPU supports it.

Current testing appears to show an issue with GCC which causes it to
emit unsuitable landing pads for function entries in some cases, until
this issue is understood and either our usage fixed or a suitable
version of GCC is identified the feature is marked as incompatible with
GCC.  No issues have been identified with clang.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/Kconfig | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 43be825d0730..ceccafeb3cd7 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1609,6 +1609,24 @@ config ARM64_BTI
 	  BTI, such binaries can still run, but you get no additional
 	  enforcement of branch destinations.
 
+config ARM64_BTI_KERNEL
+	bool "Use Branch Target Identification for kernel"
+	default y
+	depends on ARM64_BTI
+	depends on ARM64_PTR_AUTH
+	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
+	depends on !CC_IS_GCC
+	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
+	help
+	  Build the kernel with Branch Target Identification annotations
+	  and enable enforcement of this for kernel code. When this option
+	  is enabled and the system supports BTI all kernel code including
+	  modular code must have BTI enabled.
+
+config CC_HAS_BRANCH_PROT_PAC_RET_BTI
+	# GCC 9 or later, clang 8 or later
+	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf+bti)
+
 config ARM64_E0PD
 	bool "Enable support for E0PD"
 	default y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
