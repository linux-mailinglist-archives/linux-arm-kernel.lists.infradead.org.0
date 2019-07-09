Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC846638CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRpKPWjIoeafcYHCtys2SDXZvOwWjcnVZLtPbM1t8+Y=; b=HWY/Tsqmvn0tJS
	kPuSxm1QhP4qy+hDF4sWL8jGVS5LcDepx/6FpkrbOYlgxP+MajNxZBbd0+C7/sBlvb+bVOX4nEy+a
	Fu8sO/Jm7P5jV4r4QJeXa0bnAtotZ8NDzfayeuIDNaNN2SMmGw7r7vFlmJuZr4c6Sogkr4LRnerdm
	Sf4xIcX/gtRe1cjc+P3olYusyhNFbaDwslZDwCnYv5wAXUM6LlAix93SrLcFCmPH6qzt5XKfqlYq2
	WMhL9d+MYB3vy5Gw94RIXeSFh687wyBVaTdBbyDdNI1OsgMhPt25IyPVjkzfo7/A/z9DiWj+y2q8c
	UC8XSJCD9q7ziiPGICZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hksEk-0000pQ-TU; Tue, 09 Jul 2019 15:40:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hksEa-0000p4-5O
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:40:49 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE6ED214AF;
 Tue,  9 Jul 2019 15:40:46 +0000 (UTC)
Date: Tue, 9 Jul 2019 11:40:45 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: kprobes sanity test fails on next-20190708
Message-ID: <20190709114045.091c94f3@gandalf.local.home>
In-Reply-To: <20190709153755.GB10123@lakrids.cambridge.arm.com>
References: <20190708141136.GA3239@localhost.localdomain>
 <a19faa89-d318-fe21-9952-b0f842240ba5@arm.com>
 <CADYN=9LBQ4NYFe8BPguJmxJFMiAJ405AZNU7W6gHXLSrZOSgTA@mail.gmail.com>
 <20190709213657.1447f508bd6b72495ec225d9@gmail.com>
 <20190709112548.25edc9a7@gandalf.local.home>
 <20190709153755.GB10123@lakrids.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_084048_221540_01B1E7B0 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 "Naveen N . Rao" <naveen.n.rao@linux.ibm.com>,
 Masami Hiramatsu <masami.hiramatsu@gmail.com>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019 16:37:55 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> > I agree. I pushed to my repo in the for-next branch. Care to test that?
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git  
> 
> I've just given that a spin with KPROBES and KPROBES_SANITY_TEST
> selected, and it boots cleanly for me. FWIW:
> 
> Tested-by: Mark Rutland <mark.rutland@arm.com>

Thanks, then I'm guessing no more changes need to be made.

I usually don't rebase my for-next branch for tags, but since I just
pushed it, I guess I can add this one ;-)

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
