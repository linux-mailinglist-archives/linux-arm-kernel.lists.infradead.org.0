Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF190FB288
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 15:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7gNdfO90iANLk59nOwH5CEvkb8chrnQG+aKYjr4IryE=; b=PJy+VxEkfw3koA+rgu1/1NdKm
	8dtxCpxk622m6hns2ya+tCppGc5H6IsjwFnpxamSQuibXLgPCCOdCeWckv5Rw9Jxa45AaeslMnMHN
	Xu2VBn5F/yUEOtOs/OcKxeUwHSGoMNBQoRlsENDJmQ4zdr/8uZ4rQVrRcQ/TnMiIs322LiE4lFN3C
	NkafHvoG/J+HO/7OKUBCpj3pCdXW8TD48nByOeU5nzYmLNA0Zfp1j96jgbBDSItR2V6wJgwXH+Q9b
	04DpWJlFvGEeOUgz6+RUIAbW23cM/vyqK0Ml6pGIqY0jBXfxCtAwpdOWhhDZXsycD36P2DM9aqBjx
	RGJzFWd6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUtaq-00052z-0O; Wed, 13 Nov 2019 14:26:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtae-00052A-Vd
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 14:25:50 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13CE3222D0;
 Wed, 13 Nov 2019 14:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573655147;
 bh=pDH6eo76fm4Ww448YNgiv4t1zRqGCI1dzASDS0Ut32s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aMNaZPiEEJym5GYKRS667x/n1xh4eOgDRzc8G/n/xIZSqmcZfunMA2jeGXdiGjEY4
 HRY+yYwDVebZoA/4q8nqOT0B2qH4Zkk81tILKQ4aBPMK8Iqh2ke8aSPoCbJKV3G40x
 8PUI9B5nmBKJgQ2QY/GP1Rm9aqfFYRh9YqPzMdn8=
Date: Wed, 13 Nov 2019 15:25:44 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Tian Yunhao <t123yh@outlook.com>
Subject: Re: [PATCH] drm/sun4i: tcon: Set min division of TCON0_DCLK to 1.
Message-ID: <20191113142544.GG4345@gilmour.lan>
References: <MN2PR08MB57905AD8A00C08DA219377C989760@MN2PR08MB5790.namprd08.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MN2PR08MB57905AD8A00C08DA219377C989760@MN2PR08MB5790.namprd08.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_062549_036878_642C7FD9 
X-CRM114-Status: GOOD (  12.26  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============1772717030658872081=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1772717030658872081==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6vu8ReRIjaA55nHT"
Content-Disposition: inline


--6vu8ReRIjaA55nHT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Nov 13, 2019 at 01:27:25PM +0000, Tian Yunhao wrote:
> The datasheet of V3s (and various other chips) wrote
> that TCON0_DCLK_DIV can be >= 1 if only dclk is used,
> and must >= 6 if dclk1 or dclk2 is used. As currently
> neither dclk1 nor dclk2 is used (no writes to these
> bits), let's set minimal division to 1.
>
> If this minimal division is 6, some common dot clock
> frequencies can't be produced (e.g. 30MHz will not be
> possible and will fallback to 25MHz), which is
> obviously not an expected behaviour.
>
> Signed-off-by: Yunhao Tian <t123yh@outlook.com>

Applied, thanks.

I had to update your author name to match the one in the
Signed-off-by. You probably want to check your git configuration to
remain consistent.

Maxime

--6vu8ReRIjaA55nHT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcwSaAAKCRDj7w1vZxhR
xU7XAP0fxqyNsoQ8ysyrGwSsWFp4AAWRd91NvKK8UgOJEivhHAEA9zIvnAoinYgK
QiNv766LtIfZTSaIm2fPqq3Ap46Q6QU=
=YtI3
-----END PGP SIGNATURE-----

--6vu8ReRIjaA55nHT--


--===============1772717030658872081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1772717030658872081==--

