Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF621BE9BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sI6ibTLzIezXoa3shOdPOnOfcEaTb0IiDoqSk0K/9VY=; b=V0cBqzRrNgq5GG
	ZFMxYP6Ps2ASGSlYnrNF4aUEasCZhIUFQZxLlDnNFWiRF2RMsQHW6p8eBLrJ3daXN6DqmdzZUQgI0
	UdYXTVckTX/qCNb6tLlI1mWv9ppH5QCq13JLJ3NBBRNFr/Jj2guFpTlOjsBvWHtl5x4szzrLY7czy
	EYki/42GFGZvKemn6vnMXqGkHCPTk/aN4crBZVpqmhuz7g+7O0AE0wKMRx+v1t4wbYQU7D0d8W3qf
	qahA/ivBKOT1Vg8xj5xG73GUxwZY7rXH/AUpfgeb5NI2SYPD636U2CQ8YuV68bEjAThTxvqxdy2JY
	EXhUj/bmzxFQ6R25ihHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTu8X-0000RC-5K; Wed, 29 Apr 2020 21:20:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTu7Y-00063m-NQ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:19:57 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBD8F2076B;
 Wed, 29 Apr 2020 21:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588195196;
 bh=F/zbGx9awGb7X4Qq/eWzyaS7RABWV/r3+pj/oVStL5I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LyttrXuBhk1jQMIkwmHAh/hHSqEapUb8zgN6NIjRJXwbBgix1aH7oEFn6yabXDupF
 8i9BOG+XgRQJcc3g0pP7LoPZgm5EViDjoCel5+kUcBgm7dhffbGDz/CGzHJNPVnCBd
 k+VBYBjCcxekb8nVmAZiy8250B29DZfK2N8DYCZY=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 01/10] arm64: bti: Support building kernel C code using BTI
Date: Wed, 29 Apr 2020 22:16:32 +0100
Message-Id: <20200429211641.9279-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429211641.9279-1-broonie@kernel.org>
References: <20200429211641.9279-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_141956_782052_B008CB5B 
X-CRM114-Status: UNSURE (   8.74  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
