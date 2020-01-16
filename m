Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC7113D9E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:27:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R4ZhxC7lh4pa09u9fGjLmnIQ+lfKrZQcEd7/pVkGuv4=; b=k7b150usa4o+BGB58Ip4/FY5E
	spJE/PuyIuxXfQ9Si4zug+S91y+/7GERJsCIWBkkp96L0ofC80w2b3DL5+wH80TNxi6YYP99gFJa/
	D3ZcOHk7zerDReGJRobaC7T5DkNrrUMJq1/aHT6qKDRcpdGUZrUngAyqKrzEXuix0oVK0t6LTmCrk
	FCw7TQuixRYGQpoz46RIYrf/SGwDwyGa9S25LupxyGwGfXBs+6/IrGm5pAxZiVBAl1RTX4bpdLt/u
	U5StsloyiboPaUNZH4IOHVjxacqBGIil+VHSeRVPRAXJaV1nXejkOq2piukpGlYUdUUfv4gmlL3je
	Xmd9tJj7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4F0-0005vh-6j; Thu, 16 Jan 2020 12:27:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4Eq-0005ui-4F
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:27:08 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7E2920748;
 Thu, 16 Jan 2020 12:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579177623;
 bh=hRJQLOPnPVf/2ivPsnIuDnw9i76csHuBPFFx5CnsSco=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aWZE+aaXhLkjD86rfTa/9opKEj0Uc9cyLFhmZff/7iMWkDj9IsHhOeXXjfbg6dg88
 1DVaZHulML9LjANNOADwJkRbPuAEeAFznfmQp1RBQEUGlvHWiW+54HkLfIeMoMQLeu
 RzoOWaKr0DWfDCJinWfilv7BYFQO+QGmsWWCYW5Y=
Date: Thu, 16 Jan 2020 13:27:00 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/3] arm64: dts: allwinner: h6: tanix-tx6: enable emmc
Message-ID: <20200116122700.2wy2wrgvmyvudj2t@gilmour.lan>
References: <20200115193441.172902-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200115193441.172902-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_042704_183459_1FBC7016 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9006211427875513690=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9006211427875513690==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cgkvlw4sxymxgfmc"
Content-Disposition: inline


--cgkvlw4sxymxgfmc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jernej,

On Wed, Jan 15, 2020 at 08:34:41PM +0100, Jernej Skrabec wrote:
> Tanix TX6 has 32 GiB eMMC. Add a node for it.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Did you forget to send the other two patches?

Maxime

--cgkvlw4sxymxgfmc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiBWlAAKCRDj7w1vZxhR
xVlGAQD3brgXo3D11jUsw56mmFTRmlfMXqWKJQmp0FrlJWAUHgEAm9wCD/aZFlvh
k3tke8kPmz0qp0TKQzSu2UBWG7KgZwI=
=zeNt
-----END PGP SIGNATURE-----

--cgkvlw4sxymxgfmc--


--===============9006211427875513690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9006211427875513690==--

