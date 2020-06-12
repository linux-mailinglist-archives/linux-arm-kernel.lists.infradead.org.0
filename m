Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743C11F75AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 11:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I1glq2akBpePH6PwvvxoYYYEpSNDhfnypgKnEtnTB1k=; b=Ndqja8+xN0/fpx5mtPxpzzsP2
	7L6PSHq04torfKlVCXpeR9Y258Wj0xg94Tq/iSvWmS9Y6yDFoDNp51zVHbvEjBpY61ye459N63WiP
	TbSF8izOyeV0f2R+EuTuW462Z2u9lo21Aq909RF/LmI+mA/LlaIK+BlOUSrG1/ggErBwt5Xc9Gtbg
	losN43sE2XoQ56UuGj3FwE7QTzqwxSoagS0s6ps2983q1qHA62pF+/Nq/8vnDbeoWvZWyIvf3mgiq
	lKCHBTLEdgqrEk/gfDbBQjVJxWgvPbk963nhjuJrb8FdBBBU4ooVc/TrIqBsXQH33k7ZLJwtrEluc
	ygHm0H7TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfd1-0002dl-5n; Fri, 12 Jun 2020 09:05:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfcs-0002dG-Gp
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 09:05:27 +0000
Received: from localhost (p54b33104.dip0.t-ipconnect.de [84.179.49.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFBEF204EC;
 Fri, 12 Jun 2020 09:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591952725;
 bh=g+DVVhzwFZZP3ZF6+Ys3Gfc1NPeDfFWz7ksYnNkVqcM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lZBomTF/+JzcIRFMC0KDevuLux+uzv9UCX/MeSRsOpxkw3P5wfPuVc2sNezMgoA39
 M5N2uVcW7V5PIKI/dy6oPaqYR5EQpeArj+QLI96Vmj3Y+pIzBRbnlbrnZji5yLweNM
 Li2OJtGqgZEBvpQERXA6A4Fq4yiVuHfSW/Q4v02k=
Date: Fri, 12 Jun 2020 11:05:17 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612090517.GA3030@ninjato>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1591796802-23504-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_020526_582817_09E42B8C 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fugang Duan <B38611@freescale.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Gao Pan <b54642@freescale.com>, Oleksij Rempel <linux@rempel-privat.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, stable@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0656177965992034336=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0656177965992034336==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),

That code is disabled since 2011 (6d83f94db95c ("genirq: Disable the
SHIRQ_DEBUG call in request_threaded_irq for now"))? So, you had this
without fake injection, I assume?


--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7jRUkACgkQFA3kzBSg
KbZdkQ/+IZPMlXrFfdz5kWsASmwsLZaJa7dd9xv/IayrAehh/ERAm+m4BbpOUOI8
IuCPYKhvaiaBMek0qNpVXffcGHJwpRPbBuQNEk7FKR75YQtm8KbwZICDMzG0J9b9
n7D7/ZTEytKy24fYLQR0cZSc5xxqlsKtC9Hy0CPStkUtqojl/JK4M1DM4IzP0KG0
VXQmewDvW4ZIEC4FDFO4boEwo6YT5fgl0qmwmbyLRKwTozizjbbLKlXBUKtBB0op
2RtikZ5Go/BOkeIo5hHhMF5zY6W8fVDVHFQx0Ieq32rxxhTzS/JGy6oiUW4OOPCJ
9P7pFzjMOVav0owX6wk/bANz+4epMut/lB64Lv0T0Q2VDdfXzVq6ROJasZIdpSTF
jktWK1hPJUJ3MEOw/5BddvFiZ/RliEOCcD4fjYT6FohTC76DdUv2/oOUYEjLxaO4
AJlqGM/7RiEtSKD1GFkfPv/b9Tz64yl8MmnKhLvK49c2VVeVcvU6V4E2NmMjpdg8
qNVc+MZBzJKPCd5YaRBMLD8/bnaI3c94UvjFAYX2kL2n3cud9+qhTFNS+LXh4/z4
bt2E55+LUNiyt4vPv8anFZn/JGnf89SE8ftrFPYxltmfEQHg8XDg1jeS3NiofhO1
2OkgvR3UcYR+O/4nSlU97W40qyYijEdZigq20Cmn4Fa6ospa92Y=
=OepP
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--


--===============0656177965992034336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0656177965992034336==--

