Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D981CDD16
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 10:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kdJ1eV6m/cCI1a3pNJOGt8qKQj02CK5JYd3Ev8wfCkw=; b=o01uYugol63qSp
	P6brzQlq18bg5MGWFiHOG79T1TeuzOdqxD9qKu9QYxuZ9VCZb+N9ncXA+2dWZ3X+wPu+IsUNr2kYK
	zWiK1vkapIasvXOI9QZq+6ckP726kcqVJB99XdZgeGj3/wdocYmfa8j3eBFyYs9SLbwBqShdSr5Ga
	tEM10EMa7LmWOqVmHqkUZuX1AqWQMNmCjeIQXe0y8yLusJY6/v0Z8rB1AEeJJkiylQJo5LU8AhFuJ
	IXEDH6X8d6xrya0h9xfQZw+7kyirz6zaiXxmJaustwAm20fLpRg78lJyozaZghKHMgtN7mvQSKJMa
	QDEOiARNQFPxMxQMl+gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOFG-0004UU-8M; Mon, 07 Oct 2019 08:19:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOF9-0004Tp-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 08:19:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74FFC1570;
 Mon,  7 Oct 2019 01:19:43 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (unknown [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD17F3F68E;
 Mon,  7 Oct 2019 01:19:42 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [RFC PATCH] selftests: fix build targets behaviour on failures
Date: Mon,  7 Oct 2019 09:19:17 +0100
Message-Id: <20191007081917.13242-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_011947_356584_0BF20271 
X-CRM114-Status: GOOD (  12.36  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, when some of the KSFT subsystems specified in TARGETS fails to
build, the toplevel Makefile just keeps carrying on with the build process.

This behaviour is expected and desirable especially in the context of a CI
system running KSelfTest where is not always easy to guarantee that the
most recent and esoteric toolchain's dependencies are respected across all
KSFT TARGETS in a timely manner.

Unfortunately, as of now, this holds true only if the very last of the
subsystems listed in TARGETS happened to be one that could be successfully
built: if the last listed TARGETS fails, it is taken as the whole outcome
of the Makefile target and the complete build/install halts even though
many other preceding subsytems were in fact already successfully built.

Fix the KSFT Makefile behaviour related to all/install targets in order
to fail as a whole only when the all/install targets have failed for all
of the requested TARGETS, while succeeding when at least one of TARGETS
has been successfully built.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
This patch is based on ksft/fixes branch from:

git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest.git

on top of commit:

ce3a67780212 selftests: watchdog: Add command line option to show watchdog_info
---
 tools/testing/selftests/Makefile | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index 4cdbae6f4e61..d907b050e929 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -140,11 +140,13 @@ else
 endif
 
 all: khdr
-	@for TARGET in $(TARGETS); do		\
-		BUILD_TARGET=$$BUILD/$$TARGET;	\
-		mkdir $$BUILD_TARGET  -p;	\
-		$(MAKE) OUTPUT=$$BUILD_TARGET -C $$TARGET;\
-	done;
+	@ret=1;							\
+	for TARGET in $(TARGETS); do				\
+		BUILD_TARGET=$$BUILD/$$TARGET;			\
+		mkdir $$BUILD_TARGET  -p;			\
+		$(MAKE) OUTPUT=$$BUILD_TARGET -C $$TARGET;	\
+		ret=$$((ret * $$?));				\
+	done; exit $$ret;
 
 run_tests: all
 	@for TARGET in $(TARGETS); do \
@@ -192,10 +194,12 @@ ifdef INSTALL_PATH
 	mkdir -p $(INSTALL_PATH)/kselftest
 	install -m 744 kselftest/runner.sh $(INSTALL_PATH)/kselftest/
 	install -m 744 kselftest/prefix.pl $(INSTALL_PATH)/kselftest/
-	@for TARGET in $(TARGETS); do \
+	@ret=1;	\
+	for TARGET in $(TARGETS); do \
 		BUILD_TARGET=$$BUILD/$$TARGET;	\
 		$(MAKE) OUTPUT=$$BUILD_TARGET -C $$TARGET INSTALL_PATH=$(INSTALL_PATH)/$$TARGET install; \
-	done;
+		ret=$$((ret * $$?));		\
+	done; exit $$ret
 
 	@# Ask all targets to emit their test scripts
 	echo "#!/bin/sh" > $(ALL_SCRIPT)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
