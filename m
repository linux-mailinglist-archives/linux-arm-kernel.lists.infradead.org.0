Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B5DFD74A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 08:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N95AfFPxwKqPE1f8IpoUhUkVpJ1iJQex+Nq1KqK5xh8=; b=GQwhg/BQxUohiZ
	ru4Ui0IJBbxIDCK74a12AK2AA8YIijylvlUd99ern2zQQ53+wsx3PsbFu4VdNwJbQl4/LxzcBP6L8
	751+YA8M1ngeQOyAEprRckOOjrF9j6JOWJekjJlJpx17TkAwTgj53sKrrflGPFDQWRTqoQf0kL2pB
	lHiLl0Qlsv+mO+9Mw1f+whA6PZKThnCjqlWtPGF7kCc/LbuL/IBh0pmv3cL28QeClTtx2/ey9gBrV
	HB3RBsYDGmIF8Xe8gAySnM+7F7pE1uzR/FvDThMk0eU2jsQgdXbROIjDwk/Cp81cUi5fLPcPVYx+X
	qllJDNfuFJtOZN7EU3EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWJB-00025e-8N; Fri, 15 Nov 2019 07:46:21 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWJ3-00024a-S2
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 07:46:15 +0000
Received: by verein.lst.de (Postfix, from userid 107)
 id 352D168CEC; Fri, 15 Nov 2019 08:46:08 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on verein.lst.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,BAYES_40
 autolearn=disabled version=3.3.1
Received: from blackhole.lan (p5B0D82C7.dip0.t-ipconnect.de [91.13.130.199])
 by verein.lst.de (Postfix) with ESMTPSA id E2D4A67329;
 Fri, 15 Nov 2019 08:45:45 +0100 (CET)
Date: Fri, 15 Nov 2019 08:45:38 +0100
From: Torsten Duwe <duwe@lst.de>
To: Itaru Kitayama <itaru.kitayama@gmail.com>
Subject: Re: [PATCHv2 7/8] arm64: implement ftrace with regs
Message-ID: <20191115084538.1bf2612c@blackhole.lan>
In-Reply-To: <CANW9uyug8WKN2fR-FmcW-C_OO_OQ_AvukM+BR7wqiJ9eFQMO9Q@mail.gmail.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-8-mark.rutland@arm.com>
 <CANW9uyug8WKN2fR-FmcW-C_OO_OQ_AvukM+BR7wqiJ9eFQMO9Q@mail.gmail.com>
Organization: LST e.V.
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_234614_055634_171FA6C2 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, jthierry@redhat.com,
 linux-parisc@vger.kernel.org, peterz@infradead.org, catalin.marinas@arm.com,
 duwe@suse.de, jpoimboe@redhat.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, James.Bottomley@hansenpartnership.com,
 takahiro.akashi@linaro.org, will@kernel.org, mingo@redhat.com,
 james.morse@arm.com, jeyu@kernel.org, amit.kachhap@arm.com,
 svens@stackframe.org, deller@gmx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 07:05:39 +0900
Itaru Kitayama <itaru.kitayama@gmail.com> wrote:

> Is this feature avail even when building kernel with Clang?

If your compiler can ...

[...]
> > compiler insert a configurable number of NOPs between the function
> > entry point and the usual prologue. This also ensures functions are
> > AAPCS compliant (e.g. disabling inter-procedural register
> > allocation).
> >
> > For example, with -fpatchable-function-entry=2, GCC 8.1.0 compiles
> > the following:
> >
> > | unsigned long bar(void);
> > |
> > | unsigned long foo(void)
> > | {
> > |         return bar() + 1;
> > | }
> >
> > ... to:
> >
> > | <foo>:
> > |         nop
> > |         nop
> > |         stp     x29, x30, [sp, #-16]!

* insert e.g. 2 NOPs
* record all those locations in a section called
  "patchable_function_entries"
* stick to the AAPCS

then: yes. So far I only implemented this for gcc.

	Torsten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
