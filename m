Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C94136CCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlikSPBuRwrjuqTiZcXkLbIrs02JZ6sPeqtwZ3qQ13c=; b=ZPKwAlcVaiBQiI
	Z56Nc6lB191yr0mtRa5q+zYWPyEVVWn6NVsWglXM9jfg+ClIt0eu7UPHgK8kfEX3CXIjhir/KFYCk
	blgCMTdpl8b/MpAx/LBtOL1N9HRlSm4FMkQtOxbvnA6/czFXf4HRB9WgxOArystemEQJpX8dyoSJF
	/rU39qqZK8XVRPothUoaPD8h04pJzscth6R3ceAfnUPIZKIrdX+Z/f4Wtk5wP24ExCmJFwWQCVsmP
	fxfDT8x/6Oej80dswmpvgGqkdNp6wU1FAYXsOwKeozIHAIw7WQdJiCi67nI52b3ocVKerlUxjmiza
	MmKQDOxX/4V1DYgVb8Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipt9n-0001m0-Tw; Fri, 10 Jan 2020 12:12:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipt9f-0001jk-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:12:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 649141063;
 Fri, 10 Jan 2020 04:12:43 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B02B3F534;
 Fri, 10 Jan 2020 04:12:42 -0800 (PST)
Date: Fri, 10 Jan 2020 12:12:35 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: "chengjian (D)" <cj.chengjian@huawei.com>
Subject: Re: [RFC PATCH] arm64/ftrace: support dynamically allocated
 trampolines
Message-ID: <20200110121234.GA31707@lakrids.cambridge.arm.com>
References: <20200109142736.1122-1-cj.chengjian@huawei.com>
 <20200109164858.GH3112@lakrids.cambridge.arm.com>
 <b0457ef0-f1b2-e258-b59d-aa9af8e48c5d@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0457ef0-f1b2-e258-b59d-aa9af8e48c5d@huawei.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_041244_160679_38F82657 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: xiexiuqi@huawei.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 bobo.shaobowang@huawei.com, duwe@lst.de, huawei.libin@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 07:28:17PM +0800, chengjian (D) wrote:
> On 2020/1/10 0:48, Mark Rutland wrote:
> > On Thu, Jan 09, 2020 at 02:27:36PM +0000, Cheng Jian wrote:
> > > +	/*
> > > +	 * Update the trampoline ops REF
> > > +	 *
> > > +	 * OLD INSNS : ldr_l x2, function_trace_op
> > > +	 *	adrp	x2, sym
> > > +	 *	ldr	x2, [x2, :lo12:\sym]
> > > +	 *
> > > +	 * NEW INSNS:
> > > +	 *	nop
> > > +	 *	ldr x2, <ftrace_ops>
> > > +	 */
> > > +	op_offset -= start_offset_common;
> > > +	ip = (unsigned long)trampoline + caller_size + op_offset;
> > > +	nop = aarch64_insn_gen_nop();
> > > +	memcpy((void *)ip, &nop, AARCH64_INSN_SIZE);
> > > +
> > > +	op_offset += AARCH64_INSN_SIZE;
> > > +	ip = (unsigned long)trampoline + caller_size + op_offset;
> > > +	offset = (unsigned long)ptr - ip;
> > > +	if (WARN_ON(offset % AARCH64_INSN_SIZE != 0))
> > > +		goto free;
> > > +	offset = offset / AARCH64_INSN_SIZE;
> > > +	pc_ldr |= (offset & mask) << shift;
> > > +	memcpy((void *)ip, &pc_ldr, AARCH64_INSN_SIZE);
> > I think it would be much better to have a separate template for the
> > trampoline which we don't have to patch in this way. It can even be
> > placed into a non-executable RO section, since the template shouldn't be
> > executed directly.
> 
> A separate template !
> 
> This may be a good way, and I think the patching here is very HACK too(Not
> very friendly).
> 
> I had thought of other ways before, similar to the method on X86_64,
> remove the ftrace_common(), directly modifying
> ftrace_caller/ftrace_reg_caller, We will only need to copy the code
> once in this way, and these is no need to modify call ftrace_common to
> NOP.
> 
> Using a trampoline template sounds great. but this also means that we
> need to aintain a template(or maybe two templates: one for caller,
> another for regs_caller).
> 
> Hi, Mark, what do you think about it ?

I think that having two templates is fine. We can factor
ftrace_common_return into a macro mirroring ftrace_regs_entry, and I
suspect we can probably figure out some way to factor the common
portion.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
