Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEF3E0767
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5jgSacKODVisdBzbXQGk6v6C7QTOGJoN5hQRcMnffg=; b=hiuw9i5MLGGWYT
	3a0MWBaEMvSB34qFAl+dEulbJfHa/CuUAJXkbm09COugxYK0UjdYbeFzKKePTQ7T2d9RmJXwRuIxY
	wZl4kNM937U6xfBsQwKNsvVb9Y0aMIHqiXF1w6WdJWj4/owllRVKLQd+XxJi2yJZNH+26bYQifjWr
	vIyy2ETIf9Aor8u/WSmjLTBIJHcR0ULDOCiWekp7XGgM3fqHei86p1vOUjkBH1lO+DTMeDWmtdioc
	MOyzQY7XT2O6KSPNK7bGB0k0+qFRL46H7wBohPA/BZYWpz3hPka0apCpw9wSB3GNNLxz5Tsq8scSJ
	+Xhk8yDhieUjm7RA51TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMw7k-0007eY-3V; Tue, 22 Oct 2019 15:31:04 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMw7Y-0007ce-Ek
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:30:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA786176B;
 Tue, 22 Oct 2019 08:30:39 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFBAE3F71A;
 Tue, 22 Oct 2019 08:30:37 -0700 (PDT)
Date: Tue, 22 Oct 2019 16:30:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191022153035.GB52920@lakrids.cambridge.arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
 <20191021163426.9408-2-mark.rutland@arm.com>
 <20191021140756.613a1bac@gandalf.local.home>
 <20191022112811.GA11583@lakrids.cambridge.arm.com>
 <20191022085428.75cfaad6@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022085428.75cfaad6@gandalf.local.home>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_083052_540366_9F442C43 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: jthierry@redhat.com, will@kernel.org, ard.biesheuvel@linaro.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de,
 jpoimboe@redhat.com, linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org, amit.kachhap@arm.com,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 08:54:28AM -0400, Steven Rostedt wrote:
> On Tue, 22 Oct 2019 12:28:11 +0100
> Mark Rutland <mark.rutland@arm.com> wrote:
> > > To make the name even better, let's just rename it to:
> > > 
> > >  ftrace_nop_initialization()
> > > 
> > > I think that may be the best description for it.  
> > 
> > Perhaps ftrace_nop_initialize(), so that it's not a noun?
> > 
> > I've made it ftrace_nop_initialization() in my branch for now.
> 
> I'm fine with ftrace_nop_initialize().

It's settled, then. :)

[...]

> > | /**
> > |  * ftrace_init_nop - initialize a nop call site
> > |  * @mod: module structure if called by module load initialization
> > |  * @rec: the mcount call site record
> 
> Perhaps say "mcount/fentry"

This is the exact wording that ftrace_make_nop and ftrace_modify_call
have. For consistency, I think those should all match.

I can add " (e.g. mcount/fentry)" to all of those if you'd like?

... or leave them all as-is?

> > |  *
> > |  * This is a very sensitive operation and great care needs
> > |  * to be taken by the arch.  The operation should carefully
> > |  * read the location, check to see if what is read is indeed
> > |  * what we expect it to be, and then on success of the compare,
> > |  * it should write to the location.
> > |  *
> > |  * The code segment at @rec->ip should be as initialized by the
> 
> "should be as" is a bit confusing. What about?
> 
>  "The code segment at @rec->ip should contain the contents created by
>   the compiler".

Works for me.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
