Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A2119F169
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wu1PZqoHbSvydn1n0huEZJpbcPeNH0pU7VLPX9i6TP4=; b=LJklR2H4nvAY2tbVk7LyNQD28
	088omzA9tC1cen/57R0uui6STsARaKwSyKhZ/1X2AxXAtBbuPJnzzLliSefV9Xvb46D7ds60UjX9k
	F6+5DKuxXf+w2VTY1WUaXJg/O/iEdaiH9o415blTCezqIF6Z+vja0kHTlK5OvAEEndq9hCj8IYAN8
	AI83rK8fh98zyRKUFmAbZeBh04CLbZkjtHpvKyXWrCb3HgHziVJn0jPJiz2uMTe1bb1TFWHWa6Eum
	lWQIRy5u0ATxCakpR9GOvpAhxbZlhPJHXHVe+RFW/G4MU8nl+LoKAo8/Y/INko9RB/2Djp83y3LTL
	cVwp2fTOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMwE-0004pk-M1; Mon, 06 Apr 2020 08:16:58 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMw4-0004pQ-Ow
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:16:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id E2A195C0135;
 Mon,  6 Apr 2020 04:16:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 06 Apr 2020 04:16:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=CF2JGTX2lmYm+0Luc5WMUbWddfh
 IiV6ykRb8Y5fDHqM=; b=YrgcxlpEV+FnnI5895p6Lwb9khHPqURxLlAO7YElv3j
 gZkCFfOzNqzQ1iFn7hMkzeWh4j05kYn4uwF6NpsLMU0tolXDG48A48l80mb6LTyo
 al8RDFrCul/dHpqZkQEW4fBmpLP59xpW4KYJYcRWMIS+BBEJLrQqGLA7vYulaJlg
 9E+SNBOlXLr96ngSsD/AdORiLsx9nxrPL+/9IMOuIOYonKHd5AuAzigFPv2u2+dx
 RtT55/n8ONl2k9PiPuZhVXxVwihUC0f2ew4ppfotBwbeBjNIS/W+jbSuzlzFbQV8
 UL/3F6NoTLW3ZyA3TF8mTrFcov6tF5BTCMwHFSBnK1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=CF2JGT
 X2lmYm+0Luc5WMUbWddfhIiV6ykRb8Y5fDHqM=; b=Va1mcUBGzXRRkRTHUPmoKN
 nmPshwoihcqx6sFvYm0G5vh1JoEw+vxShJ7Ob9T8SXla0+5dvFAxOEJ6rjquqNHQ
 FhTxJM5wDMpu18cOCiEe62RnjkjnEtxpFZR0J5mYH8xjuVzCj/JQIPu8nMklRfUU
 vBQYiS9TMdgPz3Ly5iz0djp7nYuJ6wRD/i6SjXkhQtZhNw/hTh9IncjjeUfZ8jDX
 OSTmUTHDMUYuE5t5kImLLtBn3Fy6k+JE0shwQ+F+YYb9nwtqdvzjyxNE75Y6RsiW
 N9/iUK3NieCEh+xmckgdyTjXQAD81TXNLiHgxslNmxkJaTKSjos0JQXKQnSlL+3w
 ==
X-ME-Sender: <xms:b-WKXkOQ3NPMe67cT8I1n7HOKrYgwt99J-uEztzpNXZT05TlGWFH9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefgddtfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:b-WKXnRoyyMh9zzFKwWagheeuHcMN_LeHC_v8P7ickj-UfoQS1Axvg>
 <xmx:b-WKXs5TWZo9U2buvYAIKLYpiC-G_gH5iOaCb1aj0bxketnUxShoFA>
 <xmx:b-WKXp2BgChCwiv8M42X7H-Sio_qUYA3z5rAXLcixdydOFA3fNUeyA>
 <xmx:b-WKXsxndKMi8PyqnHrT_unl-ZjzMV9478ouGnnOphKYRDNk63HMbA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8486C306D37B;
 Mon,  6 Apr 2020 04:16:47 -0400 (EDT)
Date: Mon, 6 Apr 2020 10:16:46 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 5/7] arm64: configs: Enable sun50i cpufreq nvmem
Message-ID: <20200406081646.yduso2velulbedku@gilmour.lan>
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200405173601.24331-6-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200405173601.24331-6-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_011648_953401_E73E5195 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1958643815463705711=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1958643815463705711==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d3h3r5s2altjvdpi"
Content-Disposition: inline


--d3h3r5s2altjvdpi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 05, 2020 at 07:35:59PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 needs this driver to be able to get
> the correct speed_bin required for DVFS.
>
> Enable this option in arm64 defconfig.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

In general, it's better to put anything in arm64 defconfig as a
module, this defconfig is used by everyone.

Maxime

--d3h3r5s2altjvdpi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXorlbgAKCRDj7w1vZxhR
xXYHAQCYFche+fruhs7HL9PcB8Ws7GcpaL1wGd0FzELeszvbbQEA4PpN1F2lYa81
QGyoZJ0c34qJBd5u34lOzcl+NB1frgU=
=t4/j
-----END PGP SIGNATURE-----

--d3h3r5s2altjvdpi--


--===============1958643815463705711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1958643815463705711==--

