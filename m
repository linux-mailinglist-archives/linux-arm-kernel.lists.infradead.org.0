Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF0C867BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsKA9oP82UX4vT3VyEdZIFf53Wun3kyWggBxAhc93rA=; b=K4aUcyzYGvjx9e
	bXsPaK5trMPMjfvdt+8C/fBrbd5vJypflmkqpMKecpqa1lFjtNjpu/ZDAtPc7PtD/Mx1s8hTYvSNs
	o2kUn5M+JGxow3US85m9vnVAfL3vE8r3ZjaPUMxNAlf5HCYr+CncRwmML/Q5I2lfa8rVG38f/D73W
	oE/Qp5+e8UTQ/rQyVe9S0FhWyl9WySWaQhiXoFdXSF5p5HsQAdQlttdrV0pFDugGuPHH3+xLzcs1C
	pEdO4bb+BwKpGOVenWVjAQhsA5rwIc0bkL4t5jksCpfAqc/RfgYbLD8MHW3hp9wrhmCc0vCXoie38
	/r109LjN1ddky4KpcMeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlxP-0005Mj-8K; Thu, 08 Aug 2019 17:12:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlxG-0005ME-06
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:11:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48E8C2184E;
 Thu,  8 Aug 2019 17:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565284317;
 bh=n9N+2ogYvhjh6Z7m4NA+9Lykt626vgxp8SEb6zzXmko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X/yMtJyJrKNNoBZaCJtq/N72+wRPgLi+tUAHyqDBNzPVnuv+Ph4gypls757QGqzcx
 0rp4W96bJWgQYuTItbVaiY3aum2fpiB9Ikr+vej8fdUIOJ29djofDrIueS612UJa8A
 IrmeIIT4+RZZVcaa5Mangm1Pu1U1igCM8QSxRhf8=
Date: Thu, 8 Aug 2019 18:11:53 +0100
From: Will Deacon <will@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190808171153.6j56h4hlcpcl5trz@willie-the-truck>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
 <20190808162825.7klpu3ffza5zxwrt@willie-the-truck>
 <20190808123632.0dd1a58c@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808123632.0dd1a58c@gandalf.local.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_101158_060301_17EEA99B 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 12:36:32PM -0400, Steven Rostedt wrote:
> On Thu, 8 Aug 2019 17:28:26 +0100
> Will Deacon <will@kernel.org> wrote:
> 
> > > + * Note, this may change in the future, and we will need to deal with that
> > > + * if it were to happen.
> > > + */
> > > +#define ARCH_RET_ADDR_AFTER_LOCAL_VARS 1  
> > 
> > I know it's long already, but prefixing this with FTRACE_ would be good so
> > that other code doesn't use it for anything. It's not the end of the world
> > if the ftrace stack usage statistics are wonky, but if people tried to use
> > this for crazy things like livepatching then we'd be in trouble.
> > 
> > Maybe FTRACE_ARCH_FRAME_AFTER_LOCALS, which is the same length as what
> > you currently have?
> 
> Note, it would still need to be prefixed with "ARCH_" as that's the way
> of showing arch specific defines.
> 
> We could make it more descriptive of what it will do and not the reason
> for why it is done...
> 
> 
>   ARCH_FTRACE_SHIFT_STACK_TRACER

Acked-by: Will Deacon <will@kernel.org>

Thanks, Steve.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
