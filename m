Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5921F9526
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CqRCglWo0427A/L4DAGusIt7V1rmzJIN8jVsuQgP9wk=; b=R+wonJbu51vaDk1HAtVG4q0Te
	lOq/MLgiThvXo/W9RmLXX/VcZbqWe9BR/WveUwGEFN5SSWL/KpvZJ/E5KV62+9V/35l/GOvCcS4n8
	Ln1j+AAOFFsupf1sNdhO4FcKzeoZnkGYuys6vt0JLbTJdG3knyCVFE8iETOuNCtw7qP25k0967Zgo
	ofwRxk1pBAIrsUSe7s6MX6vD7x6qmFZsFDlkdnmcyoy2xIUvCgnq+fiq7hA53q7XBlj91FXHTukgn
	dujRE5pxPsPTjEe5iC0D21tmy7E+ZrCLsO5FEBYXX6epqV3OKEQRI3X5Rg4M15aB5fMREBwDoifY9
	dslEl5l6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkn8M-0003Bg-Oc; Mon, 15 Jun 2020 11:18:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkn8F-0003BF-Pp
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:18:28 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9183620679;
 Mon, 15 Jun 2020 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592219907;
 bh=Kc5Uu2zfW16GC/jLDwOItAJ1ZCbBOhlBnC7jl4IzQzw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CLqA0Otm5iTchqOJNuF5+TEvlduYM9+uHf6vsS1atI8wMe7S/kxYzvwUUWFsse4+8
 sH1eDw9PbEF9rDtnc2aheYGa9DNhyAWCXgR4cJnGEviEeGugPmWRca0LUDu2E4mP8M
 PRkjztkO40hmW00EQKRvCSNgeGSBOeUs/BCxQ00k=
Date: Mon, 15 Jun 2020 12:18:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 14/29] dt: Fix broken references to renamed docs
Message-ID: <20200615111824.GB4447@sirena.org.uk>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
 <6866c0d6d10ce36bb151c2d3752a20eb5122c532.1592203542.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
In-Reply-To: <6866c0d6d10ce36bb151c2d3752a20eb5122c532.1592203542.git.mchehab+huawei@kernel.org>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_041827_856757_287556FB 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 linux-spi@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1072381926428894167=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1072381926428894167==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eAbsdosE1cNLO4uF"
Content-Disposition: inline


--eAbsdosE1cNLO4uF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 08:46:53AM +0200, Mauro Carvalho Chehab wrote:
> Some files got renamed. Those were all fixed automatically by
>=20
> 	./scripts/documentation-file-ref-check --fix

Acked-by: Mark Brown <broonie@kernel.org>

--eAbsdosE1cNLO4uF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nWQAACgkQJNaLcl1U
h9CxiAgAhDSjkVNSd4C3SSNbhfInIakuxFRySdIdhdj0LEFFiDgpuSzr3Lod/jYy
mKamyUcBQ6F3CafOHN8nf4MlH9u3CSElXbDvLZlah833W1ak+AWXqFDdqi3XM9Wg
5enzsfi4JHeKxu/NGAt7YUqXKG2WxM4RL0iC1H/CsGsLII4ixSPSNHJ8BsGs2Ehx
Dv2I9zYutWdH+3O8bk4vHtJHpZidjuobydynnmMgcHpeDXVSLPZx22W/LXsUAlfE
HFaK+IberJIeSTebqFLV0fkB5+x9yri0Jg8SLWubAGmqiS/XEvVLx1tF0uU/ukk4
dBx3qCxD+Vtqo7ZF4IYCIM1u5B64lg==
=HhUo
-----END PGP SIGNATURE-----

--eAbsdosE1cNLO4uF--


--===============1072381926428894167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1072381926428894167==--

