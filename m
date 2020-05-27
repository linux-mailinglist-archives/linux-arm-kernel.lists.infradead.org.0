Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139FC1E5061
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EwRVFUAUKxlKst1cgd0PVNK+ybKZqgG8LT/PSgxiSOs=; b=LQMU1vFpInfF1YPfdD3MgisgWi
	DFIHDrGAD+jMI6bE/vPDNS/xnqhUkrrEEOWoK6yLyNhvLKuT7syln5zDSekMMGWPt57u1wzdGw9DE
	Q/dX1uInAlyQiFr/CSgT3yo1Jdeyz0ZM17BeDZvTpaADnWi8nCxsgtp9IdbWSXTvG9Nbtj1ZaSJlE
	JXH3gsJPxgg0flc6l+9x5aflb+A5/HuH2OJ0XGNABjVqELEkVgF2qxva17s5woM61JKHJmhu81Et7
	QcniHqfIJLlSJ3+n2nJdM0nu45nk2fKpbM6aYMwXCif7Ac0/UB7Gl4H6rUznm5fg7FL6iOF6XUBdp
	fXQZlNMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3Su-0002M6-Un; Wed, 27 May 2020 21:19:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3RY-0001O8-CP
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:18:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D3CB1045;
 Wed, 27 May 2020 14:18:31 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 022963F52E;
 Wed, 27 May 2020 14:18:29 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2 5/6] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Date: Wed, 27 May 2020 22:17:37 +0100
Message-Id: <1590614258-24728-6-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141832_521888_2E8C8D0D 
X-CRM114-Status: GOOD (  11.42  )
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

Since v1:

 * Clarify explicitly that PR_PAC_RESET_KEYS is redundant when combined
   with execve().

 * Move error condition details into the prctl description, to avoid
   excessive duplication while keeping keeping related pieces of text
   closer together.

 * In lieu of having a separate man page to cross reference for detailed
   guidance, cross-reference the kernel documentation.

 * Add safety warning.  This is deliberately vague, pending ongoing
   discussions with libc folks.
---
 man2/prctl.2 | 80 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 91df7c8..3ee2702 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -950,6 +950,77 @@ behavior.
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
+when establishing a clean execution context.
+Note that there is no need to use
+.BR PR_PAC_RESET_KEYS
+in preparation for calling
+.BR execve (2),
+since
+.BR execve (2)
+resets all the pointer authentication keys.
+.IP
+The remaining arguments
+.IR arg3 ", " arg4 " and " arg5
+must all be zero.
+.IP
+If the arguments are invalid,
+and in particular if
+.I arg2
+contains set bits that are unrecognized
+or that correspond to a key not available on this platform,
+the call fails with error
+.BR EINVAL .
+.IP
+.B Warning:
+Because the compiler or run-time environment
+may be using some or all of the keys,
+a successful
+.IP
+For more information, see the kernel source file
+.I Documentation/arm64/pointer\-authentication.rst
+.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
+(or
+.I Documentation/arm64/pointer\-authentication.txt
+before Linux 5.3).
+.B PR_PAC_RESET_KEYS
+may crash the calling process.
+The conditions for using it safely are complex and system-dependent.
+Don't use it unless you know what you are doing.
 .\" prctl PR_SET_PDEATHSIG
 .TP
 .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
@@ -1964,6 +2035,15 @@ are not 0.
 .B EINVAL
 .I option
 is
+.B PR_PAC_RESET_KEYS
+and the arguments are invalid or unsupported.
+See the description of
+.B PR_PAC_RESET_KEYS
+above for details.
+.TP
+.B EINVAL
+.I option
+is
 .B PR_SVE_SET_VL
 and the arguments are invalid or unsupported,
 or SVE is not available on this platform.
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
