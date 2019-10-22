Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF38E091B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PoSx8SptL6iHoyW8+cSECiDvUNKJIGr8YX0gGMiEf7g=; b=a0pRP5gDBPIONo08uz8gJfLZk
	n2l1MF/kIjZrPj9N6zJEwLcCbqXvRtp2s05dWP1AztMjsx0nZQVL6doOI9MGEQhmrWl3paVPIObyw
	bPSS+xdhSJ4FE/mtba24FdmjeshAScYIvkuXlQu2BeA3csUFTT0Jd1EIj9gdhc7fq/PwxD4PDvuT0
	Cv6/jRsREspqiQkKUHwfDMyuihaZJE9CgGoebQatWvreAoQmJ/ybmEuXMAhyTr7zIb8FEnmbV9zgS
	Zndw2OyWyb6VC67ezMbnFcRhoVFxgbG6KK9S4ZJOvUmbI7wHsmHuVLcqamZcmMAaQODFTiizmB/ZN
	VbYujSqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMx9b-0005Eu-UP; Tue, 22 Oct 2019 16:37:03 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMx99-0004zH-2A
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S/esUTBYamlcxz3Whaq0woZLlNP3iaXMA8TIzAQGBtw=; b=ia/5C3N3W+S0YfYt+SiP7qOld
 5+pUuj4E9vXIyBNKazhIMwPcC3hq95hhRUMW24Bhfkbz72K3vEr+XA0KX3Cqgb0zMcjA4u2HptcXH
 Sl8w/veGjSWiO9q3bne+UkNMhv6RAwq6AiEWd6ZNDZgmdLqfV29LnJQTRg0h0NdtQE31E=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMx95-00072W-LJ; Tue, 22 Oct 2019 16:36:31 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 1CC282743259; Tue, 22 Oct 2019 17:36:31 +0100 (BST)
Date: Tue, 22 Oct 2019 17:36:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 07/46] ARM: pxa: move mach/sound.h to linux/platform_data/
Message-ID: <20191022163631.GM5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-7-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-7-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093635_123583_0CAE816A 
X-CRM114-Status: UNSURE (   9.45  )
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
 Marek Vasut <marek.vasut@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Tomas Cech <sleep_walker@suse.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Sergey Lapin <slapin@ossfans.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3156679957349203539=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3156679957349203539==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rf72Gf+bfLC8kxKs"
Content-Disposition: inline


--rf72Gf+bfLC8kxKs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:22PM +0200, Arnd Bergmann wrote:
> This is a basically a platform_data file, so move it out of
> the mach/* header directory.

Acked-by: Mark Brown <broonie@kernel.org>

--rf72Gf+bfLC8kxKs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMA4ACgkQJNaLcl1U
h9DD0Qf/XFq0y8LkZDw6GMJf6uYL0f9DnkhueciiDL3lQZLVGGLGG0w3sLQP+jLB
ZGN/SkLyBGD6hh6+tjvQy+TF/NKDP9pOeE1dlhIgxF0QN+W6ibzgedNiEPH6s1iX
oIBME7P/1t0C7nBaWub8M1tyGB230oQjR53ZuffTkLuAOoc/cSwvoRVlMIVSv6eX
NvfDalLQj/XXrxckoMezJpqY8u/xnDIpoEhgv+8fYut+YcUoqu+iotI0w0Q+Z+Q0
iWLWZUSOp/o9GGrv4HXL5GO+ZZtndgGHpdJQiWWmhhmdcevxRJLnKb3qQfA3ANKz
E+OHIQhbeAd6ToUgNYi9U9j7Y1Evww==
=l9b9
-----END PGP SIGNATURE-----

--rf72Gf+bfLC8kxKs--


--===============3156679957349203539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3156679957349203539==--

