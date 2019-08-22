Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A21990A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:References:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cwYBmQJbuOO2g2oNNMydLyADR4y0CfKSGmlr175yPKw=; b=D5OoF9h+Z9qOlZ7OzBaedMAlZ
	EBCKfqcDVI8Kjy7NVXi5V78EOOCkNgE1K9s2F3/vfgDBD4P5QY7pKQvp/VvltmJu8YpV1tt58te+1
	op/MSe9zddAmPYI5oyJhQcbNpQTeT2XAdNDtnYVHavY+C378WM0j8/e0yKl8CIuRh6YKiz/AiUnrW
	fJa1RExQ5gMEjZUrRmFMZqcLFlPUCw8wh6uwasxlKMaiYHGUJQFkHrzWLoziJjiPKPEPauHJtyAMH
	a0cpuOuhYgpkP9n0GkUPlAzVenrvNCz56oFJ+Iyp+m7W794CuzzfHPC4bfkAMwWhB6XmITyUmjHVe
	YkI4T3nFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kEo-0006Qp-Bs; Thu, 22 Aug 2019 10:22:38 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kEY-0006QE-Tb
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:22:24 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7MAI9lr137873
 for <linux-arm-kernel@lists.infradead.org>; Thu, 22 Aug 2019 06:22:22 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uhpr4nws0-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 22 Aug 2019 06:22:21 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from
 <naveen.n.rao@linux.vnet.ibm.com>; Thu, 22 Aug 2019 11:22:11 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 22 Aug 2019 11:22:07 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7MAM6KX48169076
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 10:22:07 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C2920A404D;
 Thu, 22 Aug 2019 10:22:06 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5D12CA4040;
 Thu, 22 Aug 2019 10:22:06 +0000 (GMT)
Received: from localhost (unknown [9.199.32.226])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu, 22 Aug 2019 10:22:06 +0000 (GMT)
Date: Thu, 22 Aug 2019 15:52:05 +0530
From: "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>
Subject: Re: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
References: <20190822113421.52920377@xhacker.debian>
 <1566456155.27ojwy97ss.naveen@linux.ibm.com>
 <20190822173558.63de3fc4@xhacker.debian>
In-Reply-To: <20190822173558.63de3fc4@xhacker.debian>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
X-TM-AS-GCONF: 00
x-cbid: 19082210-0016-0000-0000-000002A16D6B
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082210-0017-0000-0000-00003301A5EE
Message-Id: <1566468150.x8u1577wgh.naveen@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-22_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=693 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908220111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_032222_987554_93A3C35E 
X-CRM114-Status: GOOD (  25.70  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jisheng Zhang wrote:
> Hi,
> 
> On Thu, 22 Aug 2019 12:23:58 +0530
> "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com> wrote:
>> Jisheng Zhang wrote:
...
>> > +/* Ftrace callback handler for kprobes -- called under preepmt 
>> > disabed */
>> > +void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
>> > +                        struct ftrace_ops *ops, struct pt_regs *regs)
>> > +{
>> > +     struct kprobe *p;
>> > +     struct kprobe_ctlblk *kcb;
>> > +
>> > +     /* Preempt is disabled by ftrace */
>> > +     p = get_kprobe((kprobe_opcode_t *)ip);
>> > +     if (unlikely(!p) || kprobe_disabled(p))
>> > +             return;
>> > +
>> > +     kcb = get_kprobe_ctlblk();
>> > +     if (kprobe_running()) {
>> > +             kprobes_inc_nmissed_count(p);
>> > +     } else {
>> > +             unsigned long orig_ip = instruction_pointer(regs);
>> > +             /* Kprobe handler expects regs->pc = pc + 4 as breakpoint hit */
>> > +             instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));  
>> 
>> Just want to make sure that you've confirmed that this is what happens
>> with a regular trap/brk based kprobe on ARM64. The reason for setting
>> the instruction pointer here is to ensure that it is set to the same
>> value as would be set if there was a trap/brk instruction at the ftrace
>> location. This ensures that the kprobe pre handler sees the same value
>> regardless.
> 
> Due to the arm64's DYNAMIC_FTRACE_WITH_REGS implementation, the code itself
> is correct. But this doesn't look like "there was a trap instruction at
> the ftrace location".
> 
> W/O KPROBE_ON_FTRACE:
> 
> foo:
> 00	insA
> 04	insB
> 08	insC
> 
> kprobe's pre_handler() will see pc points to 00.

In this case, the probe will be placed at foo+0x00, so pre_handler() 
seeing that address in pt_regs is correct behavior - as long as arm64 
'brk' instruction causes an exception with the instruction pointer set 
*to* the 'brk' instruction. This is similar to how powerpc 'trap' works.  
However, x86 'int3' causes an exception *after* execution of the 
instruction.

> 
> W/ KPROBE_ON_FTRACE:
> 
> foo:
> 00	lr saver
> 04	nop     // will be modified to ftrace call ins when KPROBE is armed
> 08	insA
> 0c	insB

In this case, if user asks for a probe to be placed at 'foo', we will 
choose foo+0x04 and from that point on, the behavior should reflect that 
a kprobe was placed at foo+0x04. In particular, the pre_handler() should 
see foo+0x04 in pt_regs. The post_handler() would then see foo+0x08.

> 
> later, kprobe_ftrace_handler() will see pc points to 04, so pc + 4 will
> point to 08 the same as the one w/o KPROBE_ON_FTRACE.

I didn't mean to compare regular trap/brk based kprobes with 
KPROBES_ON_FTRACE. The only important aspect is that the handlers see 
consistent pt_regs in both cases, depending on where the kprobe was 
placed. Choosing a different address/offset to place a kprobe during its 
registration is an orthogonal aspect.

> 
> It seems I need to fix the comment.

Given your explanation above, I think you can simply drop the first 
adjustment to the instruction pointer before the pre handler invocation.  
The rest of the code looks fine.


- Naveen


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
