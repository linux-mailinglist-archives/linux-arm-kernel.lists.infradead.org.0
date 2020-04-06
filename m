Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F21B19F151
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aJUYYATU6QK/CP0QqhNFpPyVLZRxzpWIU917LEKN8i8=; b=aEO+7LWiMuB03ApXfHW6weth+
	ONIThravww2jr8JCbeXEOZ5fIwFL21Dx9J8zp4+F4+9LmhQbmGZoDu05UOp/pdEJA3ThR7Q5IYx1V
	M6gAhhgB64gUmRdOqDU8kuXhZUtNuMKk02bheYiIBXBSDq0yCt0Uq4YJpbyrEXg5haS6FO8tnLSNQ
	ZqYqRZ94Mdq6ttqfYJbTnKWheSpVR25Tm7amNuvqJiGhDlAMqVume139AXeSgGAtRSW5qcB/ArWv1
	ZdiSnhVA9U2I3G81fgEKAj5H1iJXk+IuX9Phzrf5AmkzJuPoPt+GuXdiDK04fj2AwVmH+c+JibxFU
	oDAgHL1DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLMps-0001Ee-O0; Mon, 06 Apr 2020 08:10:24 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLMpl-0001Do-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:10:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 403D35C015E;
 Mon,  6 Apr 2020 04:10:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 06 Apr 2020 04:10:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Lk1XzoQIyt4x3trpA0BOgrOVyDs
 LWD0uMh01o6xe5MA=; b=woS3dcHTPR0/NMT2vWxjkxPTj9fnof0nct8U0Va6SB8
 hpWkYiqBUV/NfVjsXkYt/IG5skZ5XpwtLbUoOS7bQf4I97cmEK8SGX+mzpYVSIqF
 GEkfhtqOL12uVUE0BGCAV9LQEVquP+90ihDdAgouS9l9OKSZSvyUqhmO+MnfkH/8
 epm03Q9+2zyHvcfjYY3d23LNGt9Vl7t6TroSzpDh8paRYRXei31WqPHhqMmeU/nW
 FFyikvwpt+IVEoibXlh2c15xUn/TdpnjxqSBoYRChfJzPMAdWM1VjCJTPpjghZdC
 MHiVWVN7EE5YdTrnQoTPf8rfi7h+FOi7J7EOPRVY3+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Lk1Xzo
 QIyt4x3trpA0BOgrOVyDsLWD0uMh01o6xe5MA=; b=ac65Exf1y5rbDZtz/ER0zl
 DtgDjyiwtCE+r/oJt2RX7jEhQuYKOlIYqFqr6TuT4N9U2iTJg7oYt2xv6+cYOq43
 LOWTw55qpspbpfq2aJFwL/TUEJ2gcfE6Hn1HjFMcp1C5weaeWDTQmYUlDtcOC8ja
 I7Bwk9mZtfObOGXFBu8Bs6IuCn71MnzH8nXVC9SZnq2vbM5Q1EFNhgAzEHgKdJPA
 adUeaozGU1txJ19CaNLetj1d/LV+grWSdxAVi0dLI/wjtJMO4j8DPcegWd7YeggM
 YSSHeyFmxhmf7i1jXlADAiRZcBzWFVGqr/Pqv/oj38vAeUekodhR81bqEgEIVr5w
 ==
X-ME-Sender: <xms:4eOKXiYS_JJQUYUsJV2uLtl3h6Cpe9BIdrjSWQlvxH-XDG3F_wOiKg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epghhithhhuhgsrdgtohhmnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:4eOKXsXfPLaYq3GQIaEpON7I69G9F2oAiGU853Atp4_pn3vlMigeuQ>
 <xmx:4eOKXjbwUvQBZP48DNfpdCN5Pyatlum8y9-nd47fTkjExUWClNVUdw>
 <xmx:4eOKXjLUWxLfYyviqS5uurImPcPfeBO9_T1GxyeEBTjqpJ-8lxFNLA>
 <xmx:4-OKXgPHINzjfLhYBYJFoWYX9aOOQ7vkZY4-sVRxGqcGEugWiLwx6g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 557743280066;
 Mon,  6 Apr 2020 04:10:09 -0400 (EDT)
Date: Mon, 6 Apr 2020 10:10:07 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200406081007.k6wlaampgbe46yts@gilmour.lan>
References: <20200405173601.24331-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200405173601.24331-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_011017_739232_7C57C893 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============7879855400611796502=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7879855400611796502==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6je42lpfvpbcwyuc"
Content-Disposition: inline


--6je42lpfvpbcwyuc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Apr 05, 2020 at 07:35:54PM +0200, Cl=C3=A9ment P=C3=A9ron wrote:
> Now that required drivers are merged we can contibute on DVFS
> support for Allwinner H6.
>
> This serie is based on Yangtao Li serie[0] and Ond=C5=99ej Jirman work[1].
>
> Most of the OPP tables are taken from original vendor kernel[2].
> Plus there is a new CPU frequencies at 1.6GHz, 1.7GHz and 1.8GHz.
>
> I wrote a simple script to randomly set a frequency during
> a random time[3].

If you ever need to do that ever again, cpufreq-ljt-stress-test (found
here https://github.com/ssvb/cpuburn-arm) has proven to be very
reliable to detect cpufreq related issues. stress-ng might not be
enough since the (at least older) Allwinner SoCs tend to create cache
corruption when undervolted, and that might not be unnoticed by
stress-ng but will be catched by cpufreq-ljt-stress-test.

Also, it will test each frequency, while random frequencies might skip
a few.

> With this script and using stress-ng during several hours, I didn't
> see any issue. Moreover I have tested specifically the 1.8GHz on my
> Beelink GS1, max thermal 85=C2=B0C is reached very quickly and then the
> SoC oscillates quickly between 1.5 and 1.8GHz. So i have added
> 1.6GHz and 1.7GHz my board now oscillate slower between 1.5GHz and
> 1.6GHz swapping every second and temperature is also morestable.
>
> I also test that that offlining CPU0 and doing DVFS on other CPUs
> works. As CPU regulator is only set for CPU0.
>
> But maybe it doesn't cost much to set the regulator for all the CPUs?
>
> Jernej test the GPU devfreq on several H6 board particulary the
> Tanix TX6 which doesn't have a proper dedicated PMIC and doesn't
> had any trouble with it.
>
> Do you think I can enable GPU OPP for all H6 Boards?

It seems you're doing it?

Maxime

--6je42lpfvpbcwyuc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXorj3wAKCRDj7w1vZxhR
xSZxAP9kSMVuxQsQgL0XAk5Y63Yvolay8esXWCTPla+PntPdLgEAufE2bGi74D1N
8qBXuxrI6Oc3uosdriCBWT1mWHokdAI=
=RqjV
-----END PGP SIGNATURE-----

--6je42lpfvpbcwyuc--


--===============7879855400611796502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7879855400611796502==--

