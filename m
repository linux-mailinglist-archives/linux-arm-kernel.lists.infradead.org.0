Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230E534AB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3C8SLgL+ONUGUHFaJUCvoFVpeoOhw+qNDsWpaf128bU=; b=HaCIRto/TzeX8xnl9UOei2Y0q
	T3RUPSliy1SO50/K77qPI3BhlbyAWtetRtZPU9P4vc+UvRJvAKQ1r46/5dYYlHBQqyaYC9/NtUvpF
	urLkPWAkvph3tde5YOZfEduK7y9VIOJ8nE29CqPJoGYMdezHVFWHl+1kW/IAfjlUjXmFeTDVs/ALE
	oHmtiTtUQwCa9FZwnfar/bGSBV5JKwma5N6l9+iSRGFtQEoy3iJ3d5/nsTEi1l5Y+cQUAjB4+UpiH
	Tu28xfAVLAiPgt7iIX2yqa6DxHFxp7R0wJFk7mBarNARyWwAocVqha+KFuyX4DszP+xQSUQ9B7NdQ
	aw5Oqum5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAh6-0006WC-Ef; Tue, 04 Jun 2019 14:45:44 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAgp-0006Ir-IR
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N28LjJkz/Mx7r43eirlH7u4WWvO5iyeKXFG3ckomDW0=; b=IINgz0Wv1nxvpFB4EdBRt3GPR
 BIgOEMg69TUSP8LNtkgFxC5fQtoAn7quvxOvuYgNCQn8VE21LD84sKKNii1mNXZu3NxcigGTLP13L
 Nv6NmS0WC3v7cTI0CWqgzKX6MQkEPW0ADhZMT5kjmtn3smBZkvsLBO8mmASeuS3hPweM4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hYAgg-0006D5-Eu; Tue, 04 Jun 2019 14:45:18 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id AD932440046; Tue,  4 Jun 2019 15:45:17 +0100 (BST)
Date: Tue, 4 Jun 2019 15:45:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] ASoC: sun4i-i2s: Change SR and WSS computation
Message-ID: <20190604144517.GF2456@sirena.org.uk>
References: <20190604085449.13195-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190604085449.13195-1-maxime.ripard@bootlin.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074528_117587_34C73218 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3270520772289476369=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3270520772289476369==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PLVMksexArUZ/iL3"
Content-Disposition: inline


--PLVMksexArUZ/iL3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 04, 2019 at 10:54:49AM +0200, Maxime Ripard wrote:
> The current computation for the SR (sample resolution) and the WSS (word
> slot size) register parameters is based on a switch returning the matching
> parameters for a given params width.

This doesn't build for me with current code:

  CC      sound/soc/sunxi/sun4i-i2s.o
sound/soc/sunxi/sun4i-i2s.c:169:28: warning: =E2=80=98struct sun4i_i2s=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
  s8 (*get_sr)(const struct sun4i_i2s *, int);
                            ^~~~~~~~~
sound/soc/sunxi/sun4i-i2s.c:170:29: warning: =E2=80=98struct sun4i_i2s=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
  s8 (*get_wss)(const struct sun4i_i2s *, int);
                             ^~~~~~~~~

and lots of similar stuff.

--PLVMksexArUZ/iL3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz2g/wACgkQJNaLcl1U
h9BCIgf/WLTKo7F+GH5yembRxj+jHQz35TZZPqb9mhx/Hyogn+/+bF5LeqEi8hKq
L7Mpzf0KyzhKz/VDRGc3TlsLihsQ0okqybE+/PlOS3Y7DRvd115KYLsOdfVYOucD
bF48im6bMWWARcoIyK6B2vAYx9y28Z4qUgLcJGOcLVwwCC1K/nq6A9kFul0lXXs6
44SRqWz911MOpt3VCP2FHpMnjiHcJP9nZ0pRZTmaV057lQCthPaCNuz+r5nzGy/Z
Oh8Q+0DbkTmOriia5YZ6OY83lRYHBKFEPtc3nf3zuxgesObEJdvPVRur6ZGZSNDL
tKXQOFITXAVWrTfyE+Z809Bz1jgX5g==
=cwPD
-----END PGP SIGNATURE-----

--PLVMksexArUZ/iL3--


--===============3270520772289476369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3270520772289476369==--

