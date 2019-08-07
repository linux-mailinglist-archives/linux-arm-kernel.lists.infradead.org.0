Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46188513B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nM9fz76PIoTaR3TDLnBMkcXWmZtHQqR1GDC9+DOQt7U=; b=nqT9CbkoCeMw1h
	fqxURAe2pru6yG4oDdhdZYDH8iRUCuP/O2Nl1i6PylepoZl7PfS/Vvo6D5TgPCR9PAV9CjUiyAKAS
	hdPSD4q5li/R7HwKoQ2Jb4ZWgtwPGHtBTs6Qq+1gtJJ4+KFD2fn03blwoCT2gwSOY5zkJWkqZwZUI
	UUN7RAVP6HynnKBpZmnODdmuxirxIgz6prbsPhJNoR0yXC/ZZ7CI0j9pAKdpHSVM/oeo5Ss+IkhXV
	QV2IM7RVdo6Z+7nWMS6I9uZghAFbKmfFkKkYLVYWmHVjBIJD90eW/RYMdb+4Qr05f1JnsHGeTJ/mS
	22Qol+g/Cm4LpmL00m7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOzC-00058k-UC; Wed, 07 Aug 2019 16:40:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOz2-00058N-Eb
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:40:17 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 638A72229C;
 Wed,  7 Aug 2019 16:40:15 +0000 (UTC)
Date: Wed, 7 Aug 2019 12:40:13 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] tracing: Document the stack trace algorithm in the
 comments
Message-ID: <20190807124013.4ced2f81@gandalf.local.home>
In-Reply-To: <20190807163454.392141426@goodmis.org>
References: <20190807163401.570339297@goodmis.org>
 <20190807163454.392141426@goodmis.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_094016_518637_9CED0CFF 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, mingo@redhat.com, Joel Fernandes <joel@joelfernandes.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 07 Aug 2019 12:34:03 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> From: "Steven Rostedt (VMware)" <rostedt@goodmis.org>

> + * To fix this, if the architecture sets ARCH_RET_ADDR_AFTER_LOCAL_VARS the
> + * values in stack_trace_index[] are shifted by one to and the number of
> + * stack trace entries is decremented by one.
> + *
> + *        stack_dump_trace[]        |   stack_trace_index[]
> + *        ------------------        +   -------------------
> + *  return addr to kernel_func_bar  |          20

That should have been 29, not 20. I'll update it.

-- Steve


> + *  return addr to sys_foo          |          19
> + *
> + * Although the entry function is not displayed, the first function (sys_foo)
> + * will still include the stack size of it.
> + */
>  static void check_stack(unsigned long ip, unsigned long *stack)
>  {
>  	unsigned long this_size, flags; unsigned long *p, *top, *start;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
