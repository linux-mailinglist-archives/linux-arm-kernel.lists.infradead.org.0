Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBB21707B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j6dB8GPmOoL0yn8Dyrjt/e2b/TIXClvqwhELhac191Y=; b=ZGGM/Q3Kg3rhlaokBYOYaNZtW
	9JL1AZmD9feAoRkLwKs0O/iA4P1776ON2RNrzCEY8aQMTl1PmBaaTGTW7ZD2fxSE3GsD7PRYncWDb
	7sXqZa6kHgx+X1DpdcvkZ4c2nTbNLgUJUwoq3fzYVkrGdMETdE005eOkxI9kb+oVHRspbCpsb9XGV
	DEwSnXXY/1klCIb4RlCK1vPToU3TLcQaIq4lKdrkG2uym95lsJFt4Xp4oUf/EmzKMHebYeDW4eFFy
	UhndwGVXgHC24fb1AWs8PVu5xJn37zxkK4El4yUvMraAkkV9ec+Nbz7ArOpsTgLL0tgCTqFlwoqcR
	ifECioHdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71Pc-0008Hx-4a; Wed, 26 Feb 2020 18:28:00 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71PQ-0008HC-FY
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:27:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9DBD02911;
 Wed, 26 Feb 2020 13:27:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 26 Feb 2020 13:27:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=w7QtfAdJdr3KTau3Bb/pu7t8pVV
 wKSSTDZcCOh+zDEk=; b=AslVb9g0Ie2irex/ew16YVstLQFhTpBwY8TvBetJ0G4
 0KakXTO63pZDsiCOclUvVXCIVSCURThusPpn5MlPSryh9Z4WDfKfLyeQetpHmviL
 nYGLeN+9/snCpv3N0eLhgx+LZJdHGhI/xf5PtpEnSXBMiKpjbbG7lEGkhI/tvf6o
 Y7uOJXQG2quym/59x2ybLLrEVMUZXPrHiMB2TPkfZOfGxH2LaBMzIQc3NqpHsqqs
 93ljrgE9/vknU+hkPHIMRbUcnjxcPjiuo928szk/UvXWLjGJaWpdzfWHb+lfb24n
 Oi9l4mn3q4RqxD3eND6io0iYVx4ZgUV/YahpsEaTSfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=w7QtfA
 dJdr3KTau3Bb/pu7t8pVVwKSSTDZcCOh+zDEk=; b=hjkFUGLOnET4YzBudYf1yt
 iOW0D2bAgRXwxEkmTUDx5XUQ4ttFlBYCRQ9HbwshIZmsvdmfom6klg62GMhkq6ac
 OWmLvRbrtJlPdbRXob6euLEkqoIWPmJgvWwkWAxFQNgD/uMabYK1M7ZRLXg/kRTx
 0oXZEP6EqjY2TUsKzsef7M7PI/4cbbfAVhF6XsZXp99Q0LpT1ZBjkypBCgdBpKLC
 oOeRyEMtfJaZ76DO9I2wrxAA+T1G9MnSWUSTENXknY7Dvb/2XStIcoTMlXyTiG7U
 8XGKJpprk6gBx2rKn97dGQIfGQwCDf8rhMvfjIGOcoPuTnOy1xyJcixHHLtw/pig
 ==
X-ME-Sender: <xms:o7hWXi3f76kl8Z5bRKiK9vtN4o7dgLXWXqkXuyUDzX-OTVD4l5D5aQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeggdduudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucev
 lhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
 estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:o7hWXqS7oNFHEHdvy65-r3crZ60q2UMLt56TCLYZUlUS0uK6Jv6ofA>
 <xmx:o7hWXuTEn_zjEQRtUNSDAtjJ5e5-ANCrjjXPDHeausxNmOPAChwOHg>
 <xmx:o7hWXjXsOfNFMnPB9WNVwFnlUwPRZLSjeRvkg3sTRmHMqDxqc2coAA>
 <xmx:o7hWXud2Qcqb-MKhNKKGL1G5RZKEjzXuzDdqIJBdLpONuTrDRRGM5Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C13203280059;
 Wed, 26 Feb 2020 13:27:46 -0500 (EST)
Date: Wed, 26 Feb 2020 19:27:45 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 10/13] dt-bindings: memory-controllers: convert Calxeda
 DDR to json-schema
Message-ID: <20200226182745.gevcx3zb6hgewdnx@gilmour.lan>
References: <20200226180901.89940-1-andre.przywara@arm.com>
 <20200226180901.89940-11-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200226180901.89940-11-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_102748_670357_785010F3 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5689945496258060678=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5689945496258060678==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vy5cdj22bi4li54x"
Content-Disposition: inline


--vy5cdj22bi4li54x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 26, 2020 at 06:08:58PM +0000, Andre Przywara wrote:
> Convert the Calxeda DDR memory controller binding to DT schema format
> using json-schema.
> Although this technically covers the whole DRAM controller, the
> intention to use it only for error reporting and mapping fault addresses
> to DRAM chips.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 --------
>  .../memory-controllers/calxeda-ddr-ctrlr.yaml | 41 +++++++++++++++++++
>  2 files changed, 41 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
>
> diff --git a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
> deleted file mode 100644
> index 049675944b78..000000000000
> --- a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -Calxeda DDR memory controller
> -
> -Properties:
> -- compatible : Should be:
> -  - "calxeda,hb-ddr-ctrl" for ECX-1000
> -  - "calxeda,ecx-2000-ddr-ctrl" for ECX-2000
> -- reg : Address and size for DDR controller registers.
> -- interrupts : Interrupt for DDR controller.
> -
> -Example:
> -
> -	memory-controller@fff00000 {
> -		compatible = "calxeda,hb-ddr-ctrl";
> -		reg = <0xfff00000 0x1000>;
> -		interrupts = <0 91 4>;
> -	};
> diff --git a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
> new file mode 100644
> index 000000000000..c5153127e722
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/calxeda-ddr-ctrlr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Calxeda DDR memory controller binding
> +
> +description: |
> +  The Calxeda DDR memory controller is initialised and programmed by the
> +  firmware, but an OS might want to read its registers for error reporting
> +  purposes and to learn about the DRAM topology.
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +properties:
> +  compatible:
> +    items:
> +    - enum:
> +        - calxeda,hb-ddr-ctrl
> +        - calxeda,ecx-2000-ddr-ctrl

You don't need the items here, you can just have the enum directly
(like you did in your other schemas).

> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts

And you're probably missing additionalProperties too (and in other
schemas).

Maxime

--vy5cdj22bi4li54x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXla4oQAKCRDj7w1vZxhR
xRBXAP9ZQmrAOPSaIYVCepMGalL4VRu2WiDmkJ11EtPV92bOxAD/aNate5SpGBab
3eDUe7Y2I/AUh3aU1kJNSh0pBw7wYwg=
=BFTG
-----END PGP SIGNATURE-----

--vy5cdj22bi4li54x--


--===============5689945496258060678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5689945496258060678==--

