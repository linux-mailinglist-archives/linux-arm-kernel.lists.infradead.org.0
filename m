Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049F71CFAFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZSZNhybnsb4SsG2IcNKXttY5fRQ4xEO/4C+wfxBb16c=; b=NUJ2/wI7n+g5onuEomsgMIc5sb
	gj3nAsmYSv8TP27LKCa0kplUXAYoO+aNYj8ATCyKCV+GqNz6vX4RMKwVMRV/+DHq5v62Lm5Pug00v
	AwxGSXmAG3atSV2eqPC2UNiJ6SyGAC10GcJkI6GSkDWiibmrFPOZPkfP2SgfpYVZaq+UOrSNbm3u3
	q/mnp3UD9gy7d715W2ILggX/YktfoJQuGNWmveRMNMll/rUnJwMyG2Ehp8qBhfCr+Zm1mvm3YBKGg
	nyl2ZbtYsQZzS+afMgsdF0QpYVaDLZP5F4LgN9zSlkrCm0izr1wz1sW3m6Neafdohg1Zux7IfyX0A
	a3MYpZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXvQ-0008Og-JW; Tue, 12 May 2020 16:38:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXuf-0007qu-4i
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60BA511B3;
 Tue, 12 May 2020 09:37:48 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B0B593F305;
 Tue, 12 May 2020 09:37:47 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 03/14] prctl.2: tfix mis-description of thread ID values in
 procfs
Date: Tue, 12 May 2020 17:36:48 +0100
Message-Id: <1589301419-24459-4-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093749_252841_7FE11132 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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

Under PR_SET_NAME, the [tid] value seen in procfs as
/proc/self/task/[tid] is mistakenly described as the name of the
thread, whereas really the name is on /proc/self/task/[tid]/comm.

Fix it.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/prctl.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index a35b748..9736434 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -808,8 +808,10 @@ and retrieved using
 The attribute is likewise accessible via
 .IR /proc/self/task/[tid]/comm ,
 where
-.I tid
-is the name of the calling thread.
+.I [tid]
+is the the thread ID of the calling thread, as returned by
+.BR gettid (2).
+.\" prctl PR_GET_NAME
 .TP
 .BR PR_GET_NAME " (since Linux 2.6.11)"
 Return the name of the calling thread,
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
