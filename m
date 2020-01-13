Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0003C13905A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:46:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Luad8CD0b+q2A7gzWKP2/HW7fr8VEuWD2JZuTH5vTrE=; b=ar+JhLsFgDMaCS7DMpuRPWIP6
	h1SodDZdytS9ZtTtr+BFYwXGOSUTqFt75ZFxvd46aSYDZ3gU9p2xAuP7tVg7wOj2WPL7fdAILAZrA
	1rk45EEzr2OxPEyRGU/Ead24+0iQS5XkLCOwnzowz7NshvU+Rnik3Y5D+4l1JBwOPQfWpB8LTUawg
	XQ/SzPgLj7JaxqxWdQdv+MRGjZ0OtdYzdVWLaJKaF1titYybPArWnYJPkRx8UJRQFjr2iL+z+3ypI
	8MFWD5Ceu0Y50t4w3di662jOckNJxTIiRYOzR1Fs76xdIiF6DQeXj0gzu+5f9fcqu3wkTQ6pPpwTi
	DsM9MuaIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyB1-0001JQ-9f; Mon, 13 Jan 2020 11:46:35 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyAr-0001Io-DS
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:46:26 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47xBct6Vspz9s29;
 Mon, 13 Jan 2020 22:46:22 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1578915983;
 bh=Sh68xlWSgpVZrv++dSyLP0Le2vIlTkF8lE0AjArMEOA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y8Mxd7gDqddqPKQNgM9mgu3S8Fp/8KtSQwcmErzilZxDxNe7wUdI0WyFOpsVrhY/p
 oJmlFbdzAAn/MhQmEfOsqOx6MXZPyJvll7FETmJ4P+WUStUxWug5iDUwOaTRSa9Me4
 jc1U4Sb4pCNRj3M2U5H5ZbcKnYutKwwL4c0x10XdNM7wZx84tdMcAJQoB3QygUr6o2
 v2mwkuX57RPr16M8z1U34Qj39b/75/GMEAcvh4ZgYCdXof0LVzsKKJ5OLkA+aDtpYM
 0csj7e8xlfUYrUA6MEwKu4jyAXiqrHtyOYBxNuTLstG12h8jfsse16JOJdYRPOdUJf
 LUBdqddVNyiFQ==
Date: Mon, 13 Jan 2020 22:46:20 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
Message-ID: <20200113224620.5d33fa63@canb.auug.org.au>
In-Reply-To: <caeb1af8-4aa2-71dc-0a70-127c0b474f93@st.com>
References: <20200113065808.25f28c40@canb.auug.org.au>
 <CAOesGMifHn6DbNgYm6YUbdKjSL5rNgdWrq+HX9dEusrOr9xX2A@mail.gmail.com>
 <20200113113837.130c3936@canb.auug.org.au>
 <caeb1af8-4aa2-71dc-0a70-127c0b474f93@st.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_034625_620155_06092627 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Yann Gautier <yann.gautier@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: multipart/mixed; boundary="===============2410534757080264205=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2410534757080264205==
Content-Type: multipart/signed; boundary="Sig_/5U+lfpyJ0sr9Nz20/hiiLBb";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/5U+lfpyJ0sr9Nz20/hiiLBb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Alexandre,

On Mon, 13 Jan 2020 09:17:08 +0100 Alexandre Torgue <alexandre.torgue@st.co=
m> wrote:
>
> Sorry for this oversight. DO I have something to do ? (except to not=20
> forget to check my signed-off next time).

That is up to the arm-soc tree maintainers.

--=20
Cheers,
Stephen Rothwell

--Sig_/5U+lfpyJ0sr9Nz20/hiiLBb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl4cWIwACgkQAVBC80lX
0GyzLQf/V4IXMNSIMAQSE7qdmrM7ue4ZAsvi3rn9G+gFcSjsnB+S7hpuWQAzKxpq
5z8xVd9L33CLY+8FG8pvFW6qaOoo+vcw5XRnJvJPeC8ptkThTSwVocqlV9BEVIvT
76j27n+cMqMlXAdQtuHgquyVW6T2uK9wT3tzeGVejmw0YBWp2k7g4MnzNIvaF/bn
qE09LuWS5GGyvzhMd5MHEeHOq6eIu6vRTWeDLyYa3CvNiTNpjtNwI+Hg/9/2JsWO
v1h8GLlDlmfB1Xl+xQmlXy6m5hqoNDj4IcCWPNPwNDrBNgxn87UwQiqSRkHJN0GB
2bQBARTGtpXW4LuLgFRvNtr3J302bQ==
=b67J
-----END PGP SIGNATURE-----

--Sig_/5U+lfpyJ0sr9Nz20/hiiLBb--


--===============2410534757080264205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2410534757080264205==--

