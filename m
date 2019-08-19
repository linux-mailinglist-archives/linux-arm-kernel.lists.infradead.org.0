Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D3294AA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 18:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:References:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VoXFcBpH/l2nFRUU5r7iOLEZmyUDJLKhwkmU88T8eN8=; b=TOeJdir0/wFp/0ewwzbjCR3QR
	so110DlV2EnXuXU7Qgo3mFo9AFKUX+IjjIMuhnu4D4Q++p4ZjGCd5mEGSMVwECXNfzJsY40VYlLCZ
	RDpLw6QvAsfuLM1fRR2BCV0IrHycUVs54QR8g1dG8G+5+fBr1NMade5OHvqFu2UEE/nwHPIcpkbuf
	Cofc/kHuxf9eeCpun4lGOOEhZ4j1gFqhMJp0bJEln1DSpFpo3E6MzJOHWMYc7CttDZ1Sl73AQcjam
	HsmcIK8gwwbv0S0Oa0Dzz0in00bjYsT27WJDRsiGdHm/x8qgccbAt99l18+P8n0VDu1Ce8Grj8C/F
	uMbc4xj1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzkkb-0000Rd-A3; Mon, 19 Aug 2019 16:43:21 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzkkU-0000R3-6N
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 16:43:15 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7JGRaDQ064894
 for <linux-arm-kernel@lists.infradead.org>; Mon, 19 Aug 2019 12:43:12 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ufx99b8vy-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 19 Aug 2019 12:43:12 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <naveen.n.rao@linux.ibm.com>; 
 Mon, 19 Aug 2019 17:43:09 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 19 Aug 2019 17:43:05 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x7JGgi8i42009006
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 19 Aug 2019 16:42:44 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 51FA252059;
 Mon, 19 Aug 2019 16:43:04 +0000 (GMT)
Received: from localhost (unknown [9.85.69.174])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id E705452051;
 Mon, 19 Aug 2019 16:43:03 +0000 (GMT)
Date: Mon, 19 Aug 2019 22:13:02 +0530
From: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Subject: Re: [PATCH 1/4] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
To: Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>, Borislav Petkov
 <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>,
 "David S. Miller" <davem@davemloft.net>, "H. Peter Anvin" <hpa@zytor.com>,
 Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 =?iso-8859-1?q?Masami=0A?= Hiramatsu <mhiramat@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
References: <20190819192422.5ed79702@xhacker.debian>
 <20190819192505.483c0bf0@xhacker.debian>
In-Reply-To: <20190819192505.483c0bf0@xhacker.debian>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
X-TM-AS-GCONF: 00
x-cbid: 19081916-0016-0000-0000-000002A06A45
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19081916-0017-0000-0000-00003300958E
Message-Id: <1566232801.derqq08wxh.naveen@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-19_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908190176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_094314_241719_C20640EE 
X-CRM114-Status: GOOD (  22.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
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
>  kernel/kprobes.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 9873fc627d61..f8400753a8a9 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -1560,6 +1560,9 @@ int register_kprobe(struct kprobe *p)
>  	addr = kprobe_addr(p);
>  	if (IS_ERR(addr))
>  		return PTR_ERR(addr);
> +#ifdef CONFIG_KPROBES_ON_FTRACE
> +	addr = (kprobe_opcode_t *)ftrace_call_adjust((unsigned long)addr);
> +#endif
>  	p->addr = addr;

I'm not sure what this is achieving, but looks wrong to me.

If you intend to have kprobes default to using ftrace entry for probing 
functions, consider over-riding kprobe_lookup_name() -- see powerpc 
variant for example.


- Naveen


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
