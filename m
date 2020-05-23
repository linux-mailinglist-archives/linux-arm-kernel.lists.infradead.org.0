Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090A81DF6BE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 12:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KINGyQtghVZGCUV7Z2XBpywt8rxGsnOg/e8OiKmdAGI=; b=nZ13CZE0eky2K3J2gyDgHyihT
	cdtnEhNACOwNwkEvSvhREVm9ZAm6k8wGJ2jckP7UAtMjUuRlFJNuM8endWpYzfGj0ZYN6tiiHiIXA
	rwq2WYx1IJ3WgtSHI1/VEtse0Sw8OfIPIRJY9bn0vQGLqzhx91zE/5xpYd1DifgXcJHoF8iA+Euot
	UAeaaovootVQOEiPjW3kV0Rnl8rmajiiElajNz9xcowWV8w0uCyA095fn/u2atVJa+VHqGX8qpFIG
	F1Ak/PtQXie25NRUHKNwLmD+g8eTcg8Nxw1CrY0mzBZbpz5m1KQEC/hKLn4llPSTMMX+cgmFBDlpa
	OV/5jZ5JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcRiP-0003XQ-UD; Sat, 23 May 2020 10:49:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcRiH-0003Wo-2Y
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 10:49:10 +0000
Received: from localhost (p5486c962.dip0.t-ipconnect.de [84.134.201.98])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 114212071C;
 Sat, 23 May 2020 10:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590230948;
 bh=PwN7sbTfwjxokBMf2pQ6vdFoh1qOEfNMu3Sb2acCJLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yqU8BxaXnxk5yfChKX00KjJi6wXK8AyKSi9Ck6/1vjD8GC+44IkzsTpsLfB5cru41
 ub+p9rhbNL/pla+G9KANF73zBDVhc2ZRXUsD5TAadIgiaJecjat+okf4qH2DodX98j
 1DO2+VcMYfxk9RmNAQk8s3A7NVskaf7RnGSpKIIk=
Date: Sat, 23 May 2020 12:49:05 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH 2/4] i2c: addition of client reg/unreg callbacks
Message-ID: <20200523104905.GC3459@ninjato>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
 <1588657871-14747-3-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1588657871-14747-3-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_034909_135144_C8920576 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5103040955717678255=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5103040955717678255==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O3RTKUHj+75w1tg5"
Content-Disposition: inline


--O3RTKUHj+75w1tg5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 05, 2020 at 07:51:09AM +0200, Alain Volmat wrote:
> Addition of two callbacks reg_client and unreg_client that can be
> implemented by adapter drivers in order to take action whenever a
> client is being registered to it.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Sorry, but NACK. After years of work, we just recently got rid of attach
and detach callbacks. They were abused in quite a lot of ways. I think
we can find other solutions to what you need them for. Let's move the
discussion to patch 4.


--O3RTKUHj+75w1tg5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7I/6EACgkQFA3kzBSg
KbY8sw//eYS5M5Hm0dRPhWdFSAPvlR6gpu7Lij+OZODRclsET4UCmF1C4JPJEivx
XVs+jQuhJ+IEt0g8Uxp4xFVyCsPXH8Ryf/crCWEFuspbxsB8EK7CIV3dsPIsl2xQ
zlH+nE53j1osvtMm0eKPjQXv75/nDrjePqqz6FIq8DHcIkj5OJBFvCsP7eIaADXM
w72rJ9kGijPvwXgtigtDmD4wNuK46yRY1PkKH94f9t8qE3HbYULCu5UvkhjhrvPs
ZwaE0zUcquaYiMFj2zn9FYIBVceFKSEvajYwGKr2cMWYotdwZwf4SgKRKMO7AgWE
EEYdU9V/vIfHXMpEMFzMtv2qznWc1EHQBFQ6tk3El15KCc/DjGc2QywOQWaOJG2H
Cn/FOePVGd7bBtJSyaC+xxee6gShx01q6RhfeOI7GyBkAIt8pqJtKD9XeLeSg3zl
3Zjs1F5xZ2kYoogjgOJc+y8cb5Ht+STS84CfE2ZcbJw14kx4WYsIlckkNVlLS+vW
+AfUUX5pmB44cW304TPZdj9AN2wpKsKb5qpMOE8Grx8S3sJ/5sGAjhkjyp8o865b
bdTfS68nBRj4GpDQAzO7ugyfffPABndGm89RDrlFCeqJIn5WG3U2uOVAr3SCYhLX
nt6VRQ/O5/uE1pbDlafNleBv4NV8rzXC++jUyRGQqjT04vL7rfc=
=OrqO
-----END PGP SIGNATURE-----

--O3RTKUHj+75w1tg5--


--===============5103040955717678255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5103040955717678255==--

