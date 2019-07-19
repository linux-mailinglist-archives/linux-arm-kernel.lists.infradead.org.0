Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D46D8B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 04:00:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n0QSGc5P/J/1Hd7/t8BOVepEkHb/I1MomJVIdJu7RB4=; b=Zc/xXgbfVo4dqe8Jdx2nJhMuk
	R4Sx6b/xmL1S4lk8AHJlLrJbMp3bMjUcvlt+8MY5FH5FMU8ZJJYMw5INRMorG1q190uCKTuCYXNem
	FI/qp1qbr2bDLvkTh/V84nFX4ApPOUnNsIUxDz/i1NZafurmw5RUS24v51B833spNQiWmCdJEGTAM
	WQeDAQ2vB2DtdrXRZg8GT/grsVM7I5BBQHQHU8bd2+ogXBm532z0F/mO0NvZmX7ogWPVz3lCUB5e1
	nLFmYuQ7iPMwasP1Jw8m8RxH8splw8wdEQ9ffJF9U6rj4+fTHaEW6MIKS4khJXF1jTkBTbKXokm+y
	Md5/1IU4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoIBc-00062A-GU; Fri, 19 Jul 2019 01:59:52 +0000
Received: from vmicros1.altlinux.org ([194.107.17.57])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoIBO-00061G-PT
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 01:59:40 +0000
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
 by vmicros1.altlinux.org (Postfix) with ESMTP id 492A272CA65;
 Fri, 19 Jul 2019 04:59:34 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
 id 3B39E7CC774; Fri, 19 Jul 2019 04:59:34 +0300 (MSK)
Date: Fri, 19 Jul 2019 04:59:34 +0300
From: "Dmitry V. Levin" <ldv@altlinux.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v9 08/10] open: openat2(2) syscall
Message-ID: <20190719015933.GA18022@altlinux.org>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-9-cyphar@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20190706145737.5299-9-cyphar@cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_185939_020007_48EEBB54 
X-CRM114-Status: UNSURE (   8.74  )
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
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============4456213219966011470=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4456213219966011470==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="huq684BweRXVnRxX"
Content-Disposition: inline


--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 07, 2019 at 12:57:35AM +1000, Aleksa Sarai wrote:
[...]
> +/**
> + * Arguments for how openat2(2) should open the target path. If @extra i=
s zero,
> + * then openat2(2) is identical to openat(2).
> + *
> + * @flags: O_* flags (unknown flags ignored).

What was the rationale for implementing this semantics?
Ignoring unknown flags makes potential extension of this new interface
problematic.  This has bitten us many times already, so ...

> + * @mode: O_CREAT file mode (ignored otherwise).
> + * @upgrade_mask: restrict how the O_PATH may be re-opened (ignored othe=
rwise).
> + * @resolve: RESOLVE_* flags (-EINVAL on unknown flags).

=2E.. could you consider implementing this (-EINVAL on unknown flags) seman=
tics
for @flags as well, please?


--=20
ldv

--huq684BweRXVnRxX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdMSQFAAoJEAVFT+BVnCUIuaAP/3pgUoQA466F6S8jYN6F/icf
oiQHExdeO3ruxRdNl1gi7af0RxQCiprfNIoD7KQyWSnyUyUm0Cdd7PzpEKXuumQi
pN6ZTEO2bQeSs7AjCNpLrTgKcuOo/pZbNN7InAHKLB7k2xKKeBbdaVypgGiAEDjT
JK+4s+8JcJoSg+d69G428QP2qpoHyIZJ5437gYv5rJbL9BRihwwvWF2OQ4TXrd6I
YnyxPFRRZnfiN3HNbNlJjtMgt5g0AisLuahpJaDMq0NaXnBOosDm9jBAhVOX0CSB
LUNByCygXeBKv9VuyrO4KnLXS3ORGfK38SDGqz3kFYy1quNRAGKgOXPnGXfb2xbZ
bRCqyuxkSUOIfLKA6q9jnqO9RoUeOtLglFUT/5JpixTaoxSFN3Y6GlJFcnw+cVm+
oWH4A/IoST68FCfbOMff976O36pakuWbsVGVsdv384OEHfWaf7c10P9EQc3fhgF3
JoeY5ht9R1k8HWNOlCuCeHfTwSyLG3T/TROuZYtz65RdPemuuPSPERr+GzOtO9Fn
+wQmK99JlE3nhoyv5CmtqCmMQWhYZedqjbjs5wIq7tjalerg6TakNMmhzTGz5l8T
i+3EfyMHhEtwq+2YNhdaPEmjfdBzyI3stxtEkURya0BnCgbYsP2mTIP8UbLGDqsY
EJZiRtPRFfVoePwqT8Ux
=zLLc
-----END PGP SIGNATURE-----

--huq684BweRXVnRxX--


--===============4456213219966011470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4456213219966011470==--

