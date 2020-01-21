Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B0014392E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:11:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RthSsx/LXI0lZgmqnVu9KSOYC9rdY34H/k8dsxL7VeM=; b=vDrrep2YIUqekzn+sle2OrciF
	Jbbz412tH9wlDenJHv2Aq3ivfI51JRkAa92FHptb7GMBHX/fpzgJVgh+pgepBZHkBVAogEwS9AOeP
	KThC8a+STV60oD6D/NayoJjbUdXGAxEKEmn3Z3ARgnGicaoiIwVnDfqguy2fDDIRCArnXIJ8puTea
	8kO+5GGCOhjkN1DLdZUbqBrQNA4+2fRBeJfKl9A35meaeZFGWcofAb5nV/8qBdRWkZRSer4kyHo+n
	0cnl2dGHQMf9ehsv5S32wWIcctIfg5YwPvjG2pYFAqWovmzNXtasKSwC/oI2lUs0iy6x2k0Z2zpuX
	pIQwZ8AZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpYp-0007M4-Sz; Tue, 21 Jan 2020 09:10:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpYL-00078m-BA
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:10:34 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76AE320882;
 Tue, 21 Jan 2020 09:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597828;
 bh=oS2a0PPe6kpJPi7wDz0yMJ3mDjuHWrwzkwKrrR93Xr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oFz9va9wlhCk5yN2JM6uwXVmE5ZUaPoSTQHNcRAe3qJjq79P9eXtNvwvbardESNFt
 Y+1AVBzXwwnt80j5FRRCSBycIoiTNaXHNAntaM4g8iUR55LHYvVHWp0v9WGrHVoPue
 vvHJ80G/cxYcaV6guJb4n+rabSaTDP6cSwvcB/6A=
Date: Tue, 21 Jan 2020 10:10:26 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Emmanuel Vadot <manu@freebsd.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Add gpio bank supply for
 A64-Olinuxino
Message-ID: <20200121091026.qfj2fv47f24wt2tp@gilmour.lan>
References: <20200118152459.17199-1-manu@FreeBSD.Org>
MIME-Version: 1.0
In-Reply-To: <20200118152459.17199-1-manu@FreeBSD.Org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_011029_404093_52F4763D 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============0182036525903958708=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0182036525903958708==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2qkyp7mkzww2atmw"
Content-Disposition: inline


--2qkyp7mkzww2atmw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Jan 18, 2020 at 04:24:59PM +0100, Emmanuel Vadot wrote:
> From: Emmanuel Vadot <manu@freebsd.org>
>
> Add the regulators for each bank on this boards.
> For VCC-PL only add a comment on what regulator is used. We cannot add
> the property without causing a circular dependency as the PL pins are
> used to talk to the PMIC.
>
> Signed-off-by: Emmanuel Vadot <manu@freebsd.org>

It seems that you sent it twice?

I applied the second. It was not applying properly though, make sure
to base your patches on next.

Maxime

--2qkyp7mkzww2atmw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXibAAgAKCRDj7w1vZxhR
xTKtAQCXbI0+R1FPufKESo54exnXgFUfT1peFCWKaDwD+UdsIgD/aaiSWB+xMRBa
tZKKbksmnRwe+WWrnbIGWf1XgYjtnAc=
=UeLO
-----END PGP SIGNATURE-----

--2qkyp7mkzww2atmw--


--===============0182036525903958708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0182036525903958708==--

