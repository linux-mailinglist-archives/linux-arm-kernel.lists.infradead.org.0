Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292FDAA1D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYjWy0rQvZFlMTuFL1/LMf3ygHFJq25rww8EZ1LoSZA=; b=VSBT5qLGXBFRK/
	F6DhT7K82KUNpnZquuBAiQVPEbDJ3f6cZnwFPgbDy8UTr054svlDNbOvIp2KZdSbNr2OTuW2nGU4b
	KJqxpa9++QoIEsuTVaXAQzIPjHrveV5RjTNn2sRnwW7qqADKwzyluXAaKjWmDRjMT1YQZCqPAZFVS
	WUDndax8x3gNrppZP/i8SefXMxE3DBg75y11HApwTBBiS+h9ina1qcK+ygPBRUGgQTUh8o/VBqSJj
	B9asMB1+5r3d+j8WIQCRy9FpxNwnl2MCno4CVj/C1hF6xaH6lQaNF0od3Mi0k5VrKybfSD/NpLrTl
	CD/wHCqEXmiur/kGAPzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5q9b-0005wL-GF; Thu, 05 Sep 2019 11:42:19 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5q8E-0004vF-NM
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:40:56 +0000
Received: from [213.220.153.21] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1i5q7j-0003X6-1p; Thu, 05 Sep 2019 11:40:23 +0000
Date: Thu, 5 Sep 2019 13:40:21 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190905114020.52xaqqgp43wdctbl@wittgenstein>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905110915.4vvhicg4ldmpi5u6@wittgenstein>
 <20190905112718.ojg3znly6x3m4mjq@yavin.dot.cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905112718.ojg3znly6x3m4mjq@yavin.dot.cyphar.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_044055_415841_255A400A 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 09:27:18PM +1000, Aleksa Sarai wrote:
> On 2019-09-05, Christian Brauner <christian.brauner@ubuntu.com> wrote:
> > On Thu, Sep 05, 2019 at 06:19:22AM +1000, Aleksa Sarai wrote:
> > > A common pattern for syscall extensions is increasing the size of a
> > > struct passed from userspace, such that the zero-value of the new fields
> > > result in the old kernel behaviour (allowing for a mix of userspace and
> > > kernel vintages to operate on one another in most cases). This is done
> > > in both directions -- hence two helpers -- though it's more common to
> > > have to copy user space structs into kernel space.
> > > 
> > > Previously there was no common lib/ function that implemented
> > > the necessary extension-checking semantics (and different syscalls
> > > implemented them slightly differently or incompletely[1]). A future
> > > patch replaces all of the common uses of this pattern to use the new
> > > copy_struct_{to,from}_user() helpers.
> > > 
> > > [1]: For instance {sched_setattr,perf_event_open,clone3}(2) all do do
> > >      similar checks to copy_struct_from_user() while rt_sigprocmask(2)
> > >      always rejects differently-sized struct arguments.
> > > 
> > > Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> > > Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> > 
> > I would probably split this out into a separate patchset. It can very
> > well go in before openat2(). Thoughts?
> 
> Yeah, I'll split this and the related patches out -- though I will admit
> I'm not sure how you're supposed to deal with multiple independent
> patchsets that depend on each other. How will folks reviewing openat2(2)
> know to include the lib/struct_user.c changes?

The way I usually deal with this is to make two branches. One with the
changes the other depends on and then merge this branch into the other
and put the changes on top. Then you can provide a complete branch that
people can test when you send the patchset out by just linking to it in
the cover letter.
(But if it's too much hazzle just leave it.)

> 
> Also, whose tree should it go through?

If people think splitting it out makes sense and we can settle the
technical details I can take it and let it stew in linux-next at least
for a little while.
I have changes to clone3() in there that touch
copy_clone_args_from_user() anyway and there are tests for clone3()
struct copying so we'd catch regressions (for clone3() at least) pretty
quickly.
If we don't see any major issues in the next two weeks it might even be
ok to send for 5.4.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
