Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDD6AB2F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j395RrK7MA6XvAAThUNpGIoQTkRLHt0GH/dl/yU48ks=; b=F6GE3srlMIN82z
	ZYAzC+FFWgJBnAxAO+lKyXNypSJAtsp5h1mJyVMmaOvihmdDmoEIvbPyUhC5BCkl0lmXttKRAcomO
	YLMz2BMQ+dS+MeZ7b/wKot7jMWJ+qIKSq8bANcjByeV5TyFF97aqTuL1ARkQMIbqD5iORuuF2vObs
	QAcNmTQl0ocoo03D5uYE2Vk97UdkUUGt7pRPyCMID7ltdL62JNfLr4ZL7QpCdME7YDJLc44Rx4IFT
	5eHxgbGZIHg0es9fEcb2IpH+BUQit2hts4RhC4gkLBnvinlyYQFY7PVKhUQsg/dEC40vEjGI0Ungs
	VArojO89TmVbC+pfaNKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68GI-0000LL-Tk; Fri, 06 Sep 2019 07:02:27 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68FT-0000Jx-Ly
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:01:37 +0000
Received: from [213.220.153.21] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1i68El-00072o-Nh; Fri, 06 Sep 2019 07:00:51 +0000
Date: Fri, 6 Sep 2019 09:00:49 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190906070048.tmhuemasmsn55spq@wittgenstein>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905180750.GQ1131@ZenIV.linux.org.uk>
 <20190905182303.7f6bxpa2enbgcegv@wittgenstein>
 <20190905182801.GR1131@ZenIV.linux.org.uk>
 <20190905195618.pwzgvuzadkfpznfz@yavin.dot.cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905195618.pwzgvuzadkfpznfz@yavin.dot.cyphar.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_000136_123704_EE0E3EE3 
X-CRM114-Status: GOOD (  18.90  )
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

On Fri, Sep 06, 2019 at 05:56:18AM +1000, Aleksa Sarai wrote:
> On 2019-09-05, Al Viro <viro@zeniv.linux.org.uk> wrote:
> > On Thu, Sep 05, 2019 at 08:23:03PM +0200, Christian Brauner wrote:
> > 
> > > Because every caller of that function right now has that limit set
> > > anyway iirc. So we can either remove it from here and place it back for
> > > the individual callers or leave it in the helper.
> > > Also, I'm really asking, why not? Is it unreasonable to have an upper
> > > bound on the size (for a long time probably) or are you disagreeing with
> > > PAGE_SIZE being used? PAGE_SIZE limit is currently used by sched, perf,
> > > bpf, and clone3 and in a few other places.
> > 
> > For a primitive that can be safely used with any size (OK, any within
> > the usual 2Gb limit)?  Why push the random policy into the place where
> > it doesn't belong?
> > 
> > Seriously, what's the point?  If they want to have a large chunk of
> > userland memory zeroed or checked for non-zeroes - why would that
> > be a problem?
> 
> Thinking about it some more, there isn't really any r/w amplification --
> so there isn't much to gain by passing giant structs. Though, if we are
> going to permit 2GB buffers, isn't that also an argument to use
> memchr_inv()? :P

I think we should just do a really dumb, easy to understand minimal
thing for now. It could even just be what every caller is doing right
now anyway with the get_user() loop.
The only way to settle memchr_inv() vs all the other clever ways
suggested here is to benchmark it and see if it matters *for the current
users* of this helper. If it does, great we can do it. If it doesn't why
bother having that argument right now?
Once we somehow end up in a possible world where we apparently have
decided it's a great idea to copy 2GB argument structures for a syscall
into or from the kernel we can start optimizing the hell out of this.
Before that and especially with current callers I honestly doubt it
matters whether we use memchr_inv() or while() {get_user()} loops.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
