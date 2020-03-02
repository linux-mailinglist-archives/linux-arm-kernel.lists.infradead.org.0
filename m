Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDEB175AAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 13:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dNlvav397rMlzg2lzcLinofsL1dH3V5r7IHWaSWYhEc=; b=ZMaD4KI7CeCUHtgooLJGivk6p
	VDkVONWRkn7wegl0beU5y6A6DXqtx+GdpvcCba8lyuEUTsuwezq+tlEJhmbnziZDnxjfDP+C7Z0Gv
	pig1B/qkUFXoovebh0+/mhKSuaONCoqVkbAcRtXHlQoHvgEjU6EbB2e3W80CCPYWMljuFF2bkXmMv
	C1Gg9U64EdmkwpE9qjltJSHfyqGMVWWPxOXsAKt1tXI55ee7gUf0vb3SaMALt2s1AtZUtpMf6xnky
	PQ4Lob4AOmqJa1ijtVT+l1Wve13FRiariwJk49utD1yy/bPRS0ZcS5banszea4tI9rNlMLsL48ICK
	pMVXkNv6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kLq-0003dl-MV; Mon, 02 Mar 2020 12:39:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kLh-0003ct-AS
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 12:39:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0F172F;
 Mon,  2 Mar 2020 04:39:01 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 444823F534;
 Mon,  2 Mar 2020 04:39:01 -0800 (PST)
Date: Mon, 2 Mar 2020 12:38:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] spi: bcm63xx-hsspi: Really keep pll clk enabled
Message-ID: <20200302123859.GC4166@sirena.org.uk>
References: <20200228213838.7124-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
In-Reply-To: <20200228213838.7124-1-christophe.jaillet@wanadoo.fr>
X-Cookie: Whistler's mother is off her rocker.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_043905_407120_87CB63E7 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, jonas.gorski@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6070674333807433508=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6070674333807433508==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZmUaFz6apKcXQszQ"
Content-Disposition: inline


--ZmUaFz6apKcXQszQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 28, 2020 at 10:38:38PM +0100, Christophe JAILLET wrote:

> To be honest, I don't see why we need to keep pll clk, or hsspi clk
> enabled during the lifetime of the driver. My understanding of the code is
> that it is only used to get the 'speed_hz' value in the probe function.
> This value is never refreshed afterwards.
> I don't see the point in enabling/disabling the clks. I think that they
> both could be disabled in the probe function, without the need to keep
> track in the bcm63xx_hsspi structure, neither during pm cycles or the
> remove fucntion.

If the device has a clock there's a good chance it's needed for the
device to operate and that disabling it will save a little power when
the device isn't doing anything.

--ZmUaFz6apKcXQszQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5c/mMACgkQJNaLcl1U
h9Cwewf+LaiDuAFWakLpTKZ/xUwqWqdMeVhPJMgEYCToIfMYYsMsBLLvE57s71+Z
Se4OYGwCbmz75sJq7KZTHEt7TStQ0Wfwtb2VTQ6e1nhoT0q6Vh/p0Xos0dapsFkw
sERlnAbZzf0t9rrXQB6yLjBPnU9X8iS/tatAOYylTZb3g2KO31ZxT1/jg6op1+us
bK4fcoLF+8W2G5leWAr9rn0YOTycey9CtBLnsyB6YUWGkUBx7rGhdW6sO2VWFcpy
WkrryYV+AudPf1OU0PEtdS8acdzB6QCxIzTjyXwZXDyDlcYF9VVMrAuvMZy/XoPn
rb3dzStyqbqmU+y0ZF4jWo+HDIeKig==
=mNDy
-----END PGP SIGNATURE-----

--ZmUaFz6apKcXQszQ--


--===============6070674333807433508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6070674333807433508==--

