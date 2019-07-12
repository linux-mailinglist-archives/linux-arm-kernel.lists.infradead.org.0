Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5A466B24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qtJReaqoIYUxSyhdn6C9/Tc+WHPtT4kP5dI9wByes50=; b=C6P80RvdKkROev/9LxDguT2Ey
	7669bl+Gg0asMLitFCuSP5K+yyGJFfj3tT7m/O5QHrZd3Qs9rqowA9xQzmG5Si4VFgkKNPoagjlfW
	saW9opYfH8cJUZTKpFNay3QVg11G+gDQSfrqAre7bd2Zay3PyLXCnjUlcfHtLRsOCgI+1KvjmNQT6
	BFeXwN9fMNCzvBQoxhlQ2tn7qYgYARgqcgABReBgF04IGG2hw994tab/nuYgWrSTJ5zhHbTWXnpbA
	wUXwsS6qhzQiR6cX/nio6u1uSPinjKlQhsOI+87wy1Lu1Bjjwr42c61vrVdeNMl2OiRZveIfS7E4R
	m0RtFUShg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hltEB-0005h5-4W; Fri, 12 Jul 2019 10:56:35 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hltE3-0005gi-Eo; Fri, 12 Jul 2019 10:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R31OTluumCbFh2Wq31EACJNPV9PVLFkU904R5DpMCmQ=; b=Nc4DglWLq32b6Q41Fp8lXJdIp
 np6/G6hkVmv0LaMlmjuouu3lOkuLsMNKDIwwzqFWsgk5hGw2KtNFfIzpj/VmQtQwisTLlQcvOdClm
 +qObwFo7QHEYdhD0xUWeL88AcT+i+snqELMLwjfeyWRXvB2qx7OvIOQDp697kIzsY5L20=;
Received: from [217.140.106.53] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hltDw-0006AP-9P; Fri, 12 Jul 2019 10:56:20 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 685D8D02DAD; Fri, 12 Jul 2019 11:56:19 +0100 (BST)
Date: Fri, 12 Jul 2019 11:56:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] sound: soc: codecs: mt6358: change return type of
 mt6358_codec_init_reg
Message-ID: <20190712105619.GL14859@sirena.co.uk>
References: <20190709182543.GA6611@hari-Inspiron-1545>
MIME-Version: 1.0
In-Reply-To: <20190709182543.GA6611@hari-Inspiron-1545>
X-Cookie: Visit beautiful Vergas, Minnesota.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_035627_513675_583C223E 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Tzung-Bi Shih <tzungbi@google.com>, linux-mediatek@lists.infradead.org,
 Shunli Wang <shunli.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8401874863308806493=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8401874863308806493==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bPg9NdpM9EETxvqt"
Content-Disposition: inline


--bPg9NdpM9EETxvqt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 09, 2019 at 11:55:43PM +0530, Hariprasad Kelam wrote:
> As mt6358_codec_init_reg function always returns 0 , change return type
> from int to void.

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--bPg9NdpM9EETxvqt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0oZ1IACgkQJNaLcl1U
h9DBvQf/bEOPmabOAkiJN59jKdo0Gi0w05y+5JDO15GfjfCufMDcc4Ul9bl0aH0X
sBwwlklO0yJM4Szsx4dy8rVPtdU6GldTUUIprkzTyzb+e2jO63BxyTzR85GKXwkt
0UFKK8ZOp74xrpxkc3ViFRwnfKNQ8qm2eqcoszNwUH8xrqPOFYhrmIjBrmlikuEB
+ojxODhzc18uqCo8YUHrqFHW85L/bxomSFWVP5Uyv+R1STDaZHJC/8uXlBdNu8C/
B+DDhV8hBV8YLAS8fYeNTARUhBf/IX9Yukc4h6hECKdK80l4mhqK/mOVeMXvtSUW
E+3CB4XK/4FDzc1nlg01L9omlgrGAw==
=pELE
-----END PGP SIGNATURE-----

--bPg9NdpM9EETxvqt--


--===============8401874863308806493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8401874863308806493==--

