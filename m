Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CBC1ADEDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 15:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v9XMMYQuvcUjDPcBB+L4gleneey7hID3p1cSvCTl1rU=; b=l8I0TQDywz9gBVjMx68bih7zu
	fCsd4AJBF6BeNQlK2MPcUHMO7EpFlAs+LKm4fQgOGmJ6mEp4+C5vWshE3DQB4zrUDP24nIHP1+4r/
	7tZ2qRos3EckHg6+heQ1XYZ7ZS1cGq3CKll8o96LEUI05u9V8EKNkcanb/l82ArJFPuoZN7YbteUc
	V3f1+JgBjrU4ZrRzybvSKqdwBMZbzzRcmZSHrxBr3s+ERHq7SBB0kubKe92apSIkhK/dVzssPkX/3
	iqKBnqUt3jHHra4IAh+jEekhm2j+QFPScD/er+C9cQqzTDPt3tJ0aQEx1uUIePvPP1NACfILjF8yv
	1yAWVZrnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPRVp-00021W-UO; Fri, 17 Apr 2020 13:58:33 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPRVg-000216-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 13:58:26 +0000
Received: by mail-qk1-x741.google.com with SMTP id b62so2420679qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 06:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=r8S2kr+1qqUEZmx89jm+Cng1XtsvEmNd5bR0TB0uIJE=;
 b=iotocs2RNeI49d3mnbUlyAa5zwoDWCGA0757Yxah/0qc/j0AXXBLIPdxm09p9H3Ir/
 ptEt4ci5MW89V7TZlQs31KRvTGMk8ozPnpLACN8LIOOr/WKfYDTBrX1F83DukeJXi9xS
 6ttqPRpMBj1/RlCpXob8wDDKXyBK+3cIPxDok6r8TrctMVcEQVXnSCpmXegLDLwsetmh
 5chGVw6tndImMDtEC4XJhTDad+TBkL4bq7fFdL6rHr/LVgscNOV9lGHEx9j+cWZ3tDyp
 0DVE2cbOpa4b1IpjbWK4vjYT6BqkdS0Nz9jr56kzWrokadZjKXEOw3+it++I1LGTXkzH
 eGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=r8S2kr+1qqUEZmx89jm+Cng1XtsvEmNd5bR0TB0uIJE=;
 b=ifplziWoHhKIXakUsS6YeWpMlA8UUelQwm8xgcGPiOnB8oxswOLl/qsAHO6unnaxaH
 FTdS7A1fSlzQ/nvBOGUdYWMSxg7OfHp0KNAgDbM80ikwmemMBnR5dzf7h9T3iCUzXhp3
 y16HCPn5p5OkzfvlH6X0pcmCeT6S9CNmFs67dYdmg9E6pdasky5jveOTCJrCbeQhQqYA
 HHDqeTkKp4RQrTdTjYGZWg4NzNtx4zFZkxREWQ9Uc0MkYhvViK+c+l8nVfSeSCPioYVY
 W40CuXBQyLoW+S7fshoBQPKT19KdvDVvaHS5vUtBuNjcmIWhPViXd9PhUTBPXShGpB6r
 crhQ==
X-Gm-Message-State: AGi0Puaq4QJn/PmxDd0FK0SgAzeHI/uzReRZXjOPE0c+pavX6QJsJk1G
 ER1CcNsBdtjLU0b5Wkrojh0=
X-Google-Smtp-Source: APiQypLycIbxKLBQBj/VxBvwEctnJBVu08QReewXgY6W5HGc4qa7J3lYp+camisa7kG+4/t0wN902Q==
X-Received: by 2002:a37:63d1:: with SMTP id x200mr3442405qkb.144.1587131903728; 
 Fri, 17 Apr 2020 06:58:23 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id y6sm8991279qky.133.2020.04.17.06.58.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 06:58:22 -0700 (PDT)
Date: Fri, 17 Apr 2020 09:58:20 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>, jic23@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: counter: microchip-tcb-capture counter
Message-ID: <20200417135820.GB94725@icarus>
References: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
 <20200415130455.2222019-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200415130455.2222019-3-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_065824_772871_047C9475 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3009283767949352459=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3009283767949352459==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l76fUT7nc3MelDdI"
Content-Disposition: inline


--l76fUT7nc3MelDdI
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 03:04:54PM +0200, Kamel Bouhara wrote:
> Describe the devicetree binding for the Microchip TCB module.
> Each counter blocks exposes three independent counters.
>=20
> However, when configured in quadrature decoder, both channel <0> and <1>
> are required for speed/position and rotation capture (yet only the
> position is captured).
>=20
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>

> ---
> Changes from v3:
>  - Updated the brand name: s/atmel/microchip/.
>=20
> Changes from v2:
>  - Fixed errors reported by dt_binding_check
>=20
>  .../counter/microchip-tcb-capture.yaml        | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/counter/microchip-t=
cb-capture.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/counter/microchip-tcb-capt=
ure.yaml b/Documentation/devicetree/bindings/counter/microchip-tcb-capture.=
yaml
> new file mode 100644
> index 000000000000..183e9ee4c049
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml
> @@ -0,0 +1,33 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/counter/microchip-tcb-capture.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip TCB Counter
> +
> +maintainers:
> +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> +
> +properties:
> +  compatible:
> +    const: "microchip,tcb-capture"
> +
> +  reg:
> +    description: TCB capture channel to register as counter device.
> +      Each channel is independent therefore only one channel is
> +      registered by default execpt for the QDEC mode where both TCB0's
> +      channels <0> and  <1> are required.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    tcb0: timer@f800c000 {
> +        compatible =3D "microchip,tcb-capture";
> +        reg =3D <0>, <1>;
> +    };
> --=20
> 2.25.0
>=20

--l76fUT7nc3MelDdI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6ZtfwACgkQhvpINdm7
VJJyFg//WHsXZYH0on+vZZkrMR5ZzW8MOCpE+wrxZiS8hKDnCyQZV6iLxv9ySQi/
BmWiyF2rMpE7Jt35ALYT82NwfljVPD4JCrqUjESxREF5N6TxtsaHyjjyo9elPG6x
2vG0aUHWSZecCgt/IhALWE7i3A39oADcsIKf4DDrM/Sg1syaOYmds8F3YtR8uygl
x+2YZISXhYreGwfipfs3qp2LtbgvXahytEZE01EQAmpZOptcZS3pRL2Ke/zYQmbr
/yMKknNB82sDFGFty1A28zZ9guz767p+7cilZwTqkWxBOHR40G6ieIQ2wHYYktm6
yc4AL1/nfdRpXBIlPL2FcxyftrdnV+DG6hyXm58o56JFoESPI3gMoOwEqFFYhNn8
W1hszb+C6N9pKszPABb9K1eLHwQQfj4sbi+DdeH4mME/ItpIKeF/hJ/K/62yvGyu
XSg9utS00CYB2YKB832S5v8/wanuO69g+8kMes25QBeiUiIXd/ne2UUsHx64akkc
Gx3lWSKJmNPNDJuciTCW+r7ax3wLjn9nQjZV887GK6oNiuo4qbrrU1p+71OMBnHc
N7ezTozJG8dWWoN2DDPU6D2rw4mcFxmls24ryA8OVv0Nrvvg9R/5wh8Hg1BXN7VU
6E4lGrFc40Q//KgHIsnc0BO6I4eaq/JIEDA73cqLBe7kXxiUDfc=
=yr/6
-----END PGP SIGNATURE-----

--l76fUT7nc3MelDdI--


--===============3009283767949352459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3009283767949352459==--

