Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1686AB676A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8VssxhXXiXqDRiln23X91YPJroD8M1Hr/MgNk/cYSgA=; b=Hhg7uW96609ZLlppPc30Lxstt
	9iow+tEJVzEVpyf2Iy3+fzTmSuap17b8xzCQ7kySce/qS43gqamHRKEjIz1NtDea58BpC11vqdT52
	neVhoqO+KBMcDmJy1JfQhDSexaJv+aOZ1ZaMNkx6RG/vzhxUDO7+ifiegXqOrV/GDWyZc1cRV7zGT
	exXNDodqFtaRw8CmLawQXQSSFagMVFAFR3FsAKV8FjnRuzeNAmTGQGjHU70TlUqZcvMh5iBFu/FzB
	nd9GJPD9oqyDS/4yeKL5Wbga4cza6BF6BNY3pRBu7P5KWncpb35STc3/QKo7iJzsOKXu4RieIOshG
	I0fH06mdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcAR-0000rk-AZ; Wed, 18 Sep 2019 15:46:55 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcA8-0000qn-7k
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:46:38 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id A4F6050D4B;
 Wed, 18 Sep 2019 17:46:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id ZgCJrYNr5TyO; Wed, 18 Sep 2019 17:46:22 +0200 (CEST)
Date: Wed, 18 Sep 2019 17:46:15 +0200
From: Aleksa Sarai <cyphar@cyphar.com>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH v12 05/12] namei: obey trailing magic-link DAC permissions
Message-ID: <20190918154615.suruy5v5xjftfwyl@yavin.microfocus.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-6-cyphar@cyphar.com>
 <CAG48ez1_64249RdX6Nj_32YS+jhuXZBAd_ZL9ozggbSQy+cc-A@mail.gmail.com>
 <20190918135100.sdxdmdluq6wlwryv@yavin.microfocus.com>
MIME-Version: 1.0
In-Reply-To: <20190918135100.sdxdmdluq6wlwryv@yavin.microfocus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_084636_578460_6D61E5D4 
X-CRM114-Status: GOOD (  31.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alexei Starovoitov <ast@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: multipart/mixed; boundary="===============7845621687346070681=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7845621687346070681==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="blplt4ksioniygek"
Content-Disposition: inline


--blplt4ksioniygek
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-09-18, Aleksa Sarai <cyphar@cyphar.com> wrote:
> On 2019-09-17, Jann Horn <jannh@google.com> wrote:
> > On Wed, Sep 4, 2019 at 10:21 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
> > > The ability for userspace to "re-open" file descriptors through
> > > /proc/self/fd has been a very useful tool for all sorts of usecases
> > > (container runtimes are one common example). However, the current
> > > interface for doing this has resulted in some pretty subtle security
> > > holes. Userspace can re-open a file descriptor with more permissions
> > > than the original, which can result in cases such as /proc/$pid/exe
> > > being re-opened O_RDWR at a later date even though (by definition)
> > > /proc/$pid/exe cannot be opened for writing. When combined with O_PATH
> > > the results can get even more confusing.
> > [...]
> > > Instead we have to restrict it in such a way that it doesn't break
> > > (good) users but does block potential attackers. The solution applied=
 in
> > > this patch is to restrict *re-opening* (not resolution through)
> > > magic-links by requiring that mode of the link be obeyed. Normal
> > > symlinks have modes of a+rwx but magic-links have other modes. These
> > > magic-link modes were historically ignored during path resolution, but
> > > they've now been re-purposed for more useful ends.
> >=20
> > Thanks for dealing with this issue!
> >=20
> > [...]
> > > diff --git a/fs/namei.c b/fs/namei.c
> > > index 209c51a5226c..54d57dad0f91 100644
> > > --- a/fs/namei.c
> > > +++ b/fs/namei.c
> > > @@ -872,7 +872,7 @@ void nd_jump_link(struct path *path)
> > >
> > >         nd->path =3D *path;
> > >         nd->inode =3D nd->path.dentry->d_inode;
> > > -       nd->flags |=3D LOOKUP_JUMPED;
> > > +       nd->flags |=3D LOOKUP_JUMPED | LOOKUP_MAGICLINK_JUMPED;
> > >  }
> > [...]
> > > +static int trailing_magiclink(struct nameidata *nd, int acc_mode,
> > > +                             fmode_t *opath_mask)
> > > +{
> > > +       struct inode *inode =3D nd->link_inode;
> > > +       fmode_t upgrade_mask =3D 0;
> > > +
> > > +       /* Was the trailing_symlink() a magic-link? */
> > > +       if (!(nd->flags & LOOKUP_MAGICLINK_JUMPED))
> > > +               return 0;
> > > +
> > > +       /*
> > > +        * Figure out the upgrade-mask of the link_inode. Since these=
 aren't
> > > +        * strictly POSIX semantics we don't do an acl_permission_che=
ck() here,
> > > +        * so we only care that at least one bit is set for each upgr=
ade-mode.
> > > +        */
> > > +       if (inode->i_mode & S_IRUGO)
> > > +               upgrade_mask |=3D FMODE_PATH_READ;
> > > +       if (inode->i_mode & S_IWUGO)
> > > +               upgrade_mask |=3D FMODE_PATH_WRITE;
> > > +       /* Restrict the O_PATH upgrade-mask of the caller. */
> > > +       if (opath_mask)
> > > +               *opath_mask &=3D upgrade_mask;
> > > +       return may_open_magiclink(upgrade_mask, acc_mode);
> > >  }
> >=20
> > This looks racy because entries in the file descriptor table can be
> > switched out as long as task->files->file_lock isn't held. Unless I'm
> > missing something, something like the following (untested) would
> > bypass this restriction:
>=20
> You're absolutely right -- good catch!
>=20
> > Perhaps you could change nd_jump_link() to "void nd_jump_link(struct
> > path *path, umode_t link_mode)", and let proc_pid_get_link() pass the
> > link_mode through from an out-argument of .proc_get_link()? Then
> > proc_fd_link() could grab the proper mode in a race-free manner. And
> > nd_jump_link() could stash the mode in the nameidata.
>=20
> This indeed does appear to be the simplest solution -- I'm currently
> testing a variation of the patch you proposed (with a few extra bits to
> deal with nd_jump_link and proc_get_link being used elsewhere).
>=20
> I'll include this change (assuming it fixes the flaw you found) in the
> v13 series I'll send around next week. Thanks, Jann!

In case you're interested -- I've also included a selftest based on this
attack in my series (though it uses CLONE_FILES so that we could also
test O_EMPTYPATH, which wasn't affected because it didn't go through
procfs and thus couldn't hit the "outdated inode->i_mode" problem).

The attack script succeeds around 20% of the time on the original
patchset, and with the updated patchset it doesn't succeed in several
hundred thousand attempts (which I've repeated a few times).

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--blplt4ksioniygek
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXYJRRAAKCRCdlLljIbnQ
Ep3WAP0cvG8YTD9aS1zuiIbFfMQLKt1nuxBciHwn7LaCHk9Z0QEAtNdPaxztVO/p
utsBd24Q6vZYzx6vj8OnW5nGpjaLpQA=
=rL8c
-----END PGP SIGNATURE-----

--blplt4ksioniygek--


--===============7845621687346070681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7845621687346070681==--

