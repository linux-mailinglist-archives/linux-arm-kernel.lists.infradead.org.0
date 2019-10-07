Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74129CDF99
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xPxsba++cA4bNNmaesJ5fL2YG5oVM841ACxYi/yhNtI=; b=uh5cTnFknlF02q8mhg4JFL2FS
	gUf0LTzZa6vDPGLq9elvrBdKrvEcQwjVdr+O3T39ouJZ+lEC0W6dzVTP2sHQ80Iw6pWjplrC6SQ8B
	p+9l0Uag+p1PA/X1yD35m1vsJ6SFKN1U5wcKVWtg8F37sCVgdAreGrs9RH7HpTlJku4NrvAdoj9s1
	HBMP4mZljffn0jeZF7GS1CvTK1nG99ss/Z2VrxwRxOHJ4SmjO8vw7ESqHBKddufj/+l5I7xRVTHaw
	P/SyiFrz/TMTIeQm66gi7YrXRhgtyyphcUUUKRoheaiOPU5Qys7YxB4/TXBLM1vOsTVFDYgKWd5nH
	5XWXuJD2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQZM-0006gX-AH; Mon, 07 Oct 2019 10:48:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQZE-0006fW-2F
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:48:41 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9271A2084D;
 Mon,  7 Oct 2019 10:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570445318;
 bh=crukoGO4YhQ7zBCUhvVhbTucokBLXGufGE0A+G8szYA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vWd7EjPAG2p3KS6jFcWeBF/6yW7Y+xbEqIY5HL7huiPytN2NSEQJCQSedOv76PysH
 ln9ZngOq4MHF9bL31OOA7+Tqk5s9YaDRIhNYDrr0w6H2BMlO8AiKF58k+kVPNvLBTE
 lev+5eQfvqhFdpZeCy9av2/iaYUKXC58QbRYkMkE=
Date: Mon, 7 Oct 2019 12:48:35 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH] media: dt-bindings: media: Fixup Allwinner A10 CSI binding
Message-ID: <20191007104835.v6iqpoolqtajryik@gilmour>
References: <b47ec7088aa4b07458519ab151de92df552a9302.1570101510.git.amit.kucheria@linaro.org>
 <20191003115154.6f2jgj3dnqsved2y@gilmour>
 <CAHLCerNoLyQ-e70=1VMPO_J_amA+-2vtHwfoUabo4dhUWj-H0A@mail.gmail.com>
 <20191007100535.6gp6b3h6ueyeln3b@gilmour>
 <CAP245DXT=HL+m-LqoC25EBnOaPmF1pUW0fEZp6EZB-MdgOJoWw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP245DXT=HL+m-LqoC25EBnOaPmF1pUW0fEZp6EZB-MdgOJoWw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_034840_149903_0D6C7EC3 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4125233268633519359=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4125233268633519359==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ehz75jskqgtqpnip"
Content-Disposition: inline


--ehz75jskqgtqpnip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 07, 2019 at 03:45:29PM +0530, Amit Kucheria wrote:
> On Mon, Oct 7, 2019 at 3:35 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Sat, Oct 05, 2019 at 04:15:57PM +0530, Amit Kucheria wrote:
> > > On Thu, Oct 3, 2019 at 5:22 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > >
> > > > Hi,
> > > >
> > > > On Thu, Oct 03, 2019 at 04:52:24PM +0530, Amit Kucheria wrote:
> > > > > This new binding fails dt_binding_check due to a typo. Fix it up.
> > > > >
> > > > > linux.git/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml: $id: path/filename 'arm/allwinner,sun4i-a10-csi.yaml' doesn't match actual filename
> > > > > linux.git/Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts' failed
> > > > > make[2]: *** [Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts] Error 1
> > > > > make[2]: *** Waiting for unfinished jobs....
> > > > > linux.git/Makefile:1284: recipe for target 'dt_binding_check' failed
> > > > > make[1]: *** [dt_binding_check] Error 2
> > > > >
> > > > > Fixes: c5e8f4ccd7750 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> > > > > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > > >
> > > > Thanks for your patch.
> > > >
> > > > It has already been submitted though:
> > > > https://lore.kernel.org/linux-arm-kernel/1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com/
> > > >
> > > > I'm not sure why it hasn't been applied yet though :/
> > >
> > > Perhaps a Fixes tag will allow more attention to it?
> >
> > I've added a fixes tag and merged it through the sunxi tree.
> >
> > Sorry for the time it took, and thanks for sending that fix!
>
> Will it get merged for -rc2?

-rc2 was released yesterday, so we're a bit late for that, but it's
 going to be in next tomorrow.

Maxime

--ehz75jskqgtqpnip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZsYAwAKCRDj7w1vZxhR
xWygAQDjMWzwKSR39Yk842xwupPifmf7scmW28XyHRMhu+rdLgD9FRHsp8ggeM9o
BD7c/B1rS9r+K2HAG1lCY0LOeHQ/LAk=
=9BMd
-----END PGP SIGNATURE-----

--ehz75jskqgtqpnip--


--===============4125233268633519359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4125233268633519359==--

