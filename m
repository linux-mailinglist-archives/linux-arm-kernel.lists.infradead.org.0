Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A48D102F8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 23:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ow8SDvpxM/0enMjInAeuU+N15o71LmcCY8fLTp7sPJ4=; b=KCa6BjzTPZi8ep
	z6c3gfs11gWHF/hlblrOugdLMoL3W5fWmZ6FuBo01i1FnFk+cK9aXhnSeBYsO8w0Qs8PbMrvx6xBw
	oVOQzCjrmD9B8KnKcizPFS8jr8kwLW24au5OhvT7+E8q7snB3/Mj3P2+Qm88AQhEySjQMxdB8Vyl7
	Pq+uUJJzW/ZjjSWLzX+2U3WFi+EwIBSchjCTEngFrSKPdOjWz26+xaWmtpQr0KpmB2SBsRJciK6fI
	IEPaHz/g5rprp70acj8XgNzGedBi377AIH75ziv0H6xxpLmEXjVjcvKus11mekRiikb7mBy3pjXYa
	SB2meaGAEePaRLJZWlfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCLD-0006Kk-Ks; Tue, 19 Nov 2019 22:51:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCL6-0006Jb-OU
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 22:51:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81E911FB;
 Tue, 19 Nov 2019 14:51:05 -0800 (PST)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 41E2B3F52E;
 Tue, 19 Nov 2019 14:51:03 -0800 (PST)
Date: Tue, 19 Nov 2019 22:51:00 +0000
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 01/12] arm64: hibernate.c: create a new function to
 handle cpu_up(sleep_cpu)
Message-ID: <20191119225100.gqiiiwoyt3yntdoj@e107158-lin.cambridge.arm.com>
References: <20191030153837.18107-1-qais.yousef@arm.com>
 <20191030153837.18107-2-qais.yousef@arm.com>
 <alpine.DEB.2.21.1911192326120.6731@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1911192326120.6731@nanos.tec.linutronix.de>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_145116_838453_975C62B6 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 Zhenzhong Duan <zhenzhong.duan@oracle.com>,
 Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, James Morse <james.morse@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jiri Kosina <jkosina@suse.cz>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/19/19 23:31, Thomas Gleixner wrote:
> On Wed, 30 Oct 2019, Qais Yousef wrote:
> >  
> > +int hibernation_bringup_sleep_cpu(unsigned int sleep_cpu)
> 
> That function name is horrible. Aside of that I really have to ask how you
> end up hibernating on an offline CPU?

James Morse can probably explain better.

But AFAIU we could sleep on any CPU, but on the next cold boot that CPU could
become offline as a side effect of using maxcpus= for example.

How about bringup_hibernate_cpu() as a name? I could add the above as an
explanation of why we need this call too.

It does seem to me that this is a generic problem that we might be able to
handle generically, but I'm not sure how.

Thanks

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
