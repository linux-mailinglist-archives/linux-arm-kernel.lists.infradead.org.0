Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F8695FE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwIXlC8ErTnCiTlKPDr8oQ0ULOgvj4tLNe8hIQAoeBM=; b=FetyoJu52zY3Yq
	IMoPg74V6GW20neethse7ptVzlY9QY7tkIRehm/4LbAD2+V9ysj9+0cV1tXUSzFQzGjXMGJPVZ5JL
	tnq0s37vU7OggIMr+CruBzm3XIrjIXS4bq7hiHDV3jV3ZNDz1M/scqSwRzAqDTWWl6cYS81KAR8QZ
	pVpyqlKFdxBDN3L0PGuWxmbYNMo6/pZcfsbP6yeK35sD3RCRUJ5Aye3N07waTIUYyEjOJhryoO8NS
	U5p+kWPD4XkKCufROJvwXstx04FkyPIV6R8qn6IZ+aSRZIOQ8XBcIqip+A5XM5iTduZLtmV4EGsLh
	K9o/4LORfAreHumUwfdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i045K-00025N-BW; Tue, 20 Aug 2019 13:22:02 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i044X-00024h-5t; Tue, 20 Aug 2019 13:21:13 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D62A43075FF;
 Tue, 20 Aug 2019 15:20:38 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 244AB20A99A00; Tue, 20 Aug 2019 15:21:10 +0200 (CEST)
Date: Tue, 20 Aug 2019 15:21:10 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Message-ID: <20190820132110.GP2332@hirez.programming.kicks-ass.net>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114109.4624d56b@xhacker.debian>
 <alpine.DEB.2.21.1908201050370.2223@nanos.tec.linutronix.de>
 <20190820165152.20275268@xhacker.debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820165152.20275268@xhacker.debian>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Masami Hiramatsu <mhiramat@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 09:02:59AM +0000, Jisheng Zhang wrote:
> In v2, actually, the arm64 version's kprobe_ftrace_handler() is the same
> as x86's, the only difference is comment, e.g
> 
> /* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> 
> while in arm64
> 
> /* Kprobe handler expects regs->pc = ip + 1 as breakpoint hit */

What's weird; I thought ARM has fixed sized instructions and they are
all 4 bytes? So how does a single byte offset make sense for ARM?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
