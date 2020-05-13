Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96391D0F6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vga8xlPVBL7kjowaXdW/P5Ga+Q0fOEh04o1aK27fF/k=; b=PumFiuyeotIaKH
	GpqxDriBRxgbahzhlDxiZz6C367/arbITUVjAVJivnPLdbRgaeVRiqPTbNkqzqlfD8DrwCl4VTJ5S
	pWPKBIpvv6pIpoKB4Pmwde2pnXCXU6RngOYacs7ZBYrIPI3YIQnlT1FJoDJ8i4pBZGnNKS/uiPU0Q
	yY35hdU8wOyiO1mau/aiMHIaNPyQF+xqQ1a/AZ+qUxVD8LWUzYebBJc51MrAdcX+h1Mq8q27/RFlv
	v2jF0Eq2K6FY/AheyzS2XxVHBt7rLKTRVUcqutHTxab7Oft29KXbpqELHV7hkoyfJCDUKozeLArhH
	Fftf81YZ500w0IYG0Xmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoMX-0000ih-BL; Wed, 13 May 2020 10:11:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoMG-0000gr-1q
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:11:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so25910712wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=G0jUaN8d5qEwQvrH4pRzfexI8yzXvydZg8/FEtV9AuA=;
 b=bCNONgDW2ZbKarh8Lpv0iuITxWjzPWKRazrClA2cHZtjSfSb89gvT+1NkFIySQVKMc
 nsNLFFeqSYvlG36lf4kQpCe3juw8gBtvGS0grrxDyYlVqDxcMvE89K6FDu4k8x+qYnYn
 GuA35nnasOdCfzydS/+7UkR3/NZAPFysC83MtNO/+lJfbHudspBezNdgjmmv+/DGvQwN
 /FOcFEO27pQCyw88YI+AFURLnxF8pBLwmRmmPmjNUriJBQhthZOmseFUejbm2Pu1r6B3
 TjC7V4qB8JQJzVHC/gASXi1fkfpVoaRJURzaSc1Sst0MVYAFGdAo7dTm0tQ3RTt7+Eay
 cqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=G0jUaN8d5qEwQvrH4pRzfexI8yzXvydZg8/FEtV9AuA=;
 b=ofgm81Lezm9OyytX4diI+Fuxy+w28EBhvljTyDQRDKPxcccqerwSE3BKn3j4/W6/b7
 bIxuG37E3rE4DQLrCdiCGCJfXtp/Y0LRbmv47V6aogRaGtbbg1MrvZs8DH/zRAJCZ6wW
 bhC7FJNstn0erJA/iAvx+b6xeG61RNxiNhS6Tsj/ZnNHrf/X32aUWRU8HWOSMqOin3No
 NLKBi8HDkWHc5GqNO/JnTiGjxfion8s3cID7hlwxPaFp82z/+rUiqsbQ3MJ8Brym8xCL
 WWxY9NjD950ljazebzJ9BHLeAPPMIVpE2yEb/f4rKufZmJewOJzrPz1Fe3bo6Szs4Hd3
 pFNQ==
X-Gm-Message-State: AOAM530EZSQGZJ/BJEBWf7aM3OkKlYrRQvKU4aVYnSQeGiUgDIh1YBYc
 b5vYoIz1YPakgcJ6/tl1vf0TFzn+
X-Google-Smtp-Source: ABdhPJzUVtRU9wW2z+lwxrwqwYLMsqoXfTvBO4uNieQkDFhtYxHGL4s7/KjAetapo0gN4GfrF4F68w==
X-Received: by 2002:a1c:7212:: with SMTP id n18mr358535wmc.129.1589364682222; 
 Wed, 13 May 2020 03:11:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id h137sm44193098wme.0.2020.05.13.03.11.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 03:11:21 -0700 (PDT)
Subject: Re: [PATCH 06/14] prctl.2: ffix quotation mark tweaks
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-7-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7afe32a5-9675-74d4-7c39-f1271d475afd@gmail.com>
Date: Wed, 13 May 2020 12:11:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-7-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_031124_098817_AEC6A6A2 
X-CRM114-Status: GOOD (  35.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Dave,

On 5/12/20 6:36 PM, Dave Martin wrote:
> Convert quote marks used for information terms in prose to use
> \(oq .. \(cq, for better graphical rendering.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Again, this is a patch that I would prefer to see near the end 
of a series, rather than in the middle.

I'm currently agnostic about this change. But, I do not
want to apply this patch, since no other pages in man-pages
use \(oq...\(cq.

I haven't applied this patch. Luckily, that does not prevent
any of the later patches applying.

> ---
> 
> Note, this can lead to misrendering on badly-configured systems.
> However, many man pages do it.

Can you say some more about this please?

Cheers,

Michael

> In the C locale (or with -Tascii) the quotes still render as ' .
> ---
>  man2/prctl.2 | 71 ++++++++++++++++++++++++++++++------------------------------
>  1 file changed, 36 insertions(+), 35 deletions(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 1611448..7a3fc5c 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -188,7 +188,7 @@ library in the form of
>  If
>  .I arg2
>  is nonzero,
> -set the "child subreaper" attribute of the calling process;
> +set the \(oqchild subreaper\(cq attribute of the calling process;
>  if
>  .I arg2
>  is zero, unset the attribute.
> @@ -210,7 +210,7 @@ signal and will be able to
>  .BR wait (2)
>  on the process to discover its termination status.
>  .IP
> -The setting of the "child subreaper" attribute
> +The setting of the \(oqchild subreaper\(cq attribute
>  is not inherited by children created by
>  .BR fork (2)
>  and
> @@ -231,13 +231,13 @@ employ a subreaper process for similar reasons.
>  .\" prctl PR_GET_CHILD_SUBREAPER
>  .TP
>  .BR PR_GET_CHILD_SUBREAPER " (since Linux 3.4)"
> -Return the "child subreaper" setting of the caller,
> +Return the \(oqchild subreaper\(cq setting of the caller,
>  in the location pointed to by
>  .IR "(int\ *) arg2" .
>  .\" prctl PR_SET_DUMPABLE
>  .TP
>  .BR PR_SET_DUMPABLE " (since Linux 2.3.20)"
> -Set the state of the "dumpable" attribute,
> +Set the state of the \(oqdumpable\(cq attribute,
>  which determines whether core dumps are produced for the calling process
>  upon delivery of a signal whose default behavior is to produce a core dump.
>  .IP
> @@ -263,7 +263,7 @@ for security reasons, this feature has been removed.
>  in
>  .BR proc (5).)
>  .IP
> -Normally, the "dumpable" attribue is set to 1.
> +Normally, the \(oqdumpable\(cq attribue is set to 1.
>  However, it is reset to the current value contained in the file
>  .IR /proc/sys/fs/\:suid_dumpable
>  (which by default has the value 0),
> @@ -539,19 +539,19 @@ must be zero.
>  .\" prctl PR_SET_KEEPCAPS
>  .TP
>  .BR PR_SET_KEEPCAPS " (since Linux 2.2.18)"
> -Set the state of the calling thread's "keep capabilities" flag.
> +Set the state of the calling thread's \(oqkeep capabilities\(cq flag.
>  The effect of this flag is described in
>  .BR capabilities (7).
>  .I arg2
>  must be either 0 (clear the flag)
>  or 1 (set the flag).
> -The "keep capabilities" value will be reset to 0 on subsequent calls to
> +The \(oqkeep capabilities\(cq value will be reset to 0 on subsequent calls to
>  .BR execve (2).
>  .\" prctl PR_GET_KEEPCAPS
>  .TP
>  .BR PR_GET_KEEPCAPS " (since Linux 2.2.18)"
>  Return (as the function result) the current state of the calling thread's
> -"keep capabilities" flag.
> +\(oqkeep capabilities\(cq flag.
>  See
>  .BR capabilities (7)
>  for a description of this flag.
> @@ -806,8 +806,8 @@ and a set of special instruction prefixes that tell the CPU on which
>  instructions it should do bounds enforcement.
>  There is a limited number of these registers and
>  when there are more pointers than registers,
> -their contents must be "spilled" into a set of tables.
> -These tables are called "bounds tables" and the MPX
> +their contents must be \(oqspilled\(cq into a set of tables.
> +These tables are called \(oqbounds tables\(cq and the MPX
>  .BR prctl ()
>  operations control
>  whether the kernel manages their allocation and freeing.
> @@ -833,7 +833,8 @@ These calls fail if the CPU or kernel does not support MPX.
>  Kernel support for MPX is enabled via the
>  .BR CONFIG_X86_INTEL_MPX
>  configuration option.
> -You can check whether the CPU supports MPX by looking for the 'mpx'
> +You can check whether the CPU supports MPX by looking for the
> +.I mpx
>  CPUID bit, like with the following command:
>  .IP
>  .in +4n
> @@ -954,7 +955,7 @@ parent dies.
>  .IP
>  .IR Warning :
>  .\" https://bugzilla.kernel.org/show_bug.cgi?id=43300
> -the "parent" in this case is considered to be the
> +the \(oqparent\(cq in this case is considered to be the
>  .I thread
>  that created this process.
>  In other words, the signal will be sent when that thread terminates
> @@ -1005,20 +1006,20 @@ in the location pointed to by
>  .\" commit 2d514487faf188938a4ee4fb3464eeecfbdcf8eb
>  .\" commit bf06189e4d14641c0148bea16e9dd24943862215
>  This is meaningful only when the Yama LSM is enabled and in mode 1
> -("restricted ptrace", visible via
> +(\(oqrestricted ptrace\(cq, visible via
>  .IR /proc/sys/kernel/yama/ptrace_scope ).
> -When a "ptracer process ID" is passed in \fIarg2\fP,
> +When a \(oqptracer process ID\(cq is passed in \fIarg2\fP,
>  the caller is declaring that the ptracer process can
>  .BR ptrace (2)
>  the calling process as if it were a direct process ancestor.
>  Each
>  .B PR_SET_PTRACER
> -operation replaces the previous "ptracer process ID".
> +operation replaces the previous \(oqptracer process ID\(cq.
>  Employing
>  .B PR_SET_PTRACER
>  with
>  .I arg2
> -set to 0 clears the caller's "ptracer process ID".
> +set to 0 clears the caller's \(oqptracer process ID\(cq.
>  If
>  .I arg2
>  is
> @@ -1139,7 +1140,7 @@ without the risk that the process is killed; see
>  .\" prctl PR_SET_SECUREBITS
>  .TP
>  .BR PR_SET_SECUREBITS " (since Linux 2.6.26)"
> -Set the "securebits" flags of the calling thread to the value supplied in
> +Set the \(oqsecurebits\(cq flags of the calling thread to the value supplied in
>  .IR arg2 .
>  See
>  .BR capabilities (7).
> @@ -1147,7 +1148,7 @@ See
>  .TP
>  .BR PR_GET_SECUREBITS " (since Linux 2.6.26)"
>  Return (as the function result)
> -the "securebits" flags of the calling thread.
> +the \(oqsecurebits\(cq flags of the calling thread.
>  See
>  .BR capabilities (7).
>  .\" prctl PR_GET_SPECULATION_CTRL
> @@ -1289,7 +1290,7 @@ in Linux 2.6.32.
>  .TP
>  .BR PR_SET_THP_DISABLE " (since Linux 3.15)"
>  .\" commit a0715cc22601e8830ace98366c0c2bd8da52af52
> -Set the state of the "THP disable" flag for the calling thread.
> +Set the state of the \(oqTHP disable\(cq flag for the calling thread.
>  If
>  .I arg2
>  has a nonzero value, the flag is set, otherwise it is cleared.
> @@ -1298,14 +1299,14 @@ for disabling transparent huge pages
>  for jobs where the code cannot be modified, and using a malloc hook with
>  .BR madvise (2)
>  is not an option (i.e., statically allocated data).
> -The setting of the "THP disable" flag is inherited by a child created via
> +The setting of the \(oqTHP disable\(cq flag is inherited by a child created via
>  .BR fork (2)
>  and is preserved across
>  .BR execve (2).
>  .\" prctl PR_GET_THP_DISABLE
>  .TP
>  .BR PR_GET_THP_DISABLE " (since Linux 3.15)"
> -Return (as the function result) the current setting of the "THP disable"
> +Return (as the function result) the current setting of the \(oqTHP disable\(cq
>  flag for the calling thread:
>  either 1, if the flag is set, or 0, if it is not.
>  .\" prctl PR_GET_TID_ADDRESS
> @@ -1336,21 +1337,21 @@ this operation expects a user-space buffer of 8 (not 4) bytes on these ABIs.
>  .\" See https://lwn.net/Articles/369549/
>  .\" commit 6976675d94042fbd446231d1bd8b7de71a980ada
>  Each thread has two associated timer slack values:
> -a "default" value, and a "current" value.
> -This operation sets the "current" timer slack value for the calling thread.
> +a \(oqdefault\(cq value, and a \(oqcurrent\(cq value.
> +This operation sets the \(oqcurrent\(cq timer slack value for the calling thread.
>  .I arg2
> -is an unsigned long value, then maximum "current" value is ULONG_MAX and
> -the minimum "current" value is 1.
> +is an unsigned long value, then maximum \(oqcurrent\(cq value is ULONG_MAX and
> +the minimum \(oqcurrent\(cq value is 1.
>  If the nanosecond value supplied in
>  .IR arg2
> -is greater than zero, then the "current" value is set to this value.
> +is greater than zero, then the \(oqcurrent\(cq value is set to this value.
>  If
>  .I arg2
>  is equal to zero,
> -the "current" timer slack is reset to the
> -thread's "default" timer slack value.
> +the \(oqcurrent\(cq timer slack is reset to the
> +thread's \(oqdefault\(cq timer slack value.
>  .IP
> -The "current" timer slack is used by the kernel to group timer expirations
> +The \(oqcurrent\(cq timer slack is used by the kernel to group timer expirations
>  for the calling thread that are close to one another;
>  as a consequence, timer expirations for the thread may be
>  up to the specified number of nanoseconds late (but will never expire early).
> @@ -1382,11 +1383,11 @@ a real-time scheduling policy (see
>  .BR sched_setscheduler (2)).
>  .IP
>  When a new thread is created,
> -the two timer slack values are made the same as the "current" value
> +the two timer slack values are made the same as the \(oqcurrent\(cq value
>  of the creating thread.
> -Thereafter, a thread can adjust its "current" timer slack value via
> +Thereafter, a thread can adjust its \(oqcurrent\(cq timer slack value via
>  .BR PR_SET_TIMERSLACK .
> -The "default" value can't be changed.
> +The \(oqdefault\(cq value can't be changed.
>  The timer slack values of
>  .IR init
>  (PID 1), the ancestor of all processes,
> @@ -1396,7 +1397,7 @@ The timer slack value is inherited by a child created via
>  and is preserved across
>  .BR execve (2).
>  .IP
> -Since Linux 4.6, the "current" timer slack value of any process
> +Since Linux 4.6, the \(oqcurrent\(cq timer slack value of any process
>  can be examined and changed via the file
>  .IR /proc/[pid]/timerslack_ns .
>  See
> @@ -1405,7 +1406,7 @@ See
>  .TP
>  .BR PR_GET_TIMERSLACK " (since Linux 2.6.28)"
>  Return (as the function result)
> -the "current" timer slack value of the calling thread.
> +the \(oqcurrent\(cq timer slack value of the calling thread.
>  .\" prctl PR_SET_TIMING
>  .TP
>  .BR PR_SET_TIMING " (since Linux 2.6.0)"
> @@ -1817,7 +1818,7 @@ is
>  and the caller does not have the
>  .B CAP_SETPCAP
>  capability,
> -or tried to unset a "locked" flag,
> +or tried to unset a \(oqlocked\(cq flag,
>  or tried to set a flag whose corresponding locked flag was set
>  (see
>  .BR capabilities (7)).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
