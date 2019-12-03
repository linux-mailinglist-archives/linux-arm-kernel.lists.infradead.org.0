Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149C0110075
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A094Y0DloNWCKfEZX/hV6488whectCyqc0WBWorNf4o=; b=AhOzAuhFn/5IYZfMPnrvO2XlU
	HKEVn32FfyoiFxR3M8Gq9H5P3/59jn8oD5InhkLMkYLX3bFpktvc872ftGWJXHO+W8eTNVub08ppj
	mzIfhPu3qjM4Sjen4pDp5Pdrjh6PkkluJ7CEwOuRA1qtUy1FPwTBMlDOz0eWwbW7GMF3GrlIk7mBf
	B6ms1JJNy5+aFyeJN0w0SzbOMGZiBdgZm9GbFNuUHrzPaWTIpCp8GNTqx/7map89QJ1RKbkL5K1yV
	lCkbO75uP9lHNq28JErIoxwtk8tda+gsvPhOZhiLv+jw5H0YP7XhzVGeu27/yeqMGtO3Wh5kbE6RM
	7lplfO+6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9Kn-00058H-7r; Tue, 03 Dec 2019 14:39:25 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9Kf-00057x-Uw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fp1zIL2SAEar9dlKMYM/RfsmIkwJExCTW8u8xALWSC4=; b=SVtk5WFRlwEs+eVTFb0dxpn/a
 +g7p4XXuEkIrnH0632RPHUvw2hjP1m+sPepNvWNLcm3CfleuHd95OCxIO5RnaEgCeHgWjVhcQR29g
 14ZZZhbHLQvrHxt+snCURi55qiO4J1T/wTKzvL/UZ4nHok/xkXdTqC5Rro5rT270VGApE=;
Received: from fw-tnat-cam1.arm.com ([217.140.106.49]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ic9KY-0002mV-9f; Tue, 03 Dec 2019 14:39:10 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 03672D003B4; Tue,  3 Dec 2019 14:39:10 +0000 (GMT)
Date: Tue, 3 Dec 2019 14:39:09 +0000
From: Mark Brown <broonie@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH] ASoC: cs42l51: add dac mux widget in codec routes
Message-ID: <20191203143909.GL1998@sirena.org.uk>
References: <20191203141627.29471-1-olivier.moysan@st.com>
MIME-Version: 1.0
In-Reply-To: <20191203141627.29471-1-olivier.moysan@st.com>
X-Cookie: Cleanliness is next to impossible.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_063918_008002_448021C8 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 mcoquelin.stm32@gmail.com, apatard@mandriva.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7186976820956360285=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7186976820956360285==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kaF1vgn83Aa7CiXN"
Content-Disposition: inline


--kaF1vgn83Aa7CiXN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 03, 2019 at 03:16:27PM +0100, Olivier Moysan wrote:

> -	SND_SOC_DAPM_DAC_E("Left DAC", "Left HiFi Playback",
> -		CS42L51_POWER_CTL1, 5, 1,
> -		cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
> -	SND_SOC_DAPM_DAC_E("Right DAC", "Right HiFi Playback",
> -		CS42L51_POWER_CTL1, 6, 1,
> -		cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
> +	SND_SOC_DAPM_DAC_E("Left DAC", NULL, CS42L51_POWER_CTL1, 5, 1,
> +			   cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
> +	SND_SOC_DAPM_DAC_E("Right DAC", NULL, CS42L51_POWER_CTL1, 6, 1,
> +			   cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),

This looks like an unrelated formatting change?

--kaF1vgn83Aa7CiXN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3mc40ACgkQJNaLcl1U
h9CUawf9E5BprJC3A8QmnT0q77HnN92qqStvFvpZ7Q+v1APD/Orb+E4kskU/mHiN
B5qpYUUgoYUGyeTSG4nlSpBOG6nG2O7cpuaGz0ObLfybVJRGI7UgTIU+OtMm34DL
HzyhFvaYhg7xYbtj0m2LNLEgUWTwY2L7ktbZachaCpAjDs9IRSE/Eint/DSKl5SN
2X+nFXeDTl7Ig0vE26pukGume2hbhrnozhZIU1P4r4F965QBd4T2/490LXOWandk
xTCSMOJIkL7SBsXSlu2nwY6vYn9QBsuF/OMSfC1VqY05lxeqCcg/RJZLJj2aKizM
kPKMYjCzJLneVYT+7IsywZGFeIfH2Q==
=Bvzr
-----END PGP SIGNATURE-----

--kaF1vgn83Aa7CiXN--


--===============7186976820956360285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7186976820956360285==--

