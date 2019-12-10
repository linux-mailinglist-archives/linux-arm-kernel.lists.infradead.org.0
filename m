Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698F81186CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tv1U1rC0/hbqte1YneMcGJh24ek8fEVlYxh02cRSCeI=; b=S42ijjjMNLaRGD
	xoOHp6JyOsmuVyQtBxkL16o/MA+NKQobVIDyBnyKZi+23RZdaSKTNzwuWvaDrozUmXYwEkMQpjfsV
	JTW++AYZvWNyVrdUI4Vs5AkRkm6oz+zTWbTHYAnEgmvVVEBq9xV3Pu2h/UERda1ZsBBgblQDXchbM
	eGWcas/YoUCD8KPQmHK5jOUEIzWaDwLg1hJ0LjjjzHEYFrlF8G95LG0Pcky05YLZXzXT1pQMYZ6Wg
	E1ePEskOluJqYJZhN2MdhIzvTjLa73ZtM5p86U5WJbKOAZVXF25aO/3hcYi9F3snKzMasLxwdFnmH
	+k8+3ZHMZqAo3whPOq5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedxC-0006Jw-Qp; Tue, 10 Dec 2019 11:45:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedx5-0006JK-2c
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:45:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A8BB1FB;
 Tue, 10 Dec 2019 03:45:14 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B5A93F6CF;
 Tue, 10 Dec 2019 03:45:13 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, shuah@kernel.org
Subject: [PATCH v2] selftests: fix build behaviour on targets' failures
Date: Tue, 10 Dec 2019 11:44:59 +0000
Message-Id: <20191210114459.11405-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_034515_164136_FAA12EB4 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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

Currently, when some of the KSFT subsystems fails to build, the toplevel
KSFT Makefile just keeps carrying on with the build process.

This behaviour is expected and desirable especially in the context of a CI
system running KSelfTest, since it is not always easy to guarantee that the
most recent and esoteric dependencies are respected across all KSFT TARGETS
in a timely manner.

Unfortunately, as of now, this holds true only if the very last of the
built subsystems could have been successfully compiled: if the last of
those subsystem instead failed to build, such failure is taken as the whole
outcome of the Makefile target and the complete build/install process halts
even though many other preceding subsytems were in fact already built
successfully.

Fix the KSFT Makefile behaviour related to all/install targets in order
to fail as a whole only when the all/install targets have failed for all
of the requested TARGETS, while succeeding when at least one of TARGETS
has been successfully built.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
This patch is based on ksft/fixes branch from:

git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest.git

on top of commit (~5.5-rc1):

99e51aa8f701 Documentation: kunit: add documentation for kunit_tool

Building with either:

make kselftest-install \
	     KSFT_INSTALL_PATH=/tmp/KSFT \
	     TARGETS="exec arm64 bpf"

make -C tools/testing/selftests  install \
	     KSFT_INSTALL_PATH=/tmp/KSFT \
	     TARGETS="exec arm64 bpf"

(with 'bpf' not building clean on my setup in the above case)

and veryfying that build/install completes if at least one of TARGETS can
be successfully built, and any successfully built subsystem is installed.

Changes:
-------
V1 --> V2
- rebased on 5.5-rc1
- rewording commit message
- dropped RFC tag
---
 tools/testing/selftests/Makefile | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index b001c602414b..86b2a3fca04d 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -143,11 +143,13 @@ else
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
@@ -196,10 +198,12 @@ ifdef INSTALL_PATH
 	install -m 744 kselftest/module.sh $(INSTALL_PATH)/kselftest/
 	install -m 744 kselftest/runner.sh $(INSTALL_PATH)/kselftest/
 	install -m 744 kselftest/prefix.pl $(INSTALL_PATH)/kselftest/
-	@for TARGET in $(TARGETS); do \
+	@ret=1;	\
+	for TARGET in $(TARGETS); do \
 		BUILD_TARGET=$$BUILD/$$TARGET;	\
 		$(MAKE) OUTPUT=$$BUILD_TARGET -C $$TARGET INSTALL_PATH=$(INSTALL_PATH)/$$TARGET install; \
-	done;
+		ret=$$((ret * $$?));		\
+	done; exit $$ret;
 
 	@# Ask all targets to emit their test scripts
 	echo "#!/bin/sh" > $(ALL_SCRIPT)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
