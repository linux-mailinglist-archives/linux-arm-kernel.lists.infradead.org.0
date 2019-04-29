Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AD9ED4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 01:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+4R/uYlifAfdjzzs+YfGs4a3fC9uyS9TNS0k4SJ1MS0=; b=kNF
	DzzpqBXiMV1cBeNZoTKXEJW0K2Dx/cUgDXQ9d9mJU8OONFwXIHnbgrBU/ybIsdF64T8+kthSyTkB2
	1WBS97FL3UY8R/ADkgqUK+xREhjtHTF3uEo0zVCWglGW3NNH/Zem0NPioTzc3N7ToqbufmpDgHQ4B
	ApwJzylZZqrFqrhcqAVbopn8MbzUiZjPWc5BQ4ot4pKOEAPDjWxVn/qzTRhMYJrsaJZPebEj3Vv/d
	gM91hSdkuOF9pjc9/gv1hzwFR4VLeL+VeEW1Gg45Dt5FVEiBnSipjVAW69fHJTql2D8zOQgO/RAMX
	sKgvq9q2ltT+/hNqcfzG6kiUR48FP8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFhm-00037R-Dl; Mon, 29 Apr 2019 23:29:02 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFhf-00036O-35
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 23:28:57 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 44tLSv6kXLz9s9G;
 Tue, 30 Apr 2019 09:28:47 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1556580528;
 bh=GAfdNdM0FNa6v0cd5h2zn7GgRPoz6ITpJvz7IQpzcXE=;
 h=Date:From:To:Cc:Subject:From;
 b=j7i/G5jV44wP6+rRQCFXKY1k410eHprE7FcJxwuTHLt7LZjTFgfh5vqiGTl16uqyI
 HIsw2aOeNLs2Js9FAUgPXvjUHuImQ+eh4+lrfZ++loNRUoRVEYCgzxE20kXn2O6V6j
 0PUon8ArxyM7z0+Tg8p3RwHkxlBtqMasQxk5YkhbuwHWY43rdNqGLJcGYZbSwE5ssy
 uP/9ceygw6i1JRBo2bMHHTdUV3OzTmVs4L+4/Bzs4EMkzJ4xL6Zq4qCvEO0E2kjjEz
 IPo+q6Wsh1OCC7CxIJMK5nNTMyBGyF3ftzOl7+lo9UUvcAA1TSmEffPanfYLoB0bhX
 yXmqqsfGKNhwg==
Date: Tue, 30 Apr 2019 09:28:39 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: build warning after merge of the arm-soc tree
Message-ID: <20190430092839.767e5bf8@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_162855_372452_D80863D0 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============3958380164888748823=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3958380164888748823==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/Cr.CHQ3_ggx8N8O/fzy9HBX"; protocol="application/pgp-signature"

--Sig_/Cr.CHQ3_ggx8N8O/fzy9HBX
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the arm-soc tree, today's linux-next build
(x86_64 allmodconfig) produced this warning:

drivers/clocksource/timer-ixp4xx.c:78:20: warning: 'ixp4xx_read_sched_clock=
' defined but not used [-Wunused-function]
 static u64 notrace ixp4xx_read_sched_clock(void)
                    ^~~~~~~~~~~~~~~~~~~~~~~

Introduced by commit

  13e0b4059b98 ("clocksource/drivers/ixp4xx: Add driver")

--=20
Cheers,
Stephen Rothwell

--Sig_/Cr.CHQ3_ggx8N8O/fzy9HBX
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzHiKcACgkQAVBC80lX
0Gze3AgAkfB+yWpYTkkBBg7gDbQVQDIskULEnUsU1p1GnnLuTYZNRUDde5MWc+bf
izxQ2Mpz0wWhhBMr/SDNjlcW0ssv6BOnF7L8hv6tyejN6evx4Brq9GVk9ThELILC
nwOh0nRsW1VXcFvllKFIp1KzeQPOrb+JgNKcvJVWbnWadwzVchdjORh3q6gNWysw
zd059M2SD85pPHvZzFfYF39jRTgmtMLp43PDt9cU5b79EPAmXogowTRHTLDr0WKS
ULIg6VXf2/dnFI2qSBE2aqVrvz4D2LgRnp11ldtWdHHldIPOeFG8rIV85+pndUWW
FhOxJOCsdcZYgYXFPPy8xNPl5EK+fQ==
=tCZt
-----END PGP SIGNATURE-----

--Sig_/Cr.CHQ3_ggx8N8O/fzy9HBX--


--===============3958380164888748823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3958380164888748823==--

