Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2888285212
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:From:
	Date:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LUrSzr2yvr1KUeCd+wO+S8OS2oUww6kUkgrbwKMS9Tc=; b=VYF
	oFRDykOyRp64j/R3O3EMlfNl7VfQcY6hh13+YyrvK0s5QsqXlCGn2jz0Rx+ahtL9gcI0RUP0LY4gS
	7QpL3TU8H1DdZ2U5En/VyU78YiIW09M5fXlKEt2cr4dtwqRj6CBdhXkjwPSyWGLya9jFQLRRMDZ30
	D6ssi2yIbD6Y+RzoIr3G+btz6/m3xILWElkRBlCP99/XP/nNJrUEzrkRrYM4dYoYgpwqUadqzVw1K
	W1KswSCfL9Lk58ZV69E62Q1o1TquQPAiHU3MJbmizI779O5TtnQa6UzQVrJRstnLUxr6FbeapMsAS
	az4gSD9UDUKm+3mP22KqLc+6haHlkHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPkU-0006r9-Bf; Wed, 07 Aug 2019 17:29:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPkK-0006qK-Aj
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:29:09 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03B7B2229C;
 Wed,  7 Aug 2019 17:29:08 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.92)
 (envelope-from <rostedt@goodmis.org>)
 id 1hvPkJ-0007yx-2L; Wed, 07 Aug 2019 13:29:07 -0400
Message-Id: <20190807172826.352574408@goodmis.org>
User-Agent: quilt/0.65
Date: Wed, 07 Aug 2019 13:28:26 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/2 v2] tracing/arm: Fix the stack tracer when LR is saved
 after local storage
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_102908_391597_C9FFBE73 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As arm64 saves the link register after a function's local variables are
stored, it causes the max stack tracer to be off by one in its output
of which function has the bloated stack frame.

The first patch fixes this by creating a ARCH_RET_ADDR_BEFORE_LOCAL_VARS
define that an achitecture (arm64) may set in asm/ftrace.h, and this
will cause the stack tracer to make the shift.

As it has been proven that the stack tracer isn't the most trivial
algorithm to understand by staring at the code, the second patch adds
comments to the code to explain the algorithm with and without the
ARCH_RET_ADDR_BEFORE_LOCAL_VARS.

Hmm, should this be sent to stable (and for inclusion now?)

-- Steve

Changes since v1:

 - Fixed wrong value in stack_trace_index[] array in comment

 - Added a comment about gcc currently saves the LR after local variables,
   but there's no guarantee that it will be like that in the future.
   (Notified of this by Mark Rutland)

Steven Rostedt (VMware) (2):
      tracing/arm64: Have max stack tracer handle the case of return address after data
      tracing: Document the stack trace algorithm in the comments

----
 arch/arm64/include/asm/ftrace.h |  13 +++++
 kernel/trace/trace_stack.c      | 112 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 125 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
