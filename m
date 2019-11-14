Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9306FC7B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:33:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vS311MbskSoc4EA8bH285d4tna+JnwEOTSd6nRnhSCg=; b=NCM6fq493jmUVx/L4aHS9R5Ol
	8mG+1UK7kHR9b4S+KbzibDfcyJW/h+KyjMPW9bMBXWUkC3gYEKdj9I8ScSq/KSJ70Ggyj73Zd2HbT
	EQ56gIxMMAftRuEzis3/mk1oKhJiJGIfkMPC1jBi6GKyj23/Mr48fT9B9eXlbXsL1tI6DpNsAlvXs
	0BYeOJNG3VGSbgtQ2x2RSqQ8oefsD3dQC2hd9PuzxA1BM2or1rouJWqAsaGSoZRbMPPVYJGHl6KWr
	YBpfZcDtdqi2H+7jrtUJ60EBTyLZN0hhvBE8QqQs6r8V6xz/raQzxBWcj1qyC20lfX+Pod8/P7ENR
	7yrCZEbAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFFt-00045g-LD; Thu, 14 Nov 2019 13:33:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFFj-00044b-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 13:33:40 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73364206DA;
 Thu, 14 Nov 2019 13:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573738418;
 bh=ygzFe5vChXq5wl0QvvRF0Eo8W1LO0yicEOlA6tLXLdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wX4quWK7cO7m4Jyt7GwynG0wHF8+0SjDsZVUZ56yGTGcA34gqScBqbTxP5OsWKTrw
 XSvT3heD9a/jvZ/ldsBPaVlI2miUZmunMd0V68G05exEMxQA8Q+rckGYfu4TgVU6Lc
 HUK/zYNW1BDqEUF//CG7QkVuOnIIr/xBLsaYQwa0=
Date: Thu, 14 Nov 2019 14:33:35 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: Enable USB 3.0 host for
 Beelink GS1 and Tanix TX6
Message-ID: <20191114133335.GP4345@gilmour.lan>
References: <20191114102541.27361-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191114102541.27361-1-peron.clem@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_053339_115751_911F77FF 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1802144096520720254=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1802144096520720254==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="skNneT8yDpR3Aw11"
Content-Disposition: inline


--skNneT8yDpR3Aw11
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 14, 2019 at 11:25:41AM +0100, Cl=E9ment P=E9ron wrote:
> Enable USB 3.0 phy and host controller.
>
> VBUS is directly connected to DCIN 5V and doesn't
> require to be switched on.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Queued for 5.6, thanks!
Maxime

--skNneT8yDpR3Aw11
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXc1XrgAKCRDj7w1vZxhR
xfWaAP9GhZ+LI5gvY7lFBH/oAypeCSJ7h2h3Qr+sThPaYvJl9AEA+XwhXEYwFXH8
nxlj+PJMWgRGUn/QqPcvy8EXZTrY0AY=
=HhBK
-----END PGP SIGNATURE-----

--skNneT8yDpR3Aw11--


--===============1802144096520720254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1802144096520720254==--

