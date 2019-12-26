Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9769D12AB43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h0A6nuyMDFTViiz+1Krrn0pOwGOaTmTw+joGNcBmghg=; b=hgHXEZMBdv+10z+/Kb7uRIY1R
	TVBc8nwrS4vejFKf7DNwVSarzktxyWDovBJeVEpqbgLC32LcSZO25QFwiw9JDljwTO8N54dVo6wXC
	zTA106oroiqi7V8jphohL2PersFeH7UEYtYRx8pyOjdgnOiFXyxMo2aMfSotWqSDcDrACmL36xFOb
	40Qcfa4Z0I3DSmow6F7kaEpBVYry+fkscRFGuJt0fUHJUNUabqFHDCiGGR94rD/POmpv5O7cF30Xq
	oTgmcr9Fb09Ferl5TO9o26J3BeEubKw3mZgiTzHCGsufcm3s7Rjg/ZlofdzxqHNGPXYSOCgWVFafa
	PPxJits9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikPPu-0003uu-9K; Thu, 26 Dec 2019 09:26:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikPPb-0003tA-VV
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 09:26:33 +0000
Received: from localhost (lfbn-lyo-1-633-204.w90-119.abo.wanadoo.fr
 [90.119.206.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6C6E20882;
 Thu, 26 Dec 2019 09:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577352391;
 bh=CkarfyCauXn8wfEDBs9qybSmPYfMeIjIMe3oVYoPHVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WaOnm7esK2ROl3hesRkx1Q9V+CUBQ9D7tRemrBSlQGoakMaVb7IYQ9996xNiLvtd7
 Kcq+cqu892ies3iBcFxDtBxMcKAQG7yNJn4jqHFs/eRo71GLMzscQGHCuAOerG6MeC
 YkoRtkj5QT259JCKnYIMP/nBijTXHD4uwXgsn+iw=
Date: Thu, 26 Dec 2019 10:27:51 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
Message-ID: <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
 <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
MIME-Version: 1.0
In-Reply-To: <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_012632_046959_458F7E01 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3265528286256431907=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3265528286256431907==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rog6f2soycavkabo"
Content-Disposition: inline


--rog6f2soycavkabo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 24, 2019 at 07:30:55PM +0100, Daniel Lezcano wrote:
> On 19/12/2019 18:33, Maxime Ripard wrote:
> > Hi,
> >
> > On Thu, Dec 19, 2019 at 09:28:16AM -0800, Vasily Khoruzhick wrote:
> >> This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> >> H6 and R40 SoCs.
> >
> > Thanks again for working on this.
> >
> > I'll merge the DT patches when the driver will have been merged.
>
> I've applied patches 1 & 2.
>
> They are in the testing branch and will go to the linux-next branch as
> soon as the kernelci passes.

I just merged all the other patches (except the patch 6, for the H6,
as requested by Vasily on IRC).

Thanks to everyone involved!
Maxime

--rog6f2soycavkabo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXgR9FwAKCRDj7w1vZxhR
xbdXAPsGHYwewHWWZwWJLF/9xp5VSraGYyM5zFe9REMEM+rRYwD/VjwfBOp0ldc4
8dHM5uzYOaKYBLrqF1yORYBeEDtCYQw=
=MvoE
-----END PGP SIGNATURE-----

--rog6f2soycavkabo--


--===============3265528286256431907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3265528286256431907==--

