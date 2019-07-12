Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24AC66F60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 14:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OML+HizGRvJsNVTh4HUEY3NrX4Nh8XlXIaTnvzBXDw=; b=q0Z/ShlBmWWyNG
	XqRIHVuNP9v7diw9bxDb90AXcx/drY+3iIYFKp98vJv/yTnEdS5q8xTF/54ncySfrFA3qq7VOMf1b
	mTDTRelbDz0/H8TnYsSHNtQXaIdJMHr89WWAnS4xu4PDcvf1ccpC7XLNTSadJgxR18xqQzMh9DvL9
	ZGmhHBkObWGhnVtWbGHLxtl7qdM6xXwXpObT+83kTTMPeh9l37N2W+BIXYOeG/DrPk0FSeaWY6cLa
	fnU3tCW4A8zIDGEVJGzBgyD5Xb8OKi11u3EBBlx3WtrG2RFlrl9x7lcPRyhXekSEsSeJw88F6kHfi
	7XXlKfVceo/eLCz0cm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlv6E-0002NE-MI; Fri, 12 Jul 2019 12:56:30 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlv64-0002L1-D2
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:56:21 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hlv5c-0007Pc-Mt; Fri, 12 Jul 2019 12:55:52 +0000
Date: Fri, 12 Jul 2019 13:55:52 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v9 05/10] namei: O_BENEATH-style path resolution flags
Message-ID: <20190712125552.GL17978@ZenIV.linux.org.uk>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-6-cyphar@cyphar.com>
 <20190712043341.GI17978@ZenIV.linux.org.uk>
 <20190712105745.nruaftgeat6irhzr@yavin>
 <20190712123924.GK17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712123924.GK17978@ZenIV.linux.org.uk>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_055620_455971_854BA765 
X-CRM114-Status: GOOD (  14.61  )
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

On Fri, Jul 12, 2019 at 01:39:24PM +0100, Al Viro wrote:
> On Fri, Jul 12, 2019 at 08:57:45PM +1000, Aleksa Sarai wrote:
> 
> > > > @@ -2350,9 +2400,11 @@ static const char *path_init(struct nameidata *nd, unsigned flags)
> > > >  			s = ERR_PTR(error);
> > > >  		return s;
> > > >  	}
> > > > -	error = dirfd_path_init(nd);
> > > > -	if (unlikely(error))
> > > > -		return ERR_PTR(error);
> > > > +	if (likely(!nd->path.mnt)) {
> > > 
> > > Is that a weird way of saying "if we hadn't already called dirfd_path_init()"?
> > 
> > Yes. I did it to be more consistent with the other "have we got the
> > root" checks elsewhere. Is there another way you'd prefer I do it?
> 
> "Have we got the root" checks are inevitable evil; here you are making the
> control flow in a single function hard to follow.
> 
> I *think* what you are doing is
> 	absolute pathname, no LOOKUP_BENEATH:
> 		set_root
> 		error = nd_jump_root(nd)
> 	else
> 		error = dirfd_path_init(nd)
> 	return unlikely(error) ? ERR_PTR(error) : s;
> which should be a lot easier to follow (not to mention shorter), but I might
> be missing something in all of that.

PS: if that's what's going on, I would be tempted to turn the entire
path_init() part into this:
	if (flags & LOOKUP_BENEATH)
		while (*s == '/')
			s++;
in the very beginning (plus the handling of nd_jump_root() prototype
change, but that belongs with nd_jump_root() change itself, obviously).
Again, I might be missing something here...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
