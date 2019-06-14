Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D8C463B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ia8N+uFwAxXu+st8j/LCg+Zen+52gcrwX61Mpg3ZaY=; b=CiY7/RPwnz+ungxhvkzTBZIEL
	QnBGW81hUBloOQX/azRQ0dT4NI2k9ZWP/2hJ4iGKou7XufCV+Gs4bkAcg3Phzauw7Ua+BN3x1FPBk
	60gEbxmyvrxDWdv9kijVW24uysTxIkyowQedXVEAQ2EwfM4PwsSHUwCCuVl+E9eZQdp6MkWiUrxbu
	fftmBUX2uUxyMwEmqfLB1NqdCki2VyybhzockvDMdsn1olXqp5V47KTYLifWBgMTn1nuqe1Ep/bzW
	XghZGhONplmEi0A44k2WJj8OXo40Xt/dKG0kGeqo+xXPsZP6dOGJCr0Epjf6v7ODKJBPTlfYd+bSi
	mx+BK/zZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbop9-0000kP-FS; Fri, 14 Jun 2019 16:13:07 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbop1-0000jx-SO
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:13:01 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id 01742319;
 Fri, 14 Jun 2019 16:10:44 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id 0f158c8a;
 Fri, 14 Jun 2019 16:10:44 +0000 (UTC)
Date: Fri, 14 Jun 2019 18:12:43 +0200
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH] security: do not enable CONFIG_GCC_PLUGINS by default
Message-ID: <20190614181243.4430f0d4@primarylaptop.localdomain>
In-Reply-To: <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
References: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
 <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_091300_210895_091D45E2 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Russell King <linux@armlinux.org.uk>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Emese Revfy <re.emese@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3830215196075156905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3830215196075156905==
Content-Type: multipart/signed; boundary="Sig_/eRFSdoapDA3WExTRXm6TK7t";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/eRFSdoapDA3WExTRXm6TK7t
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 14 Jun 2019 18:05:19 +0200
Jann Horn <jannh@google.com> wrote:

[...]
> STACKPROTECTOR_PER_TASK defaults to y and depends on GCC_PLUGINS, so
> is that perhaps what broke? Can you try whether disabling just that
> works for you?
I've tried that, and it's sufficient to make the device boot.

Denis.

--Sig_/eRFSdoapDA3WExTRXm6TK7t
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEeC+d2+Nrp/PU3kkGX138wUF34mMFAl0Dx3sACgkQX138wUF3
4mPiIRAAjxSgd1bWrHHohXd2qKq7auTlOOjw2UxuHT9++GucLfdr8BnQKr1xFpi1
gYlHqUUFtup0vmQ+xKeF/J8FBkqxcOTJPseGD7N0mPGMYU7On4t6dJgffpA8LZay
xLefS7qL9P/l8UQL9gK8hrdbLfEH0V+oo70y6v4cq0CCIqWaOFVovmE8+NlkxBtA
DNTJrytkwDgB8keaoIZXtl1j+hzS+GnmCM/Omp2//8nd1ipCatS5tbRssYX0l+zc
ESAnGwiZ0QCMH07afjEfGSAOWdNzWtn/ga1zRjSr+d+JbzyDFkRtALXhzhVCCpiu
0wqQBWzpf+jLEyQJWmJf1zdNMOJb5a0960d4J3Yne8IzcMvzBsrUnyFXa5aph/n2
XUvTakH5putFUYHUQxbpgsNL3ISIRF0gohwxWhQAQKaXr9r4GLMWowmQ9UT4MOAB
D4lPDeoqxRBDyqnQyUHwwF5xLIKRs4U7oZq2KEOouzp6yzKYA1HbIE7Tv8glgh7p
o3zTs/LV3+CTncgXhGBQSAOtnsBFjOAnpEfx99r0Lrrm4NyLPoYCQMC3WC7iNN61
lBo07Q0sHX2Uvuxo1Ef5FR8O1hT2dzffbS/6T883wlTASejQzd7QPlaqZo1v7xNz
JREgl5V18d9uXu7WC1bqILC4itXUwmQM8hjdoumu1la6kJOaXOk=
=qZz4
-----END PGP SIGNATURE-----

--Sig_/eRFSdoapDA3WExTRXm6TK7t--


--===============3830215196075156905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3830215196075156905==--

