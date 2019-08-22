Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BCB992A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:References:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5U+88ovBamrAqIHPSflIGFQTblnWN4SEs+COSewcSp4=; b=ZHTYKA/O5x86UBWNxlW41mFM3
	1OGtE6ieb6p8q3IkJC+4D7r7ez43tPi3J6HRU5UvHqKNsvyN3/QaAHRVsol5mcPq2CPaujMB38+q/
	KxkFPYH5TSu5BjP+fUslSKqTH4ITMrQB47q/WiuCJoOGyRq+W7FvflhUzIJkPhnyKzwa6fojSJ37R
	V8b/ky1RvA/IYz44t4vJ+T2BQKvyXnCQF+ZYgHu6Dj+vQqaj1mQIMBobfJNj+VVm8N+TET4Db2UCo
	Ij0dw/CPD3QGD4PumZXtmkwHXyr218MJrFT5fQPc+EBJhr6R5Pyrlch1rcRcqpGTsXf5o5jrp7yQ+
	JrLM69deA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0leW-0001SX-GX; Thu, 22 Aug 2019 11:53:17 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0le8-0001Ro-G4
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:52:53 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7MBlf5c055513
 for <linux-arm-kernel@lists.infradead.org>; Thu, 22 Aug 2019 07:52:49 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uhrhgw578-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 22 Aug 2019 07:52:49 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from
 <naveen.n.rao@linux.vnet.ibm.com>; Thu, 22 Aug 2019 12:52:47 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 22 Aug 2019 12:52:44 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7MBqhY831260730
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 11:52:43 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EB44D4C052;
 Thu, 22 Aug 2019 11:52:42 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8BE844C050;
 Thu, 22 Aug 2019 11:52:42 +0000 (GMT)
Received: from localhost (unknown [9.199.32.226])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu, 22 Aug 2019 11:52:42 +0000 (GMT)
Date: Thu, 22 Aug 2019 17:22:42 +0530
From: "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>
Subject: Re: [PATCH v5] arm64: implement KPROBES_ON_FTRACE
To: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet
 <corbet@lwn.net>, Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 Masami Hiramatsu <mhiramat@kernel.org>
References: <20190822191351.3796aca8@xhacker.debian>
In-Reply-To: <20190822191351.3796aca8@xhacker.debian>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
X-TM-AS-GCONF: 00
x-cbid: 19082211-4275-0000-0000-0000035BDF6A
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082211-4276-0000-0000-0000386E055A
Message-Id: <1566474733.p35psfjpl2.naveen@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-22_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=616 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908220129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_045252_673492_C9CC0D24 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jisheng Zhang wrote:
> KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
> eliminates the need for a trap, as well as the need to emulate or
> single-step instructions.
> 
> Tested on berlin arm64 platform.
> 
> ~ # mount -t debugfs debugfs /sys/kernel/debug/
> ~ # cd /sys/kernel/debug/
> /sys/kernel/debug # echo 'p _do_fork' > tracing/kprobe_events
> 
> before the patch:
> 
> /sys/kernel/debug # cat kprobes/list
> ffffff801009fe28  k  _do_fork+0x0    [DISABLED]
> 
> after the patch:
> 
> /sys/kernel/debug # cat kprobes/list
> ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>

Reviewed-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>


- Naveen


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
