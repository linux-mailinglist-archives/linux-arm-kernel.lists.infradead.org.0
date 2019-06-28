Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C3D5A0D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r5gXUOSvxGNlwP8728J2VhQlWAEKEQuJjU7BoXiKbEA=; b=ZwJ8nMoaLriaeD8povssdNU3s
	wuGvYtW8EhiWCBt0SGWF6AMkWhv1wHBsWlcK3q++8P/9IxylYN1nGJ/UUgDeWj4Ej0EdHGqBtqxuk
	NcLKPCf+2c11BAtk1xd8xm5fWh9OoEYPCO9ZpI3/s31H8beLzznd6zIknd7ZyHHf3vX3gRwT2bVvg
	OVXx/VMxewmAi1wZ4CPmVX1hFv634QjkAqFhf6GRfoPW9jGGuzXWntE+xXaf1gbj2uFBjLXSnSFhg
	XJP7OWa1yAYWlp/Om6gi5TUJFIMTF2BW/X8CkLGiSibVO9hp2Y1xCCCwJMR0AVeQ+HK/VRxEI5F7u
	VEkwg+MVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtjw-0001CC-HV; Fri, 28 Jun 2019 16:28:44 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtjR-00010q-Sq
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 16:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aiJProecfCoOFOmMzWWwfmO5TFzjKsVdJFvDr/zMYYo=; b=HBGZ+5qpNe4XDtk4pe9C5Q4z1
 5uaCDcqpoKb76uGbK0SMlo3mlLJGiIdvt73p4wedBNFu0A4+LMJdGnDslEkQBY3+FchygQrM9X5r3
 l7fn98KeEEsrcTVcf4Ue4NC+97J4U5bYAg7Svk9esf8foCGUGYAjsZHC8Pl6tFfkLBuMM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hgtjO-00075K-Pu; Fri, 28 Jun 2019 16:28:10 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 660E0440050; Fri, 28 Jun 2019 15:32:29 +0100 (BST)
Date: Fri, 28 Jun 2019 15:32:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 2/4] regulator: add support for the stm32-booster
Message-ID: <20190628143229.GI5379@sirena.org.uk>
References: <1561709289-11174-1-git-send-email-fabrice.gasnier@st.com>
 <1561709289-11174-3-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1561709289-11174-3-git-send-email-fabrice.gasnier@st.com>
X-Cookie: You need not be present to win.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_092814_080627_C6E97164 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7563693191556438458=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7563693191556438458==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+ZmrHH5cGjskQnY1"
Content-Disposition: inline


--+ZmrHH5cGjskQnY1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 28, 2019 at 10:08:07AM +0200, Fabrice Gasnier wrote:
> Add support for the 3.3V booster regulator embedded in stm32h7 and stm32m=
p1
> devices, that can be used to supply ADC analog input switches.
>=20
> This regulator is supplied by vdda. It's controlled by using SYSCFG:
> - STM32H7 has a unique register to set/clear the booster enable bit
> - STM32MP1 has separate set and clear registers to configure it.

This doesn't apply against current code, please check and resend.

--+ZmrHH5cGjskQnY1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0WJPwACgkQJNaLcl1U
h9CEYwf/S479W8LgrEaeHTTFG3CzS+H7XcqwsFf6ZMmLHg4A/fZD3UOrWsupb7XW
5Pn1ugPul+BpUs3M6dew3VdsiqOt/JWl3QC0KPKetya58X+NKnGTtnv+F17u5WyL
pv5f6/FzM3/rN6AhpDN3pbRxUbMj87J3dxVDS/rNh6IYiTjrkIvkXIWO1oiN84aD
KjarUQFfuqKmKDGsCvkzysX+e7npMdAyqntAdYJqtBVsUHPWDPygEfgedZlFjFUa
ktNcysf3sDZpFdDiqzCgLYA52R2rWjJGQbZN9TlMx5iK45iLVjGjTbf11arVCcUw
HT/WrvMzxZT3GvZsaV/sSCOpY7di8A==
=l6Rr
-----END PGP SIGNATURE-----

--+ZmrHH5cGjskQnY1--


--===============7563693191556438458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7563693191556438458==--

