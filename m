Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2AE1BDB5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6AVt3XAdalH5f3y/eqOKZvvQ0cZfe6DODrO7jp+8U+k=; b=Ohfg/BGZwkgizonmewv/VMfOP
	BVPbDTLJMej198aXN5hEslhfRFBPjqASte6mAf6qiUXHu4ikv6PKFJ20pR63r9p6AxH6ey4e78VEg
	hNUKMKc1ZY3/fqhKlbRncKOBkU+DiXPG2hXigX2Ulpfc3hg9iBmZ5v5Wbv8rYz9RxMt8i5bchqBHv
	jAe40FIPBSdFCAPcYzKsCqFcYEdaEzD2bXphMi1lCWseFlkVKzKofrtVwkfEB48joWbfQsWHvQReh
	TC9NaB6UOEvAA9O9Q3z2kmcJDMMiHFRc3VH6A8RH5CGzRy3OT0IAFWouN1M9bcRG9r57sLlEqU/iW
	4+UtmWwYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlSz-0003e0-OG; Wed, 29 Apr 2020 12:05:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlSm-0003cM-IO
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:05:19 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27F8B208FE;
 Wed, 29 Apr 2020 12:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588161914;
 bh=BHx6Adc582HX/EI7gEWPQT8miSuzlW266b32vPCYeME=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=StwkJngH70s5roDZrk0Vd0cSxaoWgkq9/v/SdRm0VsfveIt/PScZ4eGrr0cCqV5Yi
 bgXyOwH5HMG8tiQL2kbbdS1mALhVuxn6iUOzJd9DzIKPw4LwXeyZ8XdAOiDFocEt5O
 rfDMpk4aRr6mied40vjSshkkuH1tA5VSghN9ckWA=
Date: Wed, 29 Apr 2020 13:05:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
Message-ID: <20200429120511.GG4201@sirena.org.uk>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
 <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
 <031ee5d3-8a30-82ee-76db-c0e8a1073046@arm.com>
 <CAGb2v65rRbRpUTdkTF3hd5LnLQQt19YVOyVzM5te5XNVhQQH=A@mail.gmail.com>
 <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
 <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
MIME-Version: 1.0
In-Reply-To: <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
X-Cookie: I know how to do SPECIAL EFFECTS!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_050516_662818_16D1CCF2 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Takashi Iwai <tiwai@suse.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Maxime Ripard <maxime@cerno.tech>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3006306351091330946=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3006306351091330946==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RMedoP2+Pr6Rq0N2"
Content-Disposition: inline


--RMedoP2+Pr6Rq0N2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 29, 2020 at 11:43:06AM +0100, Robin Murphy wrote:
> On 2020-04-29 9:17 am, Maxime Ripard wrote:
> > On Wed, Apr 29, 2020 at 02:24:00PM +0800, Chen-Yu Tsai wrote:

Please delete unneeded context from mails when replying.  Doing this
makes it much easier to find your reply in the message, helping ensure
it won't be missed by people scrolling through the irrelevant quoted
material.

> > If we also end up with "HDMI" as our card name, then the userspace has no way to
> > tell anymore if it's running from an rk3328 or an allwinner SoC, or something
> > else entirely. And therefore it cannot really configure anything to work out of
> > the box anymore.

> OK, you're a userspace audio application - enlighten me as to what exact
> chip you're running on here, and why you need to know:

> card 0: HDMI [HDA ATI HDMI]

> or how about here?

> card 0: Intel [HDA Intel]

In the case of HDMI for embedded platforms since there is generally no
control in the audio path it is unlikely to make a *huge* difference,
though if there are expansion buses or multiple HDMI ports it can be
useful to help people identify which particular HDMI port it is.  For
other cards the names are part of userspace working out which config
file to apply to the card so deduplication can help, and also the
plastics tend to matter.

> With simple-audio-card we're talking about trivial interfaces that often
> don't expose any controls at all, so there's unlikely to be much
> 'configuration' for userspace to do beyond choosing which card to output to.

This is a reasonable assumption for HDMI but it is not at all a
reasonable assumption for simple-audio-card in general - just because
the links between the SoC and the external components are simple that
doesn't mean that any of those components are simple, and even if the
hardware is simple that does not mean that configuration is unimportant
- the difference between full scale output and appropriate headphone
volumes is for example *extremely* important.

--RMedoP2+Pr6Rq0N2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6pbXcACgkQJNaLcl1U
h9Bzugf/c28iLtVw25sffS7FxnwHu5kFpEMA6AESU/nbib3pIGkMPZg+yn69tK3S
bdnoVTnaJl2n84nFz/STXBtafZ0xebeAN+eZu0Gd7vtygVQlVGBP0QqPBo04u2Ko
xSfYbaycfHROmTbbL5xIoJ0XaxNOgnZd0epZRpcvNDkDZJ8YvlwoR5Ooi8C/SR9E
xqmpX9gmh59QtZf3NS5mQ+4PIHwxw35rxIgA1P6mIFRaseuz6njlFAlpKpCfWHy8
ZOYQ79RmdZDUSkqlOtUToBxkOrVCPHHmr5YoblVd3P3olP4ZBcmpnRuB4+QkxifA
7T5xU5H+PZPzUMBmDu6Mtx6P+4INhA==
=xohR
-----END PGP SIGNATURE-----

--RMedoP2+Pr6Rq0N2--


--===============3006306351091330946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3006306351091330946==--

