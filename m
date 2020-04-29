Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6950F1BD78C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZpfWIZI+q0IkchHGRKECd/PnQBdMERQkuZmnO7mdm/A=; b=aG/3Cs5ZgZ0SB86DYbuRPXEyI
	Dl2HbUmuoztVQKB3onve64D1jCxM8JtOtMDCuDWhy3vxNa3S4R2/XnRytlhUx5bSDrc8n+jKjZAXv
	HEVC5AC/GD86yFRKsNRSKwlZaURy1GisSTTH7M5DMF+kJTj7V0d1uro+R1b8rYQYEKzHa2M4NLWPj
	9hOSJb+289EOFfT74h/4UUJnlbA8xGalFjDKcdQKZSgqxV2shq0Y3v8zdJLVaT6CIJ0ZTDlLPsL2T
	RuElYvJE6TuzXUUm2gcxeoOfqmdmNc+CYy9eG6c7mFb4DuHH8JV33q6SnziLDjy6k3VMsrPvLFFqA
	LsgwVARFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTiOJ-0003ql-KR; Wed, 29 Apr 2020 08:48:27 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiOA-0003qJ-G0
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:48:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id ABC72A2A;
 Wed, 29 Apr 2020 04:48:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 04:48:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=wcrdqsNcPwVtovwXtckouIEc10K
 wvG5XzJ9jmHmMR34=; b=v0bP8FVPnComujsnhBi5tEXFAwqf6NMgtounAvPFAi3
 VDOVQdR0rzz9K3lMc+L4TQG8rFhoAamxcdtTtiVN8lRVrdQs0FurxA7xTo/dH0O0
 kgXFuge6ZLGyI5dsEzC24rRkIvpGFs2wa2o2PMD1Q4GvP1I+PpKdtxk+y/kNBzda
 MsL+y8ofFxDMzpn0aJ9BCpiyQhgodRb7/iHbmRxs1NFKmTQQ1YW0W4XgDdK++6F3
 FLUFQMb6+5LEDa5E4sBXh2S3txZRWF66gGjpb1JG91QU+LjOY14BTBFgfc8ZGZqv
 ReeNg+6ei0U2JqzwCRbtAenPUOy4Zq56HrYubdQR1Ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wcrdqs
 NcPwVtovwXtckouIEc10KwvG5XzJ9jmHmMR34=; b=AbdbpevHQg58Vp9/JksvML
 JpFVc8LZovfA77OxghfwCmjKJfw9GNKxAQncq6+G58jgydC28HgNSRnjd7FgbaGS
 FIEboQoEDMxncUwJplGy+VcQ0P3zevmmgFSoayXvSjkznnpm9Spy9MpqHeleAjMj
 amNiBwbb7uXhSEX5aLRVAD7oMHCUkgmbRVrm7N/ZtAXnxgluzF1ue7rkwfy5zYUI
 gxebSyAz40Fosc6/xyn2eEldByg7eoEANXpguuOhK6IV0zbt3TmIuj94MKnhlqsN
 3D6Ry/PBj6xd8LEJzjaXUvRdz5wRP7XCTeQDXYmEk+vUoo+4p+72bXlqznjc0tVg
 ==
X-ME-Sender: <xms:Tz-pXoecD_ubgJ3FLfTu_KsnOwwNurdSojjIIQ0TW8TggrsZLg8bjQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Tz-pXh1ockIj6T_SsmIrFJQjUQ00pQm7slOLEVCcBpq6rZiDOmoDNg>
 <xmx:Tz-pXptpxUoZ6U8rhPDyQ69rumqvs_mTNaclL_sL3tSyZX8XctUJIQ>
 <xmx:Tz-pXl8elV62J6lm6MKMuzW1pvi25wmBNz9kmyaT7RrVJqpMg0U8UQ>
 <xmx:UD-pXnzMOUhezOMD7dDNNdz_yLo4hg5xzBtVT2bNvpSxJQW_dEnpbNS72gc>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1874A3065EE9;
 Wed, 29 Apr 2020 04:48:15 -0400 (EDT)
Date: Wed, 29 Apr 2020 10:48:13 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v8 v5 1/3] media: dt-bindings: ov8856: Document YAML
 bindings
Message-ID: <20200429084813.j3pxcbzdmeywqym4@gilmour.lan>
References: <20200428180718.1609826-1-robert.foss@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20200428180718.1609826-1-robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_014818_568826_90DBEB0F 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@iki.fi>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3095028232642901727=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3095028232642901727==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zpihnrmips3hshsi"
Content-Disposition: inline


--zpihnrmips3hshsi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 08:07:16PM +0200, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>=20
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
>=20
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--zpihnrmips3hshsi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqk/TQAKCRDj7w1vZxhR
xZpoAP42DgPROuzDTF5EuqRDWfCvMVhdg1sOirg+0fkdipMlpAD+Pb10jAPRj/tA
6bO2fdjmT1kcv5cAiQMmOGG+H4zeMQc=
=zN+J
-----END PGP SIGNATURE-----

--zpihnrmips3hshsi--


--===============3095028232642901727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3095028232642901727==--

