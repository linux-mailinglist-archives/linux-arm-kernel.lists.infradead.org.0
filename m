Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE8766FC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 15:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTghORPlWC7lxnfNP3uV2ijITA9G+KTR7YVErHaKoZg=; b=tQ2I3NS+WX/he0
	0/Lfpgt5pTF0Pln38y1AR+EJNhvLOxJ8QXwV7h0NdFs42+moEA5dKa3j0QSl8EZXwhbciMuwlXPJe
	S7UHNq4XZg9DqwkK9kt64C/nkbcC1Zc/9haHjmvFU/bH4pjWNFLva9v7BOY2FiAuBDpt8Nux2rnwx
	pzIcBQP+UCsPyQZDE/5I4lvjyeDf8wV4Zlc8tE8I1G9Ac5dp2GSN99zB8ju6o4TSs7pTYkVAQ9QAt
	zL0oCKKyQAgKIYaAss7vKywwRpfyJcekiXFZtrH8534mSAqnvcatJ/QUElFCuR66LM1AdeMxSkPhu
	tUnkPng8PUnLFK5CEUZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvK2-0000KB-Vn; Fri, 12 Jul 2019 13:10:47 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvJr-0000JF-0t
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:10:38 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hlvJN-0007n9-6P; Fri, 12 Jul 2019 13:10:05 +0000
Date: Fri, 12 Jul 2019 14:10:05 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v9 01/10] namei: obey trailing magic-link DAC permissions
Message-ID: <20190712131005.GM17978@ZenIV.linux.org.uk>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-2-cyphar@cyphar.com>
 <20190712041454.GG17978@ZenIV.linux.org.uk>
 <20190712122017.xkowq2cjreylpotm@yavin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712122017.xkowq2cjreylpotm@yavin>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_061036_953100_1F107814 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
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

On Fri, Jul 12, 2019 at 10:20:17PM +1000, Aleksa Sarai wrote:
> On 2019-07-12, Al Viro <viro@zeniv.linux.org.uk> wrote:
> > On Sun, Jul 07, 2019 at 12:57:28AM +1000, Aleksa Sarai wrote:
> > > @@ -514,7 +516,14 @@ static void set_nameidata(struct nameidata *p, int dfd, struct filename *name)
> > >  	p->stack = p->internal;
> > >  	p->dfd = dfd;
> > >  	p->name = name;
> > > -	p->total_link_count = old ? old->total_link_count : 0;
> > > +	p->total_link_count = 0;
> > > +	p->acc_mode = 0;
> > > +	p->opath_mask = FMODE_PATH_READ | FMODE_PATH_WRITE;
> > > +	if (old) {
> > > +		p->total_link_count = old->total_link_count;
> > > +		p->acc_mode = old->acc_mode;
> > > +		p->opath_mask = old->opath_mask;
> > > +	}
> > 
> > Huh?  Could somebody explain why traversals of NFS4 referrals should inherit
> > ->acc_mode and ->opath_mask?
> 
> I'll be honest -- I don't understand what set_nameidata() did so I just
> did what I thought would be an obvious change (to just copy the
> contents). I thought it was related to some aspect of the symlink stack
> handling.

No.  It's handling of (very rare) nested pathwalk.  The only case I can think
of is handling of NFS4 referrals - they are triggered by ->d_automount()
and include NFS4 mount.  Which does internal pathwalk of its own, to get
to the root of subtree being automounted.

NFS has its own recursion protection on that path (no deeper nesting than
one level of referral traversals), but there some nesting is inevitable;
we do get another nameidata instance on stack.  And for nd_jump_link() we
need to keep track of the innermost one.

For symlinks nothing of that sort happens - they are dealt with on the same
struct nameidata.  ->total_link_count copying is there for one reason only -
we want the total amount of symlinks traversed during the pathwalk (including
the referral processing, etc.) to count towards MAXSYMLINKS check.  It could've
been moved from nameidata to task_struct, but it's cheaper to handle it that
way.

Again, nesting is *rare*.

> In that case, should they both be set to 0 on set_nameidata()? This will
> mean that fd re-opening (or magic-link opening) through a
> set_nameidata() would always fail.

Huh?  set_nameidata() is done for *all* instances - it's pretty much the
constructor of that object (and restore_nameidata() - a destructor).
Everything goes through it.

And again, I'm not sure we want these fields in nameidata - IMO they belong
in open_flags.  Things like e.g. stat() don't need them at all.

Incidentally, O_PATH opening of symlinks combined with subsequent procfs
symlink traversals is worth testing - that's where the things get subtle
and that's where it's easy to get in trouble on modifications.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
