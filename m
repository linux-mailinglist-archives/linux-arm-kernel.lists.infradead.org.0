Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF9D6A386
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iF4cBXqYxyMzHmjAmIOL2w+MODk5k2xmV8FBzeLBEus=; b=Kpm8zy9BbXsZYmaFzvkXEB0cA
	w4F5rc5RuMO4TENa27aANHDIpaWPzmpjsvb+DUQbIvlJnc++nryM/RKUlhanHBL1zbu0JUMXqcuKq
	q3h5aJA+V897DyweCLe8nlzvTIDyBgRCC+YyRtv8MgdcTKsl2JSFHFilEcEfI483C8YG1epKfjuNx
	Aj9+KAvfz2x66GIMP8o0oACLjVO++MePbMOopl9uRITa5tTteoa/mNKpLYE2bJze+wFqd3tt6wvN3
	UeURVjF7SWDWigkhFHsO1Zx730f0m82jUV8qWuRvL2b+ebgWnZFogXX3omcwsut47H+1pNI1nwWuD
	umNsOiPMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIRl-0006uD-Pt; Tue, 16 Jul 2019 08:04:26 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIRV-0006sK-8u
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:04:11 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 65FB4506CB;
 Tue, 16 Jul 2019 10:03:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id FP9J3tccLygu; Tue, 16 Jul 2019 10:03:51 +0200 (CEST)
Date: Tue, 16 Jul 2019 18:03:38 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v9 05/10] namei: O_BENEATH-style path resolution flags
Message-ID: <20190716080338.al4cnwdfvdbpzh3r@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-6-cyphar@cyphar.com>
 <20190712043341.GI17978@ZenIV.linux.org.uk>
 <20190712105745.nruaftgeat6irhzr@yavin>
 <20190712123924.GK17978@ZenIV.linux.org.uk>
 <20190712125552.GL17978@ZenIV.linux.org.uk>
 <20190712132553.GN17978@ZenIV.linux.org.uk>
 <20190712150026.GO17978@ZenIV.linux.org.uk>
 <20190713024153.GA3817@ZenIV.linux.org.uk>
 <20190714035826.GQ17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190714035826.GQ17978@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_010409_617594_C81CBF3A 
X-CRM114-Status: GOOD (  24.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>, raven@themaw.net,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, paul@paul-moore.com,
 Aleksa Sarai <asarai@suse.de>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 rgb@redhat.com, linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============6358504605546429070=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6358504605546429070==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lshvdcpckvdb4crm"
Content-Disposition: inline


--lshvdcpckvdb4crm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-14, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Sat, Jul 13, 2019 at 03:41:53AM +0100, Al Viro wrote:
> > On Fri, Jul 12, 2019 at 04:00:26PM +0100, Al Viro wrote:
> > > On Fri, Jul 12, 2019 at 02:25:53PM +0100, Al Viro wrote:
> > >=20
> > > > 	if (flags & LOOKUP_BENEATH) {
> > > > 		nd->root =3D nd->path;
> > > > 		if (!(flags & LOOKUP_RCU))
> > > > 			path_get(&nd->root);
> > > > 		else
> > > > 			nd->root_seq =3D nd->seq;
> > >=20
> > > BTW, this assignment is needed for LOOKUP_RCU case.  Without it
> > > you are pretty much guaranteed that lazy pathwalk will fail,
> > > when it comes to complete_walk().
> > >=20
> > > Speaking of which, what would happen if LOOKUP_ROOT/LOOKUP_BENEATH
> > > combination would someday get passed?
> >=20
> > I don't understand what's going on with ->r_seq in there - your
> > call of path_is_under() is after having (re-)sampled rename_lock,
> > but if that was the only .. in there, who's going to recheck
> > the value?  For that matter, what's to guarantee that the thing
> > won't get moved just as you are returning from handle_dots()?
> >=20
> > IOW, what does LOOKUP_IN_ROOT guarantee for caller (openat2())?
>=20
> Sigh...  Usual effects of trying to document things:
>=20
> 1) LOOKUP_NO_EVAL looks bogus.  It had been introduced by commit 57d46577=
16ac
> (audit: ignore fcaps on umount) and AFAICS it's crap.  It is set in
> ksys_umount() and nowhere else.  It's ignored by everything except
> filename_mountpoint().  The thing is, call graph for filename_mountpoint()
> is
> 	filename_mountpoint()
> 		<- user_path_mountpoint_at()
> 			<- ksys_umount()
> 		<- kern_path_mountpoint()
> 			<- autofs_dev_ioctl_ismountpoint()
> 			<- find_autofs_mount()
> 				<- autofs_dev_ioctl_open_mountpoint()
> 				<- autofs_dev_ioctl_requester()
> 				<- autofs_dev_ioctl_ismountpoint()
> In other words, that flag is basically "was filename_mountpoint()
> been called by umount(2) or has it come from an autofs ioctl?".
> And looking at the rationale in that commit, autofs ioctls need
> it just as much as umount(2) does.  Why is it not set for those
> as well?  And why is it conditional at all?

In addition, LOOKUP_NO_EVAL =3D=3D LOOKUP_OPEN (0x100). Is that meant to be
the case? Also I just saw you have a patch in work.namei that fixes this
up -- do you want me to rebase on top of that?

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--lshvdcpckvdb4crm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXS2E1wAKCRCdlLljIbnQ
EvUWAP4hDKNKmCaghR/nSF7B9A3mjchQtut9n7vItMKjRPJjLAD9GRABOJCnZ47q
TqUSuZfxKfq260PQMTx91hQd/K+//QE=
=XoHc
-----END PGP SIGNATURE-----

--lshvdcpckvdb4crm--


--===============6358504605546429070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6358504605546429070==--

