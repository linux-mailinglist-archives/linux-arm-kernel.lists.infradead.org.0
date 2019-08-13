Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D8D8C3F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8p5JkDLzYCObZrQ2pA7mZ+68IlaM/BNEP7NKhTzsgxw=; b=jFZYwJKpQ8g7yoJAeX56BWilu
	991v1/WmEtw4eiqSgjoiNFVPoeub2ejfiWYuJNez9u/wczqS2U83JdslfrheBpB/h+c5G/QPgYnCL
	KS6DHSvf8Nsrhdz9ic172hxo5/kIyHI8SbGC59rQVW8NDQIzI9cNA7iUlTQ4bhSA6/ql8XGGM/u01
	LX50LANybvHd7uiLdc651JxpLMPNYtDDRY6C21nMakpMWop6vSnj/zfaa435QHQsifEbKuiQoG/Ub
	tTrj6R7LNlcQPDWCtm11U7eXsQL0S0f3I5BzMSn0X7GMmc8OSKPnUqk0IvN3tfeNa1zAPy5BNTuO6
	pTT4NxiEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxee8-0006LD-HD; Tue, 13 Aug 2019 21:48:00 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxedz-0006FO-2N
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:47:52 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 467RCR1CFYz9sN1;
 Wed, 14 Aug 2019 07:47:46 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565732868;
 bh=QNIv9/6eYXhe8lrjk0V6PjDA+j0hqVyK+NifzMBwZ9g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X0vPxBRBVx4GZvtdeNIBS5TwRzUE9VdY8PakxLLs9DQTof5g2UE0Yawy1UgZOW/+1
 co6oKswBUEvNqNhRe+vv02dphHV9rzKOVZQVL8rig0SjxVNnkONihrvd7Ezi9JJxdu
 KvnQvc3jSzA703grE1UvbcoBHeAYDRVT+DIXd2N31GrcGggT6rrLvaumz3k8JosDY7
 I+L6DuJRnlkuX1VjUFuvQCR97PkzlA2fYjz6C7heDoboivM5WNRhqSUU0/Q9gxQtRc
 wlrURbPLykVPUkNDHQd6q41Ky62hdqUNRkW/hgiQZdKo0ebvpe4IEdim9x3pG/+MdD
 z3CRHMUNqkyWA==
Date: Wed, 14 Aug 2019 07:47:30 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: linux-next: Fixes tags need some work in the arm-soc tree
Message-ID: <20190814074730.402ec3ec@canb.auug.org.au>
In-Reply-To: <CAK8P3a2q1mShg-EQhiAFUOAET8UEMHfLJV-+HoLTaSQY+M7yBQ@mail.gmail.com>
References: <20190814002836.4b6aa14b@canb.auug.org.au>
 <CAK8P3a2q1mShg-EQhiAFUOAET8UEMHfLJV-+HoLTaSQY+M7yBQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_144751_338060_8557B4CF 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6220224295542326440=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6220224295542326440==
Content-Type: multipart/signed; boundary="Sig_/1D3ZSLx=5BUi2IVapoKt=A=";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/1D3ZSLx=5BUi2IVapoKt=A=
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Arnd,

On Tue, 13 Aug 2019 21:35:58 +0200 Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, Aug 13, 2019 at 4:28 PM Stephen Rothwell <sfr@canb.auug.org.au> w=
rote:
>=20
> >
> > Please do not split Fixes tags over more than one line.  Also, please
> > keep them with the rest of the other tags. =20
>=20
> Thanks for the report. How bad is this? Should I undo the merge and
> wait for an updated pull request?

Its probably ok to leave as long as lessons are learnt :-)

--=20
Cheers,
Stephen Rothwell

--Sig_/1D3ZSLx=5BUi2IVapoKt=A=
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1TL/IACgkQAVBC80lX
0GwzZwf/ZHu3Y/RLybUWFbYGivFgC09NytPbhm8+y9llOajMYD7Al1Pasg+kI1Mo
yhH9K1vQRjXybFR7l2M9F/ikcraK8C12qj1TmAMTJ6fFleMlXn6fEKhNqw1O8VMz
KcM8IY1Z23Lom8fMBhjjyGz9Wkv7r1b3mZugCUoZhsIeXKCYfcOW00RVm13RU/MP
3/uEKFHqWTSHMncKKkMPIgKCHckdiNQhS/mzck3P8aSapCBviOWg1NqJ2o18xg17
E8oglbj5WZVXZW8R6Uvf4Vo2ntaDjCVSX523je0ymMJvDju98pTURVZft20NlPPw
Vdnj8KVJ0QuSlWptoEGzS2Lt2K/rwA==
=0beZ
-----END PGP SIGNATURE-----

--Sig_/1D3ZSLx=5BUi2IVapoKt=A=--


--===============6220224295542326440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6220224295542326440==--

