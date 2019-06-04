Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6E934045
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hZOR/JcT36V4hTItlyZneP1ZilDQ0lPNFIZVOV+9usc=; b=t5OpwN2Y98t2iSrxFI3vq1mtk
	d8wapuOXu2N7rXu/pUSLYaCPkZNtipGWD7bpNIhHE7NgPZ/wV4pJ4y13PFsXSke1qnvZJOKEQoJNj
	pLMd1f2mWjqYZR7panmkoa8T5RBucSdbJ/mCU2wE6jyWr+rfvtyhJJfmwuy1IbFpCEB1uzYEVSu+r
	omJdimd7s32iPzyUQKHpiRxy8XprKnFugD8aPO3gB9+dhigVSv2KaMqdD9qaOZlvhtkww9QCHjqTC
	eZ6A4wxtBQU3+wVQfMrczmI2AYEGtb+zBgiyl0nn9PhkSGs8OjcdFXTHeHBbIL+w1wJkWVgIaKKu+
	TjVa/pvog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3yI-0004Re-8G; Tue, 04 Jun 2019 07:35:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3y9-0004Mp-Fu
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:34:55 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 803FD20010;
 Tue,  4 Jun 2019 07:34:43 +0000 (UTC)
Date: Tue, 4 Jun 2019 09:34:43 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v4 1/9] ASoC: sun4i-i2s: Fix sun8i tx channel offset mask
Message-ID: <20190604073443.cnnqd7ucbaehxdvj@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-2-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190603174735.21002-2-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_003453_692436_CC54B1D6 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0456446494264465470=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0456446494264465470==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oguexniktnsgbuau"
Content-Disposition: inline


--oguexniktnsgbuau
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 07:47:27PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Although not causing any noticeable issues, the mask for the
> channel offset is covering too many bits.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--oguexniktnsgbuau
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPYfEwAKCRDj7w1vZxhR
xWTgAP46CpvpBxgUOlrtYU+GAVae+CKXAiXNKOPwVAQgkXV9YwEA1KFPel403xOw
LGVrq+HZ5ELbkBkQpaqRXjEtJjf3eAE=
=n1Fa
-----END PGP SIGNATURE-----

--oguexniktnsgbuau--


--===============0456446494264465470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0456446494264465470==--

