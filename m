Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2307E0930
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SCtWa91Tys34X2KHa8YtWYX4O7SCdGxZ0lQR45Mu0nM=; b=sPyu5PucyYUOMqhoFQQh7nOVI
	wlfW5T+ArQsaHfILNlGTLavvQZsUbuAcqyEeboEx96MJMVu16R8bLVhWTgPUEZrbsJeNBE1cg+JQ7
	Zv/MMJrroJD/f6tzBOITnU0RsFYVfvFRZ/RBMUAiB0wgWHv4GjPxfHhz+xe7++x8ILyLfnagKIsJA
	ssAnU4duYdqpQZzFwddgqJ22EHnKL/1mp7mhXYh9qn/ef6NkLF5D49n1Zpl+7cYcMXhDlI7Yecu+a
	snsacuDwhFPVXlS5d8067QprL+iHc/fF0u3liL46X3qdeSJa7qXIShCJvhFyhSBjtfOvPHh8wbRZ2
	RiRtDbcog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxAd-0006Ht-Du; Tue, 22 Oct 2019 16:38:07 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxA3-0005to-S6
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XYt01QDASLshwcD8BBPmTNrzoEd6n2RKiXKjRc1xWes=; b=H9dCVn5kIoroBfx4/ITB1seZy
 d4GIPI7LIHFIBX/ucd8uhgvPIR85r3jG0a4vQSWd+kLm8IunlcioGHFqgDNz68Su7N/Z9lLWbQQSH
 MsLukhbB2LFCrLxgIvGoCaAyEW1gGTMDHAa7mv1UAzabfa+OhDZNiH1G68xUFd9RBURFg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMxA0-00073H-Go; Tue, 22 Oct 2019 16:37:28 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E9FE32743259; Tue, 22 Oct 2019 17:37:27 +0100 (BST)
Date: Tue, 22 Oct 2019 17:37:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 18/46] ARM: pxa: corgi: use gpio descriptors for audio
Message-ID: <20191022163727.GP5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-18-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-18-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093732_011078_E8B0FF90 
X-CRM114-Status: GOOD (  10.18  )
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
Content-Type: multipart/mixed; boundary="===============2747003055293200165=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2747003055293200165==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K8zN2sh9fO5jmbe4"
Content-Disposition: inline


--K8zN2sh9fO5jmbe4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:33PM +0200, Arnd Bergmann wrote:
> The audio driver should not use a hardwired gpio number
> from the header. Change it to use a lookup table.

Acked-by: Mark Brown <broonie@kernel.org>

--K8zN2sh9fO5jmbe4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMEcACgkQJNaLcl1U
h9BniAf+KxW3zK8aAq/5sBBVj52dQLINMW2dy7ThgwVMqgnrNu7aNXa+NJSIiOe5
WZREVSA3+M+rZ8BYonxgB8EZVVtYTSFR+gyMjAHQe1UsQMgWlkKYHdvB87nh1LNu
jn+zAuwNuQK6XfMfGFEFbQ07eyytgl9VRO5OaRmO6d6U+37vn6CSqz7NJ/SCfMSS
fT2cyd1E83ep6e7qlaKOXC4iRfkzq0q4GhZ6+30RRzUcFViguzVbAW1oz3YvVr2c
4dwRH4yZJmPkGPn9jAOARCd62eFUdpoU55MIyoVYo0gd4NWDOG8VspiKawN/6Rz6
PPyqtPs0cIO8zRSX6y9WQg1dZRS7hg==
=noRN
-----END PGP SIGNATURE-----

--K8zN2sh9fO5jmbe4--


--===============2747003055293200165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2747003055293200165==--

