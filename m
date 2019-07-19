Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22986D8C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 04:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uGXWkE+u+sggasRdLaQfwYMvj+0GcWLIMF9KPfQwGYE=; b=tbF+9TA+BLvBnBVDMLvnPS6Oj
	cxeMrsiX10tew6eAQpoxeMH5hEBVIZxyV/N00xf5bIcpSb6AjkXt94la2VGdrrd6oVYEat+Kxp1So
	Vp4vGvun2zig81Dgk49Qr/p4ALJQQLwr1ypxf5j6Y+yYbp8jkvxWFLJ7GzJ/8zZVhBcVosb8B5fDP
	onHu7/4Hdl4gCJ8gE6afRiqXVnEAPdVDTF1bIT7zDGBCydjS2QhpeNzGUC8vsp5ETFkoz5+pE7SOG
	BQ1zg6O0yKdwQoq+LTj0F7xH+FeRNbJnDEssGfa+8fpR3Vyz/akvO6ont2IFpy5G0EYR56XWew0Mc
	/mV2yxQSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoINs-0005MY-Su; Fri, 19 Jul 2019 02:12:33 +0000
Received: from vmicros1.altlinux.org ([194.107.17.57])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoINf-0005KP-A4
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 02:12:20 +0000
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
 by vmicros1.altlinux.org (Postfix) with ESMTP id 6C8B372CA65;
 Fri, 19 Jul 2019 05:12:18 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
 id 5F3667CC774; Fri, 19 Jul 2019 05:12:18 +0300 (MSK)
Date: Fri, 19 Jul 2019 05:12:18 +0300
From: "Dmitry V. Levin" <ldv@altlinux.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v9 08/10] open: openat2(2) syscall
Message-ID: <20190719021218.GB18022@altlinux.org>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-9-cyphar@cyphar.com>
 <CAK8P3a33rGhPDFfRBAQyLTMG_WoEgX_toDgWR2O7rSwxKsZG+w@mail.gmail.com>
 <20190718161231.xcno272nvqpln3wj@yavin>
 <CAK8P3a3MiYK4bJiA3G_m5H-TpfN5__--b+=szsJBhG7_it+NQg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3MiYK4bJiA3G_m5H-TpfN5__--b+=szsJBhG7_it+NQg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_191219_541100_BF967BBD 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [194.107.17.57 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, alpha <linux-alpha@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============6406167198628696286=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6406167198628696286==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XOIedfhf+7KOe/yw"
Content-Disposition: inline


--XOIedfhf+7KOe/yw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 18, 2019 at 11:29:50PM +0200, Arnd Bergmann wrote:
[...]
> 5. you get the same problem with seccomp and strace that
>    clone3() has -- these and others only track the register
>    arguments by default.

Just for the record, this is definitely not the case for strace:
it decodes arrays, structures, netlink messages, and so on by default.


--=20
ldv

--XOIedfhf+7KOe/yw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdMScCAAoJEAVFT+BVnCUIYvwQANcM+eTRdr/OJd9417suNuao
fK6ZbVTB/aaBGBsln3InsvqjxtiOe72mbflNqDDxwP0oUq2xEEAAdYmkEIRJ5pEn
N2R2uSpSqZFIDhR+lm6eAfA28Suec+rb0A9HwKKGHPpd5YrqWaxWEVfRxnCngswi
BH6aC+g9yXIRMR7ge0KVES+Gd5dU1jU8qfQETkko32Ezsnec88dLUftqKIhKWIDd
VnH8ew6RK6aje6oxhHbvqdJnSFXrMeV6Ws//cp2OLF4A4EKOm7q/Rhf0+yFF5ePQ
awYV/U0TdWkjIU9bQDCNDphS5p25MAv3g6AIXaUAotT3gaWe6WpFMSEKMgmBLph1
PsaazyUgw8nOh9RwDFT9yek4gmPF5x0HWrZsI85fKIsOt1t1wX3CHRQ3JVjYkpTC
d4GxWgiiAgTg8b1wjTUAjiMYqVrtSwx9srn6GA6ej9fopN2j4iWkARDLk//+xHWC
UfqMUw42wEY6PNKhY3YCa1M9joeXUlWSbz65v9ZAZRPCoXvo7eNw8EePrwMBX3QM
3pzUI2Ljakux7pASi/YYLl5Vpl1yHqEEi7ToQchsUfTJD/Geqj6528ht9GqBgaYf
s5a/eS/MD0AnBD7ytiDIfimWqrLJrLCpWLEufV60EOzRBFDxoS5QNOhQYbHVsZbh
ZLQTIMZM09jpTHhYqh4r
=2x2F
-----END PGP SIGNATURE-----

--XOIedfhf+7KOe/yw--


--===============6406167198628696286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6406167198628696286==--

