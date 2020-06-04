Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494A91EE5C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Y2Rbtu0NyPrm40YdC1vqUSwUOZ2qv9e36+kDFUCcqU=; b=m0RX5o8Rq4+/Wy
	HXeYlzGNgIdSRqAUUuBQ3ry+cl1HbQ4vjlQF7X36Aqqwhz2tEI01rI5bmEdh8WW9pDAPOzUTuuoBV
	Ag23L59Y1m++Ynk/87wInalnyV5CCLlIT9kreAKwvmRonVPprgmtOlSuobbG8Pzf1xE3ld5oIeE3V
	CY/BsrEAuSlDSj37+b8hp5tcJQX84zL/hN9qSyNDUBY2UMSNGm0GVS8yAw8U90Po0XMeW7hJNABLp
	y+1XI+/sXcu9ul0pYcOEIziU+8ti6frQYzuIuDJ6smZ77DyV7By/xVYhu7JXYsXUWDPkSNGu+PRYl
	792YzxhH9VI0gl8v76FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqGt-00076i-Uf; Thu, 04 Jun 2020 13:51:03 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqGd-00070J-8b
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:50:49 +0000
Received: by mail-lj1-f193.google.com with SMTP id y11so5728071ljm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:50:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HscaqQ3a9rlG7LMvxfetj9PZadqBQlxA9luDvY709kI=;
 b=ZvmkMQHIZkQRVRxj0p91x/bSSlzRB0o0cl9+hfPdr9EGQpFzOx0KNkulN8A2c7hZtK
 CQwoVDMdJ+v5DYoKShuvKnw7e3pR2UIgrlIK7sQXqVrdnwKlvAz2bSkqLQANWtE4tX6N
 xV3k62yZ/Xcr4wT6lbFn32FmjDAKs2/5UNTFi7QdUqLBqrJ2bKKgNnhboVvnQlpAaTyq
 E1kBuqbC4xD7qzB51LOkyTeEDCB2+yYHEK+pINScXbf1omFbv4xyCenhUwprMJM8m0fx
 JYa/pmRA90vLoEFFJNihz0e7c1pB/LXTq7Ik7De5dS//2Yx7EbtzCWH4iZtcRLtiUsZJ
 CTUw==
X-Gm-Message-State: AOAM530xxhVnwxJZVWULSOzZP+T2OK+kMSRLfZyHTrvpUQwy8S8FVkAy
 NnqQL5JHOuAXd53n+yUZjaI=
X-Google-Smtp-Source: ABdhPJwFgNnX9eJFc5s+1RCeoml4wry3jADSZr+Uk82Gr4M4947yFLD4wkmGdf/0gl0X9+wHhybHLA==
X-Received: by 2002:a2e:8ec9:: with SMTP id e9mr2378478ljl.152.1591278644807; 
 Thu, 04 Jun 2020 06:50:44 -0700 (PDT)
Received: from localhost.localdomain ([185.248.161.177])
 by smtp.gmail.com with ESMTPSA id u16sm1202140lji.58.2020.06.04.06.50.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:50:43 -0700 (PDT)
From: Alexander Popov <alex.popov@linux.com>
To: Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Sven Schnelle <svens@stackframe.org>, Iurii Zaikin <yzaikin@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 Naohiro Aota <naohiro.aota@wdc.com>,
 Alexander Monakov <amonakov@ispras.ru>,
 Mathias Krause <minipli@googlemail.com>, PaX Team <pageexec@freemail.hu>,
 Brad Spengler <spender@grsecurity.net>, Laura Abbott <labbott@redhat.com>,
 Florian Weimer <fweimer@redhat.com>,
 Alexander Popov <alex.popov@linux.com>,
 kernel-hardening@lists.openwall.com, linux-kbuild@vger.kernel.org,
 x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, gcc@gcc.gnu.org
Subject: [PATCH 1/5] gcc-plugins/stackleak: Exclude alloca() from the
 instrumentation logic
Date: Thu,  4 Jun 2020 16:49:53 +0300
Message-Id: <20200604134957.505389-2-alex.popov@linux.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200604134957.505389-1-alex.popov@linux.com>
References: <20200604134957.505389-1-alex.popov@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065047_321968_90E76A01 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [a13xp0p0v88[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [a13xp0p0v88[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: notify@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some time ago Variable Length Arrays (VLA) were removed from the kernel.
The kernel is built with '-Wvla'. Let's exclude alloca() from the
instrumentation logic and make it simpler. The build-time assertion
against alloca() is added instead.

Unfortunately, for that assertion we can't simply check cfun->calls_alloca
during RTL phase. It turned out that gcc before version 7 called
allocate_dynamic_stack_space() from expand_stack_vars() for runtime
alignment of constant-sized stack variables. That caused cfun->calls_alloca
to be set for functions that don't use alloca().

Signed-off-by: Alexander Popov <alex.popov@linux.com>
---
 scripts/gcc-plugins/stackleak_plugin.c | 51 +++++++++++---------------
 1 file changed, 21 insertions(+), 30 deletions(-)

diff --git a/scripts/gcc-plugins/stackleak_plugin.c b/scripts/gcc-plugins/stackleak_plugin.c
index cc75eeba0be1..1ecfe50d0bf5 100644
--- a/scripts/gcc-plugins/stackleak_plugin.c
+++ b/scripts/gcc-plugins/stackleak_plugin.c
@@ -9,10 +9,9 @@
  * any of the gcc libraries
  *
  * This gcc plugin is needed for tracking the lowest border of the kernel stack.
- * It instruments the kernel code inserting stackleak_track_stack() calls:
- *  - after alloca();
- *  - for the functions with a stack frame size greater than or equal
- *     to the "track-min-size" plugin parameter.
+ * It instruments the kernel code inserting stackleak_track_stack() calls
+ * for the functions with a stack frame size greater than or equal to
+ * the "track-min-size" plugin parameter.
  *
  * This plugin is ported from grsecurity/PaX. For more information see:
  *   https://grsecurity.net/
@@ -46,7 +45,7 @@ static struct plugin_info stackleak_plugin_info = {
 		"disable\t\tdo not activate the plugin\n"
 };
 
-static void stackleak_add_track_stack(gimple_stmt_iterator *gsi, bool after)
+static void stackleak_add_track_stack(gimple_stmt_iterator *gsi)
 {
 	gimple stmt;
 	gcall *stackleak_track_stack;
@@ -56,12 +55,7 @@ static void stackleak_add_track_stack(gimple_stmt_iterator *gsi, bool after)
 	/* Insert call to void stackleak_track_stack(void) */
 	stmt = gimple_build_call(track_function_decl, 0);
 	stackleak_track_stack = as_a_gcall(stmt);
-	if (after) {
-		gsi_insert_after(gsi, stackleak_track_stack,
-						GSI_CONTINUE_LINKING);
-	} else {
-		gsi_insert_before(gsi, stackleak_track_stack, GSI_SAME_STMT);
-	}
+	gsi_insert_before(gsi, stackleak_track_stack, GSI_SAME_STMT);
 
 	/* Update the cgraph */
 	bb = gimple_bb(stackleak_track_stack);
@@ -87,14 +81,13 @@ static bool is_alloca(gimple stmt)
 
 /*
  * Work with the GIMPLE representation of the code. Insert the
- * stackleak_track_stack() call after alloca() and into the beginning
- * of the function if it is not instrumented.
+ * stackleak_track_stack() call into the beginning of the function.
  */
 static unsigned int stackleak_instrument_execute(void)
 {
 	basic_block bb, entry_bb;
-	bool prologue_instrumented = false, is_leaf = true;
-	gimple_stmt_iterator gsi;
+	bool is_leaf = true;
+	gimple_stmt_iterator gsi = { 0 };
 
 	/*
 	 * ENTRY_BLOCK_PTR is a basic block which represents possible entry
@@ -111,27 +104,17 @@ static unsigned int stackleak_instrument_execute(void)
 	 */
 	FOR_EACH_BB_FN(bb, cfun) {
 		for (gsi = gsi_start_bb(bb); !gsi_end_p(gsi); gsi_next(&gsi)) {
-			gimple stmt;
-
-			stmt = gsi_stmt(gsi);
+			gimple stmt = gsi_stmt(gsi);
 
 			/* Leaf function is a function which makes no calls */
 			if (is_gimple_call(stmt))
 				is_leaf = false;
 
-			if (!is_alloca(stmt))
-				continue;
-
-			/* Insert stackleak_track_stack() call after alloca() */
-			stackleak_add_track_stack(&gsi, true);
-			if (bb == entry_bb)
-				prologue_instrumented = true;
+			/* Variable Length Arrays are forbidden in the kernel */
+			gcc_assert(!is_alloca(stmt));
 		}
 	}
 
-	if (prologue_instrumented)
-		return 0;
-
 	/*
 	 * Special cases to skip the instrumentation.
 	 *
@@ -168,7 +151,7 @@ static unsigned int stackleak_instrument_execute(void)
 		bb = single_succ(ENTRY_BLOCK_PTR_FOR_FN(cfun));
 	}
 	gsi = gsi_after_labels(bb);
-	stackleak_add_track_stack(&gsi, false);
+	stackleak_add_track_stack(&gsi);
 
 	return 0;
 }
@@ -185,12 +168,20 @@ static bool large_stack_frame(void)
 /*
  * Work with the RTL representation of the code.
  * Remove the unneeded stackleak_track_stack() calls from the functions
- * which don't call alloca() and don't have a large enough stack frame size.
+ * that don't have a large enough stack frame size.
  */
 static unsigned int stackleak_cleanup_execute(void)
 {
 	rtx_insn *insn, *next;
 
+	/*
+	 * gcc before version 7 called allocate_dynamic_stack_space() from
+	 * expand_stack_vars() for runtime alignment of constant-sized stack
+	 * variables. That caused cfun->calls_alloca to be set for functions
+	 * that don't use alloca().
+	 * For more info see gcc commit 7072df0aae0c59ae437e.
+	 * Let's leave such functions instrumented.
+	 */
 	if (cfun->calls_alloca)
 		return 0;
 
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
