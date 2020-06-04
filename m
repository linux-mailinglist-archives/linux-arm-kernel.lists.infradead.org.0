Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E419A1EE5E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXYeD1HP2e19lDj6LbGe+G6oKTJ0tCtXyWvqTyyaq/E=; b=TG5lWRnUSoDzmN
	eOya9rTiEq6caG90f8nBxlLF9k6DdV/U/aET0x7TKI9HV0QdXk08OP72MAl6arijtwJpSOLJeWVdY
	VwQRJyPdOci31BRSFS6DbFYHUF8AYf7tYJ9dPbnfefzyoCas7Uhnry2aAZHgOYJ3btg2YDlp6bsTl
	d/G6Sa9kq8dt2zRK51LPDw2fRGnQozJazg2bYIaOKHriO62686P79VkDBg4dSSE8PGkqxvMmtjeDJ
	HRHH2z6qWYVs+itO+0azRMfn/Ej26lub6xrFr77V/z8ufKfPvyEPmKlXE2q4EAZujbzTgEwaD70bp
	/1qfnxo9JZw4h4cgOY0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqHk-0008Ao-SB; Thu, 04 Jun 2020 13:51:56 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqGr-0007If-P7
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:51:03 +0000
Received: by mail-lj1-f193.google.com with SMTP id m18so7376084ljo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:51:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bKAdfvJmk5cJtK5g50ZHk8hu9sp158iPwKZPpTWkeYg=;
 b=BCQLeGvQtXmyl6NZtxSNVn0NeOpYjer460ujS+Pt8h5uX2L5QDEEknlVZ1LkEt1WZv
 hOEODukptAG7uBpH3IyLagKn0QNSXogaq2EAcUOj4m4DX2IizzGpjGjg2Z8D9jpElAkC
 0EVkbdYD30gQLIN19q3GRrEfp+Njq4hN4mqJJnmKBxexQwF7xsOiQnLJ5QKZdSByNFOg
 bf465iiGu9g5rXzT2CfCot2Z+GTK8NnfyYLwnDMxl56aeem8+SsSPa/SlLi10rcmy+5y
 73z9ejCBjrkzjJtNUdztwiXYzO6ZKN4ltAXmwbMOfYpabCLwhgvGIGrsE/5F+8hI/TEL
 mznQ==
X-Gm-Message-State: AOAM533vG+7mhcaxGTWmee1AG3ra5ogKvegSK12S8oQRObOZC+WasBsL
 DilKCoWkPaHNJXMpWAdwVCU=
X-Google-Smtp-Source: ABdhPJyaEJiFG1nukoZekZitzyjRXSvRiSbJSp8S8jS/4CPjpOJZ15oCqdnMtSvYh0QGwlrPyIn8nA==
X-Received: by 2002:a2e:9917:: with SMTP id v23mr2338833lji.225.1591278660052; 
 Thu, 04 Jun 2020 06:51:00 -0700 (PDT)
Received: from localhost.localdomain ([185.248.161.177])
 by smtp.gmail.com with ESMTPSA id u16sm1202140lji.58.2020.06.04.06.50.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:50:59 -0700 (PDT)
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
Subject: [PATCH 3/5] gcc-plugins/stackleak: Add 'verbose' plugin parameter
Date: Thu,  4 Jun 2020 16:49:55 +0300
Message-Id: <20200604134957.505389-4-alex.popov@linux.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200604134957.505389-1-alex.popov@linux.com>
References: <20200604134957.505389-1-alex.popov@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065102_012031_0CDC947C 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [a13xp0p0v88[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [a13xp0p0v88[at]gmail.com]
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

Add 'verbose' plugin parameter for stackleak gcc plugin.
It can be used for printing additional info about the kernel code
instrumentation.

For using it add the following to scripts/Makefile.gcc-plugins:
  gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_STACKLEAK) \
    += -fplugin-arg-stackleak_plugin-verbose

Signed-off-by: Alexander Popov <alex.popov@linux.com>
---
 scripts/gcc-plugins/stackleak_plugin.c | 31 +++++++++++++++++++++-----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/scripts/gcc-plugins/stackleak_plugin.c b/scripts/gcc-plugins/stackleak_plugin.c
index 0769c5b9156d..19358712d4ed 100644
--- a/scripts/gcc-plugins/stackleak_plugin.c
+++ b/scripts/gcc-plugins/stackleak_plugin.c
@@ -33,6 +33,8 @@ __visible int plugin_is_GPL_compatible;
 static int track_frame_size = -1;
 static bool build_for_x86 = false;
 static const char track_function[] = "stackleak_track_stack";
+static bool disable = false;
+static bool verbose = false;
 
 /*
  * Mark these global variables (roots) for gcc garbage collector since
@@ -45,6 +47,7 @@ static struct plugin_info stackleak_plugin_info = {
 	.help = "track-min-size=nn\ttrack stack for functions with a stack frame size >= nn bytes\n"
 		"arch=target_arch\tspecify target build arch\n"
 		"disable\t\tdo not activate the plugin\n"
+		"verbose\t\tprint info about the instrumentation\n"
 };
 
 static void add_stack_tracking_gcall(gimple_stmt_iterator *gsi)
@@ -98,6 +101,10 @@ static tree get_current_stack_pointer_decl(void)
 		return var;
 	}
 
+	if (verbose) {
+		fprintf(stderr, "stackleak: missing current_stack_pointer in %s()\n",
+			DECL_NAME_POINTER(current_function_decl));
+	}
 	return NULL_TREE;
 }
 
@@ -366,6 +373,7 @@ static bool remove_stack_tracking_gasm(void)
  */
 static unsigned int stackleak_cleanup_execute(void)
 {
+	const char *fn = DECL_NAME_POINTER(current_function_decl);
 	bool removed = false;
 
 	/*
@@ -376,11 +384,17 @@ static unsigned int stackleak_cleanup_execute(void)
 	 * For more info see gcc commit 7072df0aae0c59ae437e.
 	 * Let's leave such functions instrumented.
 	 */
-	if (cfun->calls_alloca)
+	if (cfun->calls_alloca) {
+		if (verbose)
+			fprintf(stderr, "stackleak: instrument %s() old\n", fn);
 		return 0;
+	}
 
-	if (large_stack_frame())
+	if (large_stack_frame()) {
+		if (verbose)
+			fprintf(stderr, "stackleak: instrument %s()\n", fn);
 		return 0;
+	}
 
 	if (lookup_attribute_spec(get_identifier("no_caller_saved_registers")))
 		removed = remove_stack_tracking_gasm();
@@ -506,9 +520,6 @@ __visible int plugin_init(struct plugin_name_args *plugin_info,
 
 	/* Parse the plugin arguments */
 	for (i = 0; i < argc; i++) {
-		if (!strcmp(argv[i].key, "disable"))
-			return 0;
-
 		if (!strcmp(argv[i].key, "track-min-size")) {
 			if (!argv[i].value) {
 				error(G_("no value supplied for option '-fplugin-arg-%s-%s'"),
@@ -531,6 +542,10 @@ __visible int plugin_init(struct plugin_name_args *plugin_info,
 
 			if (!strcmp(argv[i].value, "x86"))
 				build_for_x86 = true;
+		} else if (!strcmp(argv[i].key, "disable")) {
+			disable = true;
+		} else if (!strcmp(argv[i].key, "verbose")) {
+			verbose = true;
 		} else {
 			error(G_("unknown option '-fplugin-arg-%s-%s'"),
 					plugin_name, argv[i].key);
@@ -538,6 +553,12 @@ __visible int plugin_init(struct plugin_name_args *plugin_info,
 		}
 	}
 
+	if (disable) {
+		if (verbose)
+			fprintf(stderr, "stackleak: disabled for this translation unit\n");
+		return 0;
+	}
+
 	/* Give the information about the plugin */
 	register_callback(plugin_name, PLUGIN_INFO, NULL,
 						&stackleak_plugin_info);
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
