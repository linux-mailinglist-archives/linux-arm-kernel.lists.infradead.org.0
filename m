Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8089E1D0F6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8MMKdBfhHY6I+lZ5ukLlMSnASfuNyfs/LQv+tVFmMU=; b=BAif+OwShBR/AY
	TUU0+hwc6k2yDq+26Pz6VCxukPcYwJzHdKSeFqMIMq2ISgUvEmK5kh/LGfM0oBJH/jKB9blf0pRaI
	cEENhDt4PQp7+no0Xnj6E24uCQ5ZYIaFTxBqQB4MsKssHtN7GiLFrQc9f0VdltG/QW2/iRkdJWJNk
	V02I+yn0yNSN39Npif/pcVDk2Rp96z0saQjyrFA9vFrCE7uq2XJZU088cDyExdKN9sQ+pKAwJ5Zij
	jDGTYA7B5qOhkgfqvST82Xaph4jvwj2Nlbbgx41wKY1Ez24JgFTq8JQDShz1jH6fvmW1jOBPTuDVC
	fqcb6fyOaBsh3p4ZnsMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoLy-0000NA-Ua; Wed, 13 May 2020 10:11:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoLn-0000ME-Ue
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:10:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id i15so20103981wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9yz3NiGSUqmdW5HKQ8E+J75PGv3sAxRug9OVZkiDIdQ=;
 b=p1N/AXdZ5c2QPmrLgCWpfSn7MG2eLgBSC0oetlx751kILVaIvrai/Xs1df34KZ+8zg
 PFyCs2bqpK1H6GErTo93PW8YejkkaofVf9bHxtA4cerPCiI+R/bQqy7fJePqh0BT3Huk
 72TxvjE3WWAtvRivqEcdGD8RzN1vzprx1iIRlevBKf+SRN+p1SJ3zLzYEwBz0gQNPcVo
 s+0m0eV2Ks7vYRuaOjz0Td6xqLENUkosuZny7sZGqEUU3v68TEd0R2fej+lyVgDQElk5
 rFC4iybR4ZYW7DC7mXe5CBB4grlF66g5BpTmN7KeXYC/nY5R9DTcud0T8UG9yFfW+Fb9
 aLNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9yz3NiGSUqmdW5HKQ8E+J75PGv3sAxRug9OVZkiDIdQ=;
 b=FYFCTyet0ZQZk8QxCOBJwA2zNwZ24rYZygbooSmmNzG20GKV+F7YzbD5Yay2JSRBH3
 1+NZ50JLE4znEjhpIIj52cHXWwKpmA/lGQ9mY5BOWjeD7Mt6FPKkmzLRE0gIuDzLH4J0
 VnrJZqbdJ47w6cGBlDcZHNG42sOs/qcsi+CStp2Cn+XhqxZBX2DHXw3kuvkma8dKkd+a
 iRCaWSaZ+T1pcv73/U/Qh6VJk5/FPXWeEMzOrkYZtCC1UYu7irzLduT3GOHt4+DHbQ+t
 6jhY2k5RZQ1NeWPuJEp3vQ6PYIS+4bJPGm1CsVGyxv9JRxoLzMie6pQLN1mMuuy5zAF2
 hzLw==
X-Gm-Message-State: AGi0PuaNTkzXaN5PRUx4EPS32M6JZwXnN+dAhVCv7/c6QThXMo6bheJb
 AGP/0mDyYjn1phgsHqlk9HsCTrLl
X-Google-Smtp-Source: APiQypLV7kgF3526XEUzSQHtExkVxzcWv7e6sb9HnjoVqcIpgy/CR5bjqm2vbnmfhrJ4UPyepy8x6g==
X-Received: by 2002:a5d:4b4d:: with SMTP id w13mr31958954wrs.178.1589364654096; 
 Wed, 13 May 2020 03:10:54 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id w18sm27253393wro.33.2020.05.13.03.10.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 03:10:53 -0700 (PDT)
Subject: Re: [PATCH 05/14] prctl.2: tfix listing order of prctls
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-6-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1bb991f4-176a-a74e-01fc-c73b49ed77f5@gmail.com>
Date: Wed, 13 May 2020 12:10:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-6-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_031056_004718_FAAD6371 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Hi Dave,

On 5/12/20 6:36 PM, Dave Martin wrote:
> The prctl list has historically been sorted by prctl name (ignoring
> any SET_ or GET_ prefix) to make individual prctls easier to find.
> Some noise seems to have crept in since.
> 
> Sort the list back into order.  Similarly, reorder the list of
> prctls specified to return non-zero values on success.

This is a good patch. But see my comments on patch 04.
I'd prefer a patch like this at the end of a series, 
rather than in the middle of it.

> Content movement only.  No semantic change.

And explicitly noting that detail is very helpful to me.

Patch applied.

Cheers,

Michael

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/prctl.2 | 138 +++++++++++++++++++++++++++++------------------------------
>  1 file changed, 69 insertions(+), 69 deletions(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index e5b2b4b..1611448 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -490,6 +490,52 @@ Pass \fBPR_FP_EXC_SW_ENABLE\fP to use FPEXC for FP exception enables,
>  Return floating-point exception mode,
>  in the location pointed to by
>  .IR "(int\ *) arg2" .
> +.\" prctl PR_SET_IO_FLUSHER
> +.TP
> +.BR PR_SET_IO_FLUSHER " (since Linux 5.6)"
> +If a user process is involved in the block layer or filesystem I/O path,
> +and can allocate memory while processing I/O requests it must set
> +\fIarg2\fP to 1.
> +This will put the process in the IO_FLUSHER state,
> +which allows it special treatment to make progress when allocating memory.
> +If \fIarg2\fP is 0, the process will clear the IO_FLUSHER state, and
> +the default behavior will be used.
> +.IP
> +The calling process must have the
> +.BR CAP_SYS_RESOURCE
> +capability.
> +.IP
> +.IR arg3 ,
> +.IR arg4 ,
> +and
> +.IR arg5
> +must be zero.
> +.IP
> +The IO_FLUSHER state is inherited by a child process created via
> +.BR fork (2)
> +and is preserved across
> +.BR execve (2).
> +.IP
> +Examples of IO_FLUSHER applications are FUSE daemons, SCSI device
> +emulation daemons, and daemons that perform error handling like multipath
> +path recovery applications.
> +.\" prctl PR_GET_IO_FLUSHER
> +.TP
> +.B PR_GET_IO_FLUSHER (Since Linux 5.6)
> +Return (as the function result) the IO_FLUSHER state of the caller.
> +A value of 1 indicates that the caller is in the IO_FLUSHER state;
> +0 indicates that the caller is not in the IO_FLUSHER state.
> +.IP
> +The calling process must have the
> +.BR CAP_SYS_RESOURCE
> +capability.
> +.IP
> +.IR arg2 ,
> +.IR arg3 ,
> +.IR arg4 ,
> +and
> +.IR arg5
> +must be zero.
>  .\" prctl PR_SET_KEEPCAPS
>  .TP
>  .BR PR_SET_KEEPCAPS " (since Linux 2.2.18)"
> @@ -1207,23 +1253,6 @@ call failing with the error
>  .BR ENXIO .
>  For further details, see the kernel source file
>  .IR Documentation/admin-guide/kernel-parameters.txt .
> -.\" prctl PR_SET_THP_DISABLE
> -.TP
> -.BR PR_SET_THP_DISABLE " (since Linux 3.15)"
> -.\" commit a0715cc22601e8830ace98366c0c2bd8da52af52
> -Set the state of the "THP disable" flag for the calling thread.
> -If
> -.I arg2
> -has a nonzero value, the flag is set, otherwise it is cleared.
> -Setting this flag provides a method
> -for disabling transparent huge pages
> -for jobs where the code cannot be modified, and using a malloc hook with
> -.BR madvise (2)
> -is not an option (i.e., statically allocated data).
> -The setting of the "THP disable" flag is inherited by a child created via
> -.BR fork (2)
> -and is preserved across
> -.BR execve (2).
>  .\"
>  .\" prctl PR_TASK_PERF_EVENTS_DISABLE
>  .TP
> @@ -1256,6 +1285,23 @@ renamed
>  .\" commit cdd6c482c9ff9c55475ee7392ec8f672eddb7be6
>  in Linux 2.6.32.
>  .\"
> +.\" prctl PR_SET_THP_DISABLE
> +.TP
> +.BR PR_SET_THP_DISABLE " (since Linux 3.15)"
> +.\" commit a0715cc22601e8830ace98366c0c2bd8da52af52
> +Set the state of the "THP disable" flag for the calling thread.
> +If
> +.I arg2
> +has a nonzero value, the flag is set, otherwise it is cleared.
> +Setting this flag provides a method
> +for disabling transparent huge pages
> +for jobs where the code cannot be modified, and using a malloc hook with
> +.BR madvise (2)
> +is not an option (i.e., statically allocated data).
> +The setting of the "THP disable" flag is inherited by a child created via
> +.BR fork (2)
> +and is preserved across
> +.BR execve (2).
>  .\" prctl PR_GET_THP_DISABLE
>  .TP
>  .BR PR_GET_THP_DISABLE " (since Linux 3.15)"
> @@ -1438,67 +1484,21 @@ system call on Tru64).
>  for information on versions and architectures.)
>  Return unaligned access control bits, in the location pointed to by
>  .IR "(unsigned int\ *) arg2" .
> -.\" prctl PR_SET_IO_FLUSHER
> -.TP
> -.BR PR_SET_IO_FLUSHER " (since Linux 5.6)"
> -If a user process is involved in the block layer or filesystem I/O path,
> -and can allocate memory while processing I/O requests it must set
> -\fIarg2\fP to 1.
> -This will put the process in the IO_FLUSHER state,
> -which allows it special treatment to make progress when allocating memory.
> -If \fIarg2\fP is 0, the process will clear the IO_FLUSHER state, and
> -the default behavior will be used.
> -.IP
> -The calling process must have the
> -.BR CAP_SYS_RESOURCE
> -capability.
> -.IP
> -.IR arg3 ,
> -.IR arg4 ,
> -and
> -.IR arg5
> -must be zero.
> -.IP
> -The IO_FLUSHER state is inherited by a child process created via
> -.BR fork (2)
> -and is preserved across
> -.BR execve (2).
> -.IP
> -Examples of IO_FLUSHER applications are FUSE daemons, SCSI device
> -emulation daemons, and daemons that perform error handling like multipath
> -path recovery applications.
> -.\" prctl PR_GET_IO_FLUSHER
> -.TP
> -.B PR_GET_IO_FLUSHER (Since Linux 5.6)
> -Return (as the function result) the IO_FLUSHER state of the caller.
> -A value of 1 indicates that the caller is in the IO_FLUSHER state;
> -0 indicates that the caller is not in the IO_FLUSHER state.
> -.IP
> -The calling process must have the
> -.BR CAP_SYS_RESOURCE
> -capability.
> -.IP
> -.IR arg2 ,
> -.IR arg3 ,
> -.IR arg4 ,
> -and
> -.IR arg5
> -must be zero.
>  .SH RETURN VALUE
>  On success,
> +.BR PR_CAP_AMBIENT + PR_CAP_AMBIENT_IS_SET ,
> +.BR PR_CAPBSET_READ ,
>  .BR PR_GET_DUMPABLE ,
>  .BR PR_GET_FP_MODE ,
> +.BR PR_GET_IO_FLUSHER ,
>  .BR PR_GET_KEEPCAPS ,
> +.BR PR_MCE_KILL_GET ,
>  .BR PR_GET_NO_NEW_PRIVS ,
> +.BR PR_GET_SECUREBITS ,
> +.BR PR_GET_SPECULATION_CTRL ,
>  .BR PR_GET_THP_DISABLE ,
> -.BR PR_CAPBSET_READ ,
>  .BR PR_GET_TIMING ,
>  .BR PR_GET_TIMERSLACK ,
> -.BR PR_GET_SECUREBITS ,
> -.BR PR_GET_SPECULATION_CTRL ,
> -.BR PR_MCE_KILL_GET ,
> -.BR PR_CAP_AMBIENT + PR_CAP_AMBIENT_IS_SET ,
> -.BR PR_GET_IO_FLUSHER ,
>  and (if it returns)
>  .BR PR_GET_SECCOMP
>  return the nonnegative values described above.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
