Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054001C7AC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHi2SMfXXgWfS43ZVVefTqRTT67+USDkTjkJC5Dfq8U=; b=S2Ul8EmTo/ePMj
	OObSj12KRQ698wqKqkKKa8apVQ9hrN/HQDv1oDhE3BwKsZuWlOVcMMHGXpIf3p73symwk3OoiVoOD
	WF12VJ8H4inoD83TWYS4yPe7s8AbEsSNrCdUJq6PuX7jQn5ecH13GwbEWjDl2zlcQ/rod2ZDTYn9q
	3nz8F/WwdW7kVuRPEaVWI4125WgPy06nEj64bWeXbTVXeU1lSmWJz6Ers/AccjUWy6oRRuS3qi/Iz
	1CPxG9tipcd1zbCUallUWupuBzX5crq/zmYrGac3NFibQIYEJujkesE3ASOKfQ1qhvNEcxjL6MWnm
	IvBzjsku7qCV6sDsai8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQ7D-0005xW-8k; Wed, 06 May 2020 19:53:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQ5V-0004D3-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:52:15 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2237220747;
 Wed,  6 May 2020 19:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588794732;
 bh=hvk93jzA5z6WaFVWImKm6Tk+c5HrLaAwVB7flR3258I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RpbfyVQ4tfqdPqYtlMyb8jExBCFQYfs/rd5lCQzNFs/fZtGS4Tqztqk28CYX2/QnR
 xoAzqLiGO6DijSu1RmdK8Vmg0neDHDcaOd0xP+EUO2i8r0PYEBJ6kC+6ZBsOPrdps5
 VaruZRXS4dul4SxqqUoAYpUCPNrJK5pb5O6jfO1k=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 07/11] arm64: bti: Provide Kconfig for kernel mode BTI
Date: Wed,  6 May 2020 20:51:34 +0100
Message-Id: <20200506195138.22086-8-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506195138.22086-1-broonie@kernel.org>
References: <20200506195138.22086-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_125213_675606_9ED475A2 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Mark Brown <broonie@kernel.org>, Amit Kachhap <amit.kachhap@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all the code is in place provide a Kconfig option allowing users
to enable BTI for the kernel if their toolchain supports it, defaulting it
on since this has security benefits. This is a separate configuration
option since we currently don't support secondary CPUs that lack BTI if
the boot CPU supports it.

Code generation issues mean that current GCC 9 versions are not able to
produce usable BTI binaries so we disable support for building with GCC
versions prior to 10, once a fix is backported to GCC 9 the dependencies
will be updated.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/Kconfig | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6f199d8146d4..f3de1c115fc0 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1610,6 +1610,24 @@ config ARM64_BTI
 	  BTI, such binaries can still run, but you get no additional
 	  enforcement of branch destinations.
 
+config ARM64_BTI_KERNEL
+	bool "Use Branch Target Identification for kernel"
+	default y
+	depends on ARM64_BTI
+	depends on ARM64_PTR_AUTH
+	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
+	depends on !CC_IS_GCC || GCC_VERSION >= 100000
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
