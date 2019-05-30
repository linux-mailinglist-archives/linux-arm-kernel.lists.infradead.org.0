Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D157E2F8AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 10:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LX1T/TNNAcePEJ1Xen90FF+PaQmaFFc/UdqCFApF4NM=; b=KA0CGiQA4mkfrm
	/7Fc+nnJvqvmsambK3RFE0x15FMubFzSysMf1Gfo3FKjHg3FIcFLT4Xdi3os5adRMjL0SMpn0ZcfX
	4F07bThEl5dJZWOMOpY75mD9YlfUETaKET6V+b9eNYdf20EEZbT0mQDfyXAxyYDYFxiTHzoTothJy
	qY8HhfaVTP0eTQgb31LZiYz6Z28RoMbU6J6TNln1wNAHessUA3lg1JXzLmaB4OVLUX3Q2ckU8GW3t
	nFDD0QhF+/h3yxkBwZwAl1oDTt/0uAsRZcg2yqGTNDI0cRL92kdSVUDFppg8to9wwEAWb+ITHk5zo
	Q2rz2ytGWcxXbyP41EaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWGac-0006Ix-Nl; Thu, 30 May 2019 08:39:10 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWGaV-0006Ht-FO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 08:39:04 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4U8apOT038425
 for <linux-arm-kernel@lists.infradead.org>; Thu, 30 May 2019 04:38:59 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2stbhws06w-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 30 May 2019 04:38:59 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <ravi.bangoria@linux.ibm.com>; 
 Thu, 30 May 2019 09:38:56 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 30 May 2019 09:38:51 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4U8covW52690944
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 08:38:50 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 206FD4C044;
 Thu, 30 May 2019 08:38:50 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 277EC4C050;
 Thu, 30 May 2019 08:38:47 +0000 (GMT)
Received: from [9.124.31.34] (unknown [9.124.31.34])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu, 30 May 2019 08:38:46 +0000 (GMT)
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
To: Peter Zijlstra <peterz@infradead.org>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
From: Ravi Bangoria <ravi.bangoria@linux.ibm.com>
Date: Thu, 30 May 2019 14:08:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529125557.GU2623@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19053008-0016-0000-0000-00000280EC8C
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19053008-0017-0000-0000-000032DE01CA
Message-Id: <efcd5cf4-3501-f3b6-bf47-145a9ef19a53@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-30_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905300066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_013903_626826_46B2E044 
X-CRM114-Status: GOOD (  28.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, ravi.bangoria@linux.ibm.com,
 Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au, jolsa@redhat.com,
 x86@kernel.org, Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 eranian@google.com, linux-kernel@vger.kernel.org, acme@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/29/19 6:25 PM, Peter Zijlstra wrote:
> On Wed, May 29, 2019 at 11:20:22AM +0100, Will Deacon wrote:
>> Anyway, you can add my ack to your patch, but I bet we can remove that mm
>> check :D
> 
> I've ended up with the below. Ravi, can you test if that does indeed
> obsolete your PPC patch?

Checking.

> 
> ---
> Subject: perf: Fix perf_sample_regs_user()
> From: Peter Zijlstra <peterz@infradead.org>
> Date: Wed May 29 14:37:24 CEST 2019
> 
> perf_sample_regs_user() uses 'current->mm' to test for the presence of
> userspace, but this is insufficient, consider use_mm().
> 
> A better test is: '!(current->flags & PF_KTHREAD)', exec() clears
> PF_KTHREAD after it sets the new ->mm but before it drops to userspace
> for the first time.

This looks correct. I'll give it a try.

> 
> Possibly obsoletes: bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs user process")
> 
> Reported-by: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
> Reported-by: Young Xiao <92siuyang@gmail.com>
> Cc: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
> Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Frederic Weisbecker <fweisbec@gmail.com>
> Cc: Stephane Eranian <eranian@google.com>
> Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
> Acked-by: Will Deacon <will.deacon@arm.com>
> Fixes: 4018994f3d87 ("perf: Add ability to attach user level registers dump to sample")
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
>  kernel/events/core.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct
>  	if (user_mode(regs)) {
>  		regs_user->abi = perf_reg_abi(current);
>  		regs_user->regs = regs;
> -	} else if (current->mm) {
> +	} else if (!(current->flags & PF_KTHREAD)) {
>  		perf_get_regs_user(regs_user, regs, regs_user_copy);
>  	} else {
>  		regs_user->abi = PERF_SAMPLE_REGS_ABI_NONE;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
