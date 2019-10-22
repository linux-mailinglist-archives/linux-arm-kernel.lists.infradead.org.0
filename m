Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED760E0922
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WvgzRXRN8hArdUK38+LBKFfoGNdXg52BO3DIIWHPCiI=; b=uyxXt1lbuFqrq3gvd2sNjAVSL
	hMtRQrqXBI0BYEi+wGD3NOgWcQA0Y9Gom0DjCkmsXv/tSqItN6h/MvJS6c+/zvu0D1foKccxNn+Yp
	8ItpzifG8Z5dUn8kJ8KpOHrIv74rAal17shKk1IdsR1R65sjHaRBml1WJnfoSJshBa3+i4mJsdjND
	s/Z5qDPcpYUKjHUr1HihGZw/LlFZWZP4GyTpaaMRDZfCoTpBjJ8t1h9UCM99HuR8tx82xVBHEH4Bv
	+VELgOV41wzYspdQ3zYjkX6IO34FxdUuiHpYNTYwOD9FCckeT7IVK7IJ/fYmEOKsHBVOxt7zKR29n
	Q/ms1Wthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMx9w-0005YQ-W8; Tue, 22 Oct 2019 16:37:25 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMx9Z-0005Of-99
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ZBKUToM4kIs6IK0jvb//AxftUHAUYBkcNObJNOnlPs=; b=MOGtrGjthGlR3pSbKo+weGsls
 BXeOAuHLQfVk9vCepzkg1OsBEJ7Z4ntOIC+i/GISbKG0FOHh0eKH5L73rHW0dpfQTaV/vry62tU4T
 Hm80vAIAxzNWHehm01jGPvardu0aOwk7J8o+rTauTWKeJRRMR3WKf4LvF67w/MDsqQacY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMx9V-00072t-8z; Tue, 22 Oct 2019 16:36:57 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id B6F652743259; Tue, 22 Oct 2019 17:36:56 +0100 (BST)
Date: Tue, 22 Oct 2019 17:36:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 16/46] ARM: pxa: tosa: use gpio descriptor for audio
Message-ID: <20191022163656.GN5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-16-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-16-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093701_437904_C1EE5186 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0323218758645953678=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0323218758645953678==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="D9sZ58tf58331Q5M"
Content-Disposition: inline


--D9sZ58tf58331Q5M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:31PM +0200, Arnd Bergmann wrote:
> The audio driver should not use a hardwired gpio number
> from the header. Change it to use a lookup table.

Acked-by: Mark Brown <broonie@kernel.org>

--D9sZ58tf58331Q5M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMCcACgkQJNaLcl1U
h9AS+Af+KFHD1F8v9aWTr2l9IPxxO3sNqMg20rA6oPY9MS9aXMLdK7qrijFp3fn4
i4ST1qYowqgeTOqsC1hZdVKaVBU03Y/vRLLwn3GJSOH0YacQ7zB/FRQHmRESlLJu
MElU0aFph1IXDxzmPQPtxEgpGxilIY+gvHr1xQGlUiQUwluK2bV86cxb2Yq6kAF1
Fi5OLRPu4hWUN/WqDurqBzh5gWBrNliCsE3LBjS1ZtxjsrvY64cyNsRb8Mq3sTZi
R2sybjdMAU8xLBSsgFAA4S/N/8+hPZ7/6y9ot1YrIw+ZUnusvbOgPksE5VXuQofR
EVy8ciepYsBPN6Ub04X5V8aRAkJpog==
=SULd
-----END PGP SIGNATURE-----

--D9sZ58tf58331Q5M--


--===============0323218758645953678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0323218758645953678==--

