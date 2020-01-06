Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494AC1318FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G52uV1SjeOuzGGjjkZa5NXEFNE7kNRAYeXOORIiFA+E=; b=pCC7a4SAmRVpXJ
	Yt80GOq0ckaG1Ve5x5iBY7RzeQzVcI2ivUa3hJLdMd/Wwe8GNeAAutYoZ19TtNIOr3vGb23jQnm9N
	jl+2lpL8ucGarqQYrWw5GGDOZp03yK1jaoAmSavErm4CrDPr2c0Ui+6Hdtn59TLFJ5sJvL59o5Gkj
	pnZuV/fDGp3hQbzF1+diqCEr1QAmnlytoJn8zeKIHpLKI/r3iFuBFH0vo3y+gK4Po3uKz0yxCgIQQ
	fuFKrqfzgsA/cwKjjtArDTA6k4fhT7nbl9dviIUuDda8n9OGV/TUvK4hSW3TvQIHXo184mvdw0qkd
	tZuQ/ogI+XdwnSMTkFyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioYeC-0004ZV-Oc; Mon, 06 Jan 2020 20:06:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioYdu-0004S7-Bf
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 20:06:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71DB9DA7;
 Mon,  6 Jan 2020 12:06:23 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDD403F534;
 Mon,  6 Jan 2020 12:06:22 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 1/3] arm64: asm: Add new-style position independent function
 annotations
Date: Mon,  6 Jan 2020 19:58:16 +0000
Message-Id: <20200106195818.56351-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200106195818.56351-1-broonie@kernel.org>
References: <20200106195818.56351-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_120626_436577_A1AA66BB 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As part of an effort to make the annotations in assembly code clearer and
more consistent new macros have been introduced, including replacements
for ENTRY() and ENDPROC().

On arm64 we have ENDPIPROC(), a custom version of ENDPROC() which is
used for code that will need to run in position independent environments
like EFI, it creates an alias for the function with the prefix __pi_ and
then emits the standard ENDPROC. Add new-style macros to replace this
which expand to the standard SYM_FUNC_*() and SYM_FUNC_ALIAS_*(),
resulting in the same object code. These are added in linkage.h for
consistency with where the generic assembler code has its macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/linkage.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/linkage.h b/arch/arm64/include/asm/linkage.h
index 1b266292f0be..23944ce14969 100644
--- a/arch/arm64/include/asm/linkage.h
+++ b/arch/arm64/include/asm/linkage.h
@@ -4,4 +4,20 @@
 #define __ALIGN		.align 2
 #define __ALIGN_STR	".align 2"
 
+/*
+ * Annotate a function as position independent, i.e., safe to be called before
+ * the kernel virtual mapping is activated.
+ */
+#define SYM_FUNC_START_PI(x) \
+		SYM_FUNC_START_ALIAS(__pi_##x) ASM_NL \
+		SYM_FUNC_START(x)
+
+#define SYM_FUNC_START_PI_WEAK(x) \
+		SYM_FUNC_START_ALIAS(__pi_##x) ASM_NL \
+		SYM_FUNC_START_WEAK(x)
+
+#define SYM_FUNC_END_PI(x) \
+		SYM_FUNC_END(x) ASM_NL \
+		SYM_FUNC_END_ALIAS(__pi_##x)
+
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
