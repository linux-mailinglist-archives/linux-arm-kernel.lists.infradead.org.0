Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6241B0C8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9IiakuoCpuRv8nolI+fAag7tFRCufTJ99vUo4dFPkMw=; b=Vq3BD9J1Fs8l3b2a77pMAwtIv
	QeoauKu6EozSA60+7RmyzOuLdmJ/r9eo7OVFWp+lN3r6/IgEpz7PQxBMYva7EwgCs6IhCpwaLC7R0
	7WpR02xMgYp6P3TaIICDl1u4gSIMzGiqbcDBWj4ue7vsgmXpoxSmJQp6TIftLiVOUfJ2awRzp5Cjj
	3gcziqutHk58X1dVUSqh8u157l16elZwxmiLmg/PAmXn5r6CP5hfNCziaP1ztKKYzl2YRSItgPxsL
	3twU9IXm7a9EyElU2V3delXEcF9zL7V/9uuWxaopYCh+E3EvDDCq1k62z6hTePoGf1XKbXt4PELY0
	Tcml+L5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWQH-0001QI-Uu; Mon, 20 Apr 2020 13:25:17 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWQ6-0000W9-S7
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:25:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id A1E9E52B;
 Mon, 20 Apr 2020 09:25:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 09:25:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=yhnengzziE5vWLTBpc6TNXdgy73
 OT3X2ZS0zw6Wtevw=; b=azA8QLNwW36SCKr3HQis4odPzSWwi4U88WuVeVY14ob
 NDbQfJICGGzzlUTu3pHWH9zcBwI86JB2UozgMbXKCznSJTP6eVIMhHho0y2usVXg
 CKbqqo3uUS2YuYTSOU319pS8AOkt63fUqJxTsbLE+MSCYg3BnrAaLL9dhILJZF4d
 tCxvCv3WNeSXXQOfL//doHnWo2VG3Wqh+X0tPGB5yksUmVB1rXWY9dOMDsu3H6FX
 a6S3KMSO9+7at32DwO1UBnNqEeVprjoYdwJAwN4kq+zFSjugAsdSpIEfpFMVd5pF
 1cB1x/C754snD44ZJtAUUS0RAkgmjzxDLAYA+Qe91BA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yhneng
 zziE5vWLTBpc6TNXdgy73OT3X2ZS0zw6Wtevw=; b=LDabqPL769MMweHDyQwOF7
 6inA3sLIdEIjZzH8iojdhdDPIHqjRyJC3wlxrgLzqPNezIRE/jbwAe7NgSTxmt9K
 KFW5XMwaj2XR2Lz57rw7//yvsNcP6J3cfigVpGwOmHtG+GceO5ewTaZEa5QmuRoV
 aGVSOiniLgHZFTeFxrKV8pU++UHtUxmL+o95/mKYfmYSbbE+iMMcUdxgyufTLepw
 tqikKuShseCopd4b4Setjm1D84ZHcPL/oqHD/o0nA1IUA3dTGwKyDHxeuQ243BPY
 o1LlM9fcSmG57NfAbZtSMszxCmutmDW8Oh/5pMaKX6BbRDwMltPSAn2no0dDGC7A
 ==
X-ME-Sender: <xms:raKdXihyfHpv81ALfb1YoHtF2BVbmDjGgXLdDuaf3bKPMQzoeaTQKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:raKdXkFCHcowvAEl21ur6EYF_t-bKFth9B6LxGKsnYmBDOijs8ikkw>
 <xmx:raKdXtBwbwDvYzdmGzKEmi5rD_uVtqgXI6jadnHpmuIUs7w75fLUdQ>
 <xmx:raKdXo8uaAE9SdE4qPxmQQKDbfcy0gzYoEyOV8Y6L7dJQYwAW2gbAQ>
 <xmx:saKdXoqdtuHV2nYQJGk0XRqX3LJ53kyxo1-JizyZ12ODFOlARn3enA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 74791328005E;
 Mon, 20 Apr 2020 09:25:01 -0400 (EDT)
Date: Mon, 20 Apr 2020 15:25:00 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 0/9] Add support for Allwinner H6 DVFS
Message-ID: <20200420132500.gsnsdv3jaotjup5w@gilmour.lan>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_062506_977643_38750AF0 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1656589984667199390=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1656589984667199390==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fktdxkekevkzu3a3"
Content-Disposition: inline


--fktdxkekevkzu3a3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 03:00:12PM +0200, Cl=E9ment P=E9ron wrote:
> Hi,
>=20
> This is the same as v4 and v3 on top.
> I have also fix the commit title for Pine H64 as we now only enable CPU D=
VFS.
>=20
> Sorry for the noise,
> Cl=E9ment

I dropped the previous ones and applied, thanks!
Maxime

--fktdxkekevkzu3a3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2irAAKCRDj7w1vZxhR
xTOIAQDZ6ddkodAU0H7ADOOqC0WuJOktcAKK+MPuKpf6tzBCEgEAxm0lP1QHVwMp
YYrf4zOjMAPR251l/CaafMgcfxuSRwk=
=xMW6
-----END PGP SIGNATURE-----

--fktdxkekevkzu3a3--


--===============1656589984667199390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1656589984667199390==--

