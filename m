Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EB21072FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2C1Fg00fetfUfVlu5N9907ES30ec6RH8aJCPQ0qeyDM=; b=Xm7RNW8YKyjoSAhs7cWA4RDB7
	0r61RjbutApoZSRw4+RDVpI5rsHpKuP+G4P8eoLCwLweCopjrmRDH5e3W/hugzXl1nBti2bYB7xCs
	06Ey8lyc5XIyHpyOj1ZsigQGNDYfaCBc+eQrluhXX419tcUqoamhCOM6S5mPGYpqzIZnJzOyNfUSo
	SKV+cxzz/LqV9CLVEuTc08G5lXsq4/6nKlxGIQZbbTbKr0rW1B7oWpn/8InT57oJvl1QubI8Px1qt
	YuaBgUj1GQCGdQoyuzOdXvNyN45kD5CfTQYA1flEBu9zjTQrzDVB5EjkSR++/BQiO+rtvjfLxq+73
	kMut6DnMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8qj-0003aP-Ho; Fri, 22 Nov 2019 13:19:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8qW-0003ZX-GC
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:19:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id w9so8648830wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 05:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KQd+UBdkIHylLgI4ZuDQ2nrwm/VHNHMGSZi4rAacJCY=;
 b=V+N1OBmT9T8Y8ETjhkF7RWjVeMc0iLicA7SiaKUk4Qcb9eDUch4SFOJF5vmWDLhYXg
 T+pCdwdUNQ7WJ+dxPJFAq3VF9Nov83o5UP0P33vnvKgfW1IV1FVEMLBCUXgjF9aVk9eg
 jHmEtJjesE8VI4KJtcjt6SD72IbMXOTrEuHi/Zp95uDXDubbQzQl/XAsXZ7Qe9BO5lYi
 lRLT9keMZEaPg2ix+S74BahUvpiIkfyarnNTXkYrInNpyJDE5z2Jy4KjRuDTCmpx28h1
 jF1sNj3EVJH87r8WI7v8/ZTnOt7rZA65CVl726/v5ECZgWRBzSHCezBqhH4DtG+ByjJY
 IgfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KQd+UBdkIHylLgI4ZuDQ2nrwm/VHNHMGSZi4rAacJCY=;
 b=sotO5b82/4y7qpv9dnpY7ZA3FOtoqFvb6psseMKP3amM7WdYxx9jaYgDGdRqUoJs+z
 y68bUKznDyrAEGKQ/3OfAPj6mTF2VKj14W4shTJAQg7tcqPsL8Bp5KarU1cW79lt3pF2
 Lb0b7TLj0YU/j53XJ39rEu3FN9mXrUL8Yc9P8uAB0PADR1brGVwWHUh5yzt1gpVYbFMD
 NYtC0KhtRNAD4AV9TTkcPjz9W9RAqNGFKfufN5mCmvm45toHw72gBwWw7HSVZbVdIH8j
 AtzgCCiyBQglwErpLmVCaSi6xHgTGvu0HvdE5Bp4r+DyYnM7bSU/PyLpHJRnd9rZ4iLQ
 J3ig==
X-Gm-Message-State: APjAAAUgvGkgK+KMYhqW0YUrYNM64i7MDXtqPjVc1Sbgp4GRYW53vu4t
 Gzhh8Yhr/D64i2hFbldEgNE=
X-Google-Smtp-Source: APXvYqz5qF4/kOMMATnom8x1IKG98kZ5yatyzgfKDWp1Ord7P/4Ec/xSAF93cKgsLxgxcIsIa+kgng==
X-Received: by 2002:a5d:65c5:: with SMTP id e5mr17538838wrw.311.1574428774046; 
 Fri, 22 Nov 2019 05:19:34 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id q15sm7614676wrs.91.2019.11.22.05.19.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 05:19:32 -0800 (PST)
Date: Fri, 22 Nov 2019 14:19:31 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/6] dt-bindings: PCI: tegra: Add DT support for PCIe EP
 nodes in Tegra194
Message-ID: <20191122131931.GB1315704@ulmo>
References: <20191122104505.8986-1-vidyas@nvidia.com>
 <20191122104505.8986-3-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20191122104505.8986-3-vidyas@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_051936_566541_C74B72DD 
X-CRM114-Status: GOOD (  30.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============0052738084123128460=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0052738084123128460==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PmA2V3Z32TCmWXqI"
Content-Disposition: inline


--PmA2V3Z32TCmWXqI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 22, 2019 at 04:15:01PM +0530, Vidya Sagar wrote:
> Add support for PCIe controllers that can operate in endpoint mode
> in Tegra194.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  .../bindings/pci/nvidia,tegra194-pcie-ep.txt  | 138 ++++++++++++++++++
>  1 file changed, 138 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194=
-pcie-ep.txt

The vast majority of this is a duplication of the host mode device tree
bindings. I think it'd be best to combine both and only highlight where
both modes differ.

The designware-pcie.txt binding does something similar.

> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-e=
p.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.txt
> new file mode 100644
> index 000000000000..4676ccf7dfa5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.txt
> @@ -0,0 +1,138 @@
> +NVIDIA Tegra PCIe Endpoint mode controller (Synopsys DesignWare Core bas=
ed)
> +
> +Some of the PCIe controllers which are based on Synopsys DesignWare PCIe=
 IP
> +are dual mode i.e. they can work in root port mode or endpoint mode but =
one
> + at a time. Since they are based on DesignWare IP, they inherit all the =
common
> +properties defined in designware-pcie.txt.
> +
> +Required properties:
> +- compatible: For Tegra19x, must contain "nvidia,tegra194-pcie".

The device tree snippets that you added have "nvidia,tegra194-pcie-ep"
for EP mode controllers. So either this is wrong or the DTS files are
wrong.

This device tree binding describes the exact same hardware, so I don't
think we necessarily need two different compatible strings. It's fairly
easy to distinguish between which mode to run in by looking at which
properties exist. EP mode for example is the only one that uses the
"addr_space" reg entry.

Rob, do you know why a different compatible string was chosen for the EP
mode? Looking at the driver, there are only a handful of differences in
the programming, but most of the driver remains identical. An extra DT
compatible string seems a bit exaggerated since it suggests that this is
actually different hardware, where it clearly isn't.

> +  Tegra194: Only C0, C4 & C5 controllers are dual mode controllers.
> +- power-domains: A phandle to the node that controls power to the respec=
tive
> +  PCIe controller and a specifier name for the PCIe controller. Followin=
g are
> +  the specifiers for the different PCIe controllers
> +    TEGRA194_POWER_DOMAIN_PCIEX8B: C0
> +    TEGRA194_POWER_DOMAIN_PCIEX4A: C4
> +    TEGRA194_POWER_DOMAIN_PCIEX8A: C5
> +  these specifiers are defined in
> +  "include/dt-bindings/power/tegra194-powergate.h" file.
> +- reg: A list of physical base address and length pairs for each set of
> +  controller registers. Must contain an entry for each entry in the reg-=
names
> +  property.
> +- reg-names: Must include the following entries:
> +  "appl": Controller's application logic registers
> +  "atu_dma": iATU and DMA registers. This is where the iATU (internal Ad=
dress
> +             Translation Unit) registers of the PCIe core are made avail=
able
> +             for SW access.
> +  "dbi": The aperture where root port's own configuration registers are
> +         available
> +  "addr_space": Used to map remote RC address space
> +- interrupts: A list of interrupt outputs of the controller. Must contai=
n an
> +  entry for each entry in the interrupt-names property.
> +- interrupt-names: Must include the following entry:
> +  "intr": The Tegra interrupt that is asserted for controller interrupts
> +- clocks: Must contain an entry for each entry in clock-names.
> +  See ../clocks/clock-bindings.txt for details.
> +- clock-names: Must include the following entries:
> +  - core
> +- resets: Must contain an entry for each entry in reset-names.
> +  See ../reset/reset.txt for details.
> +- reset-names: Must include the following entries:
> +  - apb
> +  - core
> +- phys: Must contain a phandle to P2U PHY for each entry in phy-names.
> +- phy-names: Must include an entry for each active lane.
> +  "p2u-N": where N ranges from 0 to one less than the total number of la=
nes
> +- nvidia,bpmp: Must contain a pair of phandle to BPMP controller node fo=
llowed
> +  by controller-id. Following are the controller ids for each controller.
> +    0: C0
> +    4: C4
> +    5: C5
> +- vddio-pex-ctl-supply: Regulator supply for PCIe side band signals
> +- nvidia,pex-rst-gpio: Must contain a phandle to a GPIO controller follo=
wed by
> +  GPIO that is being used as PERST signal

Why is this NVIDIA specific? Do other instantiations of the DW IP not
also need a means to define which GPIO is the reset?

> +
> +Optional properties:
> +- pinctrl-names: A list of pinctrl state names.
> +  It is mandatory for C5 controller and optional for other controllers.
> +  - "default": Configures PCIe I/O for proper operation.
> +- pinctrl-0: phandle for the 'default' state of pin configuration.
> +  It is mandatory for C5 controller and optional for other controllers.
> +- supports-clkreq: Refer to Documentation/devicetree/bindings/pci/pci.txt
> +- nvidia,update-fc-fixup: This is a boolean property and needs to be pre=
sent to
> +    improve performance when a platform is designed in such a way that it
> +    satisfies at least one of the following conditions thereby enabling =
root
> +    port to exchange optimum number of FC (Flow Control) credits with
> +    downstream devices
> +    1. If C0/C4/C5 run at x1/x2 link widths (irrespective of speed and M=
PS)
> +    2. If C0/C4/C5 operate at their respective max link widths and
> +       a) speed is Gen-2 and MPS is 256B
> +       b) speed is >=3D Gen-3 with any MPS
> +- nvidia,aspm-cmrt-us: Common Mode Restore Time for proper operation of =
ASPM
> +   to be specified in microseconds
> +- nvidia,aspm-pwr-on-t-us: Power On time for proper operation of ASPM to=
 be
> +   specified in microseconds
> +- nvidia,aspm-l0s-entrance-latency-us: ASPM L0s entrance latency to be
> +   specified in microseconds
> +
> +NOTE:- On Tegra194's P2972-0000 platform, only C5 controller can be enab=
led to
> +operate in the endpoint mode because of the way the platform is designed.
> +There is a mux that needs to be programmed to let the REFCLK from the ho=
st to
> +flow into C5 controller when it operates in the endpoint mode. This mux =
is
> +controlled by the GPIO (AA, 5) and it needs to be driven 'high'. For thi=
s to
> +happen, set status of "pex-refclk-sel-high" node under "gpio@c2f0000" no=
de to
> +'okay'.
> +	When any dual mode controller is made to operate in the endpoint mode,
> +please make sure that its respective root port node's status is set to
> +'disabled'.

This seems very brittle to me. There's no good way how we can detect
such misconfigurations. If instead we only have one node describing the
hardware fully, the chances of configuring things wrong (by for example
enabling both the host and EP mode device tree nodes) can be reduced.

So I think instead of duplicating all of the device tree content to have
both a host and an EP node for each controller, it'd be better to just
have a single node and let the device tree bindings specify which
changes to apply to switch into EP mode.

For example, there should be nothing wrong with specifying some of the
EP-only properties (like num-ib-windows and num-ob-windows) all the time
and only use them when we actually run in EP mode.

As I mentioned earlier, there are a couple of easy ways to distinguish
the modes. The presence of the "addr_space" reg entry is one example,
but we could also key off the nvidia,pex-rst-gpio property, since that
(presumably) wouldn't be needed for host mode.

That way we can just add default, host mode entries to tegra194.dtsi and
whenever somebody wants to enable EP mode, they can just override the
node in the board-level DTS file, like so:

	pcie@141a0000 {
		reg =3D <0x00 0x141a0000 0x0 0x00020000   /* appl registers (128K)      */
		       0x00 0x3a040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  */
		       0x00 0x3a080000 0x0 0x00040000   /* DBI reg space (256K)       */
		       0x1c 0x00000000 0x4 0x00000000>; /* Address Space (16G)        */
		reg-names =3D "appl", "atu_dma", "dbi", "addr_space";

		nvidia,pex-rst-gpio =3D <&gpio TEGRA194_MAIN_GPIO(GG, 1) GPIO_ACTIVE_LOW>;
	};

Thierry

> +
> +Examples:
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +Tegra194:
> +--------
> +
> +	pcie_ep@141a0000 {
> +		compatible =3D "nvidia,tegra194-pcie-ep", "snps,dw-pcie-ep";
> +		power-domains =3D <&bpmp TEGRA194_POWER_DOMAIN_PCIEX8A>;
> +		reg =3D <0x00 0x141a0000 0x0 0x00020000   /* appl registers (128K)    =
  */
> +		       0x00 0x3a040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  =
*/
> +		       0x00 0x3a080000 0x0 0x00040000   /* DBI reg space (256K)       =
*/
> +		       0x1c 0x00000000 0x4 0x00000000>; /* Address Space (16G)        =
*/
> +		reg-names =3D "appl", "atu_dma", "dbi", "addr_space";
> +
> +		num-lanes =3D <8>;
> +		num-ib-windows =3D <2>;
> +		num-ob-windows =3D <8>;
> +
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&clkreq_c5_bi_dir_state>;
> +
> +		clocks =3D <&bpmp TEGRA194_CLK_PEX1_CORE_5>;
> +		clock-names =3D "core";
> +
> +		resets =3D <&bpmp TEGRA194_RESET_PEX1_CORE_5_APB>,
> +			 <&bpmp TEGRA194_RESET_PEX1_CORE_5>;
> +		reset-names =3D "apb", "core";
> +
> +		interrupts =3D <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;	/* controller interru=
pt */
> +		interrupt-names =3D "intr";
> +
> +		nvidia,bpmp =3D <&bpmp 5>;
> +
> +		nvidia,aspm-cmrt-us =3D <60>;
> +		nvidia,aspm-pwr-on-t-us =3D <20>;
> +		nvidia,aspm-l0s-entrance-latency-us =3D <3>;
> +
> +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> +
> +		nvidia,pex-rst-gpio =3D <&gpio TEGRA194_MAIN_GPIO(GG, 1)
> +					GPIO_ACTIVE_LOW>;
> +
> +		phys =3D <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> +
> +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> +			    "p2u-5", "p2u-6", "p2u-7";
> +	};
> --=20
> 2.17.1
>=20

--PmA2V3Z32TCmWXqI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3X4GEACgkQ3SOs138+
s6GkExAAwHC50oYPKywMVU4+enG/REpduIxGnQFm5tz3YahIvTQHnSlwcV4qz4n+
O3hgrVD9W0bNYlKAX05T9J5cxgLPaSgC92Ofa4S491TedN8Jdlb9cDbG1evoO+KB
vxS0XOEwc7SKxM4JtSAK3TcpDHb0YZJsXeSQW8mCLEXcY72u6zMnXlh9vS9MApvS
XTgNr4YVPAf6VaVfJB4eeBbkMcz0qa8yG0BryMQ0Puyol62l9vcLleDgsUNBwOD+
fvK3kP81kyj+O1CblbzW8e7KiMJxfUbWB77pqUFgmkp+2ts0MnPlFl59dvsdQAiJ
oJoHyUOgJLE/J2s+l96f5AKOCAeILkYCy+33SXuC8SGiMvWeLGQiFM8rKRVJUd4A
H4TT6ogdfvxIVhQgZTDmOp+YBP4x/l4L2av3tPquiuh4yX8uYFx5cN987pTjI8S3
4WCoyqFWzJLZjBfSK98Gn3gNtgBHJZ4uJsG7BgQasdjkc+nCXcXnADAK3VEd6+tz
3gblI6Eh4ou9NPwBlhtnfPsbG//z6acpUA5fsHuFIeK9qbSgUmASLahgONH+PlgY
WxPQaZkMElKRO08PRJzmxSomkS1mj0unsLaUkThb/LQVDxlB99AntIhwXJGyIwjl
v4zSCB6aJZsnI+VHDtGi0va3OD04gGVyDDDB+iiroNZ7iI9CwsI=
=mD9u
-----END PGP SIGNATURE-----

--PmA2V3Z32TCmWXqI--


--===============0052738084123128460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0052738084123128460==--

