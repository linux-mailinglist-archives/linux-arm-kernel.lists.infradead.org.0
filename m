Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CADE21AA394
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sI6ibTLzIezXoa3shOdPOnOfcEaTb0IiDoqSk0K/9VY=; b=pgS5EqTZlWgtBK
	7QfI8q6JobGcLfWVN1+iYBE2at+0eBVa5x6bIWHGiCN4NVej5+MbIUsjT4Z0cSggLOCdtrgK1tdSC
	rKZOWvATxLNKORsWka58T3AipVo4QmglnzKzvrfvKQABx8FGGary0fMNKJ3S7Dw3aiMdeN+XbWOJh
	N8Ozv2kfCLAVtdKEHnSGF7XalYN4reqO+0aF57TOK/RmPg0h0unBdRdTQrw6mCTG5SYjr+VuK21kv
	ofk4MkvAtbl8q7M1lb/lfi3AUEfIBkiYNqc9Ws9vAWdSIVUCRJoDpzuoukyumwV2j4kJ1XfybiEPh
	eTmE6LUsQL4aA/USAEdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhqN-0001Ls-It; Wed, 15 Apr 2020 13:12:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpc-0000ur-NT
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:11:58 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A9072076D;
 Wed, 15 Apr 2020 13:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956316;
 bh=F/zbGx9awGb7X4Qq/eWzyaS7RABWV/r3+pj/oVStL5I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pwUyIHZH86tKbvfBBB3dQHzNFnhQg/AfiMc+JewAdKNtJPp1/jLoCb9iZ9/Jg6AJm
 0mw2aZTcm+EdR7PuZutgnBAA7BznhsOvvFwo6aaAzpP7B1E5nn/eSopaI01JJsz7fs
 b8R5Vr6lJg5UcKJC7auTDOHrWKnV6NCuH2FfLAVY=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 02/10] arm64: bti: Support building kernel C code using BTI
Date: Wed, 15 Apr 2020 14:07:41 +0100
Message-Id: <20200415130750.18645-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061157_247772_3B1711AB 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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

When running with BTI enabled we need to ask the compiler to enable
generation of BTI landing pads beyond those generated as a result of
pointer authentication instructions being landing pads. Since the two
features are practically speaking unlikely to be used separately we
will make kernel mode BTI depend on pointer authentication in order
to simplify the Makefile.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149cc5d5..90150b5b180e 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -71,7 +71,11 @@ branch-prot-flags-y += $(call cc-option,-mbranch-protection=none)
 
 ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
 branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
+ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
+branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
+else
 branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
+endif
 # -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
 # compiler to generate them and consequently to break the single image contract
 # we pass it only to the assembler. This option is utilized only in case of non
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
