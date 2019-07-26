Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673F576535
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YfIFx92+6jnjvQ2NVcp+9TK1s+z8PneB4LcIKbMq5Is=; b=MOSwFnVJZU13XfWtiXxFFXZ17
	Dzx61/l0NHQClKVGAB4FKftgGt8eMiFP08ytH5v+5V3f2/eNTWvkvsYEK+dDdWfKqhU7gxRhRMrDX
	r/iUhCeAZSvLtUVdEY310JHDe1H3KsCUAzz8UG11SirQ7zjLduLjXuzMbyQA2e8DX+j9wUVzZagPp
	uJNpaA1up4eAWVu3lFrCJzX7Oeh8OOh/5luanuJ3PjqJLlrPbp7bzg6znlqDYrcvuT1W5f7gms7+5
	wWW7+6MzDhaMSozQ23l7L7eqa+Q5F7VQXJtgP4EI9UyGuJNhMpisEt94cI0zk00rGckve19YsykBl
	o/yGP3P8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqz2J-00042r-1b; Fri, 26 Jul 2019 12:09:23 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqz1l-0003ny-7j
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:08:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gS6TFmtoV9RB8J3VH+YKQUJjv20M7Idf7n3sD7CqGlY=; b=dgTcrG54HaVxyxusxxEABL2XU
 5jK19DpyIw1uRl38Bwa3O+yVbls8pylB1S0cuIJlWBLs9+x2tDstnvkvGhrTWPF4w4wBWco5EGIGr
 lwuGdx63F3HJhbt2cidBT1pkGnrZ0YXy1CQMxwy1OEMi5xbFD1K2r+E/HWwGfBcwajLwU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hqz1e-0001YP-KU; Fri, 26 Jul 2019 12:08:42 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 881C42742B63; Fri, 26 Jul 2019 13:08:41 +0100 (BST)
Date: Fri, 26 Jul 2019 13:08:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 7/7] docs: dt: fix a sound binding broken reference
Message-ID: <20190726120841.GA55803@sirena.org.uk>
References: <cover.1564140865.git.mchehab+samsung@kernel.org>
 <9932608f32030c886d906ea656eda8408c544776.1564140865.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
In-Reply-To: <9932608f32030c886d906ea656eda8408c544776.1564140865.git.mchehab+samsung@kernel.org>
X-Cookie: Think sideways!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050849_413149_394CB7B4 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0710924350089899933=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0710924350089899933==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 26, 2019 at 08:47:27AM -0300, Mauro Carvalho Chehab wrote:
> Address this rename:
> 	Documentation/devicetree/bindings/sound/{sun4i-i2s.txt -> allwinner,sun4i-a10-i2s.yaml}

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl067UgACgkQJNaLcl1U
h9DZ3gf/XVyELAxpK+iOsyrIIgOtkynK4H9wknGxpl2rZE0a6qJHb4tUp+EVM5k7
BP3tcLa5QVeuWG3k2rqMwoL86wXC7QLc+So1k5s612+LqO7tkgHRPQv0fFZFYFU+
iQ7E6+MUeBW4LoqA4pSOQvpeU7oNy4amI/X639LTk7qjrTwnmwcH5aagkPRGOvPL
KC+Hf/saAF5T9eue6updywRGYPWffVpQkoCO6NpwfWMk5UV071OneiL3SKXf/y+2
7ZgIh2qwDFvkrpgmTUowa8D+iODO0/P6YP3m7Q8WZXS3YBSrnp0c9pDUUG38QVVG
jB89EPyDbXAjR7L2WTMO1GCnC/j9Dg==
=gcDY
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--


--===============0710924350089899933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0710924350089899933==--

