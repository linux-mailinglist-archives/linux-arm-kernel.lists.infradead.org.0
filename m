Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB211CFB19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j2FfRnouzhZgjkr7lsjETfIIQ4Rjad3TD2q4Hd77OKQ=; b=BIHLAS5q+9XfX5YKCbbmPvfbQx
	msI2U9Ejgh81l7erRSg94x9v1R8HnsM9GIPQeJyAH4JTKIKxvOmUnGYxiRW+QQmRhNmqak54Hwj4v
	96NW/6E7/BozrqhmcqoEbOQssgrhReuzi+B4gXQzW5u9bMI1+OSBzGbgcit+axsDZrlhV2tk8WyEm
	YGDwDr94EjKO5+tDcXitrp8EeyRcFltBWcHCWvznYS0kKpRJDe3FHNZcEQ4gZVkAYjsIoNByXCAae
	NUSfJuyQoMZk9a9qxCc/lXJfx/Dx0EYdNKNQwGjeVKK9zJj6xJ/OwZ3vM7ZAhRoT9c0FTQgZhrKko
	4ifH3SGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXyk-000589-3j; Tue, 12 May 2020 16:42:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXuo-0007yG-Ly
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:38:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25D1012FC;
 Tue, 12 May 2020 09:37:58 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5BFC83F305;
 Tue, 12 May 2020 09:37:57 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 13/14] prctl.2: Add SVE prctls (arm64)
Date: Tue, 12 May 2020 17:36:58 +0100
Message-Id: <1589301419-24459-14-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093758_865485_A9952B94 
X-CRM114-Status: GOOD (  13.91  )
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

I wrote the SVE support originally, so I probably have this one
halfway right.

The explantion added is not exhaustive, but I didn't want it to be too
verbose.  I may trim it a bit and move the detail to a dedicated page
later on, but this is better than nothing in the meantime.
---
 man2/prctl.2 | 112 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 7f511d2..dd16227 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1291,6 +1291,104 @@ call failing with the error
 .BR ENXIO .
 For further details, see the kernel source file
 .IR Documentation/admin-guide/kernel-parameters.txt .
+.\" prctl PR_SVE_SET_VL
+.\" commit 2d2123bc7c7f843aa9db87720de159a049839862
+.\" linux-5.6/Documentation/arm64/sve.rst
+.TP
+.BR PR_SVE_SET_VL " (since Linux 4.15, only on arm64)"
+Configure the thread's SVE vector length,
+as specified by
+.IR arg2 .
+Arguments
+.IR arg3 ", " arg4 " and " arg5
+are ignored.
+.IP
+The bits of
+.I arg2
+corresponding to
+.B SVE_VL_LEN_MASK
+must be set to the desired vector length in bytes.
+In addition,
+.I arg2
+may include zero or more of the following flags:
+.RS
+.TP
+.B PR_SVE_VL_INHERIT
+Inherit the configured vector length across
+.BR execve (2).
+.TP
+.B PR_SVE_SET_VL_ONEXEC
+Defer the change until the next
+.BR execve (2)
+in this thread.
+If
+.B PR_SVE_VL_INHERIT
+is also included in
+.IR arg2 ,
+it takes effect
+.I after
+this deferred change.
+.RE
+.IP
+On success, the vector length and flags are set as requested,
+and any deferred change that was pending immediately before the
+.B PR_SVE_SET_VL
+call is canceled.
+If
+.B PR_SVE_SET_VL_ONEXEC
+was included in
+.IR arg2 ,
+the returned value describes the configuration
+scheduled to take effect at the next
+.BR execve (2).
+Otherwise, the effect is immediate and
+the returned value describes the new configuration.
+The returned value is encoded in the same way as the return value of
+.BR PR_SVE_GET_VL .
+.IP
+If neither of the above flags is included in
+.IR arg2 ,
+a subsequent
+.BR execve (2)
+resets the vector length to the default value configured in
+.IR /proc/sys/abi/sve_default_vector_length .
+.IP
+The actual vector length configured by this operation
+is the greatest vector length supported by the platform
+that does not exceed
+.I arg2
+&
+.BR PR_SVE_VL_LEN_MASK .
+.IP
+The configuration (including any pending deferred change)
+is inherited across
+.BR fork (2)
+and
+.BR clone (2).
+.\" prctl PR_SVE_GET_VL
+.TP
+.BR PR_SVE_GET_VL " (since Linux 4.15, only on arm64)"
+Get the thread's current SVE vector length configuration,
+as configured by
+.BR PR_SVE_SET_VL .
+.IP
+If successful, the return value describes the
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
+Note that there is no way determine whether there is
+a pending vector length change that has not yet taken effect.
+.IP
+Providing that the kernel and platform support SVE,
+this operation always succeeds.
 .\"
 .\" prctl PR_TASK_PERF_EVENTS_DISABLE
 .TP
@@ -1534,6 +1632,8 @@ On success,
 .BR PR_GET_NO_NEW_PRIVS ,
 .BR PR_GET_SECUREBITS ,
 .BR PR_GET_SPECULATION_CTRL ,
+.BR PR_SVE_GET_VL ,
+.BR PR_SVE_SET_VL ,
 .BR PR_GET_THP_DISABLE ,
 .BR PR_GET_TIMING ,
 .BR PR_GET_TIMERSLACK ,
@@ -1817,6 +1917,18 @@ and unused arguments to
 .BR prctl ()
 are not 0.
 .TP
+.B EINVAL
+.I option
+was
+.B PR_SVE_SET_VL
+and
+.I arg2
+contains invalid flags, or
+.I arg2
+&
+.B SVE_VL_LEN_MASK
+is not a valid vector length.
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
