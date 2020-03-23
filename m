Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7076618F2E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gip74AfEBwmwzrnmU373dPmohsqi5JymRoazPA/pJXM=; b=lXyFV7T3MBhfFmmsytFnugaZw
	HRXSQkg/Idv6UUguEeIpbxRF95gpX329q2ZqJtsVIsQFTdvxNd+oqUND/3xlOrnDJAzVVY89x9j14
	236lHimve5gYUw1gllqCSKRbVBdFt4jLS3Mj3iy6lmpjf141JOs+PU8QZ4a4vJIvsTXd4XnrOtmVv
	G4ljvwm07MHheTV8QHoBagIN2pexhi320lk/DPxWYOr0eZQAPFRv+r6SlSutJ3eX1kCrtmWttimZp
	+BiqOA1eaqi5waCAl0gYs7jZ4e7MFuJcszaf6LTabzEeKcOOkJ5tCP0kQGynMVCOo1/POxYQiB1T/
	9mGQoacCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKQO-00022t-UQ; Mon, 23 Mar 2020 10:35:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKQC-0001JY-Iv
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 10:35:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id b2so16305897wrj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 03:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kb4Lv5bsGKOyoT35RNZwsybhTbpTu7j4N2rAcNXDNjg=;
 b=BD8PkINofqM+2m3ljrhp7yyLB4gF36LGhIrA52TPmuqRz0G59NwZy12isw2AmuAkgT
 v1uLLWoZSRvMasjsy8uKNF1Hu/kk5qGBU3q2CGhw4seK3Knar8a5iQnTX7yNci8hfppf
 WI+Un9B884eetXV5FLPsRWuumF76GmRa9te6j1Sfp1f1mdRHiSD+C0YCKGZKZDb1Itst
 kn47xmcDWasykdGVnEgTFj7Of6f5w8fnqGS6xEs4ux3XtSEShuObXS1CHOHuifSmjejf
 TtkZCmyyTyP4E1irDmE+RQM3LHjE/isJjmvWa49a4Ajlp/BboCr/UTRWXcSVoiIB1JB5
 lclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kb4Lv5bsGKOyoT35RNZwsybhTbpTu7j4N2rAcNXDNjg=;
 b=MDjjYp9vwS7l1ag/rQS7n0q+w/EDh7QSighNJa2FDVqyIvG/WEMfg2IVIJ5dt9XJL4
 /u+d9UbMeD3oq7Ou9lRjZaf/M1+45Fo+/gmVfbTH9W+nYjAX38xtmq96XAmzNxU2xdF9
 YRM6jfge6azTLFLf4l2114GysHVAuJXbGR0ha1/sQKOJE3BMDtJaeSW7WcrH7u9mn6Y2
 2VPoj0Xa0yHKUYIAVVPcM77/8GW7okRcocmk7lOOgE4uhg96aSvh54mdUTt9oiwuJvzf
 kxMiTe5LYVvxJYx1m0//srd3Mj3MG3tjKiAzfazCgahb0SJ94Id+0pzVguESEh/YLOgZ
 xgJQ==
X-Gm-Message-State: ANhLgQ3YHF+T+Ym4rDpTb+4Kmbp4QU4FK8CSv3u8ey5E/FPgUin+94ML
 ChlGTZgTUTCJBhLtf/bi+Os=
X-Google-Smtp-Source: ADFU+vu/O7sXCEcT5dR6Bauzu227GwJoOsPijCPDK2NrevZ8tRNghbiM0ipWULUPYcDi3HppdykmAQ==
X-Received: by 2002:a5d:6289:: with SMTP id k9mr28615174wru.36.1584959702716; 
 Mon, 23 Mar 2020 03:35:02 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id w67sm20085951wmb.41.2020.03.23.03.35.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 03:35:01 -0700 (PDT)
Date: Mon, 23 Mar 2020 11:35:00 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 4/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
Message-ID: <20200323103500.GA3883508@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-5-thierry.reding@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-5-thierry.reding@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_033504_655046_509B4870 
X-CRM114-Status: GOOD (  25.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1071242481390181746=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1071242481390181746==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 04:19:59PM +0100, Thierry Reding wrote:
> From: Joseph Lo <josephl@nvidia.com>
>=20
> Add the binding document for the external memory controller (EMC) which
> communicates with external LPDDR4 devices. It includes the bindings of
> the EMC node and a sub-node of EMC table which under the reserved memory
> node. The EMC table contains the data of the rates that EMC supported.
>=20
> Signed-off-by: Joseph Lo <josephl@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v5:
> - convert to dt-schema
>=20
>  .../nvidia,tegra210-emc.yaml                  | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/=
nvidia,tegra210-emc.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,=
tegra210-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nv=
idia,tegra210-emc.yaml
> new file mode 100644
> index 000000000000..caf21c08f9cc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra21=
0-emc.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/nvidia,tegra210-em=
c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVIDIA Tegra210 SoC External Memory Controller
> +
> +maintainers:
> +  - Thierry Reding <thierry.reding@gmail.com>
> +  - Jon Hunter <jonathanh@nvidia.com>
> +
> +description: |
> +  The EMC interfaces with the off-chip SDRAM to service the request stre=
am
> +  sent from the memory controller.
> +
> +properties:
> +  compatible:
> +    const: nvidia,tegra210-emc
> +
> +  reg:
> +    maxItems: 3
> +
> +  clocks:
> +    items:
> +      - description: external memory clock
> +
> +  clock-names:
> +    items:
> +      - const: emc
> +
> +  interrupts:
> +    items:
> +      - description: EMC general interrupt
> +
> +  memory-region:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle to a reserved memory region describing the table of EMC
> +      frequencies trained by the firmware

Hi Rob,

the dt_binding_check error aside, do you have any feedback on this
particular property? This is a replacement for what we used to do on
earlier chips where each frequency had its own device tree node, and
each such node had a bunch of properties, which made it not very
readable and cumbersome to parse.

The reason I ask about this specifically is because there are two
levels of bootloaders involved here to pass the information to the
kernel and I'd like to get those patches merged into the bootloaders
while I'm finishing up the Linux kernel support.

Dmitry asked whether the format of this table would need to be
documented in the bindings. I'm on the fence about this. On one hand
we don't have this documented anywhere, but on the other hand, the table
has things like revision fields and so on, so it could technically
change, even though it's very unlikely that it will.

If you do want it formatted, do you have any suggestions on what that
should look like? Should I simply dump the C struct definition into the
bindings document?

Thierry

> +
> +  nvidia,memory-controller:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle of the memory controller node
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - nvidia,memory-controller
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/tegra210-car.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #
> +    reserved-memory {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +        ranges;
> +
> +        emc_table: emc-table@83400000 {
> +            compatible =3D "nvidia,tegra210-emc-table";
> +            reg =3D <0x0 0x83400000 0x0 0x10000>;
> +            status =3D "okay";
> +        };
> +    };
> +
> +    external-memory-controller@7001b000 {
> +        compatible =3D "nvidia,tegra210-emc";
> +        reg =3D <0x0 0x7001b000 0x0 0x1000>,
> +              <0x0 0x7001e000 0x0 0x1000>,
> +              <0x0 0x7001f000 0x0 0x1000>;
> +        clocks =3D <&tegra_car TEGRA210_CLK_EMC>;
> +        clock-names =3D "emc";
> +        interrupts =3D <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> +        memory-region =3D <&emc_table>;
> +        nvidia,memory-controller =3D <&mc>;
> +    };
> --=20
> 2.24.1
>=20

--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl54kNEACgkQ3SOs138+
s6HGbw/8D3FMkRoHso29aJcXd+/hiG0qdIcibTe1TKRxxTnhKsgvv2OmUza/erFr
LdSaPpSnQh0oJmhy0AJErTuyIBXlunn4cT1uaLTs/0fWQ/gWvKS53lvPpJMctjU9
baut4xlJRxEtZCjofZXb1+elMvSvbt/25D/rS7a/fiCQ2ycKkWtDe5s96X1/Unsp
o7IHFnpb6b/QoNxrj/Oe/As/VLlEYm/7qpGcM9FYWGF/pTM/deaUT55leK+5+Ivz
CaS02xPMvcWW/bW1Ra72d0Wkox/1Q/phXiHS7D2LMfT5UFHE0x7ge3hFo/abkuAo
0OgKDB+5xeRKPxtDSfcI8P6B4KczVxHOMqxDOP/KiENt5ALJ3+ziykm013eqd65H
CZHKSbXvsRK44bknU3pOW1xcc1aZaqwl3tkW0Lcn5DIZkwQoV4/HVAt2CNgjPuNt
kTLiA4r4ihpZCpDNWubV3os5gs8AaaZnS/8Ww14FsQW5zD9NH3toEITLaWCn0UMO
UeIfgxCGQ2RgKaKRszXsMDC6R7i4X0kO+675PiIixsL5LlwEhOcbPp/+dkaU5q+Z
W2c5c3xwFez6FbcuLoYOez9Mcj5p5pFbrFPQknFmyk4Nqb9fBQtU5wwsxD53mGO2
r8Bpz30EBRWsYibJsB2mpnfE+R2GWpV9TIXbmLPAHfR/mwQqmD8=
=jRIY
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--


--===============1071242481390181746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1071242481390181746==--

