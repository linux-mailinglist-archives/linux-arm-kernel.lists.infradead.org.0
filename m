Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00386E0829
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Hy/5/iVgRGJRHOrX2iMqqJZi60+dF5wWMSIx8rAad8=; b=ubyE7EpJMp8ewM
	rL1YLaLJrm+liJkj9+1Qcr2MBz7TWCXIXBtjRqk28W+eS7YpageF1VsSMBEKAk3WqcT1JEdp8YLgJ
	1xCLroQvhDfzukEqHICpvIIquK9WqSTiT+lIJ73sq6WaRUcOlIoA6lai4g9F/De0SkFrildkPOTSY
	RqrowIfXmS9sTa+Rhu0+Xcpq13vTcYr9uj8ASDOjgqKDBIHRgO0iA9Dtbc/RjM5bgNKHjQCyB5Z+/
	YFPnGipCs1rIOTDL4MrS9Dy6a29U5++NpiEAlxJ/6pgb51gPOO8uTxM/yYipVS2udNlOqpiEZHcZF
	dCnk4SaosL/kxtQ2TJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwb3-0003Y6-Fn; Tue, 22 Oct 2019 16:01:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwar-0003Wr-Ox
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:01:12 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0810720640;
 Tue, 22 Oct 2019 16:01:07 +0000 (UTC)
Date: Tue, 22 Oct 2019 12:01:06 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191022120106.234790cb@gandalf.local.home>
In-Reply-To: <20191022153335.GC52920@lakrids.cambridge.arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
 <20191021163426.9408-2-mark.rutland@arm.com>
 <20191021140756.613a1bac@gandalf.local.home>
 <20191022112811.GA11583@lakrids.cambridge.arm.com>
 <20191022085428.75cfaad6@gandalf.local.home>
 <20191022153035.GB52920@lakrids.cambridge.arm.com>
 <20191022153335.GC52920@lakrids.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_090109_823882_1BF3D966 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: jthierry@redhat.com, svens@stackframe.org, ard.biesheuvel@linaro.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de, jeyu@kernel.org,
 linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org, mingo@redhat.com,
 james.morse@arm.com, jpoimboe@redhat.com, amit.kachhap@arm.com,
 will@kernel.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019 16:33:35 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> On Tue, Oct 22, 2019 at 04:30:35PM +0100, Mark Rutland wrote:
> > On Tue, Oct 22, 2019 at 08:54:28AM -0400, Steven Rostedt wrote:  
> > > On Tue, 22 Oct 2019 12:28:11 +0100
> > > Mark Rutland <mark.rutland@arm.com> wrote:  
> > > > | /**
> > > > |  * ftrace_init_nop - initialize a nop call site
> > > > |  * @mod: module structure if called by module load initialization
> > > > |  * @rec: the mcount call site record  
> > > 
> > > Perhaps say "mcount/fentry"  
> > 
> > This is the exact wording that ftrace_make_nop and ftrace_modify_call
> > have. For consistency, I think those should all match.  
> 
> Now that I read this again, I see what you meant.
> 
> If it's ok, I'll change those to:
> 
> | @rec: the call site record (e.g. mcount/fentry)
> 

Ack

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
