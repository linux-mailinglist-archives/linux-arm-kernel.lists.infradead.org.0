Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFD495C12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 12:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:References:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cYykImWB63ueDOY9hYGdyBwsYFtGpB6Ii4P8RcjEAEs=; b=FXKsydsAVHRxqrmBQ75NCfTiy
	mY5Tt4tLkWsR4rkMZ1dwbK1gNgPcGUbhK7DaAUy2p8KFbx/fk4i74COJgPbE3RU+9wj9uuDzy/dAT
	UP67NHqAaXSWl59213sMHoJFo+oIIwD+DryRGifeKWAnjEJk5S39YytAmjfk5/D8H/DSJ+OyukyUt
	25tkslWapT2ZUTd/VFwJc3lQuq8dqVyl/uNh2TSTtk4LLqiiEWVJeUIvHJT05TJihr55wDgQv/e7p
	YvWhVc2U65WOs6qdn7hUSrn51cyiKOi2tNpvqqh1JR2qPgm/8Ak2kx395EOFvOTnY/9LhIHL09Kj5
	bGKOLgSrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01BR-0006I6-RO; Tue, 20 Aug 2019 10:16:09 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01Av-00064f-8v
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 10:15:39 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7KABce7195956
 for <linux-arm-kernel@lists.infradead.org>; Tue, 20 Aug 2019 06:15:35 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ugd9emt0f-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 20 Aug 2019 06:15:35 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <naveen.n.rao@linux.ibm.com>; 
 Tue, 20 Aug 2019 11:15:32 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 20 Aug 2019 11:15:28 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7KAFRgd61145098
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 20 Aug 2019 10:15:27 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 03FDA4C062;
 Tue, 20 Aug 2019 10:15:27 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6B3C64C04A;
 Tue, 20 Aug 2019 10:15:26 +0000 (GMT)
Received: from localhost (unknown [9.199.61.204])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 20 Aug 2019 10:15:26 +0000 (GMT)
Date: Tue, 20 Aug 2019 15:45:24 +0530
From: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Subject: Re: [PATCH v2 2/3] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
To: Anil =?iso-8859-1?q?S=0A?= Keshavamurthy <anil.s.keshavamurthy@intel.com>, 
 Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, "David S. Miller" <davem@davemloft.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Jisheng Zhang
 <Jisheng.Zhang@synaptics.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "x86@kernel.org" <x86@kernel.org>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114224.0c8963c4@xhacker.debian>
In-Reply-To: <20190820114224.0c8963c4@xhacker.debian>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
X-TM-AS-GCONF: 00
x-cbid: 19082010-0008-0000-0000-0000030B00B9
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082010-0009-0000-0000-00004A29275C
Message-Id: <1566295437.yqnot2qd2e.naveen@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-20_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908200108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_031537_501320_DE6744D7 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jisheng Zhang wrote:
> For KPROBES_ON_FTRACE case, we need to adjust the kprobe's addr
> correspondingly.
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
>  kernel/kprobes.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 9873fc627d61..3fd2f68644da 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -1484,15 +1484,19 @@ static inline int check_kprobe_rereg(struct kprobe *p)
>  
>  int __weak arch_check_ftrace_location(struct kprobe *p)
>  {
> -	unsigned long ftrace_addr;
> +	unsigned long ftrace_addr, addr = (unsigned long)p->addr;
>  
> -	ftrace_addr = ftrace_location((unsigned long)p->addr);
> +#ifdef CONFIG_KPROBES_ON_FTRACE
> +	addr = ftrace_call_adjust(addr);
> +#endif

Looking at the commit message for patch 3/3, it looks like you want the 
probe to be placed on ftrace entry by default, and this patch seems to 
be aimed at that.

If so, this is not the right approach. As I mentioned previously, you 
would want to over-ride kprobe_lookup_name(). This ensures that the 
address is changed only if the user provided a symbol, and not if the 
user wanted to probe at a very specific address. See commit 
24bd909e94776 ("powerpc/kprobes: Prefer ftrace when probing function 
entry").

If this patch is for some other purpose, then it isn't clear from the 
commit log. Please provide a better explanation.


- Naveen


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
