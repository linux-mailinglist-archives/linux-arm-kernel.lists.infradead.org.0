Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13EF2ED5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 14:07:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bIk4bbsAJOwX7qIMZWPuB5qwEwUY9ElumPn1ivy1yKc=; b=MLzTFyR2SGv+OKhfvqAvQSTSb
	8Cf79CEKPAq/200Kz885Tn5o1Fgq4504wAiKka0Ut9f1+7osgWa3mkaxWrAy81D14jQkB80auD6zc
	xHsITe2HjymIDuWHMowxgyJlW02aLcdUpofDpU1m8qfKiyw23OMe6NYWNgMct58I2a6Da8KSxof6V
	RGCSGEEn4/mrHWxhefkGs/+tiTtt3UvA66cO2oBBz+ggxFGL55odaGXR3kCgbUaKuQ9DAYkbWGblR
	Gx1UtJO9v5RFrbaJD5Lp4QtaJTZsxnOJrTFrrF9IFe3tHjkoqNt50htG/us0QdF3BSA7M28Owabov
	RGj2r0cfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iShV4-0004oP-NZ; Thu, 07 Nov 2019 13:06:58 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iShUx-0004nP-Mk
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 13:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=31tH8imhyAu65xFR993XAkvnUKdU7S1CP1JaRPRgook=; b=eHLSutooyCgBVdcqx8X/iUgci
 3vaFocBU/uewl/9xNXdLiOB/QlBGLufMrd0QfKYhdBtIkRVOXog/tRqbx2cneXxaTlBWtqWefBu1c
 1P8uOu48nIvAIRYrl7zv84Ahnz1LJJTUDASqncItmJ9LWMPbq4/Py5qJWhVUj23PoV+Js=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iShUq-0004MO-V5; Thu, 07 Nov 2019 13:06:45 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 2584C27431AF; Thu,  7 Nov 2019 13:06:44 +0000 (GMT)
Date: Thu, 7 Nov 2019 13:06:44 +0000
From: Mark Brown <broonie@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] mfd: mfd-core: Honour Device Tree's request to
 disable a child-device
Message-ID: <20191107130644.GF6159@sirena.co.uk>
References: <20191107111950.1189-1-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20191107111950.1189-1-lee.jones@linaro.org>
X-Cookie: I've read SEVEN MILLION books!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_050651_758274_DFE8C663 
X-CRM114-Status: UNSURE (   7.96  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, Barry Song <Baohua.Song@csr.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6753779988355475202=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6753779988355475202==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b8GWCKCLzrXbuNet"
Content-Disposition: inline


--b8GWCKCLzrXbuNet
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 07, 2019 at 11:19:50AM +0000, Lee Jones wrote:
> Until now, MFD has assumed all child devices passed to it (via
> mfd_cells) are to be registered. It does not take into account
> requests from Device Tree and the like to disable child devices
> on a per-platform basis.

Reviewed-by: Mark Brown <broonie@kernel.org>

--b8GWCKCLzrXbuNet
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3EFuMACgkQJNaLcl1U
h9DOfgf1EfrL7iW8jYtk5Biqjwei6g5GDnp8DyidE4DXUkMjga1au5u+4zBxmuwG
fwKP2lcJOi5mFF71oN83bftFA2tQatKTqhQJH9sbd79xKpqknQNknos/38eZiikc
3mmCJ/lZZuX2HkL3Yyk8IN8JFCO8KayOp07AfBM/6jMpBXxJfuM+DOi5Xjajdf0r
VrOhwOp937yMePl8MwIB3l9F1xYB5Sf1CJkAOa85ir+reKIeQlwFOfN7bpkl6N3P
nGdvkRcaT1bcDTKmyuLrU9eLb9sPxD1lz9etFroyg3Cyjz8qU8cWXlBPpGuu39pi
D+SXLyMrkGYOUaWgEYmrzC2dH2vg
=n1Zs
-----END PGP SIGNATURE-----

--b8GWCKCLzrXbuNet--


--===============6753779988355475202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6753779988355475202==--

