Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AE666580
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 06:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYMiRrCHBBl8WlFftPUicpM55benoVilWwtZ6r1MY+M=; b=ih3PxJrCqUZLw7
	uX+pWCVY675y2XZk0ztws3P8fcJgFli9Exqd8HbVkAg5cKWWIwZpT5OA7q95U8qiQqyXD1iCweq+L
	4BZ8M5AAczuxG2HBcTIghNEvb5srH1ogYy5CAEY54xUtdLVLUlGM2M3b7GWXetkPj3PCQ30vAqIyf
	FUwvalB/qWIPdyEIbwDdYAPi15f4JmfFEzepDBNpPYg4ay4lcA0qcW+63UJo6VpKkopPM9e5aPK/s
	3NSKmbMtUXbNudPo2tlnxVJZi2xlmQxqZuPQJJIgu3OzrFb7wwoi7CCHTuYEE7x+R74RI5b0tSVNk
	SpohRVWcn7p61tcNCRqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hln0S-00024T-Fo; Fri, 12 Jul 2019 04:18:00 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hln08-0001xg-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 04:17:42 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hlmxT-000330-0Q; Fri, 12 Jul 2019 04:14:55 +0000
Date: Fri, 12 Jul 2019 05:14:54 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v9 01/10] namei: obey trailing magic-link DAC permissions
Message-ID: <20190712041454.GG17978@ZenIV.linux.org.uk>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-2-cyphar@cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706145737.5299-2-cyphar@cyphar.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_211740_404223_C2DD2207 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
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

On Sun, Jul 07, 2019 at 12:57:28AM +1000, Aleksa Sarai wrote:

> @@ -514,7 +516,14 @@ static void set_nameidata(struct nameidata *p, int dfd, struct filename *name)
>  	p->stack = p->internal;
>  	p->dfd = dfd;
>  	p->name = name;
> -	p->total_link_count = old ? old->total_link_count : 0;
> +	p->total_link_count = 0;
> +	p->acc_mode = 0;
> +	p->opath_mask = FMODE_PATH_READ | FMODE_PATH_WRITE;
> +	if (old) {
> +		p->total_link_count = old->total_link_count;
> +		p->acc_mode = old->acc_mode;
> +		p->opath_mask = old->opath_mask;
> +	}

Huh?  Could somebody explain why traversals of NFS4 referrals should inherit
->acc_mode and ->opath_mask?

>  static __always_inline
> -const char *get_link(struct nameidata *nd)
> +const char *get_link(struct nameidata *nd, bool trailing)
>  {
>  	struct saved *last = nd->stack + nd->depth - 1;
>  	struct dentry *dentry = last->link.dentry;
> @@ -1081,6 +1134,44 @@ const char *get_link(struct nameidata *nd)
>  		} else {
>  			res = get(dentry, inode, &last->done);
>  		}
> +		/* If we just jumped it was because of a magic-link. */
> +		if (unlikely(nd->flags & LOOKUP_JUMPED)) {

That's not quite guaranteed (it is possible to bind a symlink on top
of a regular file, and you will get LOOKUP_JUMPED on the entry into
trailing_symlink() when looking the result up).  Moreover, why bother
with LOOKUP_JUMPED here?  See that
	nd->last_type = LAST_BIND;
several lines prior?  That's precisely to be able to recognize those
suckers.

And _that_ would've avoided another piece of ugliness - your LOOKUP_JUMPED
kludge forces you to handle that cra^Wsclero^Wvaluable security hardening
in get_link(), instead of trailing_symlink() where you apparently want
it to be.  Simply because nd_jump_root() done later in get_link() will set
LOOKUP_JUMPED for absolute symlinks, confusing your test.

Moreover, I'm not sure that trailing_symlink() is the right place for
that either - I would be rather tempted to fold do_o_path() into
path_openat(), inline path_lookupat() there (as in
        s = path_init(nd, flags);

        while (!(error = link_path_walk(s, nd))
                && ((error = lookup_last(nd)) > 0)) {
                s = trailing_symlink(nd);
        }
        if (!error)
                error = complete_walk(nd);
        if (!error && nd->flags & LOOKUP_DIRECTORY)
                if (!d_can_lookup(nd->path.dentry))
                        error = -ENOTDIR;
        if (!error) {
                audit_inode(nd->name, nd->path.dentry, 0);
                error = vfs_open(&nd->path, file);
        }
        terminate_walk(nd);
- we don't need LOOKUP_DOWN there) and then we only care about the
two callers of trailing_symlink() that are in path_openat().  Which
is where you have your ->acc_mode and ->opath_mask without the need
to dump them into nameidata.  Or to bring that mess into the
things like stat(2) et.al. - it simply doesn't belong there.

In any case, this "bool trailing" is completely wrong; whether that
check belongs in trailing_symlink() or (some of) its callers, putting
it into get_link() is a mistake, forced by kludgy check for procfs-style
symlinks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
