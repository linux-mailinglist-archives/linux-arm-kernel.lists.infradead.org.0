Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9618E34D29
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FdUaOal50rJI0H7p8Zb+NG/yD39JKYfR18tr59XP/Lg=; b=EFo0KnQX9fM57fdpBBaCA+9+m
	xKP5e0HX9mD+wzzIodlR65q4SkEdaJGCEi+zeCHpv7HXlRnWs4q7/cuy/xb7wqBa+KuJEhaKik6eR
	umlYGY+AkUp5VHOQlHmIyoWCFxCjvDZEqlix9Yl8Y0wcgI4/cf3Qs/JbztmZ6LmRid1vhx/rvBAkG
	2Fa9lCrWKxfNmhiNQ+vba1qvl6hsT8iwQu0GK2RsiQfFNhhBeVhg2mq/IDcWTxyVLWr1ZtE5tlz10
	eMsrT+Wb4NbvQCxePL7TzJkxdpIJlYDii7ZNDO7iMhbZ2Bovfhl7DIWjPiDwm3xeGwxEr2h5wUmio
	fmrObtZOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCEH-0002Wu-PF; Tue, 04 Jun 2019 16:24:05 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCEA-0002WR-Vg
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JcEcpDR5uKgHjrAn4YTwm2KSjbi2uJPm6gUDrcVQKoA=; b=iTiK72xNAcrzdnGV8mn3aDso7
 DEkDn7CFwygLeAZcXvHpJmGXbjUsY4M3JU1xDdtUaaiLvY528aU6ab7hzLlNmZuRbkiDnvybeI1Qn
 QoHl4K4xQYfjNIpKGM/V3aN4mcjAhBB+Kpi5DDYiaHAo4qu7bTIbuEBMhsCxp+JSjUdIk=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hYCE7-0006OM-8t; Tue, 04 Jun 2019 16:23:55 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id BC6E1440046; Tue,  4 Jun 2019 17:23:53 +0100 (BST)
Date: Tue, 4 Jun 2019 17:23:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: next/master boot: 257 boots: 11 failed, 229 passed with 16
 offline, 1 conflict (next-20190604)
Message-ID: <20190604162353.GJ2456@sirena.org.uk>
References: <5cf685d0.1c69fb81.e3d89.43ae@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5cf685d0.1c69fb81.e3d89.43ae@mx.google.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_092359_213598_6CEFAE9B 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7191685414016622897=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7191685414016622897==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ihETVmeDfwOC2qSl"
Content-Disposition: inline


--ihETVmeDfwOC2qSl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 04, 2019 at 07:53:04AM -0700, kernelci.org bot wrote:

The past week of -next has been failing to boot on the h2 and h3 plus
boards:

>     sunxi_defconfig:
>         gcc-8:
>           sun8i-h2-plus-libretech-all-h3-cc:
>               lab-baylibre: failing since 7 days (last pass: next-20190523 - first fail: next-20190528)
>           sun8i-h3-libretech-all-h3-cc:
>               lab-baylibre: failing since 7 days (last pass: next-20190524 - first fail: next-20190528)

In both cases it seems like it boots quite a way through but hangs at
some point trying to get userspace:

    https://kernelci.org/boot/id/5cf6569859b5149b53d514fd/
    https://kernelci.org/boot/id/5cf6569959b5149b53d514fe/

multi_v7_defconfig comes up fine on those systems, looking at the boot
reports for them it jumps out at me that the regulators never appear and
things like MMC that use them don't either:

    https://kernelci.org/boot/id/5cf6550659b514995fd51538/

--ihETVmeDfwOC2qSl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz2mxgACgkQJNaLcl1U
h9Ddhwf/SLih1gCHTGrvjYaoyeL4fpvDoxfbhQ4TV0UAvoZSp+hQUkbGIe632vmz
6QUmtKaep4t91JFDk8qzEBLceLdJ94UjuBuotyPTvdnsNZE+tVA0h3mUHlWqufLv
FbEQIU6/IRBxdMCe2ypKzURObf2rXmgXj0FiLfjJhuq2zqWtLbBG7UZb7RJIbGpP
4+w3iLT5n0XroFrcswDsuwoBdZ9gDEyX4JSb1FiqEIKhy5w46NUQNSKujDHPnSdm
EbXuRPPGcOX98fR7KVvvN1RnqZeIrt8AY2w/kvpnoMA6ILYvTVVbD6Lw79LIsVH+
LM7eTii1ZUuc5V6GOlTjkf6Ez0P2Fg==
=KVlZ
-----END PGP SIGNATURE-----

--ihETVmeDfwOC2qSl--


--===============7191685414016622897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7191685414016622897==--

