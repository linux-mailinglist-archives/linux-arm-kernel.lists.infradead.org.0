Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F45B12C30
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MrDBCYOacJYrdOcjfLiwuCLVKKqHLSyw/tbaExUnkBU=; b=KiUgthmZ3THa0h6Ltx0r1/6ml
	Vy0ngFLgT0qEgYwalN9UB0u64/wERiUROy+cTQhQqhyV8xlAVN17xlMG/osKDVTjJihbvPpFm7TEj
	j1oR1XixviBAr7ju0mtbRVoSipITmfsOcsN17aS7AdB/pb9FiF5XHSl5Jxhgxtghciii1r1T2eiRE
	J9o9RrJSXZfVY9aNJdkmIiym87Ouj5qKmrZl5rpwwiyQifkXdGSRwlxfGX9zQrxBdsihfOCf0osya
	/emMy8+6+UO3W8nYR7ZFKl+AIBmoKbrpgI6K+5k65mtPorlmUop0mrQD+97N4orfXjN07Hcys9E/V
	F1/Ym0p0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWE8-0005Fs-PK; Fri, 03 May 2019 11:19:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWDv-00058o-AO
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:19:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id s15so7346904wra.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kznYLKi373KSnxJXDEYDyqZTWv2DWOlCYoAQA1dKIN4=;
 b=FU+THmY/gcswXh6kfdRTql4G69DBYAoMINIRi9/isJM3rQT42NHCyGWxBOFB7XPOil
 PQQA3NgsBdaDERC8fw/2t1Q40vBV8SsxjOW47eKwhfCG4G0DyOnpmC3jDKyiHMUFTWPl
 y/RS+rURUlziaMzPVf+478gxzmAy7/Y0+tu79je1cyE5DYC2TaGJsI1HlgWf7ur01Srr
 tb4TcHZJygypX5g8GHCiUWlq2CVxcgq2grDLC6HPFlauh1pWCjoZTMlrP1UCa9qgO9l8
 yP3ZShn4FRYzvpUu3WwVThp5XbXBDiNRBUzyoH9KOnu4CQlBO3PZm0Z6vHl/0scv0Gu0
 E3yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kznYLKi373KSnxJXDEYDyqZTWv2DWOlCYoAQA1dKIN4=;
 b=TGaWYIgncG/rArnQzyu+/D6WOsjqobxWiLz5regzSqeSK0uNA5n5yCdRs5255xCg4D
 qQOPwlKshZW9tgTxD2vrEiqtzhYJlz2DAUxS9robLzqAIyoEChWXnbPnPxKrBFOp5OJH
 gS9PIP+ugaRBYIvophPfTkQKkenxo5iD49nurpzo+flWZge4iS4v0fsZbuN1YXGzXdmA
 UtDnF6YHB8mXl9Ehm7NBjIvEi0wmwRvD3+ZVGtjg3JNfemhOvmQpID26YvZFHkaFigeT
 7guImeez9Mog7iW52oU0Lc6AZTaBrbaYG/WBkNfWQBhgUVwnxVqPwDMRUM7odVkpLWpy
 p6Mg==
X-Gm-Message-State: APjAAAVY9vuS3o41qyezNIrRvEg2GxlIZwAivAtO4h9oTv+akGgpKTPF
 d1arz5JTh14rI3DmETy5LmM=
X-Google-Smtp-Source: APXvYqxFMF7YNkHtXxqIFuqEy8MLdwT3LvZrCohDAJJRUH1Z2se9pof/X+KXX22J76siKQpKpsS8QQ==
X-Received: by 2002:a5d:52ce:: with SMTP id r14mr6909008wrv.224.1556882365330; 
 Fri, 03 May 2019 04:19:25 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id s7sm1895613wrn.84.2019.05.03.04.19.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 04:19:24 -0700 (PDT)
Date: Fri, 3 May 2019 13:19:23 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 10/16] dt-bindings: PCI: tegra: Add device tree
 support for T194
Message-ID: <20190503111923.GE32400@ulmo>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-11-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190424052004.6270-11-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_041927_357282_367F274D 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============3157606229928013833=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3157606229928013833==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gMR3gsNFwZpnI/Ts"
Content-Disposition: inline


--gMR3gsNFwZpnI/Ts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2019 at 10:49:58AM +0530, Vidya Sagar wrote:
> Add support for Tegra194 PCIe controllers. These controllers are based
> on Synopsys DesignWare core IP.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
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
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 187 ++++++++++++++++++
>  1 file changed, 187 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194=
-pcie.txt
>=20
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.t=
xt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> new file mode 100644
> index 000000000000..208dff126108
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> @@ -0,0 +1,187 @@
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
> +- reg: A list of physical base address and length for each set of contro=
ller

Perhaps "list of physical base address and length pairs".

> +  registers. Must contain an entry for each entry in the reg-names prope=
rty.
> +- reg-names: Must include the following entries:
> +  "appl": Controller's application logic registers
> +  "config": As per the definition in designware-pcie.txt
> +  "atu_dma": iATU and DMA registers. This is where the iATU (internal Ad=
dress
> +             Translation Unit) registers of the PCIe core are made avail=
able
> +             fow SW access.

s/fow/for/

Thierry

--gMR3gsNFwZpnI/Ts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzMI7sACgkQ3SOs138+
s6EIIQ/+JneyIE1QInUy25Ht9TxH6uK1NfNwHzcE3w7WQOHSFZ6cCm60usW9tX7y
5bVqKGD/Qk/van6DX4OJbVWqUXSU4kKpCvL6e9ImuJn50qtt+SZCvzn2ITB1RrMY
cx9g/qtQjrRgv9lnezcEBGFGFk0Mr828WkPfzZSIIT2xqJ7Hn+Irp5gvU+6LoDhv
7J3FiCWf08MsSP/GmoTROtgkEl72UkltbhPUNb+YtL/AZd858eXm7ao/zP3mUIO2
f67wTlzzqC1kYJYLERm4DOVlrpPehlz+fp+4QXbKsBovY4qkkRJCW4FM9F9d7Qe9
z5wGlqk7SRZQPNDAVGhZ4XWRjpyiMss72Mqv4FjHU+FQiuney9b/NVu60XtJ0JqA
LMo+JVI8w+5Pqq/n5+5mN9aM/dmmumTyaPZiQ/AASYX7iU8dXe6aKIcgZo+a10LW
X4fezVQ/BlzdHQ72ADFg66g1UkONCAYFaLemAf60OYJQQPKLTy4dAaemtleMoLsF
hbKQng3PJSkG8L33JiMlvGg4N0cIaWx+1ugkMLrjbgrx8z8qceHyc3nrGvBPUyTU
X9srLQMC7WsiahwlWUZPqMewXYPPXFKDg1+ExlLkQi/vSt88iJcu4X+ljt693WmR
GOIY4OkOtmYrcJZEdJLmxCjqTNMkxCRrKjSpv3OEHCigvugwYeo=
=pPtB
-----END PGP SIGNATURE-----

--gMR3gsNFwZpnI/Ts--


--===============3157606229928013833==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3157606229928013833==--

