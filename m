Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A307DCCF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ht5t34XM7s/m2MH2YxdQ3ZGlR711ZHYtXJ8AnuX8yaQ=; b=LnSR/VzEiaf6w4
	8ykmmvkXtHZFKgU45XfhAmEqRKY7+lu48LmAGIM5E7NFlagxJQzJl4F824kTVI869bAA4cVFgjqlM
	zFrM2IRaDIAqd8zYV9rJaUQz/azLjOFlTSLJTecbleCVVJesnArJwpCPtghQlwmzb3MjjYwEijgqi
	GL4q7YvOI1QrT/eromZotmfoG+NpkW9Zrjn+SOmZdAjZU73zxl/hFELPv25a4HcP6Y0TQxegD5c5x
	MHPr8bUN5eqA+68uzrNArDh1b2x+iflf58IE7JPHgN3wL2Z5R7dI7Hh7c5o6LtKPKWY6o4bYZuBhw
	fRS6m9Jf4tnM6tLvZfbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWFj-0005hI-TH; Fri, 18 Oct 2019 17:41:27 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWFZ-0005fx-3Q
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:41:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 195971534;
 Fri, 18 Oct 2019 10:41:06 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15C613F718;
 Fri, 18 Oct 2019 10:41:03 -0700 (PDT)
Date: Fri, 18 Oct 2019 18:41:02 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jiri Kosina <jikos@kernel.org>
Subject: Re: [PATCH v8 0/5] arm64: ftrace with regs
Message-ID: <20191018174100.GC18838@lakrids.cambridge.arm.com>
References: <20190208150826.44EBC68DD2@newverein.lst.de>
 <0f8d2e77-7e51-fba8-b179-102318d9ff84@arm.com>
 <20190311114945.GA5625@lst.de>
 <20190408153628.GL6139@lakrids.cambridge.arm.com>
 <20190409175238.GE9255@fuggles.cambridge.arm.com>
 <CAB=otbRXuDHSmh9NrGYoep=hxOKkXVsy6R84ACZ9xELwNr=4AA@mail.gmail.com>
 <20190724161500.GG2624@lakrids.cambridge.arm.com>
 <nycvar.YFH.7.76.1910161341520.13160@cbobk.fhfr.pm>
 <20191016175841.GF46264@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016175841.GF46264@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_104117_188212_B658312C 
X-CRM114-Status: GOOD (  11.64  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ingo Molnar <mingo@redhat.com>,
 Torsten Duwe <duwe@lst.de>, Ruslan Bilovol <ruslan.bilovol@gmail.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, live-patching@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 06:58:42PM +0100, Mark Rutland wrote:
> I've just done the core (non-arm64) bits today, and pushed that out:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/ftrace-with-regs
> 
> ... I'll fold the remainging bits of patches 4 and 5 together tomorrow
> atop of that.

I've just force-pushed an updated version with the actual arm64
FTRACE_WITH_REGS bits. There are a couple of bits I still need to
verify, but I'm hoping that I can send this out for real next week.

In the process of reworking this I spotted some issues that will get in
the way of livepatching. Notably:

* When modules can be loaded far away from the kernel, we'll potentially
  need a PLT for each function within a module, if each can be patched
  to a unique function. Currently we have a fixed number, which is only
  sufficient for the two ftrace entry trampolines.

  IIUC, the new code being patched in is itself a module, in which case
  we'd need a PLT for each function in the main kernel image.

  We have a few options here, e.g. changing which memory size model we
  use, or reserving space for a PLT before each function using
  -f patchable-function-entry=N,M.

* There are windows where backtracing will miss the callsite's caller,
  as its address is not live in the LR or existing chain of frame
  records. Thus we cannot claim to have a reliable stacktrace.

  I suspect we'll have to teach the stacktrace code to handle this as a
  special-case.

  I'll try to write these up, as similar probably applies to other
  architectures with a link register.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
