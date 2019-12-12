Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB61011CCC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 13:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=leAuPD8H2gjtm1K2kXzjzsxpOlcvTbUsKNA/4hRVl7Y=; b=hJq7/aO1+tlmpF6VC7RFLReB5
	Yb4hPfQL8NgYKf++7RaqaSV4U0hXWcOzDBKDdqjpkwduwT1igqYxAGH5ufcIA+fMVctGtYRKjpqvR
	xyTxnBYaak3SYm7g00vvO7o33/AClWmENKzQX/HLyvu9J1odmMl+NSqv3FZPAdm7H8A/T7a5xPCi+
	pQcC3QU+wjUB5+Kacll1Aci1XHmuFfzndoqOFOpjOJ5HsDvxIDLUSzQz4h7r2PrMLGXRgpkCvQwxc
	Ev3ejZASxVPNFSNMU60oChHSUkmHp64Pspb/GycKvkP8qInkPsD7izQBLMzhhab3YecfAAbG2HX9n
	gWnhIWvGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifNEe-0001IY-10; Thu, 12 Dec 2019 12:06:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifNET-0001HB-9i
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 12:06:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A3F81FB;
 Thu, 12 Dec 2019 04:06:07 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0726D3F718;
 Thu, 12 Dec 2019 04:06:06 -0800 (PST)
Date: Thu, 12 Dec 2019 12:06:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: Re: [PATCH] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20191212120605.GA4310@sirena.org.uk>
References: <1576148934-27701-1-git-send-email-richtek.jeff.chang@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1576148934-27701-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Cookie: We have DIFFERENT amounts of HAIR --
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_040613_388414_DD2F6EBA 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, jeff_chang@richtek.com, matthias.bgg@gmail.com,
 perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0796810187949852641=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0796810187949852641==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 12, 2019 at 07:08:54PM +0800, Jeff Chang wrote:
>     The MT6660 is a boosted BTL class-D amplifier with V/I sensing.
>     A built-in DC-DC step-up converter is used to provide efficient
>     power for class-D amplifier with multi-level class-G operation.
>     The digital audio interface supports I2S, left-justified,
>     right-justified, TDM and DSP A/B format for audio in with a data
>     out used for chip information like voltage sense and current
>     sense, which are able to be monitored via DATAO through proper
> ---
>  sound/soc/codecs/Kconfig  |   14 +

You've not provided a Signed-off-by so I can't do anything with this,
please see submitting-patches.rst for an explanation of what that is or
why it's important.

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3yLSoACgkQJNaLcl1U
h9CfvQf+OwqaS6opHAx708EXSW3weHgQ0koD3aM3Ti2vyAWlAztKo1uyctXylitF
tyVzUCsBptcVFwwkhCYncnk/VzS3vz0NvWg9D7yNrfCE8Vc9IIhuqk9g4V10PmyU
KALFmhFVlK+J68pBpdln63KeqmBcuAO9EkNq7B3D28SVXZkb1Q35nIQFRmCOXsd2
zmmlFzZzSBV8L6RLLPcXHmfFfiOhsebyzgz/eE4e+l2diJAH1khhnko9JX5EaDq9
WGdnsm4QUiEOk1Vgg6c7PLRheaeupPapijBxIRualBZSNewoaKveKxcPoGZrZaC0
i4WjYS7UJY6DqBHdh5yG31iOcgvjJw==
=KCrs
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--


--===============0796810187949852641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0796810187949852641==--

