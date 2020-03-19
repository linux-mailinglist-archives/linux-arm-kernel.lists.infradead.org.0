Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9D918B3AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:45:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5CUxlcDe/JxJaT+N0fFOspeK6qcJkOjXsX0YwVgAKFM=; b=VLqqwPPkJlI06GBEOkCcv2dJv
	OSwEH9Q8qLXPw+mlzIbaVcHVTnCi7LZJhlhC9MkZ4+wyBimCw7ikkg0o1sxmoz+ro/Y2jNUJg/9QE
	y5cqaild2fmaKTUqmhZ6k/WmFqDTOdhPEdPQlMnN/DSP8acYmI+blD8p6cmhKOWmSuth3Yzi/Q5Ek
	i8yMSKUkOxMNobMTsFhhZG04m29NKInL1t6iU6vEKJpko4z9hUVUXVHRbhpU7KcWBEiQ2f7zo1yi0
	2wI2H6+BebL+7EbmdtAHLq6qvnraho8Dny6ZaEJQX8Feg37E0kt9l3PFpS9/2pCR5tWxsrE3s/CPx
	0M0oU2ICQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuXz-0003tM-O2; Thu, 19 Mar 2020 12:45:15 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuXj-0003fA-QS
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 12:45:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 172F258066E;
 Thu, 19 Mar 2020 08:44:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 19 Mar 2020 08:44:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=fPef86flXx0XBtfvoeNEs+6nqE5
 kjHbY/H2scm6omuc=; b=P54ryr6cYmDL3HtEmHxTsHrnPfMlr4pYagLUkS7ib6U
 IOsPIXi8dXU4dBWVk8gkZr2UKAt1i+V1i0veGvLvTAWfaPNSqzxjTYDC4Kk9OxKw
 FJTjiecptq6P3vlPWZxPF8W6AiAMprS5FeVKu7yUg/uCwo+g+WDFDeKVPULVHN4/
 zcYD4Yxo7qj93XuM75MVktOz4aIbcrpWGzI7yiupyv+H8c3L7xbnNRJR/gIpvgEt
 dQWyzJX8TZZJlfOA3GEQcEOlsUp/8qYUOZ1KLKa5cDr3KUOhvJ1nazwc+ERjlEmm
 5B3PEl2iAPM66FtXNnrVm3jIAZVFNez3aDYMo+qucdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=fPef86
 flXx0XBtfvoeNEs+6nqE5kjHbY/H2scm6omuc=; b=BJksx+PBF56TFgnOUEJ/kw
 QYXX0L26+g+4Cw1qAQ79baQSlMIrv7ZTfJLTnWZVVV6wQFmy82Dc8FaOaidq1CKo
 +2JoVnkIBoaTOLU87oR//m2HOUsHzqw7y5jAW8O4xV6hkqY5UDsQctLlwR4AMVHg
 GYKD47FuwoDwgzbx0yILhumliPKt3JN/iLDrxL+bp7JvYGkyjKrVQ08UWKgFDPni
 eAHy1x7Zi9xAYq8g34OQ+uuWTXfRU5ovY931qS6bQQ9y8m/195yyn1xo1uhn1Rb4
 f/Wx4H3Df1KWSY8HXG1TUokdODU9QKDr4g16hLhSv9Zyk2/t/gbpSGRUno9L2Odg
 ==
X-ME-Sender: <xms:RmlzXoTyYLruReR4fEM0EZvVGx3em7prj6ItaYEYTSZV26yRnpGTFw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefledggeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:RmlzXtY1tPKrM6iWyQqASsTBEGtmgOPWGqhrEs3xnNQqk5vuqNZGyw>
 <xmx:RmlzXjcrygJZCEd_r1wE2kBm2DARMoXFqq3ORMp_UnaSKchfDCJm2Q>
 <xmx:RmlzXmKOKO9aidJcE9GYNfnbTaV_5jXHPN6vJMdMmBwUC3t183rxYQ>
 <xmx:SWlzXp97jLbUzb-fmPLA-z2NnPcEfHSko1oXqiOB69IY6YKZfezmkg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8AF24328005D;
 Thu, 19 Mar 2020 08:44:54 -0400 (EDT)
Date: Thu, 19 Mar 2020 13:44:52 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
Message-ID: <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_054500_241650_4526CA48 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: multipart/mixed; boundary="===============1090099717783547780=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1090099717783547780==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5j65trj5d3psj2o7"
Content-Disposition: inline


--5j65trj5d3psj2o7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> Use assigned-clock-rates to specify the clock rate. Also mark
> clock-frequency property as deprecated.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> index 72ad992..e62fe82 100644
> --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> @@ -8,7 +8,7 @@ Required Properties:
>  - compatible: Value should be "ovti,ov5645".
>  - clocks: Reference to the xclk clock.
>  - clock-names: Should be "xclk".
> -- clock-frequency: Frequency of the xclk clock.
> +- clock-frequency (deprecated): Frequency of the xclk clock.
>  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
>    to the hardware pin PWDNB which is physically active low.
>  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> @@ -37,7 +37,8 @@ Example:
>
>  			clocks = <&clks 200>;
>  			clock-names = "xclk";
> -			clock-frequency = <24000000>;
> +			assigned-clocks = <&clks 200>;
> +			assigned-clock-rates = <24000000>;
>
>  			vdddo-supply = <&camera_dovdd_1v8>;
>  			vdda-supply = <&camera_avdd_2v8>;

clock-frequency is quite different from assigned-clock-rates though,
semantically speaking. clock-frequency is only about what the clock
frequency is, while assigned-clock-rates will change the rate as well,
and you have no idea how long it will last.

If you want to retrieve that through the clock framework, then just
making clock-frequency optional is enough and falling back to
clk_get_rate on the clocks property already provided is enough.

Maxime

--5j65trj5d3psj2o7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnNpRAAKCRDj7w1vZxhR
xesHAP9VTAePw+WAADpRdawWbVIeQrmRXEWIUIh4/u+DB1CnCQEAtrdAD6cdnFZV
PoQsLM8/8h0mlE9auOHjPVUcOLYy1gs=
=qLmi
-----END PGP SIGNATURE-----

--5j65trj5d3psj2o7--


--===============1090099717783547780==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1090099717783547780==--

