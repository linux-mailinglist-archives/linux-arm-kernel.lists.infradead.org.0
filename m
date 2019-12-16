Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C09120218
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o4w3jyAp4A7PkP8jjDaULKssJ5c0ZfF72484/dVa+ew=; b=bJpk13Mfj2NTKxieNkghs+HmD
	OihibvP7qrEu6nPThfYvbWyQhMOCoqsDugjrUNnfORa4XT7zbBeqsEsb1Pia70IG9jFM2+x4MFUUR
	jU2zDWrtPBAFNeDQdaKxPQq/Xjt4Jg1hP4x/deEK3HuDmzxZEgstaOJR9D+UjJZzQCve+ljjl2QaV
	Ve9NGyHfke/f6It5YtDI/QEvMX+CnX4meru70/23Q5j5VjParZRqBUQH68LR2RaggDJbJ6wCeMjZ1
	JqS9Bo2euoTSCEG1ge5X4YVS5HvXTzhLzx473ZaOOrDWBYqIrk2/oqL2tAM6JxTxj/Ay1uORBkBeu
	RaQUOGPGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignQu-0000Wy-8K; Mon, 16 Dec 2019 10:16:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignQc-0000W5-Vd
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:16:40 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 918F9205ED;
 Mon, 16 Dec 2019 10:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576491397;
 bh=oK2Z+gvU7X/ZRWb2P9P4VPxCD0n4mPIDKj1lZYaWRxk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1Iqa3GZCKAN/BdWeWt2q2lMQjNnKzlvJOdMtwDeLaqUTOmPSgXJd6jkhBaSdtyeAF
 vEKERaSI8CjRBdZMKlASq1MHUEYQumryWPzIQDwoaElZzL6qbKPjxf25MgAXrohkq8
 XROoXtS44NgmZ6tOAWC1LXi38QxyxMxneL5bfz9Q=
Date: Mon, 16 Dec 2019 11:16:34 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: allwinner: unify header comment style
Message-ID: <20191216101634.tzef62pzxlsy6xpp@gilmour.lan>
References: <20191214132642.29564-1-peron.clem@gmail.com>
 <20191214132642.29564-3-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191214132642.29564-3-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_021639_048903_9C2CF1D9 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1231230741645244061=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1231230741645244061==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zxlxqylynajtnxui"
Content-Disposition: inline


--zxlxqylynajtnxui
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 14, 2019 at 02:26:42PM +0100, Cl=E9ment P=E9ron wrote:
> Allwinner device tree files used different comment style for
> copyright notice.
>
> Update this to keep a coherency.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Applied all three patches, thanks!
Maxime

--zxlxqylynajtnxui
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdZggAKCRDj7w1vZxhR
xd7CAQCeM3JWttlLb8tuINHhejhLTsUpHbCjus1qXKBxmKRLdwD/X28cgdu5O2ZQ
KhbaqZ4aE9ttkiDXqIdrw2cPY0Ft/QA=
=iT1Z
-----END PGP SIGNATURE-----

--zxlxqylynajtnxui--


--===============1231230741645244061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1231230741645244061==--

