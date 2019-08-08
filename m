Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E69CB86734
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTsnZGujB0u6pwHv3tK5BebS9OESmt7avNwEQCOf1Ww=; b=EwPjm/MsjbI5nw
	6khFxxz2VSBKtEpwTC/o4kwwfgq+QZ9HGbwjUIe6FncMe9z5ZkThdKR4zvqjpjbUn0c0aT5nbc2Yh
	j46Bu+jsGIVLdY/3Luv3rVHdvsoLENb4lkbdpd2pUfdMPm9eqJAy2mAqwYzp9WToQwpbt7Cg7YHd6
	y7WXoFu82Cfx44Z1tsfTbl6JhqzKeuq8GLuDOUEIQ96LSy4iW2fePCEzwRdrWkWTlBho71Mj7vSoy
	ttEvO4efIIgzrP5wPJdGIuvHFdcOqOmaj0yR6zLjfUO0Y2wGl/hwe8as6GIMqDCiM3oH1fmDkLuRZ
	1N5+vIiP+V8PiCcTWSVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlPA-0007hZ-7t; Thu, 08 Aug 2019 16:36:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlP1-0007hF-BZ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:36:36 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E61AE214C6;
 Thu,  8 Aug 2019 16:36:33 +0000 (UTC)
Date: Thu, 8 Aug 2019 12:36:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190808123632.0dd1a58c@gandalf.local.home>
In-Reply-To: <20190808162825.7klpu3ffza5zxwrt@willie-the-truck>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
 <20190808162825.7klpu3ffza5zxwrt@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_093635_418533_EB39654C 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019 17:28:26 +0100
Will Deacon <will@kernel.org> wrote:

> > + * Note, this may change in the future, and we will need to deal with that
> > + * if it were to happen.
> > + */
> > +#define ARCH_RET_ADDR_AFTER_LOCAL_VARS 1  
> 
> I know it's long already, but prefixing this with FTRACE_ would be good so
> that other code doesn't use it for anything. It's not the end of the world
> if the ftrace stack usage statistics are wonky, but if people tried to use
> this for crazy things like livepatching then we'd be in trouble.
> 
> Maybe FTRACE_ARCH_FRAME_AFTER_LOCALS, which is the same length as what
> you currently have?

Note, it would still need to be prefixed with "ARCH_" as that's the way
of showing arch specific defines.

We could make it more descriptive of what it will do and not the reason
for why it is done...


  ARCH_FTRACE_SHIFT_STACK_TRACER

?

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
