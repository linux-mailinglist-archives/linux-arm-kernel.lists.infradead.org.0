Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46F21CFAFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KAmXA3JUNiat4x9iIHIqhhksWmrIGKMXWSGmCDypyhA=; b=Er0y6PgjzG3DB0oqPwtSxD0NNJ
	X1RxTgCOr993rcnlb3ORTAzLaMMnmQyN4+skjw7JZPhGxH6wlmn4LavrL2d+8bw6VShZV2DfYbDgi
	Q4DRPPpJihOfV2XnsZrnr97W4u4J9/biEFcAeIlCgG/YARFRQdiDqfXExBWaWy9daW3Rc6Fa/fG2q
	lWkQEtTBRVpusDiNVrZ5yIjRFk8BQob297jQA3ax3Hs52KAYna5l8fo85eKptkwlS6yte1ZBmObnB
	37hWjg12HMY5VE+LWsyUhHiVRRUdUV0Yi/LBmytS6kcJnkGyPJ7bqXcUC2XZbd3fL10e2zWw7ilHZ
	CeMxzu4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXur-0007re-RT; Tue, 12 May 2020 16:38:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXud-0007qS-L7
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9622B1FB;
 Tue, 12 May 2020 09:37:46 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E73F43F305;
 Tue, 12 May 2020 09:37:45 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 01/14] prctl.2: tfix clarify that prctl can apply to threads
Date: Tue, 12 May 2020 17:36:46 +0100
Message-Id: <1589301419-24459-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093747_734180_60603122 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current synopsis for prctl(2) misleadingly claims that prctl
operates on a process.  Rather, some (in fact, most) prctls operate
on a thread.

The wording probably dates back to the old days when Linux didn't
really have threads at all.

Reword as appropriate.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/prctl.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 7a5af76..7932ada 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -53,7 +53,7 @@
 .\"
 .TH PRCTL 2 2020-04-11 "Linux" "Linux Programmer's Manual"
 .SH NAME
-prctl \- operations on a process
+prctl \- operations on a process or thread
 .SH SYNOPSIS
 .nf
 .B #include <sys/prctl.h>
@@ -63,6 +63,10 @@ prctl \- operations on a process
 .fi
 .SH DESCRIPTION
 .BR prctl ()
+manipulates various aspects of the behavior
+of the calling thread or process.
+.PP
+.BR prctl ()
 is called with a first argument describing what to do
 (with values defined in \fI<linux/prctl.h>\fP), and further
 arguments with a significance depending on the first one.
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
