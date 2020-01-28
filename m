Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AF614C21B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 22:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7gdCE5+h1x0hURlGRZu7Z2S1+s82P/pfKpiUYeIIew=; b=XFDfa4DIHhnaQL
	K+U94UEx/kU70HLJejYBbUP9Mnt3Cma3EffgrJVfW9desrTysQxDlSK8r03Yj17ejh974R6/4DQhX
	IXV+GkyVJqWgilrIjZbwwVu+804kETysqHQKrVTrEnOvcIqgEZOecz6Ge0U4UvRElHdf5CU3PAxE0
	529nnSIAFaPGRli/OB9U39EUhBrIR4BEXuFJr8Bxnw6qSDzXsoJ9zlauIDEtiA0RyIyyWdoB2d84I
	Oo1VQInEyXC8k4aOTIZd2ptjPHakXGsNc5UL2Hb44OW81PdPE8hxiWWx2iMucd2+ypkjUZA8Vz4IN
	Cc0tDesRuQxmgf3UoP3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwYHl-000691-Ht; Tue, 28 Jan 2020 21:20:37 +0000
Received: from namei.org ([65.99.196.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwYHH-00055p-2g
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 21:20:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 00SLHk4L004579;
 Tue, 28 Jan 2020 21:17:46 GMT
Date: Wed, 29 Jan 2020 08:17:46 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v6 08/10] parisc/perf: open access for CAP_PERFMON
 privileged process
In-Reply-To: <17be72ff-dc52-72ef-fbcc-0e9ec8b61604@linux.intel.com>
Message-ID: <alpine.LRH.2.21.2001290817390.2204@namei.org>
References: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
 <17be72ff-dc52-72ef-fbcc-0e9ec8b61604@linux.intel.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_132007_254261_EF820516 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Will Deacon <will@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Stephane Eranian <eranian@google.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020, Alexey Budankov wrote:

> 
> Open access to monitoring for CAP_PERFMON privileged process.
> Providing the access under CAP_PERFMON capability singly, without the
> rest of CAP_SYS_ADMIN credentials, excludes chances to misuse the
> credentials and makes operation more secure.
> 
> CAP_PERFMON implements the principal of least privilege for performance
> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle
> of least privilege: A security design principle that states that a process
> or program be granted only those privileges (e.g., capabilities) necessary
> to accomplish its legitimate function, and only for the time that such
> privileges are actually required)
> 
> For backward compatibility reasons access to the monitoring remains open
> for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for secure
> monitoring is discouraged with respect to CAP_PERFMON capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>  arch/parisc/kernel/perf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/parisc/kernel/perf.c b/arch/parisc/kernel/perf.c
> index 676683641d00..c4208d027794 100644
> --- a/arch/parisc/kernel/perf.c
> +++ b/arch/parisc/kernel/perf.c
> @@ -300,7 +300,7 @@ static ssize_t perf_write(struct file *file, const char __user *buf,
>  	else
>  		return -EFAULT;
>  
> -	if (!capable(CAP_SYS_ADMIN))
> +	if (!perfmon_capable())
>  		return -EACCES;
>  
>  	if (count != sizeof(uint32_t))
> 


Acked-by: James Morris <jamorris@linux.microsoft.com>

-- 
James Morris
<jmorris@namei.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
