Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AF41B8DAF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 09:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MGXgrmKUift46Sui1lZZRONpwWK6kWHSYxVbRkqSJDk=; b=ks+LYWSIzd+Rm31i/dgGfQ7de
	n5jPokl31a+M+I7qMg1RgFa/LQU3sb9RDTstPbIXYqG3d7aIbfSGlxbmH7oP5NVycrFMpL23Bo+2i
	0ZADi76i5rvBNKJQGjZ3j0ygV6tFfrY3OqEPJDhTolByhAEec77dwKk7i0qUJ/4kpMy5PiXaSJzXY
	cCcPWLrZwOTIQmBN3cfNY9XpuULOJgzroIACn7bEpSFVts49MCwFj3YK04QST0DNNDge4AWH8m6B0
	eyrlw0djI6xdxRYgJkVGS6/SipoLR3YQxtTKp93Swb8CNb5Ara+zegPapMtMWh7aD7fJtSSAPreEd
	MBuaoR3Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSc7Y-0004Mp-Of; Sun, 26 Apr 2020 07:54:36 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSc7O-0004Le-Ji
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 07:54:27 +0000
Received: from localhost (p54B33954.dip0.t-ipconnect.de [84.179.57.84])
 by pokefinder.org (Postfix) with ESMTPSA id DADC22C01E8;
 Sun, 26 Apr 2020 09:54:25 +0200 (CEST)
Date: Sun, 26 Apr 2020 09:54:25 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH v3 2/2] i2c: i2c-stm32f7: allows for any bus frequency
Message-ID: <20200426075425.GE1262@kunai>
References: <1587394677-6872-1-git-send-email-alain.volmat@st.com>
 <1587394677-6872-3-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1587394677-6872-3-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_005426_796145_B2FA02BF 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: multipart/mixed; boundary="===============7602666419996769588=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7602666419996769588==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G6nVm6DDWH/FONJq"
Content-Disposition: inline


--G6nVm6DDWH/FONJq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 04:57:57PM +0200, Alain Volmat wrote:
> Do not limitate to the 3 (100KHz, 400KHz, 1MHz) bus frequency but
> instead allows any frequency (if it matches timing requirements).
> Depending on the requested frequency, use the spec data from either
> Standard, Fast or Fast Plus mode.
>=20
> Hardcoding of min/max bus frequencies is removed and is instead computed.
>=20
> The driver do not use anymore speed identifier but instead handle
> directly the frequency and figure out the spec data (necessary
> for the computation of the timing register) based on the frequency.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Fixed this checkpatch CHECK:

CHECK: Macro argument 'rate' may be better as '(rate)' to avoid precedence =
issues
#133: FILE: drivers/i2c/busses/i2c-stm32f7.c:413:
+#define	RATE_MIN(rate)	(rate * 8 / 10)

and applied to for-next.

If you could drop the 'i2c-' prefix in $subject, that would save me one
step.

Thanks!


--G6nVm6DDWH/FONJq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6lPjEACgkQFA3kzBSg
KbZ32A//bNuNc1m8uNO3qX4GtIk7gvqICXMOsqW1gDL2FW0PlxR1D4J0jiLwYQQw
PJ+FnD0Enp0TP7IgQ43/gZiZVhqJ0+vnzOYejWHcWM6PXggKVEp2R6+3GxQqcmHt
55tl6t+qDHp4gcRNq0TAT025GnKF8DtiCx35bIVrb5i4mTE18ckk4B5VsrTrhuEk
t6E8aLRADTKpcM3F2FD7jc9S2KXHScNQGYAiYSAQb8eBi1f2kloG5q36lua/MenA
AF/BApIxIYcaKYicSxWsOG3ngQV5EUNUKCjlPAnIYJzjhgTjzjXsBLE/G6C0q/Gb
QzUhobIeFEuVbFNduir0BSF+1Aj9SeIxx5Q83Kh8QgG4bDrpBOLhvkO/ZvXvF+II
9DNyPZSQdrWjB6PWsR0fiJVPtlHWCxnv0Oq0yl182gtNudyqAXMLKl3r0w6Dyyin
20Rl5Idx5NdcBY0iSuuk29XwNVb/7tO4fiTGsUvt6c/aXyCMsm+v7nTXGxoTpP63
/x3ViqpewKGWamsIrMNTYJtFPhLa0AWyl4DLalF6/3TaC3PCJupYXR30e6+CNahk
EFE6tJabxRiQ+4KRosTnWNjgYvyylfO3zt/XnHV/pPDvDR8JBu9hr58UlLzGM3/b
WnzyHk67GbcvggNGpi5qzZQd37P3qSppxpG6u9Jz6Uj4Tv0RWQg=
=TPJd
-----END PGP SIGNATURE-----

--G6nVm6DDWH/FONJq--


--===============7602666419996769588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7602666419996769588==--

