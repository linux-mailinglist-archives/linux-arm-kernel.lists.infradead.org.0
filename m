Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83A41E5026
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iKRwV9h65zgEeA5SX24q3Hrr9ZhVdqYj6n80Ljm8lTM=; b=fVPO59ch5NK48HkebA71sPW34P
	xMV4TRtgFZdbEIbnKFe/XBx/OGESdUTFUViRPFwO1BdyFFTCVQVGQBQlCrugVAG/1MT4x6SvPeUOb
	eyHHh7fLfr1ISDAWkphBbHT744BSNFyyC+xKhuisQqePhyP4+1mb6YT7gIREnYbqen+taPhrQLkFK
	oSOzkiUwydC5HaDlrDQ+RSeXvTAkT3Gx3XaKeVCJraWDG+EwFKcOFkGqvhp0slp3vePlPbmxTXmw6
	kYIh58PEAFMonXDNEK7HIFX0YfXwm+2fMqkG7tDOrTlPHKU0q1kQfSrsRDg6cbhwR8KE6Nv9AlvXy
	Ta2emRlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3SC-0001dh-Hd; Wed, 27 May 2020 21:19:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3RU-0001LF-KZ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:18:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A2E01042;
 Wed, 27 May 2020 14:18:27 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6A16F3F52E;
 Wed, 27 May 2020 14:18:26 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2 2/6] prctl.2: Add PR_SPEC_INDIRECT_BRANCH for
 SPECULATION_CTRL prctls
Date: Wed, 27 May 2020 22:17:34 +0100
Message-Id: <1590614258-24728-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141828_717501_FB755AFE 
X-CRM114-Status: UNSURE (   9.60  )
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
 Thomas Gleixner <tglx@linutronix.de>, Tim Chen <tim.c.chen@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the PR_SPEC_INDIRECT_BRANCH "misfeature" added in Linux 4.20
for PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Cc: Tim Chen <tim.c.chen@linux.intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
---
 man2/prctl.2 | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index dc99218..b6fb51c 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1213,11 +1213,20 @@ arguments must be specified as 0; otherwise the call fails with the error
 .\" commit 356e4bfff2c5489e016fdb925adbf12a1e3950ee
 Sets the state of the speculation misfeature specified in
 .IR arg2 .
-Currently, the only permitted value for this argument is
+Currently, this argument must be one of:
+.RS
+.TP
 .B PR_SPEC_STORE_BYPASS
-(otherwise the call fails with the error
+speculative store bypass control, or
+.\" commit 9137bb27e60e554dab694eafa4cca241fa3a694f
+.TP
+.BR PR_SPEC_INDIRECT_BRANCH " (since Linux 4.20)"
+indirect branch speculation control.
+.RE
+.IP
+(Otherwise the call fails with the error
 .BR ENODEV ).
-This setting is a per-thread attribute.
+These settings are per-thread attributes.
 The
 .IR arg3
 argument is used to hand in the control value,
@@ -1235,13 +1244,16 @@ Same as
 .BR PR_SPEC_DISABLE ,
 but cannot be undone.
 A subsequent
-.B
-prctl(..., PR_SPEC_ENABLE)
+.BR prctl (\c
+.IR arg2 ,
+.BR PR_SPEC_ENABLE )
+with the same value for
+.I arg2
 will fail with the error
 .BR EPERM .
 .RE
 .IP
-Any other value in
+Any unsupported value in
 .IR arg3
 will result in the call failing with the error
 .BR ERANGE .
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
