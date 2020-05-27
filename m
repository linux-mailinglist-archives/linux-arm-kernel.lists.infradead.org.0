Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619C01E5056
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z7V+TkJ/Ymk+//dPLPmxb6PTtbeBbd+bZDPJZGytbLY=; b=n/YSsyir+cWC0qQ7Cm1EGi+cgu
	rRcNDwb4CkF0mqKvUYyM1XIZH52rfQI0KggA16KFSeJajVHbJRahfSYkvwfsGg96MXiXSYgfwFjPN
	OCTL7bsYmPpijuA+F+tY4PLs1gDgYmrdWThkdogEi+7kJSqvvRs78BZ52De0sLe7XcMMiItt6SD5y
	ZjzG34gaB9LoQRzx2kynTnzxf7wpVawdJJnAv0awQExHi8gOxMlEeJqgJohjJPmK6KrD1VvARhDt9
	YjTH6xhAzR++BBH22rRGUyGRHYx/foI2H1IT0RwKxnUYmAjO4MqM0MXpZwUZ7evqYQBMHrDZj2hYn
	jJL13/FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3Sf-00026Z-HA; Wed, 27 May 2020 21:19:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3RW-0001M3-EX
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:18:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAD2631B;
 Wed, 27 May 2020 14:18:29 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DB6863F52E;
 Wed, 27 May 2020 14:18:28 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2 4/6] prctl.2: Add SVE prctls (arm64)
Date: Wed, 27 May 2020 22:17:36 +0100
Message-Id: <1590614258-24728-5-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141830_592555_1266D428 
X-CRM114-Status: GOOD (  17.09  )
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
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the the PR_SVE_SET_VL and PR_SVE_GET_VL
prctls added in Linux 4.15 for arm64.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>

---

Since v1:

 * Minor rewordings and typo fixes.

 * Fix typo'd #define names.

 * Add type annotation for PR_SVE_SET_VL arg2.

 * Clarify return value semantics of PR_SVE_SET_VL

 * Add note to say that the args for PR_SVE_GET_VL are ignored.

 * Note for PR_SVE_SET_VL that the PR_SVE_VL_LEN_MASK field specifies
   an upper bound on what vector length to set, not an exact value.

 * Rework PR_SVE_SET_VL arg2 description to enumerate all possible flag
   combinations rather than describing the flags independently.

   Coming up with a clear description of each flag that is independent
   of the description of the other flag turns out to be hard.

 * In lieu of having a separate man page to cross reference for detailed
   guidance, cross-reference the kernel documentation.

 * Avoid confusing cross-reference to PR_SVE_SET_VL when describing the
   return value of PR_SVE_GET_VL.

 * Clarify error conditions for PR_SVE_SET_VL and PR_SVE_GET_VL, and
   move detail to the individual prctl descriptions to keep related
   content close together while minimising duplication.

 * Add safety warning.  This is deliberately vague, pending ongoing
   discussions with libc folks.
---
 man2/prctl.2 | 160 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 160 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index cab9915..91df7c8 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1291,6 +1291,148 @@ call failing with the error
 .BR ENXIO .
 For further details, see the kernel source file
 .IR Documentation/admin\-guide/kernel\-parameters.txt .
+.\" prctl PR_SVE_SET_VL
+.\" commit 2d2123bc7c7f843aa9db87720de159a049839862
+.\" linux-5.6/Documentation/arm64/sve.rst
+.TP
+.BR PR_SVE_SET_VL " (since Linux 4.15, only on arm64)"
+Configure the thread's SVE vector length,
+as specified by
+.IR "(int) arg2" .
+Arguments
+.IR arg3 ", " arg4 " and " arg5
+are ignored.
+.IP
+The bits of
+.I arg2
+corresponding to
+.B PR_SVE_VL_LEN_MASK
+must be set to the desired vector length in bytes.
+This is interpreted as an upper bound:
+the kernel will select the greatest available vector length
+that does not exceed the value specified.
+In particular, specifying
+.B SVE_VL_MAX
+(defined in
+.I <asm/sigcontext.h>)
+for the
+.B PR_SVE_VL_LEN_MASK
+bits requests the maximum supported vector length.
+.IP
+In addition,
+.I arg2
+must be set to one of the following combinations of flags:
+.RS
+.TP
+.B 0
+Perform the change immediately.
+At the next
+.BR execve (2)
+in the thread,
+the vector length will be reset to the value configured in
+.IR /proc/sys/abi/sve_default_vector_length .
+.TP
+.B PR_SVE_VL_INHERIT
+Perform the change immediately.
+Subsequent
+.BR execve (2)
+calls will preserve the new vector length.
+.TP
+.B PR_SVE_SET_VL_ONEXEC
+Defer the change, so that it is performed at the next
+.BR execve (2)
+in the thread.
+Further
+.BR execve (2)
+calls will reset the vector length to the value configured in
+.IR /proc/sys/abi/sve_default_vector_length .
+.TP
+.B "PR_SVE_SET_VL_ONEXEC | PR_SVE_VL_INHERIT"
+Defer the change, so that it is performed at the next
+.BR execve (2)
+in the thread.
+Further
+.BR execve (2)
+calls will preserve the new vector length.
+.RE
+.IP
+In all cases,
+any previously pending deferred change is canceled.
+.IP
+The call fails with error
+.B EINVAL
+if SVE is not supported on the platform, if
+.I arg2
+is unrecognized or invalid, or the value in the bits of
+.I arg2
+corresponding to
+.B PR_SVE_VL_LEN_MASK
+is outside the range
+.BR SVE_VL_MIN .. SVE_VL_MAX
+or is not a multiple of 16.
+.IP
+On success,
+a nonnegative value is returned that describes the
+.I selected
+configuration,
+which may differ from the current configuration if
+.B PR_SVE_SET_VL_ONEXEC
+was specified.
+The value is encoded in the same way as the return value of
+.BR PR_SVE_GET_VL .
+.IP
+The configuration (including any pending deferred change)
+is inherited across
+.BR fork (2)
+and
+.BR clone (2).
+.IP
+.B Warning:
+Because the compiler or run-time environment
+may be using SVE, using this call without the
+.B PR_SVE_SET_VL_ONEXEC
+flag may crash the calling process.
+The conditions for using it safely are complex and system-dependent.
+Don't use it unless you really know what you are doing.
+.IP
+For more information, see the kernel source file
+.I Documentation/arm64/sve.rst
+.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
+(or
+.I Documentation/arm64/sve.txt
+before Linux 5.3).
+.\" prctl PR_SVE_GET_VL
+.TP
+.BR PR_SVE_GET_VL " (since Linux 4.15, only on arm64)"
+Get the thread's current SVE vector length configuration.
+.IP
+Arguments
+.IR arg2 ", " arg3 ", " arg4 " and " arg5
+are ignored.
+.IP
+Providing that the kernel and platform support SVE
+this operation always succeeds,
+returning a nonnegative value that describes the
+.I current
+configuration.
+The bits corresponding to
+.B PR_SVE_VL_LEN_MASK
+contain the currently configured vector length in bytes.
+The bit corresponding to
+.B PR_SVE_VL_INHERIT
+indicates whether the vector length will be inherited
+across
+.BR execve (2).
+.IP
+Note that there is no way to determine whether there is
+a pending vector length change that has not yet taken effect.
+.IP
+For more information, see the kernel source file
+.I Documentation/arm64/sve.rst
+.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
+(or
+.I Documentation/arm64/sve.txt
+before Linux 5.3).
 .\"
 .\" prctl PR_TASK_PERF_EVENTS_DISABLE
 .TP
@@ -1534,6 +1676,8 @@ On success,
 .BR PR_GET_NO_NEW_PRIVS ,
 .BR PR_GET_SECUREBITS ,
 .BR PR_GET_SPECULATION_CTRL ,
+.BR PR_SVE_GET_VL ,
+.BR PR_SVE_SET_VL ,
 .BR PR_GET_THP_DISABLE ,
 .BR PR_GET_TIMING ,
 .BR PR_GET_TIMERSLACK ,
@@ -1817,6 +1961,22 @@ and unused arguments to
 .BR prctl ()
 are not 0.
 .TP
+.B EINVAL
+.I option
+is
+.B PR_SVE_SET_VL
+and the arguments are invalid or unsupported,
+or SVE is not available on this platform.
+See the description of
+.B PR_SVE_SET_VL
+above for details.
+.TP
+.B EINVAL
+.I option
+is
+.B PR_SVE_GET_VL
+and SVE is not available on this platform.
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
