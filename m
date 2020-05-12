Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8051CFB18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cVpjY+ULRz5Wi01tzv1YPhIx331/o6XfvHGKP3KznCI=; b=il4tSYNq6KiswKi40jeihixaCw
	r+k8ryfYOWbdqAsKP/hl2z5C3DTzyOSNuAUnDWLCbVRb2YbcHrD8EfyW0v8NX3i5d0qnP9zYHUbjG
	Dsl7pPDHWSFup+vwP5bMZULZMNBPV/fgxg+th138pJLHZ1eP6OZm4/wdvfvI0OwlocSL1o6HWS4Lj
	zE2CaAjfLvX03GOD5hAVE+JjoguccJXKiSdkrXnkmUYqIktD/bV8rUkC3YXhJqpxyko0FtcgpwZld
	i3IJ0LMD5SyyzPIM7/bxmcNsucb45PKyId9LQ6Gd4s1e1MAHkRG9PBwjM1q1kfHCI3LGaDhcTL+o3
	DN5yxadw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXyU-0004t6-UO; Tue, 12 May 2020 16:41:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXup-0007ve-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:38:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C23D1FB;
 Tue, 12 May 2020 09:37:59 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5B7423F305;
 Tue, 12 May 2020 09:37:58 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 14/14] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Date: Tue, 12 May 2020 17:36:59 +0100
Message-Id: <1589301419-24459-15-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093759_581231_8EB672C2 
X-CRM114-Status: GOOD (  10.56  )
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the PR_PAC_RESET_KEYS ioctl added in Linux
5.0 for arm64.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>

---

Note that the comment about PR_PAC_RESET_KEYS(0) being the recommended
way to set up a fresh execution context is not present in the existing
kernel documentation.

I vaguely remember some discussion to this effect; in any case, it seems
sensible, given that there must have been _some_ rationale for this
feature...  Shout if it sounds wrong!
---
 man2/prctl.2 | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index dd16227..7ea60e2 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -950,6 +950,46 @@ behavior.
 A value of 1 indicates
 .BR execve (2)
 will operate in the privilege-restricting mode described above.
+.\" prctl PR_PAC_RESET_KEYS
+.\" commit ba830885656414101b2f8ca88786524d4bb5e8c1
+.TP
+.BR PR_PAC_RESET_KEYS " (since Linux 5.0, only on arm64)"
+Securely reset the thread's pointer authentication keys
+to fresh random values generated by the kernel.
+.IP
+The set of keys to be reset is specified by
+.IR arg2 ,
+which must be a logical OR of zero or more of the following:
+.RS
+.TP
+.B PR_PAC_APIAKEY
+instruction authentication key A
+.TP
+.B PR_PAC_APIBKEY
+instruction authentication key B
+.TP
+.B PR_PAC_APDAKEY
+data authentication key A
+.TP
+.B PR_PAC_APDBKEY
+data authentication key B
+.TP
+.B PR_PAC_APGAKEY
+generic authentication \(lqA\(rq key.
+.IP
+(Yes folks, there really is no generic B key.)
+.RE
+.IP
+As a special case, if
+.I arg2
+is zero then all the keys are reset.
+Since new keys could be added in future,
+this is the recommended way to completely wipe the existing keys
+when creating a new execution context.
+.IP
+The remaining arguments
+.IR arg3 ", " arg4 " and " arg5
+must all be zero.
 .\" prctl PR_SET_PDEATHSIG
 .TP
 .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
@@ -1920,6 +1960,27 @@ are not 0.
 .B EINVAL
 .I option
 was
+.B PR_PAC_RESET_KEYS
+and
+.I arg2
+contains non-zero bits other than
+.BR
+.BR PR_PAC_APIAKEY ,
+.BR PR_PAC_APIBKEY ,
+.BR PR_PAC_APDAKEY ,
+.B PR_PAC_APDBKEY
+and
+.BR PR_PAC_APGAKEY ;
+or
+.IR arg3 ,
+.I arg4
+and
+.I arg5
+were not all zero.
+.TP
+.B EINVAL
+.I option
+was
 .B PR_SVE_SET_VL
 and
 .I arg2
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
