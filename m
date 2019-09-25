Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A127BDEEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 15:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H4KqzvHL2ilKYGX8NR4vojQl1CpIlQZ+pLbiZksq8nI=; b=cUeE8Ch/VeOxDtEKhNcTxYhF19
	Tg6zofEfptwUdjhF+dzGG1++XOl+DnA3EdaorpabY7XBXxV5Q9wMe52XDAvylhW6SvWtV3kG+BKmR
	mXkWG4sPWf05WGTGCK3AIjI7CRIWedaf1CVi779Jc0QHxYBiEdnTO7PljPOC9HsmeAL/uIayOOaEO
	OSjFcWMchQ5XTq1GmRDrl8LB0HO2ZidS+7gOnWZAsiC7DouNHu6ksAmCSVceFZtV5oddGwxsP3Sbk
	/TdkJrtgSSg19Hg0qO73YB3LrDoxf/gfl2OciyPFnaKBu7cUQb3blz9YgDGh7+cgT5vQE4L/FnT3m
	RjhcPJgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD7Id-0007Qk-TF; Wed, 25 Sep 2019 13:25:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD7Hp-0007Q0-0A
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 13:24:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B42F1596;
 Wed, 25 Sep 2019 06:24:50 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C91DF3F59C;
 Wed, 25 Sep 2019 06:24:49 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH 2/2] kselftest: exclude failed TARGETS from runlist
Date: Wed, 25 Sep 2019 14:24:21 +0100
Message-Id: <20190925132421.23572-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190925132421.23572-1-cristian.marussi@arm.com>
References: <20190925132421.23572-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_062453_360977_B79B958A 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A TARGET which failed to be built/installed should not be included in the
runlist generated inside the run_kselftest.sh script.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
As an example, here BPF failed to compile but was included in the runlist
and attempted to run anyway:

...
./KSFT_LAST_2/run_kselftest.sh: 37: cd: can't cd to bpf
TAP version 13
1..49
\# selftests: KSFT_LAST_2: test_verifier
\# Warning: file test_verifier is missing!
not ok 1 selftests: KSFT_LAST_2: test_verifier
\# selftests: KSFT_LAST_2: test_tag
\# Warning: file test_tag is missing!
---
 tools/testing/selftests/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index 103936faa46d..e11ace11b07c 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -202,8 +202,12 @@ ifdef INSTALL_PATH
 	echo "  cat /dev/null > \$$logfile" >> $(ALL_SCRIPT)
 	echo "fi" >> $(ALL_SCRIPT)
 
+	@# While building run_kselftest.sh skip also non-existent TARGET dirs:
+	@# they could be the result of a build failure and should NOT be
+	@# included in the generated runlist.
 	for TARGET in $(TARGETS); do \
 		BUILD_TARGET=$$BUILD/$$TARGET;	\
+		[ ! -d $$INSTALL_PATH/$$TARGET ] && echo "Skipping non-existent dir: $$TARGET" && continue; \
 		echo "[ -w /dev/kmsg ] && echo \"kselftest: Running tests in $$TARGET\" >> /dev/kmsg" >> $(ALL_SCRIPT); \
 		echo "cd $$TARGET" >> $(ALL_SCRIPT); \
 		echo -n "run_many" >> $(ALL_SCRIPT); \
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
