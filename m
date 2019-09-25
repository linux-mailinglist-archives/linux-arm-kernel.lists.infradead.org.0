Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144AEBDEED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 15:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nmtqNnQd7VUmCpg4m9opO0fpNrwJt+etILWup/p6V1w=; b=U3z
	nKONCxiCboJcsDVd1lbksTqemTpNZHlfwVZqly06ydoZ/u1AsA1iu1hu6rPYa9HMwlfU4nquCoZs9
	CPA51J1kVb+qoQKSG0vFELDbT+eaylofTgqGKDLsVPIYAMAHY3G+TYG2flLBXSzNdV8z9ssFXY9b2
	F+/7+pY25MsLaqe7CZ8jNc3twhLJnAe4vBVXIvgs0e6UAkJFpZkP6gPP1VPSBuQyFJS2UO+tWvxsp
	2pGIDAges1RxvGeaxOv2oUYgco3aPyPvMvKD5TCEdyVHm+o07fMzsHhQmHQdG9qlfamkbfXvAGn4L
	Ngl1qYrhA1Ilj/t8Jb+SztBhBSxv3YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD7JH-0000PK-0b; Wed, 25 Sep 2019 13:26:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD7Hq-0007Pz-FC
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 13:24:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9616F142F;
 Wed, 25 Sep 2019 06:24:49 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E33703F59C;
 Wed, 25 Sep 2019 06:24:48 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH 1/2] kselftest: add capability to skip chosen TARGETS
Date: Wed, 25 Sep 2019 14:24:20 +0100
Message-Id: <20190925132421.23572-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_062454_548380_62EBA0CC 
X-CRM114-Status: UNSURE (   7.84  )
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

Let the user specify an optional TARGETS skiplist through the new optional
SKIP_TARGETS Makefile variable.

It is easier to skip at will a reduced and well defined list of possibly
problematic targets with SKIP_TARGETS then to provide a partially stripped
down list of good targets using the usual TARGETS variable.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 tools/testing/selftests/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index 25b43a8c2b15..103936faa46d 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -132,6 +132,10 @@ else
 		ARCH=$(ARCH) -C $(top_srcdir) headers_install
 endif
 
+# User can optionally provide a TARGETS skiplist.
+SKIP_TARGETS ?=
+TARGETS := $(filter-out $(SKIP_TARGETS), $(TARGETS))
+
 all: khdr
 	@for TARGET in $(TARGETS); do		\
 		BUILD_TARGET=$$BUILD/$$TARGET;	\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
