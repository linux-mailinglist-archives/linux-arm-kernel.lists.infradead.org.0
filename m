Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9771F87FB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 11:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xZyhT2VmZ6voOUC8iqeNuM4tz8BxcKMiTXQherNakEw=; b=BXncHgEtigH0zT0vO4F23ctrD
	WR3lw/Sqkq2pk6x1dlTjPFAHLvhxTeiNF7W1MURcdTycCHQuzCswK7bMIv0LxBONvAYxPtw1Angdi
	lxtXzqZArAVUwjPll4H5PrXOKk/P6BYvkhfw17F8RcfN5UgmUXhyOtMNTvHM72qHea26jd9dtLxHL
	bMYLSVjtw7mf6BV5LTowIlRHs4EKhuJNiTN+YbFYN+neKe1C0Qz947UsEKby8vRPPns4ripCPKZfW
	oLgeloqmaM200HdD/jsAXAXCft9Jv4koJrMJAzHuK4nrLk2zohZ416PUedbcFBEeudnL+Sy+RNNL8
	zZtBrafhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkOgX-0002Dq-Iy; Sun, 14 Jun 2020 09:12:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkOgP-0002DG-U9
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 09:12:07 +0000
Received: from localhost (p5486c990.dip0.t-ipconnect.de [84.134.201.144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20578206B7;
 Sun, 14 Jun 2020 09:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592125925;
 bh=zcRl5dzioE4oiJSEfWn1q1ANQ0yluGl7UnG8UepPK3M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dnH6BCMCsUSd/1yD1/tbpoUBB2a9th87D7C1PQCnXFF/MU/DRwhAiUyYa3WJtYM+P
 +Wt/LJUp2S3R9qIVUF7HzdT6xl4Q+8SpIoPJqJ7t4VzX5hEEO5BLOr+3PNknK2h5KA
 bej8V5iTQqiwMl1LzXLhh8ezDj58ZNu5rpkQ8mHY=
Date: Sun, 14 Jun 2020 11:12:03 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
Subject: Re: [PATCH] [v3] i2c: imx-lpi2c: Fix runtime PM imbalance on error
Message-ID: <20200614091203.GC2878@kunai>
References: <20200601061640.27632-1-dinghao.liu@zju.edu.cn>
MIME-Version: 1.0
In-Reply-To: <20200601061640.27632-1-dinghao.liu@zju.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_021205_992138_BD8D5ADC 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fugang Duan <fugang.duan@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Markus Elfring <Markus.Elfring@web.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0226596775885475397=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0226596775885475397==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DSayHWYpDlRfCAAQ"
Content-Disposition: inline


--DSayHWYpDlRfCAAQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 01, 2020 at 02:16:40PM +0800, Dinghao Liu wrote:
> pm_runtime_get_sync() increments the runtime PM usage counter even
> the call returns an error code. Thus a corresponding decrement is
> needed on the error handling path to keep the counter balanced.

Can you point me to a discussion where it was decided that this is a
proper fix? I'd think we rather should fix pm_runtime_get_sync() but
maybe there are technical reasons against it.


--DSayHWYpDlRfCAAQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7l6eMACgkQFA3kzBSg
KbbomhAAsSDK9VozV4hQIjYDiVrG3P1dSoA0Nv0svNzvGBF3XDOvmYGFLM0oPPRA
y/AhGqxktdvOK1iCa3xvdgN9WW8VvVf/wPE3anOmQ6YF8t+K8YIWxpEq7S5UE7kX
qdKTwK6n5U6SCMPYRklp63lfCwxHxYOPz5LiF8Fahlm02xm5JTAR/DIZu97mFnMo
vjKgDY6c1VfSKDSAhOJJEMwcdbpeSotsAUBUPSj0qyFymLng3Mip0iiI30ubfQxh
DKimD5eJM7UXe3iuYw5mC6gXQX/ViWhpsAbP1otylqcMXEpebcPMdWGa7rr3R5yX
TWNdBsFH0P3KUvr7ULY/XPzvOMfbijZoGCkqxa8ExihJZiK2PiLhDaxETR7LxrXy
28eu3mH9KK45rraUO3I4fVosyqASJ1NbSCC5qg3ldu/pXnoS8jGZcpwgZwv0Udme
nwrjevSPmJ487gPkYaFlkJRm8kaJM0DOlWFgWdYnrDClG8hw/u1eJUnsEwe24A90
MmmiaUEwR0gMmAUIodwiTsqK9Y+8WYh6BuOEyw/8Cajq2iEYnYgDGm5I91y8hBvh
9t5I8CTQNM3EGGGjMm85fuZAddTk/O/AmA3kCMPbAoxX3bhjm71imaF8Q02xaxml
lVvEfC46bUpQKIXNK0ULE+i3aoJtk5eM8y6Lw6CzOrAd8tcViY4=
=PEkp
-----END PGP SIGNATURE-----

--DSayHWYpDlRfCAAQ--


--===============0226596775885475397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0226596775885475397==--

