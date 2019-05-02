Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE3911FD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKA0gD7Bt78+SYLF6k6G1IatjlcM4ALNdIggankYn54=; b=RXAQ557MgAb1ba
	7SyMzoInLAWs6BsP5bH67ziVDQ91SzH7zhGaSCBwqExmgOa/wu6g/UeGJ+sjEWS3BIvuE+J3fwS4K
	rFNQyVHjg7Uc1pEuXX1FsTVlopXd/SSZaryUaIep1SU382Wxu6Gcze7kZg48hSEYPbrntY8bvNanK
	j+JKR8d4d38hYAPra+RtQtog158Wxz6B3HnW7ZpKJnsspjUYm6Vq0t0hGM9iThrLA41ZZlIm8eOs+
	lPnJFMd/P6955gtxn+akjbHcbLM0qMUlDWElTQMoll1VwIkREjl69FapXKgu1n0p0G1fPBodjSxTq
	d6O6C5YJXqWr7no6xU9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMELG-0004qO-Bw; Thu, 02 May 2019 16:13:50 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEL8-0004pj-4v
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:13:44 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 32A6D3151C4C;
 Thu,  2 May 2019 16:13:38 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 3C23F60BFC;
 Thu,  2 May 2019 16:13:32 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Thu,  2 May 2019 18:13:36 +0200 (CEST)
Date: Thu, 2 May 2019 18:13:30 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 1/4] ptrace: move clearing of TIF_SYSCALL_EMU flag to
 core
Message-ID: <20190502161329.GE7323@redhat.com>
References: <20190430170520.29470-1-sudeep.holla@arm.com>
 <20190430170520.29470-2-sudeep.holla@arm.com>
 <20190501161330.GD30235@redhat.com>
 <20190501161752.GA12498@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501161752.GA12498@e107155-lin>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 02 May 2019 16:13:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_091342_213194_496E5162 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Bin Lu <bin.lu@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Andy Lutomirski <luto@kernel.org>, Richard Weinberger <richard@nod.at>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/01, Sudeep Holla wrote:
>
> On Wed, May 01, 2019 at 06:13:30PM +0200, Oleg Nesterov wrote:
> > On 04/30, Sudeep Holla wrote:
> > >
> > > While the TIF_SYSCALL_EMU is set in ptrace_resume independent of any
> > > architecture, currently only powerpc and x86 unset the TIF_SYSCALL_EMU
> > > flag in ptrace_disable which gets called from ptrace_detach.
> > >
> > > Let's move the clearing of TIF_SYSCALL_EMU flag to __ptrace_unlink
> > > which gets executed from ptrace_detach and also keep it along with
> > > or close to clearing of TIF_SYSCALL_TRACE.
> > >
> > > Cc: Oleg Nesterov <oleg@redhat.com>
> > > Cc: Paul Mackerras <paulus@samba.org>
> > > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > > Cc: Thomas Gleixner <tglx@linutronix.de>
> > > Cc: Ingo Molnar <mingo@redhat.com>
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> >
> > Acked-by: Oleg Nesterov <oleg@redhat.com>
> >
>
> Since 1/4 and 2/4 are completely independent of arm64 changes in 3&4/4,
> I prefer you take these via your tree.

Sorry Sudeep, I can't do this, I need to reanimate my account on kernel.org.

Oleg.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
