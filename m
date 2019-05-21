Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A3F24D34
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eiNtnl+gF6fEWGmd06ZZpYYTbHzW/WnlBmI+8xLuMcc=; b=ktObx5sCrgmue2IQi6lsfuMM6
	zObFdGIKVcUmdKw6vn0vE72RAQIEjqrrY9Geu9+9HoAqnwvwFUPRJGcRrnq48dIQ60gMG3E8iN9YX
	rYRPKN+ZVvET8GvXSw4SgU9jlZumIk1LTmZIL/16zFA2yk55O2+OjCklDfK0dfIE/k6zTs0Ni/0fm
	NRdGEQOquowcdHVseeJ/mh+Vh29JjK0votTo9ToquWqtcBsvcgjNVuUj5Mb29ZJkngjh/uA9+wR3K
	U5f6JqaKhx3MbCRHplXSmqSDo/FrhibdSpIClfK78lLFd30vRdC1KE3vpturqHvN5HPMLNBsJzBob
	hy257TwcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2NK-0000KK-MD; Tue, 21 May 2019 10:52:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2ND-0000Jt-FL
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:52:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id c77so2482245wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HBcDMKCLoxH9JY160lWGF8D+AoJf2h9sY0HtKRx1ARI=;
 b=Gk8AMrS6UzHlFPo2QVg1y3zeVjWzbW2RZ659opvhClCtlY8/k6aYWj/M8yDixP4yxX
 cKj8keaIu3Eb8nfEyQNP4cMIqlcqpz6I9CopYT4b8haSqbRXpI3FdIEwWMqhO5cKEbxF
 MEm5ZCVOzRDcmGfRRrgaYuMwl2Z6M5+0ZKveNxtSRcNDQAaXsUUKtU3Q29KJvQParRKG
 AGcXRV8fA6vVVNTk7P60iMvG5htvzWWEmkjy4uUQDPRLWGgQR76mcPY7mwJKXqQBwGP4
 2fAHNuJpVLR7ZapVHPEfq2C7MgZEPSztQnscyeSn1tDgpbU/IHP7JV0XWz473rdNIq7U
 eKiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HBcDMKCLoxH9JY160lWGF8D+AoJf2h9sY0HtKRx1ARI=;
 b=h7z5N/U7R2+aOPv8G6c1Dl7res+2rKGHd7BSVsthxN2fs2jkqqr+tPwoSlllifxic9
 wY2BL/mUKRnHGxsgRIRk1WXF5AR67ngGL0s4tqzV80VERlJQrBoDIuv4fwfsZPuXhQnE
 m/PzF3HcbryCFVhDfJmS2YLsQj37Fphj5UqlXvs94otW0t8sBZ+ozcQG3BCaaZ1/JAvM
 ENDV9gpQ5R+mxacEI4G2NLkYGDAMRDekHbLwr5LW29NxdnaAQdyzPc3LLPaZ2fKWwS6n
 f0JGR8RuOWbidv1sX2cFRRO+8gPmALI0SXPq9waKUwUKOIcoZ0WdSpKZsujR0JaQuJrm
 ssSA==
X-Gm-Message-State: APjAAAV4HIuweim360EUUG2s0XMtuMntrK27KxJM49l+AHh0qfcWZUNC
 p4EMxe0XSCwXfGGplcrI0FlRkZQtAXI=
X-Google-Smtp-Source: APXvYqzQ9NR+3sx3iS2dl05Sv1JlhuBHyb/XnFrcv32mSv4hkJ962qmqmBdC4mZgy+TkXS2DEuEQYQ==
X-Received: by 2002:a1c:c1c8:: with SMTP id r191mr2624904wmf.99.1558435917381; 
 Tue, 21 May 2019 03:51:57 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id x187sm3098357wmg.11.2019.05.21.03.51.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:51:56 -0700 (PDT)
Date: Tue, 21 May 2019 12:51:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 09/15] dt-bindings: PCI: tegra: Add device tree
 support for Tegra194
Message-ID: <20190521105155.GI29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-10-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-10-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_035159_512415_FFC2B11C 
X-CRM114-Status: GOOD (  28.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============8024663068154417846=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8024663068154417846==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YrQNB5Deg1WGKZi3"
Content-Disposition: inline


--YrQNB5Deg1WGKZi3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:40PM +0530, Vidya Sagar wrote:
> Add support for Tegra194 PCIe controllers. These controllers are based
> on Synopsys DesignWare core IP.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v6]:
> * Changed description of the property "nvidia,bpmp".
> * Removed property "nvidia,disable-aspm-states".
>=20
> Changes since [v5]:
> * Removed 'max-link-speed' as it is going to be a common sub-system prope=
rty
> * Removed 'nvidia,init-link-speed' as there isn't much value addition
> * Removed 'nvidia,wake-gpios' for now
> * Addressed review comments from Thierry and Rob in general
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * Using only 'Cx' (x-being controller number) format to represent a contr=
oller
> * Changed to 'value: description' format where applicable
> * Changed 'nvidia,init-speed' to 'nvidia,init-link-speed'
> * Provided more documentation for 'nvidia,init-link-speed' property
> * Changed 'nvidia,pex-wake' to 'nvidia,wake-gpios'
>=20
> Changes since [v1]:
> * Added documentation for 'power-domains' property
> * Removed 'window1' and 'window2' properties
> * Removed '_clk' and '_rst' from clock and reset names
> * Dropped 'pcie' from phy-names
> * Added entry for BPMP-FW handle
> * Removed offsets for some of the registers and added them in code and wo=
uld be pickedup based on
>   controller ID
> * Changed 'nvidia,max-speed' to 'max-link-speed' and is made as an option=
al
> * Changed 'nvidia,disable-clock-request' to 'supports-clkreq' with invert=
ed operation
> * Added more documentation for 'nvidia,update-fc-fixup' property
> * Removed 'nvidia,enable-power-down' and 'nvidia,plat-gpios' properties
> * Added '-us' to all properties that represent time in microseconds
> * Moved P2U documentation to a separate file
>=20
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 158 ++++++++++++++++++
>  1 file changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194=
-pcie.txt
>=20
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.t=
xt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> new file mode 100644
> index 000000000000..0119f40bbd11
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> @@ -0,0 +1,158 @@
> +NVIDIA Tegra PCIe controller (Synopsys DesignWare Core based)
> +
> +This PCIe host controller is based on the Synopsis Designware PCIe IP
> +and thus inherits all the common properties defined in designware-pcie.t=
xt.
> +
> +Required properties:
> +- compatible: For Tegra19x, must contain "nvidia,tegra194-pcie".
> +- device_type: Must be "pci"
> +- power-domains: A phandle to the node that controls power to the respec=
tive
> +  PCIe controller and a specifier name for the PCIe controller. Followin=
g are
> +  the specifiers for the different PCIe controllers
> +    TEGRA194_POWER_DOMAIN_PCIEX8B: C0
> +    TEGRA194_POWER_DOMAIN_PCIEX1A: C1
> +    TEGRA194_POWER_DOMAIN_PCIEX1A: C2
> +    TEGRA194_POWER_DOMAIN_PCIEX1A: C3
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
> +  "config": As per the definition in designware-pcie.txt
> +  "atu_dma": iATU and DMA registers. This is where the iATU (internal Ad=
dress
> +             Translation Unit) registers of the PCIe core are made avail=
able
> +             for SW access.
> +  "dbi": The aperture where root port's own configuration registers are
> +         available
> +- interrupts: A list of interrupt outputs of the controller. Must contai=
n an
> +  entry for each entry in the interrupt-names property.
> +- interrupt-names: Must include the following entries:
> +  "intr": The Tegra interrupt that is asserted for controller interrupts
> +  "msi": The Tegra interrupt that is asserted when an MSI is received
> +- bus-range: Range of bus numbers associated with this controller
> +- #address-cells: Address representation for root ports (must be 3)
> +  - cell 0 specifies the bus and device numbers of the root port:
> +    [23:16]: bus number
> +    [15:11]: device number
> +  - cell 1 denotes the upper 32 address bits and should be 0
> +  - cell 2 contains the lower 32 address bits and is used to translate t=
o the
> +    CPU address space
> +- #size-cells: Size representation for root ports (must be 2)
> +- ranges: Describes the translation of addresses for root ports and stan=
dard
> +  PCI regions. The entries must be 7 cells each, where the first three c=
ells
> +  correspond to the address as described for the #address-cells property
> +  above, the fourth and fifth cells are for the physical CPU address to
> +  translate to and the sixth and seventh cells are as described for the
> +  #size-cells property above.
> +  - Entries setup the mapping for the standard I/O, memory and
> +    prefetchable PCI regions. The first cell determines the type of regi=
on
> +    that is setup:
> +    - 0x81000000: I/O memory region
> +    - 0x82000000: non-prefetchable memory region
> +    - 0xc2000000: prefetchable memory region
> +  Please refer to the standard PCI bus binding document for a more detai=
led
> +  explanation.
> +- #interrupt-cells: Size representation for interrupts (must be 1)
> +- interrupt-map-mask and interrupt-map: Standard PCI IRQ mapping propert=
ies
> +  Please refer to the standard PCI bus binding document for a more detai=
led
> +  explanation.
> +- clocks: Must contain an entry for each entry in clock-names.
> +  See ../clocks/clock-bindings.txt for details.
> +- clock-names: Must include the following entries:
> +  - core
> +- resets: Must contain an entry for each entry in reset-names.
> +  See ../reset/reset.txt for details.
> +- reset-names: Must include the following entries:
> +  - core_apb

Perhaps leave away the "core_" prefix here and simply call this "apb"?

> +  - core
> +- phys: Must contain a phandle to P2U PHY for each entry in phy-names.
> +- phy-names: Must include an entry for each active lane.
> +  "p2u-N": where N ranges from 0 to one less than the total number of la=
nes
> +- nvidia,bpmp: Must contain a pair of phandle to BPMP controller node fo=
llowed
> +  by controller-id. Following are the controller ids for each controller.
> +    0: C0
> +    1: C1
> +    2: C2
> +    3: C3
> +    4: C4
> +    5: C5
> +- vddio-pex-ctl-supply: Regulator supply for PCIe side band signals
> +
> +Optional properties:
> +- supports-clkreq: Refer to Documentation/devicetree/bindings/pci/pci.txt
> +- nvidia,update-fc-fixup: This is a boolean property and needs to be pre=
sent to
> +    improve perf when a platform is designed in such a way that it satis=
fies at

This is a descriptive text, so it makes sense to spell out "performance"
for better readability.

> +    least one of the following conditions thereby enabling root port to
> +    exchange optimum number of FC (Flow Control) credits with downstream=
 devices
> +    1. If C0/C4/C5 run at x1/x2 link widths (irrespective of speed and M=
PS)
> +    2. If C0/C1/C2/C3/C4/C5 operate at their respective max link widths =
and
> +       a) speed is Gen-2 and MPS is 256B
> +       b) speed is >=3D Gen-3 with any MPS

I'm not sure if I asked this before, but can we not determine that the
configuration matches one of these conditions and select FC fixup mode
at runtime in that case?

> +- "nvidia,aspm-cmrt-us": Common Mode Restore time for proper operation o=
f ASPM

You can drop the quotes around the property names. Also, perhaps also
capitalize "Time" since it's part of the acronym expansion for CMRT.

> +   to be specified in microseconds
> +- "nvidia,aspm-pwr-on-t-us": Power On time for proper operation of ASPM =
to be
> +   specified in microseconds
> +- "nvidia,aspm-l0s-entrance-latency-us": ASPM L0s entrance latency to be
> +   specified in microseconds
> +
> +Examples:
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +Tegra194:
> +--------
> +
> +SoC DTSI:

The example below looks like it's got board specific bits in it, so
perhaps just drop the "SoC DTSI:" caption.

> +
> +	pcie@14180000 {
> +		compatible =3D "nvidia,tegra194-pcie", "snps,dw-pcie";
> +		power-domains =3D <&bpmp TEGRA194_POWER_DOMAIN_PCIEX8B>;
> +		reg =3D <0x00 0x14180000 0x0 0x00020000   /* appl registers (128K)    =
  */
> +		       0x00 0x38000000 0x0 0x00040000   /* configuration space (256K) =
*/
> +		       0x00 0x38040000 0x0 0x00040000>; /* iATU_DMA reg space (256K)  =
*/
> +		reg-names =3D "appl", "config", "atu_dma";
> +
> +		#address-cells =3D <3>;
> +		#size-cells =3D <2>;
> +		device_type =3D "pci";
> +		num-lanes =3D <8>;
> +		linux,pci-domain =3D <0>;
> +
> +		clocks =3D <&bpmp TEGRA194_CLK_PEX0_CORE_0>;
> +		clock-names =3D "core";
> +
> +		resets =3D <&bpmp TEGRA194_RESET_PEX0_CORE_0_APB>,
> +			 <&bpmp TEGRA194_RESET_PEX0_CORE_0>;
> +		reset-names =3D "core_apb", "core";
> +
> +		interrupts =3D <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,	/* controller interru=
pt */
> +			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;	/* MSI interrupt */
> +		interrupt-names =3D "intr", "msi";
> +
> +		#interrupt-cells =3D <1>;
> +		interrupt-map-mask =3D <0 0 0 0>;
> +		interrupt-map =3D <0 0 0 0 &gic 0 72 0x04>;

Use the symbolic definitions GIC_SPI and IRQ_TYPE_LEVEL_HIGH here as
well.

> +
> +		nvidia,bpmp =3D <&bpmp>;

This should contain a controller ID according to the bindings.

> +
> +		supports-clkreq;
> +		nvidia,disable-aspm-states =3D <0xf>;

This is no longer documented above.

> +		nvidia,controller-id =3D <0>;

This is no longer documented above.

> +		nvidia,aspm-cmrt-us =3D <60>;
> +		nvidia,aspm-pwr-on-t-us =3D <20>;
> +		nvidia,aspm-l0s-entrance-latency-us =3D <3>;
> +
> +		bus-range =3D <0x0 0xff>;
> +		ranges =3D <0x81000000 0x0 0x38100000 0x0 0x38100000 0x0 0x00100000   =
   /* downstream I/O (1MB) */
> +			  0x82000000 0x0 0x38200000 0x0 0x38200000 0x0 0x01E00000      /* non=
-prefetchable memory (30MB) */
> +			  0xc2000000 0x18 0x00000000 0x18 0x00000000 0x4 0x00000000>;  /* pre=
fetchable memory (16GB) */

Perhaps align the individual cells to make this more readable?

> +
> +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> +
> +		phys =3D <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
> +		       <&p2u_hsio_5>;
> +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3";
> +	};

Thanks,
Thierry

--YrQNB5Deg1WGKZi3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj2EgACgkQ3SOs138+
s6F9Tg/8DULF5J6wf4eLdR6TpIhskN1tAT8nstaTXpMBEHmwMjcwaqwuaftOvwam
/hNUDZL2yRsp5AmMcxgPVxQ7yxEIKDT37QLce+U636G79pcXQfPoRoqeuwq7QgcU
dPGUkN+qI/E9XLojwtL/T6yO4ZSxaySuRmedsTdMqT5TcppXkULGqrWQtAMdv5T4
J0uIayb9tuqcVVkYPLVeMnaCaaAiRsD6BBnPFBcDe+LE2W8EJeJBOdMbDNp0YdBN
ut/qrVdhzz6nwE71ZzmJLZ8LPHJqX0+uZc8ohApqt4JtTMv3shnwGYIYhnOfo0wI
hSe+oM2E1jiVokxl5hPqvLve+KZIMilHHDjhuSB+JMh25md/I9PoVB4XEd3WrEOw
can1kZgM/SOK5SOxMFDAWuSLMkFJzeG78rlBvdhWVukW+TCk1moLkhCzeDvtcFRl
0wEXGfC/tlQ0CLDMQYJJqYZSxBDSdVpGVXWplX1y2fyH4R4BqGY8cvtc1yLXG3F1
W6yspptSYmYX1BsnSwKQpifyC/eAyuuzk7ux8pPfyKObiglX+XNjJR5VkaJ8jcZQ
UzDRamMhNNnnGQNU4OTgnQccI1GqBZfSI1yUQVkSkouC7HVSYXDRGnIdHVc9eait
1aMstvSz0U1Zld6Qpvys0LI8X+rms4cgJ+8leovTNo+hyBEscTY=
=onc4
-----END PGP SIGNATURE-----

--YrQNB5Deg1WGKZi3--


--===============8024663068154417846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8024663068154417846==--

