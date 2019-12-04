Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2337A112CD9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:46:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sG5l86hZ/ili2AUldvqCBMb7bwRiUdoNHWyUD2Vxw3c=; b=RLc01ROaytglTlVz3U08DCRvo
	crHs2BGxnTqz9AjKinMhz0SWdI1lr9gfTjbPaKK523uu2L1tFhoQAUxJ0GgHm8dffyScvy1pVWtwl
	Y/rS7KOQTbgALlAnio1PK4Gy2rAIHr7k+HLwU+rDIOfsFcK9G7GS4Q94eeAqk6CjEFDqu70qmVQQF
	59dBRcAf6Yj8HRbnspE+pPSY8/h3sdkpmZm8yGG3foB1YpdsulaW2UC4j5SoWgkHikuHoCSfh2DLE
	XtT92v20gQHN8fXaEz9LaZO/ci+FnbVH1lxDDh4PpU/5QnvfODOxrOMTjJ7bHTbMShldg+tTBFKrW
	yHXw7JwoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUzP-0005lm-Ju; Wed, 04 Dec 2019 13:46:47 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUzG-0005l2-SW
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ViQdiD3wVU6FIgxwAalhRGBEIqZeLZwd4vUTlshOCAA=; b=AbQgCinNELw75ahLFYpi+SBwU
 1arhNDg/VeUhIcE+d3iCkTYNd2/5K8TdqXygTYQgB/M92x5n4a68SqCy29TSgPNr5Gqu6rrIxfG7y
 ZpdAGvJUmpyfqomy5ideB/u5ZvH+brfN7UxUqx2fSr9bkfQCsBDW2wgAhLGMyCY4CptC4=;
Received: from fw-tnat-cam6.arm.com ([217.140.106.54]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1icUzA-0000ar-DG; Wed, 04 Dec 2019 13:46:32 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 92FE3D003B4; Wed,  4 Dec 2019 13:46:31 +0000 (GMT)
Date: Wed, 4 Dec 2019 13:46:31 +0000
From: Mark Brown <broonie@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20191204134631.GT1998@sirena.org.uk>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-4-m.felsch@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20191129172537.31410-4-m.felsch@pengutronix.de>
X-Cookie: Cleanliness is next to impossible.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_054638_965212_E900CA60 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, support.opensource@diasemi.com,
 linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org, andrew@aj.id.au,
 linus.walleij@linaro.org, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, joel@jms.id.au,
 kernel@pengutronix.de, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4283351941782081758=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4283351941782081758==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MOeiELSuYwpLEKvX"
Content-Disposition: inline


--MOeiELSuYwpLEKvX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 29, 2019 at 06:25:34PM +0100, Marco Felsch wrote:

> +  Optional regulator device-specific properties:
> +  - dlg,vsel-sense-gpios : A GPIO reference to a local general purpose input,
> +    the datasheet calls it GPI. The regulator sense the input signal and select
> +    the active or suspend voltage settings. If the signal is active the
> +    active-settings are applied else the suspend-settings are applied.
> +    Attention: Sharing the same GPI for other purposes or across multiple
> +    regulators is possible but the polarity setting must equal.

I'm really confused by this.  As far as I understand it it seems
to be doing pinmuxing on the chip using the GPIO bindings which
is itself a bit odd and I don't see anything here that configures
whatever sets the state of the pins.  Don't we need another GPIO
to set the vsel-sense inputs on the PMIC?

--MOeiELSuYwpLEKvX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3nuLYACgkQJNaLcl1U
h9B8RAf8DVq4ZX6Z0Svxmo1m2U0I4WvgeY9JnnhpeCAOUE6ILw5DFoy3RreO8x0X
7QsCRigQAT3V+NA79pg9/49e2Xpz6a8UnPu/E6OsdT/GJwgZn+2Qyt6PFwS/sRzN
7vnp0WKEQsClbGI1jBRMaI4SyZqtbET8XAoF24LHzdZFfamgsUqCgKVq53m9PjrW
d8BHHSEh6gv+aVBeKb7tTpG3gAnRPnUTZSPBGIH+gNmqnNx0zO6Dq+fGXyeZLTLc
2MPvW/hE/QUvSFshLtwgs1Te+vD7k2t1F3BmdwC1wnpNHs+XEsBtGu+IyZsB6TWL
j7TDrp/slISRAbezy30W/na8SJNr9w==
=gb7u
-----END PGP SIGNATURE-----

--MOeiELSuYwpLEKvX--


--===============4283351941782081758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4283351941782081758==--

