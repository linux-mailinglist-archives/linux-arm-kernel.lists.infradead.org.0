Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E7B1E5063
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QEdp/mlBPIZIgXrLIO6UmBNko36InIYhxxUWVD9F6tw=; b=ZXuTRZzsHWICNCm/Bjgz4Hz2FK
	uZTVZkG1DrI7zw3B+bhW5RX9jmSTqunJRuWwVCMDbGQFd+e402RPTbJFlFPNZSkROMlAlG+HAj4o7
	wSZFRieEKSR6lkqPeKepQzzWW7k/cEo3t/cHEmWsr8E6sN8sU3ZoBumMXJ9TmqIwC1Dr3x5iTiXR2
	TwsDApf08adkYuALnAIwBtyeE8D7dpkURJEP67i5NYFxBJjPBacPnWYuek8TaCz4QYVl7fRY1wXSg
	Fh7zefaFS2yRTFeIRFFFkGjf9I7Eeg3e5O1Nwondg3WU9YZy1pFtQ5TvppF2V/dQ7Kbb+SsPdXkUP
	90zuAj7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3TJ-0002aY-FY; Wed, 27 May 2020 21:20:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3RZ-0001P8-42
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:18:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55ECB113E;
 Wed, 27 May 2020 14:18:32 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 58DC83F52E;
 Wed, 27 May 2020 14:18:31 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [RFC PATCH v2 6/6] prctl.2: Add tagged address ABI control prctls
 (arm64)
Date: Wed, 27 May 2020 22:17:38 +0100
Message-Id: <1590614258-24728-7-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141833_263126_F818B6F0 
X-CRM114-Status: GOOD (  14.93  )
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

** This patch is a draft for review and should not be applied before it
   has been discussed. **

Add documentation for the the PR_SET_TAGGED_ADDR_CTRL and
PR_GET_TAGGED_ADDR_CTRL prctls added in Linux 5.4 for arm64.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
---

 man2/prctl.2 | 156 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 156 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 3ee2702..062fd51 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1504,6 +1504,143 @@ For more information, see the kernel source file
 (or
 .I Documentation/arm64/sve.txt
 before Linux 5.3).
+.\" prctl PR_SET_TAGGED_ADDR_CTRL
+.\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
+.TP
+.BR PR_SET_TAGGED_ADDR_CTRL " (since Linux 5.4, only on arm64)"
+Controls support for passing tagged userspace addresses to the kernel
+(i.e., addresses where bits 56\(em63 are not all zero).
+.IP
+The level of support is selected by
+.IR "(unsigned int) arg2" ,
+which can be one of the following:
+.RS
+.TP
+.B 0
+Addresses that are passed
+for the purpose of being dereferenced by the kernel
+must be untagged.
+.TP
+.B PR_TAGGED_ADDR_ENABLE
+Addresses that are passed
+for the purpose of being dereferenced by the kernel
+may be tagged, with the exceptions summarized below.
+.RE
+.IP
+The remaining arguments
+.IR arg3 ", " arg4 " and " arg5
+must all be zero.
+.IP
+On success, the mode specified in
+.I arg2
+is set for the calling thread and the the return value is 0.
+If the arguments are invalid,
+the mode specified in
+.I arg2
+is unrecognized,
+or if this feature is disabled or unsupported by the kernel,
+the call fails with
+.BR EINVAL .
+.IP
+In particular, if
+.BR prctl ( PR_SET_TAGGED_ADDR_CTRL ,
+0, 0, 0, 0)
+fails with
+.B EINVAL
+then all addresses passed to the kernel must be untagged.
+.IP
+Irrespective of which mode is set,
+addresses passed to certain interfaces
+must always be untagged:
+.RS
+.IP \(em
+.BR brk (2),
+.BR mmap (2),
+.BR shmat (2),
+and the
+.I new_address
+argument of
+.BR mremap (2).
+.IP
+(Prior to Linux 5.6 these accepted tagged addresses,
+but the behaviour may not be what you expect.
+Don't rely on it.)
+.IP \(em
+\(oqpolymorphic\(cq interfaces
+that accept pointers to arbitrary types cast to a
+.I void *
+or other generic type, specifically
+.BR prctl (2),
+.BR ioctl (2),
+and in general
+.BR setsockopt (2)
+(only certain specific
+.BR setsockopt (2)
+options allow tagged addresses).
+.IP \(em
+.BR shmdt (2).
+.RE
+.IP
+This list of exclusions may shrink
+when moving from one kernel version to a later kernel version.
+While the kernel may make some guarantees
+for backwards compatibility reasons,
+for the purposes of new software
+the effect of passing tagged addresses to these interfaces
+is unspecified.
+.IP
+The mode set by this call is inherited across
+.BR fork (2)
+and
+.BR clone (2).
+The mode is reset by
+.BR execve (2)
+to 0
+(i.e., tagged addresses not permitted in the user/kernel ABI).
+.IP
+.B Warning:
+Because the compiler or run-time environment
+may make use of address tagging,
+a successful
+.B PR_SET_TAGGED_ADDR_CTRL
+may crash the calling process.
+The conditions for using it safely are complex and system-dependent.
+Don't use it unless you know what you are doing.
+.IP
+For more information, see the kernel source file
+.IR Documentation/arm64/tagged\-address\-abi.rst .
+.\" prctl PR_GET_TAGGED_ADDR_CTRL
+.\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
+.TP
+.BR PR_GET_TAGGED_ADDR_CTRL " (since Linux 5.4, only on arm64)"
+Returns the current tagged address mode
+for the calling thread.
+.IP
+Arguments
+.IR arg2 ", " arg3 ", " arg4 " and " arg5
+must all be zero.
+.IP
+If the arguments are invalid
+or this feature is disabled or unsupported by the kernel,
+the call fails with
+.BR EINVAL .
+In particular, if
+.BR prctl ( PR_GET_TAGGED_ADDR_CTRL ,
+0, 0, 0, 0)
+fails with
+.BR EINVAL ,
+then this feature is definitely unsupported or disabled,
+and all addresses passed to the kernel must be untagged.
+.IP
+Otherwise, the call returns a nonnegative value
+describing the current tagged address mode,
+encoded in the same way as the
+.I arg2
+argument of
+.BR PR_SET_TAGGED_ADDR_CTRL .
+.IP
+For more information, see the kernel source file
+.IR Documentation/arm64/tagged\-address\-abi.rst .
 .\"
 .\" prctl PR_TASK_PERF_EVENTS_DISABLE
 .TP
@@ -1749,6 +1886,7 @@ On success,
 .BR PR_GET_SPECULATION_CTRL ,
 .BR PR_SVE_GET_VL ,
 .BR PR_SVE_SET_VL ,
+.BR PR_GET_TAGGED_ADDR_CTRL ,
 .BR PR_GET_THP_DISABLE ,
 .BR PR_GET_TIMING ,
 .BR PR_GET_TIMERSLACK ,
@@ -2057,6 +2195,24 @@ is
 .B PR_SVE_GET_VL
 and SVE is not available on this platform.
 .TP
+.B EINVAL
+.I option
+is
+.BR PR_SET_TAGGED_ADDR_CTRL
+and the arguments are invalid or unsupported.
+See the description of
+.B PR_SET_TAGGED_ADDR_CTRL
+above for details.
+.TP
+.B EINVAL
+.I option
+is
+.BR PR_GET_TAGGED_ADDR_CTRL
+and the arguments are invalid or unsupported.
+See the description of
+.B PR_GET_TAGGED_ADDR_CTRL
+above for details.
+.TP
 .B ENODEV
 .I option
 was
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
