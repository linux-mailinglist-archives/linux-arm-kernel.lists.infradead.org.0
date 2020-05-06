Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0B01C7A9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMdDLtIlVYnMH4lmq9yqmtxQ5ovLmSWDVXHly8XWIr4=; b=G1a4zkZ5rShdhy
	puuwgpmF4oXmYrOCIYE7lcYSdkGyjtUY6z+U5USlABTipIbTrmJA6lpAOBB4PY39X4wupRd5dFdpA
	ybxp0/PBETPuBB0NlU01vR4dNgTSI3tUBIciwOI4tjhAdDOaWhwISjn0JY2soz5t2YbIucU62dAe3
	Ca4s3u1ZT40M1bGPCYXDJxNj7BYX55PXQpWgiuqyDcg4jXWo9aKa+B7vxzL1QkTJItSEhVOWkUvj2
	Np22vxVd61Aei+axEDTKRzn/4Jo2oRNkS7qiIJ9NeyIW8b/hLx76+8L9LmDbDsCQ7AjqCFAiS9sLO
	H1dVMZ/vLyTVFHue4l/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQ5a-0003zw-Lp; Wed, 06 May 2020 19:52:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQ5B-0003sO-U1
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:51:55 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 164EA2076D;
 Wed,  6 May 2020 19:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588794713;
 bh=Ka6XaeJFGLEHETAtkDTVNC8JD3X9bt0CjpNM2vX+44E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AelTKDdo52MGwmw3yPmTCHzbM/m0gL+xZLLRgceBJH7B+QJdalPrneLy6aS+Nxk53
 4OilEM+cSdxqE365adbGTYN5Fjp6cU4aWhu8GShQKno8YyyLVQMTdjYwJ8bTuRZ5Lq
 sCFeNQB+C6EOSOtofEEFpX4TjT6C6SWpEUVoMH1Q=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 01/11] arm64: Document why we enable PAC support for leaf
 functions
Date: Wed,  6 May 2020 20:51:28 +0100
Message-Id: <20200506195138.22086-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506195138.22086-1-broonie@kernel.org>
References: <20200506195138.22086-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_125153_987003_38359764 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
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

Document the fact that we enable pointer authentication protection for
leaf functions since there is some narrow potential for ROP protection
benefits and little overhead has been observed.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149cc5d5..921c8ee8552b 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -71,6 +71,9 @@ branch-prot-flags-y += $(call cc-option,-mbranch-protection=none)
 
 ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
 branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
+# We enable additional protection for leaf functions as there is some
+# narrow potential for ROP protection benefits and no substantial
+# performance impact has been observed.
 branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
 # -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
 # compiler to generate them and consequently to break the single image contract
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
