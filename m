Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66776E4FA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ib5cI1/ZRFbcDJg7bmeFNI9X+1xuNkdLdY6dAy4otCc=; b=huufau+VfBAkk2Ms7olFrBNhO
	xrS7lr3oLnfw0DbL1BpZIJfVyzy+5LaDdXN/JMSpBlwbZxRsfyRCmT3kbvbDStZysT0v/PVaKVDMG
	3TRd/ws4LJ8mT/qg+bEYiRF0Tq0HdDyr0AvxX/UwFrIX9TXY66rNQa/TikAe3/JNaIQQYzdR3p6h/
	2e0w7VSA48yhr/ilDYiA6ppQuTdUHuNgcGK8HErD62A/H3YSGiP+hJ5khLrOSTw8E6dR6NjURcbm9
	ASwlRHV5O4Av4ovZwblZ6kweOZOnpbR23RglDjgCU8HZeg6VCL6vg9KhiqYl0i/V+XBzVVOwl2ZsS
	D84+4LjOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO10V-0003iY-Ku; Fri, 25 Oct 2019 14:56:03 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO10J-0003i2-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3HY5xkcL3waNdiUvo8bc+2axOP3x1E6Q2gmPgBlTWHg=; b=s13hcb4t+DXbrOebPbiMbu91j
 vCZJfiMajGWWOkIVIzG8h+qC2UsqCBhYg/prDJkcHYu+EGlht746lN4fivIdI+dzQiWoNd2jGt0xk
 K3LfAID8AgVKG15xkf51l6ExQcI6NuF6pqUaQqBVrk/N/4YPV7IwETAjNhMA7yr0oaPQk=;
Received: from host86-174-61-171.range86-174.btcentralplus.com
 ([86.174.61.171] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iO10H-00075N-Kz; Fri, 25 Oct 2019 14:55:49 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 25A0BD020AD; Fri, 25 Oct 2019 15:55:49 +0100 (BST)
Date: Fri, 25 Oct 2019 15:55:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 09/10] mfd: mfd-core: Remove usage counting for
 .{en,dis}able() call-backs
Message-ID: <20191025145549.GH4568@sirena.org.uk>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-10-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20191024163832.31326-10-lee.jones@linaro.org>
X-Cookie: Keep out of the sunlight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_075551_478226_91BFF72C 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, daniel.thompson@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3146831048196925099=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3146831048196925099==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L1c6L/cjZjI9d0Eq"
Content-Disposition: inline


--L1c6L/cjZjI9d0Eq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 24, 2019 at 05:38:31PM +0100, Lee Jones wrote:
> The MFD implementation for reference counting was complex and unnecessary.
> There was only one bona fide user which has now been converted to handle
> the process in a different way. Any future resource protection, shared
> enablement functions should be handed by the parent device, rather than
> through the MFD subsystem API.

Reviewed-by: Mark Brown <broonie@kernel.org>

--L1c6L/cjZjI9d0Eq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2zDPQACgkQJNaLcl1U
h9BdFQf9GRV0LJ9WwJAY7S57aFYatmIivP/nKOJ+/qqiSdu4nth9m8QtWh/XPk3b
8xpWSlntb1FKMtJoVSrdakR32vhFOIGFlKwZFnUoVPHypyoIyTbDsCZjS3+XO22I
w6kBayy5K+lX0YE9SUrOqBEZetfTvXtH6KW6WPaWZ5P6Qlducmhc+L1MYQeL7yAL
6Ap0l4pN60335m1X/uKkBXvcd5xU/OI/aCi/iq2i9/ZyLAYFpM/uelCNPKqkzD9t
92hhcIM1JZmrjHM9mciYunPDVkcx0lUAs1p0s1Zv3og1nGB/TtK6N6dO/urW4NYR
djYghBL9CB2Y18aYWhUG9pvedllWNQ==
=wgPo
-----END PGP SIGNATURE-----

--L1c6L/cjZjI9d0Eq--


--===============3146831048196925099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3146831048196925099==--

