Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3B3BF7F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 19:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BWPg1jbva/RPRBFKOy76+Yilfi8K5QMs9iE55gubGIE=; b=Ioe8teVCJsS5YkjWL2v8JARpFX
	AytoT+GmEGGYx4YRkC/eJHkb14+M+I5SAP5j3+IKN+/0ltCNlDGk+2ODl8nI3HhkRGiPC0btTZoUe
	hTI3H0VN39WqhE6rLjubThPw3GMgrP42FmAuTitmakpjLzBKF5TI7glFuUSlLXLk8Gdz8SdSHnznl
	9wUkca5Prwn/JBbcPBQFKgaIJ+TmaAfLsMZaq0DlKW4kfiAKL8Ze1ksrj9fHCcz/S4JCDV5JGG6W/
	dhUJBWJ/r4tLrj5TWcxDvGEbqy3a06lUycaQO5V02X4YhE07JRdIvHXDpoNQ4KAn2SmZQwwvMp0Zi
	TCu2hbog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDXxA-00045h-W9; Thu, 26 Sep 2019 17:53:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDXwh-0003vG-IW
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 17:52:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0D861570;
 Thu, 26 Sep 2019 10:52:49 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D48AE3F67D;
 Thu, 26 Sep 2019 10:52:48 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v2 1/2] kselftest: add capability to skip chosen TARGETS
Date: Thu, 26 Sep 2019 18:52:18 +0100
Message-Id: <20190926175219.29805-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926175219.29805-1-cristian.marussi@arm.com>
References: <20190926175219.29805-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_105251_653731_02FD557C 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tim.Bird@sony.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let the user specify an optional TARGETS skiplist through the new optional
SKIP_TARGETS Makefile variable.

It is easier to skip at will using a reduced and well defined list of
possibly problematic targets with SKIP_TARGETS than to provide a partially
stripped down list of good targets using the usual TARGETS variable.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v1 --> v2
- fixed commit msg
- added documentation fix
- added forced override to allow TARGETS= and SKIP_TARGETS
  being both passed on the cmdline
---
 Documentation/dev-tools/kselftest.rst | 16 ++++++++++++++++
 tools/testing/selftests/Makefile      |  7 +++++++
 2 files changed, 23 insertions(+)

diff --git a/Documentation/dev-tools/kselftest.rst b/Documentation/dev-tools/kselftest.rst
index 25604904fa6e..ecdfdc9d4b03 100644
--- a/Documentation/dev-tools/kselftest.rst
+++ b/Documentation/dev-tools/kselftest.rst
@@ -89,6 +89,22 @@ To build, save output files in a separate directory with KBUILD_OUTPUT ::
 
   $ export KBUILD_OUTPUT=/tmp/kselftest; make TARGETS="size timers" kselftest
 
+Additionally you can use the "SKIP_TARGETS" variable on the make command
+line to specify one or more targets to exclude from the TARGETS list.
+
+To run all tests but a single subsystem::
+
+  $ make -C tools/testing/selftests SKIP_TARGETS=ptrace run_tests
+
+You can specify multiple tests to skip::
+
+  $  make SKIP_TARGETS="size timers" kselftest
+
+You can also specify a restricted list of tests to run together with a
+dedicated skiplist::
+
+  $  make TARGETS="bpf breakpoints size timers" SKIP_TARGETS=bpf kselftest
+
 See the top-level tools/testing/selftests/Makefile for the list of all
 possible targets.
 
diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index 25b43a8c2b15..9621b26ee433 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -63,6 +63,13 @@ TARGETS += zram
 TARGETS_HOTPLUG = cpu-hotplug
 TARGETS_HOTPLUG += memory-hotplug
 
+# User can optionally provide a TARGETS skiplist.
+SKIP_TARGETS ?=
+ifneq ($(SKIP_TARGETS),)
+	TMP := $(filter-out $(SKIP_TARGETS), $(TARGETS))
+	override TARGETS := $(TMP)
+endif
+
 # Clear LDFLAGS and MAKEFLAGS if called from main
 # Makefile to avoid test build failures when test
 # Makefile doesn't have explicit build rules.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
