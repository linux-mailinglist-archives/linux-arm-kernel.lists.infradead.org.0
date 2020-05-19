Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480911D961A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBQJRuVz6QuROjexwG56+S7ziPugXhBMBC4gy9B3Duk=; b=cRYYh8PDs9YfLW
	ARgfuIcvFYInOyVjuvLUhOhfyhG7t8Xp/di0WCONr0qxUE1K4TV9v+XBxYT77JJewjZ33D9icKm6R
	H8khpQ8uGn3Qy0QzYq375XkbNwETfxLu89qfCxEHYh/dz2fUdJrjY/P8/E1hl00776Ls2l7Kx/h7n
	4/WIXWrN9dfEElEx9lxlvY/HJZzNNAXBXCNRxe4qOlXxSQ4fkCOltXRZq0I1R5xkLAvzB0TBqdUNe
	4EaGDArSwVquf80uT/C0Tnh/6uNAPp8Hzwz2NxNJQUpn37Dw09lEtO3wiYCDgdVcAK9jUYjtn6RnF
	p2VE5fg58RFfmSvcY/yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1DH-0006oK-RU; Tue, 19 May 2020 12:19:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1CV-0006PM-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:18:29 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 240E02083E;
 Tue, 19 May 2020 12:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589890707;
 bh=9hizqxH5bZl0D2JMYdd3jwhxpTD5roSA9FJrqXTWvyY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=K3VFk09pUOo2Askd263AEAFU+GmwVViAtNqCajr0Yr4b9+H5lIWD5LdnFte8dPOnK
 6xHRHPF1ZFM01zH1OSQPF3m3AQhi1vIX1vTvttVaQNb8qUM0PciCUSvd+zSZ4Bwxot
 hfM6DzPzLypYmaIrxMPlHpE9NKgdZ42j2CqD30R0=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: vdso: Add a comment to justify the mysterious NOP
 in sigreturn
Date: Tue, 19 May 2020 13:18:17 +0100
Message-Id: <20200519121818.14511-3-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519121818.14511-1-will@kernel.org>
References: <20200519121818.14511-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_051827_771669_2FE38297 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will@kernel.org>, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Every so often we have to remind ourselves about the purpose of the
weird NOP instruction immediately preceding the sigreturn trampoline.

Add a short comment to state that it exists for some unwinders that
determine the caller address by subtracting from the return address.

Cc: Dave Martin <dave.martin@arm.com>
Cc: Daniel Kiss <daniel.kiss@arm.com>
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/sigreturn.S | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
index 83ac284dae79..7853fa9692f6 100644
--- a/arch/arm64/kernel/vdso/sigreturn.S
+++ b/arch/arm64/kernel/vdso/sigreturn.S
@@ -14,7 +14,12 @@
 
 	.text
 
-	nop
+/*
+ * This mysterious NOP is required for some unwinders that subtract one from
+ * the return address in order to identify the calling function.
+ * Hack borrowed from arch/powerpc/kernel/vdso64/sigtramp.S.
+ */
+	nop	// Mysterious NOP
 /*
  * GDB relies on being able to identify the sigreturn instruction sequence to
  * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
