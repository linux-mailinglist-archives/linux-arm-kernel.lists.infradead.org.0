Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8841438F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:04:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VdLUiIOQQTcdZTmy3HtVs4+HJvjnq4q4GMrDw1MU3MI=; b=MuCjv0kfzYwtfUTGbEj6+KKua
	vgGq07qCnEjiwg8Tyy+fODWO6VkptQjUjiauxgu7c6haJoBDD3F8DZcg00EjdmungX2BCF5njHkJO
	M2w1joTAHQn3kzVbXb1FfX0XK5LSoJqlGkxJjCA0EHPuak32TzabT9edmBLfEflFmGWPJ3ex8Xwq2
	sCZWvTed9Qqoy4IhtW59MqVd6Ux1Y5VC560g1bIr/GCrMmnzfk5JX8lcuOMqxbM2S4Hj4KhsSVxqJ
	e+kDT5c4SsbxqZhPQqx4bJmdMJrFjzre1WopRwFQy/o6iuhakwCadB97uPXFCFTdAAbIzGHW0pTGf
	mMBl6DgrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpSM-0001dK-3k; Tue, 21 Jan 2020 09:04:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpS6-0001bB-VT
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:04:08 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B318217F4;
 Tue, 21 Jan 2020 09:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597441;
 bh=0H0bh1Jo/UYT268NBP9XJ/xrV/lNAdl64vvZCHXIpWU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1KWMsrnqW/cswbFn9+0WcD81L2LSztxIrowKZN9mQBc0XgGK/rtvvFp/2lwyIlSAF
 RakyBoq4cYNF1jTtQNoy90XRMpcpVgIkQc48g4BTNIAHVWjeSYFi+OM+SCpD+XZlSJ
 W4vL7hdPmGsfFRhiU9tX/JPKW9JPfX/Tg/ztA340=
Date: Tue, 21 Jan 2020 10:03:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 1/9] arm64: dts: allwinner: Enable button wakeup on
 Orange Pi PC2
Message-ID: <20200121090358.6mbrbhabtg6gkhpx@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010403_041725_D631DC48 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3366569981151055079=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3366569981151055079==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c7ftjrc3bbfqytxr"
Content-Disposition: inline


--c7ftjrc3bbfqytxr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:30:56AM -0600, Samuel Holland wrote:
> The Orange Pi PC2 features a GPIO button. As the button is connected to
> Port L (pin PL3), it can be used as a wakeup source. Enable this.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--c7ftjrc3bbfqytxr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia+fgAKCRDj7w1vZxhR
xRkVAP943gYCXiKg93jTbLbHeiSAWTJCK7Vv7DiW+3NyES0zmQD+OHcexubzHhjo
SLUbywQHwdDXWublL3xrFtyl1lb0WAo=
=+s0l
-----END PGP SIGNATURE-----

--c7ftjrc3bbfqytxr--


--===============3366569981151055079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3366569981151055079==--

