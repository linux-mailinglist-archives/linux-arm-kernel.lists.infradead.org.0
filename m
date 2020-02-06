Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D024B154591
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aS0TkQtwp1pweP419PunMecUI2Y8JdoJfcYkHZzmlNw=; b=q8D9N8n397otI1HvpRDBTQ2aX
	/a6zH9Nh4xajYMPYGPnoGH2fIk5YyC0D8znmQe8MZ6ZQDgYyxuphJK/utl64dKvYIf8AyOqx2TImd
	egO5qcgJjN9Wtn12ibSIemPeSv2JmtycibzUh29hWhfUiN2b3s5sW0Rc5QcmegIb2sz26jmtOu9jl
	DAGEtfNxCtkJx4+T2EyM/i86zSGaXab9xm/5N3yrLwEpQkrb5VAPRzRuWa4sYb8xtvAdMlWLXJf1q
	3tt/PUAnEULM/EgBaoEY04kK22ABoDLhC9CbnFz+L25S/Iy+Vg2vOOxBgfxQMAze1BjnkkzdxXDvN
	8KbSctYxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izher-0000Vl-4M; Thu, 06 Feb 2020 13:57:29 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhek-0000Um-I7; Thu, 06 Feb 2020 13:57:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BY3bAmfDGpjwi1ZC/nQxJs5fLqd4G6irce8OC6djfEA=; b=h1BSwCcLlgimk6Oh3na09vu/N
 AbeV6VNbvypZMJ77dtITNE6feYpGs3nzvQ6YOFFredtdIeVKhbrW6GAZkBdPIHoxS2SbWCUBfUzSG
 SiiXB0bFFLqXUm+Sl79j8fgCaHIktc6HeQdPXZAt8eHrQpqugIU9jadLOG+04x/pKALtU=;
Received: from fw-tnat-cam2.arm.com ([217.140.106.50]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1izheg-0002Jg-TW; Thu, 06 Feb 2020 13:57:18 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 8977ED01D7F; Thu,  6 Feb 2020 13:57:18 +0000 (GMT)
Date: Thu, 6 Feb 2020 13:57:18 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
Message-ID: <20200206135718.GQ3897@sirena.org.uk>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk>
 <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
MIME-Version: 1.0
In-Reply-To: <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_055722_601683_70E77EA8 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, pgwipeout@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2439015417750292788=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2439015417750292788==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k1RcuuA4CmYq3pph"
Content-Disposition: inline


--k1RcuuA4CmYq3pph
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 06, 2020 at 12:36:04PM +0000, Robin Murphy wrote:
> On 2020-02-06 11:46 am, Mark Brown wrote:

> > This makes sense but it is an ABI break so is going to need
> > quirking for existing boards that unfortunately rely on the
> > existing behaviour.

> I guess the existing (mis)behaviour could be predicated on an
> of_machine_is_compatible() check for Rock64 boards - it's ugly, but should
> do the job if you feel it's more important to be 100% strict about not
> regressing supported systems for any possible kernel/DTB combination.

Yes, that's what I'm suggesting - we don't need to be exhaustive
but having an obvious place for people to put the quirk in if
they are affected is much better practice than just silently
letting things break.

--k1RcuuA4CmYq3pph
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl48Gz0ACgkQJNaLcl1U
h9Dqlwf/e9pbZnoHIpXKjbaTLD0JTMQR2bflNKfkFgJa4HN0EBmRU/2zzjhQsMBj
FwXbRw0mbFlfh8DvJcHwjp9Nt+DzRk084QZm1xjXyIdok04lxQCq0/XwBENKJGUp
icw2FFpQGCVQJRixdXMaY0M0woDlf8GF/gk+KkNrJWvtD3JYD3pbaNqDO3Sfg4C/
ECfMVskfkS0XSKhcMWqbmFBf8ImMABUOu8qV6oWbEmxRlmjMxv28pNjXi+L96X83
qZ9St2FvccCApJ7twkomusHVtpw62Cpwy0OOwxOFIjEWTHXzhyAH/vFtPmMJwZJJ
vHRSZAgaioZ451LfVRCV/L6YnOeigg==
=S0B3
-----END PGP SIGNATURE-----

--k1RcuuA4CmYq3pph--


--===============2439015417750292788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2439015417750292788==--

