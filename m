Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A0F1CFB0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5Np5J8SjXtiFX1zgCSY6dHtLJCA62oXNZjTcCJOWubc=; b=BjG1Pc/MdhV1GPGjfe5Eu5WxB1
	tRKQmfU1vDOcnB57xfLcBoUlHDm+ffxgbLDhaAAi2Qogjwws4BdQrKrCs65hs7LvV5wFNvfAEwlaB
	rEaS0QViQrIOR/GuP6B8gmNwdmcHX8u7J++ybgnD4KeSeSoapmC/J1NGVoMTk4luq6Cxq1ruuqlqt
	1vJ7w4HvSpBaRVy+VUZLkq9/FUUIY+hUmHSVZiugC9/fnC66paM6K4RiGwgaeUNIly2lSMANs2Hgi
	IByYas8Y9MLluZbQ8ntYgtN0NKulHibwWpLFllQQnTRmg+Q6XMJ3LKiOXu9xL8i/7+qgOeWFbh0s7
	kmhYXqbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXxV-0001jL-PE; Tue, 12 May 2020 16:40:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXum-0007ve-Ba
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A648D6E;
 Tue, 12 May 2020 09:37:56 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4D2873F305;
 Tue, 12 May 2020 09:37:55 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 11/14] prctl.2: Add PR_SPEC_DISABLE_NOEXEC for
 SPECULATION_CTRL prctls
Date: Tue, 12 May 2020 17:36:56 +0100
Message-Id: <1589301419-24459-12-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093756_456071_87641F83 
X-CRM114-Status: UNSURE (   9.36  )
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
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Waiman Long <longman@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the PR_SPEC_DISABLE_NOEXEC mode added in Linux 5.1
for the PR_SPEC_STORE_BYPASS "misfeature" of
PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Cc: Waiman Long <longman@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
---
 man2/prctl.2 | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 66417cf..2361b44 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1187,6 +1187,12 @@ The speculation feature is disabled, mitigation is enabled.
 Same as
 .B PR_SPEC_DISABLE
 but cannot be undone.
+.TP
+.BR PR_SPEC_DISABLE_NOEXEC " (since Linux 5.1)"
+Same as
+.BR PR_SPEC_DISABLE ,
+but but the state will be cleared on
+.BR execve (2).
 .RE
 .IP
 If all bits are 0,
@@ -1251,6 +1257,17 @@ with the same value for
 .I arg2
 will fail with the error
 .BR EPERM .
+.\" commit 71368af9027f18fe5d1c6f372cfdff7e4bde8b48
+.TP
+.BR PR_SPEC_DISABLE_NOEXEC " (since Linux 5.1)"
+Same as
+.BR PR_SPEC_DISABLE ,
+but but the state will be cleared on
+.BR execve (2).
+Currently only supported for
+.I arg2
+equal to
+.B PR_SPEC_STORE_BYPASS.
 .RE
 .IP
 Any unsupported value in
@@ -1898,11 +1915,12 @@ was
 .BR PR_SET_SPECULATION_CTRL
 and
 .IR arg3
-is neither
+is not
 .BR PR_SPEC_ENABLE ,
 .BR PR_SPEC_DISABLE ,
+.BR PR_SPEC_FORCE_DISABLE ,
 nor
-.BR PR_SPEC_FORCE_DISABLE .
+.BR PR_SPEC_DISABLE_NOEXEC .
 .SH VERSIONS
 The
 .BR prctl ()
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
