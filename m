Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9B011BC0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5gGL1xRiu2+qmcPG/TwfdjmDfWM653ycSNFoPrZ7R4=; b=Uug7MOc2G3Uqxd
	t7jZjlg0scnyrZvKakdB3lExY56U4QOZzFdXRwr7UplP69Gncn2DBNXiaVc+W6RV4lItzEIEz5WjV
	Zq1S/199+0CiZ297Wvo0xq9DMCYUTYeCSek94INl58HKExtqndSQ18ZlkCOOdS+uXd7QqcUOTA2fj
	sGSJpa8I1xYWSJk3ij1wFDYPKoB5rfJK7HLLdyUK8Z82FAk40Zk3dgy/T6RiOgz5my69rGBq1ETXX
	mWq1hr6YKaCwoE2stNoqHJgD7vCFu5nf6j+L5Be2ZZ8EtRuNd33g8yiGHthOgtvaJa4ajPEoepwnv
	rtQfBVdv6niNnMkJNtgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6xY-0005dB-24; Wed, 11 Dec 2019 18:43:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6uv-0003E1-RB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:40:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7D2D143D;
 Wed, 11 Dec 2019 10:40:57 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 241EC3F6CF;
 Wed, 11 Dec 2019 10:40:56 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 12/22] arm64: mte: Add specific SIGSEGV codes
Date: Wed, 11 Dec 2019 18:40:17 +0000
Message-Id: <20191211184027.20130-13-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104057_956112_4335788F 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Marc Zyngier <maz@kernel.org>, Kevin Brodsky <kevin.brodsky@arm.com>,
 linux-mm@kvack.org, Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

Add MTE-specific SIGSEGV codes to siginfo.h.

Note that the for MTE we are reusing the same SPARC ADI codes because
the two functionalities are similar and they cannot coexist on the same
system.

Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
[catalin.marinas@arm.com: renamed precise/imprecise to sync/async]
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 include/uapi/asm-generic/siginfo.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/uapi/asm-generic/siginfo.h b/include/uapi/asm-generic/siginfo.h
index cb3d6c267181..a5184a5438c6 100644
--- a/include/uapi/asm-generic/siginfo.h
+++ b/include/uapi/asm-generic/siginfo.h
@@ -227,8 +227,13 @@ typedef struct siginfo {
 # define SEGV_PKUERR	4	/* failed protection key checks */
 #endif
 #define SEGV_ACCADI	5	/* ADI not enabled for mapped object */
-#define SEGV_ADIDERR	6	/* Disrupting MCD error */
-#define SEGV_ADIPERR	7	/* Precise MCD exception */
+#ifdef __aarch64__
+# define SEGV_MTEAERR	6	/* Asynchronous MTE error */
+# define SEGV_MTESERR	7	/* Synchronous MTE exception */
+#else
+# define SEGV_ADIDERR	6	/* Disrupting MCD error */
+# define SEGV_ADIPERR	7	/* Precise MCD exception */
+#endif
 #define NSIGSEGV	7
 
 /*

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
