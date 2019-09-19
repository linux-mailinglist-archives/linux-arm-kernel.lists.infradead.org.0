Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2562B79C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8As8uN0t57n2PwUsig5If/8wXmP99HryGxwOZb/0ass=; b=c/NYbjejciBMxfUwMKLD0h0So
	+Em0nzfeuCKTM+lpJykS4bMosjS1No6vNRqV6LTJrUaqn7QAVEM0LQitlT56IxGiH1l4FHHNe7CHf
	u5r5/Xh9eEG5jXawAxuIySYdwgh1VHehgrteChyYs3+pZ4fWgGz70HnzsLeID3DLlNtCBEUMhw4NK
	ul3eHa6dUZSZiq/j5DQcPYEDHYw09yJYUZcBUew1z/ZCOpYgzi51PaA8CrgrKofW+6JLHFS+OEeeZ
	O8TP11+kV4lTR6L2Wqa0jP1ZK1OcGeXoTr2nGXIg4C7eLneuuvW4rzA8ux8b8+lIa6MfoT+e3QFfc
	ltf8uTztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvth-0007D0-Od; Thu, 19 Sep 2019 12:50:57 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvtD-00079K-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fuCY5wYFsKqiKoBqT3bLnd0L0pBLtKNOOZDnK4mLxa0=; b=e+Rr/SPdk1bFvJMYJxKnf8bSI
 V2DOtQYRhtN3g3HdwUHhIQNTLDcvXkw0vpVXiAaYjDShAZoLtHGfhZ0Q0a7Wi/ePaLcw4SOqQ8nID
 5gI7SaA6e9BPuDpPNIDEgK86Dd5b2l2OMHmocmDQoL3tmrrIUN5Oiw02lQBcY7u7LJSno=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iAvt7-0002dH-TG; Thu, 19 Sep 2019 12:50:21 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E25522742939; Thu, 19 Sep 2019 13:50:20 +0100 (BST)
Date: Thu, 19 Sep 2019 13:50:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v1 2/9] mfd: wm8994: Add support for MCLKn clock control
Message-ID: <20190919125020.GJ3642@sirena.co.uk>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104656eucas1p1d9cad1394b08d05a99151c4fbc9425ce@eucas1p1.samsung.com>
 <20190918104634.15216-3-s.nawrocki@samsung.com>
 <20190919075924.GB13195@pi3>
MIME-Version: 1.0
In-Reply-To: <20190919075924.GB13195@pi3>
X-Cookie: I'll be Grateful when they're Dead.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_055027_479073_1D3F99CE 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============8701822571931956441=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8701822571931956441==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L+ofChggJdETEG3Y"
Content-Disposition: inline


--L+ofChggJdETEG3Y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 19, 2019 at 09:59:24AM +0200, Krzysztof Kozlowski wrote:
> On Wed, Sep 18, 2019 at 12:46:27PM +0200, Sylwester Nawrocki wrote:
> > The WM1811/WM8994/WM8958 audio CODEC DT bindings specify two optional
> > clocks: "MCLK1", "MCLK2". Add code for getting those clocks in the MFD
> > part of the wm8994 driver so they can be further handled in the audio
> > CODEC part.

> I think these are needed only for the codec so how about getting them in
> codec's probe?

Yeah.  IIRC when these were added a machine driver was grabbing them.  I
don't think that machine driver ever made it's way upstream though.

--L+ofChggJdETEG3Y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2DeYwACgkQJNaLcl1U
h9CZ/Qf/RnqP8s+fNH8XRLC3f4NOhlEUuENvy3/L25UO6SoTsonta4x2bJJcUR+q
2qmI1q9VB6m4j0cXXZomB9tyElioGlvOr+91MN4OlewIIX3g15iUftM9HDEBV4yh
+zRz2YrNQLQeXO8Dh1tb2ImAgQB5alhxuOxCi+Sx0pFKf6TtioOOCJ4Nc25daN8j
By6n3XPTWaBythxtIRrtHrJUrKits1sfbG/qIKWOpjPCPVU41KX46bx/fCcjYw31
TWfsABgUpNmsHj0ndLsw8bnUByQMC59PfiHAwdS8THTH3s5EjRnFVkfvApeTZpuT
rYxEEvYM9MT2h8jesRjQgJIim/LTdg==
=nNva
-----END PGP SIGNATURE-----

--L+ofChggJdETEG3Y--


--===============8701822571931956441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8701822571931956441==--

