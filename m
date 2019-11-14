Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3507BFBFD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 06:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+cyqTPaPE0rLRdnzK7BJvlC+9/xZe/PiMYQbdXKfiI=; b=SlIYkcZ2XuUhU1
	wDhsZheLntM4MzniFf0UW1hY69BZP1ws8GRAkf1VA1IP18YjPTDG6HkuP9mRW65foh7QSuB46hK6/
	0QF6/IQgLaPYfjGbPbbN8FeCdNkmANYaKUEIBpk9T9Q6c9tKwf+U5pY7QK9sIIui1JQyQzU6d3RpY
	jS7nbTQr5SHIFQnzHQiHkxtEzv3KwdtWSyzVLK2knUs81HdgV4RTLHWMd3zOV2fIFtcSTT/fk1lXU
	ZkGjz4YdZowca5Vdxtm6tRx6GOFapUAxPp16y/qHdxAIcp5eRTpCRmgAhLk6m4WvzlbJoo91yS5aK
	l/ysExHWTjQyBEsDNH0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7yM-0006he-EA; Thu, 14 Nov 2019 05:47:14 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7yC-0005Dk-6n
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 05:47:05 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iV7v2-0000Ln-Fm; Thu, 14 Nov 2019 05:43:48 +0000
Date: Thu, 14 Nov 2019 05:43:48 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v15 3/9] namei: LOOKUP_NO_XDEV: block mountpoint crossing
Message-ID: <20191114054348.GH26530@ZenIV.linux.org.uk>
References: <20191105090553.6350-1-cyphar@cyphar.com>
 <20191105090553.6350-4-cyphar@cyphar.com>
 <20191113013630.GZ26530@ZenIV.linux.org.uk>
 <20191114044945.ldedzjrb4s7i7irr@yavin.dot.cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114044945.ldedzjrb4s7i7irr@yavin.dot.cyphar.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_214704_248735_3FD88615 
X-CRM114-Status: GOOD (  19.40  )
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
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Christian Brauner <christian.brauner@ubuntu.com>,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, libc-alpha@sourceware.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, Jeff Layton <jlayton@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 03:49:45PM +1100, Aleksa Sarai wrote:
> On 2019-11-13, Al Viro <viro@zeniv.linux.org.uk> wrote:
> > On Tue, Nov 05, 2019 at 08:05:47PM +1100, Aleksa Sarai wrote:
> > 
> > > @@ -862,6 +870,8 @@ static int nd_jump_root(struct nameidata *nd)
> > >  void nd_jump_link(struct path *path)
> > >  {
> > >  	struct nameidata *nd = current->nameidata;
> > > +
> > > +	nd->last_magiclink.same_mnt = (nd->path.mnt == path->mnt);
> > >  	path_put(&nd->path);
> > >  
> > >  	nd->path = *path;
> > > @@ -1082,6 +1092,10 @@ const char *get_link(struct nameidata *nd)
> > >  		if (nd->flags & LOOKUP_MAGICLINK_JUMPED) {
> > >  			if (unlikely(nd->flags & LOOKUP_NO_MAGICLINKS))
> > >  				return ERR_PTR(-ELOOP);
> > > +			if (unlikely(nd->flags & LOOKUP_NO_XDEV)) {
> > > +				if (!nd->last_magiclink.same_mnt)
> > > +					return ERR_PTR(-EXDEV);
> > > +			}
> > >  		}
> > 
> > Ugh...  Wouldn't it be better to take that logics (some equivalent thereof)
> > into nd_jump_link()?  Or just have nd_jump_link() return an error...
> 
> This could be done, but the reason for stashing it away in
> last_magiclink is because of the future magic-link re-opening patches
> which can't be implemented like that without putting the open_flags
> inside nameidata (which was decided to be too ugly a while ago).
> 
> My point being that I could implement it this way for this series, but
> I'd have to implement something like last_magiclink when I end up
> re-posting the magic-link stuff in a few weeks.
> 
> Looking at all the nd_jump_link() users, the other option is to just
> disallow magic-link crossings entirely for LOOKUP_NO_XDEV. The only
> thing allowing them permits is to resolve file descriptors that are
> pointing to the same procfs mount -- and it's unclear to me how useful
> that really is (apparmorfs and nsfs will always give -EXDEV because
> aafs_mnt and nsfs_mnt are internal kernel vfsmounts).

I would rather keep the entire if (nd->flags & LOOKUP_MAGICLINK_JUMPED)
out of the get_link().  If you want to generate some error if
nd_jump_link() has been called, just do it right there.  The fewer
pieces of state need to be carried around, the better...

And as for opening them...  Why would you need full open_flags in there?
Details, please...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
