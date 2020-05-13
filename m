Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E6F1D194E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b7VhHgxCPsA3v5TDtWV9UMqhC2q8mFnVRE684w1bgpQ=; b=CJz0ZlCik3FIALlrTaNNd1qhg
	mF7f3tNUamfYBSPh2GnHQTYLHXlrLpiHqQP+4ClSQ7UeAoiCPaaIrjLoTOJhpu/InsSp3rhC4ZK1i
	8yJA509owPGibHSEe0FT2Ftv2K38SjK6QrpigBwBuurxh9Xj9CRINhJ2uO1KN4wp6KMPXPBr/W5Jz
	BVucREPkbCCQFnXUX1l4HU5lnwJGTz0qO0JnJeyuYLdureOsRDbR6Jn98RaiDjNofO1vyZ+1g9gAn
	+ghUAYbK75RluV6O7l2E50I6RAe8bDWEFw9YqTg78OV4g1Bj3D4VTkp0QUljYqSv6LRGO1z5r0cqF
	n9nAojVvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtGJ-0004Qe-1z; Wed, 13 May 2020 15:25:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtG9-0004Pu-Lf
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:25:26 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0F49207EA;
 Wed, 13 May 2020 15:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589383525;
 bh=JZ6KBeyc0c1ysIq6NiWDBm2SdY9Yc8IcQUMTbYv1NTc=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=exPOmNweORvuk4GCwiXmP6kQVux8zd5rmTY5lAlGSHS14tqf7zRXoVrYb2xmlDc/X
 in3cTwkiSdLgbxLPY7aGNyxYPDI0Qaykwhi2njJWTgI/p/MBsr7GopfP+v3IxgGep0
 VahtTi8gxBber8YeO88QNh7jiq6ryJUV5/89q4fQ=
Date: Wed, 13 May 2020 16:25:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 06/10] dt-bindings: spi: spi-dw-mchp: Add Sparx5 support
Message-ID: <20200513152522.GM4803@sirena.org.uk>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-7-lars.povlsen@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200513140031.25633-7-lars.povlsen@microchip.com>
X-Cookie: Long life is in store for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_082525_728861_35CE273A 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3058754885054777653=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3058754885054777653==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Aaj1jBvBEV7KRjLi"
Content-Disposition: inline


--Aaj1jBvBEV7KRjLi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 04:00:27PM +0200, Lars Povlsen wrote:
> This add DT bindings for the Sparx5 SPI driver.

It makes life much easier if you add new features to the bindings before
doing any conversions to YAML, YAML binding conversions can take a long
time to get reviewed and really slow things up.

> +          - description: Direct mapped SPI read area. If provided, the
> +              driver will register spi_mem_op's to take advantage of it.

The implementation detail about what the driver does with this is not
relevant to the binding.

> +  interface-mapping-mask:
> +    description: |
> +      On the Sparx5 variant, two different busses are connected to the
> +      controller. This property is a mask per chip-select, indicating
> +      whether the CS should go to one or the other interface.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0
> +    maxItems: 1

Is this not a property that should go on devices?  It looks like this
needs some namespacing too.

--Aaj1jBvBEV7KRjLi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl68EWEACgkQJNaLcl1U
h9Cjbwf/U7xpXTxoD0nolU0E+Fmr0rN5BF6FHkUc4Px3O/NbjgjzNDCx+nCiIdQe
YxLeXUDPqHdCHRLVrHzmFeVSY+TwWQLxBn8TACYuNweVIuX5i3LJbRdiZ+9eQyVj
qOLW8LlNrY6rFijK5CXqMg7sr8ufPSGBKfEd7fvhDYfVw4Dp5AAMQ2J5/7Obw9RO
VbBGj8gmGCUmqo/9M221ZRYeb8qbf66kyWmSaNLtw55/NvCJyoforDBUSRUg/L8/
Hhrxy2FUnx3JJxvG7EbBA/4i/KasA89IySEG0C2xomFbVvwdM0lJKivC1QPF5WRI
nC+tuH4D96wOc+iZ5aP+vHwXjJSpnQ==
=vw8U
-----END PGP SIGNATURE-----

--Aaj1jBvBEV7KRjLi--


--===============3058754885054777653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3058754885054777653==--

