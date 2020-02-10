Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9893E1582FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:51:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=80RIjnqULSq+ywIry4ySTcxzZBBUx4xlQgd5u7N38wM=; b=EaEzxLq24iISl/0u/EC7kvLFJ
	QLBTYYikb4OxYqxxY4mLk6pqOR/DdwsVk2rFjnyJjhBNrj+kXVFI9h82ak3BbIiMq4+fyso66M3Up
	140GL7bo025cNcD68Cqo7F5taeMKUqHG35LP1PYaP9y0r1mS+G0aSlsjxHSmc1bmYEDdH6SVrviGk
	g5KDtn36KhGv4PRDcVX9nlwRJXytxqTEt8QFOQ+hIaqoKOiTnBhTGYTLF1S4cMuGVGKhMlfqtUQl8
	xTINwO+sudR+ZvdepnJB+8Y08om1E97QSOiJp9BWQtEwF+f0U/9jhvJKXVuSxXHyJ7j3Rfg2niaiX
	B3UuFAMKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1E9d-0005ob-9H; Mon, 10 Feb 2020 18:51:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1E9V-0005i4-3D
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:51:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 175711FB;
 Mon, 10 Feb 2020 10:51:23 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 913B43F68F;
 Mon, 10 Feb 2020 10:51:22 -0800 (PST)
Date: Mon, 10 Feb 2020 18:51:21 +0000
From: Mark Brown <broonie@kernel.org>
To: Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: Re: [PATCH] ASoC: MT6660 update to 1.0.8_G
Message-ID: <20200210185121.GC14166@sirena.org.uk>
References: <1580787697-3041-1-git-send-email-richtek.jeff.chang@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1580787697-3041-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Cookie: No lifeguard on duty.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_105125_175219_670E6C46 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, jeff_chang@richtek.com, matthias.bgg@gmail.com,
 perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2028717341713768270=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2028717341713768270==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8X7/QrJGcKSMr1RN"
Content-Disposition: inline


--8X7/QrJGcKSMr1RN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 04, 2020 at 11:41:37AM +0800, Jeff Chang wrote:
> From: Jeff Chang <jeff_chang@richtek.com>
>=20
> 1. add parsing register initial table via device tree.
> 2. add applying initial register value function at component driver.

OK, so there's still a problem with the whole concept of putting
"initial register settings" in the device tree - this is clearly not
idiomatic for an ASoC driver.  If there are machine specific settings
that need to be done unconditionally (eg, values controlled by external
passive components) there should be specific properties for them.  If
there are runtime options these should be normal ALSA controls with the
default values being whatever the hardware defaults are.  If there are
things that should just always be set no matter what then they should
just be hard coded into the driver.

--8X7/QrJGcKSMr1RN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5BpigACgkQJNaLcl1U
h9BiyAf/QaAXZr0p0rJqLpG7vmgoly1T9FBkezqmJEiv3P33z9JTA42AEA+m+4/+
P4rXU6XE8hpiODCHfl8xxLY3VzihTReH7vIZf3BsGdsKNxOGTv/srMC0GxLynuXt
aVgdqh/a1iVFpHlExbNepcncR7OD96NAQT90Qg25TkDEGQAKcX6KxFtD7xshp/jd
dx6o0pSY4sypcaPDro+KSOzXDNdRv9tF0/mDKCY+nMpkX6mtFHVhJyp/W3J6bMDS
hdaaLnWJ5qLwJa9d2wmuu0Mhgf8dcftSBHOHa1jPVYhloldoFGZTPtAa0BQdFH/z
kGDUjJRGtISjBD+mJLho5/CiPPhPFg==
=WFJc
-----END PGP SIGNATURE-----

--8X7/QrJGcKSMr1RN--


--===============2028717341713768270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2028717341713768270==--

