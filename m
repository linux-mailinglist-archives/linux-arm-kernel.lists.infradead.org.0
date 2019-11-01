Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2F3EC046
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/HFk4yyGEIhQFEsK2+VL2PIZhk47C6+EFaSKmz402U=; b=cO5L2MA/r0poe9
	P8k++gaPVDtC8WSbQgkguTubCMBpeu0lbTbUYJu10GcaUmj2C+4it+UPJCP5AdoUd4Uj3Dq81tOKb
	J7aKbfFUjbYLD/jVIqW1Vqhmk+TZFh03in56ApjeWh2DU8NQZ5pjANnXRKoPYbsCX11pFewM+VEZ8
	ZAXRx/+AuBZYLCL5ZSmL4yrdxRZJXrLTHbaoyNhY2fWkMY8ZyouiBtkvhvoT+5J74QEXt5qUO2C1U
	pXT+vnNngQLzHhRxQPvUB8XT9cAmqnLAcfco5ByttWP18ynMXrrWuard1j5j45YlUwbWf4KHGXAHG
	vT2lXrDSBnoQiFRGEcYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSut-0001Gt-Gf; Fri, 01 Nov 2019 09:08:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSug-0001Ew-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:08:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8AD81F1;
 Fri,  1 Nov 2019 02:08:08 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9788D3F719;
 Fri,  1 Nov 2019 02:08:04 -0700 (PDT)
Date: Fri, 1 Nov 2019 09:08:01 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Torsten Duwe <duwe@suse.de>
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Message-ID: <20191101090801.GB3508@blommer>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191031171641.GB11684@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031171641.GB11684@suse.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_020810_275043_5C76F28C 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@hansenpartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 amit.kachhap@arm.com, svens@stackframe.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 06:16:41PM +0100, Torsten Duwe wrote:
> After yesterday's testing, now
> 
> Reviewed-by: Torsten Duwe <duwe@suse.de>
> 
> for the series. 

Thanks! I've folded that in and pushed out the updated branch.

Since the only change this time around was only a trivial change in the linker
script, I'll hold off sending a v3. I'm hoping I can get acks for the ftrace,
module, and parisc bits soon...

> Executive summary: where I used x28 as scratch register in ftrace_regs_caller
> which I had to save for that reason, you switched to x10, which is so obvious
> that I failed to see it. Then the PLT initialisation on module load, and
> finally the ftrace_init_nop() hook that got you started initially. The rest
> I'd call more or less cosmetic deviations from my v8. IOW: fine with me.

Yup, that sounds about right. The other thing I did was expand the comments on
the ABI details, as that can be quite subtle, but I guess that's arguably
cosmetic, too.

Thanks for working on this, and for bearing with me on this rework -- I hadn't
intended that to drag on for so long.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
