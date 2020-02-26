Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1576117071E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltTj08FUxkIyhBM2JZhGvSnfdBA3kpKoBO+LrXrQBl8=; b=g8MKAe/idnc+5I
	qVEtW0dBZcnZqmd5ErfQGLxBa63g5pU2u6cxTID30IaNEu7lneYZguOYwa8iu8ucKqADSFoilEunK
	V3z3zTKdGud0nxo78T+SvivjY+C2hdonXrtoCHNrfn25SNslQazjPMJlRUOw6Z2s+Tzv70zehaKPV
	GMfJFQ+vPF6+j+9+JCYg3g64E5tSrUNhWs96oC6wClupPg3un7PoAGZoDWzdSaSe/ds1QgogS+UnX
	s76OASDFBU3VucdKMqKIuX92yhDuzRDl1DUIDkIMzWh0IZNPCnjZNtJj/njY93UZRtvZJIfz7jKYf
	4OZ2ebFkMWIt6AO/s4Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j716l-00016a-CX; Wed, 26 Feb 2020 18:08:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j714C-0007SL-KU
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:05:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C56C30E;
 Wed, 26 Feb 2020 10:05:51 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B27883F881;
 Wed, 26 Feb 2020 10:05:49 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/19] arm64: mte: Add specific SIGSEGV codes
Date: Wed, 26 Feb 2020 18:05:16 +0000
Message-Id: <20200226180526.3272848-10-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226180526.3272848-1-catalin.marinas@arm.com>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100553_067453_DEF9F600 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, "Eric W. Biederman" <ebiederm@xmission.com>,
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
Cc: Eric W. Biederman <ebiederm@xmission.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
[catalin.marinas@arm.com: renamed precise/imprecise to sync/async]
[catalin.marinas@arm.com: dropped #ifdef __aarch64__, renumbered]
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---

Notes:
    v2:
    - Dropped the #ifdef __aarch64__.
    - Renumbered the SEGV_MTE* values to avoid clash with ADI.

 include/uapi/asm-generic/siginfo.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/uapi/asm-generic/siginfo.h b/include/uapi/asm-generic/siginfo.h
index cb3d6c267181..7aacf9389010 100644
--- a/include/uapi/asm-generic/siginfo.h
+++ b/include/uapi/asm-generic/siginfo.h
@@ -229,7 +229,9 @@ typedef struct siginfo {
 #define SEGV_ACCADI	5	/* ADI not enabled for mapped object */
 #define SEGV_ADIDERR	6	/* Disrupting MCD error */
 #define SEGV_ADIPERR	7	/* Precise MCD exception */
-#define NSIGSEGV	7
+#define SEGV_MTEAERR	8	/* Asynchronous ARM MTE error */
+#define SEGV_MTESERR	9	/* Synchronous ARM MTE exception */
+#define NSIGSEGV	9
 
 /*
  * SIGBUS si_codes

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
