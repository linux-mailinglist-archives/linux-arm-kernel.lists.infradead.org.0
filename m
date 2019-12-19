Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5C6127193
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:35:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hewrzEI2GPCUREW35zqLRO01vwB+6Ieq+ipZLxoNnJ8=; b=Uf0lsHhrLLrOTu
	8M9YptBPNqynjqJzkNc78cYlELJnwFqs9vLsLcJp+KICkFoTvsWCOOZtS90ZrOcxrFOjzLcfbkgdJ
	pVjSc288BJOxHrA3A771wOjY+LNiyODwSW6vAWYwDJpp3eAwR+4cH0XJdqQWEubabGddmBFOJR88b
	mnJ8y4VPFonZTlnqaBTIWqNgw44on5dosPXWM7aU7erPTwYc8EXAnWXJRH4WSFm/h3hEH9Yljaoi8
	W8zMJ1OuKn2MfCDaien4ANSn9abUvtBXw/qza4OVzO8luQOoybUXlk/AlOMAOTyqGfwav+MyHktuJ
	qY1oMi67utG8DCAUjz6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5KW-0006kV-K6; Thu, 19 Dec 2019 23:35:40 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5KL-0006jV-PV; Thu, 19 Dec 2019 23:35:31 +0000
Received: by mail-ot1-f68.google.com with SMTP id 66so9314658otd.9;
 Thu, 19 Dec 2019 15:35:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RRqDAkLWobOuOYSCFG7J0bbEa5xYLcQverv9nWpPuIA=;
 b=LsxGoIORoRLixK9c8gPuPP8YJ+rGN15MTFeh8T/0HhKYnFz0xBU07T1zpqxJIeuhHh
 mpzZ+jlox4OKd8GAmNFnAFbCXmyBVIJEVzHA/qrrCtWn/LWnub9qEWqsbdYcXwms8ip6
 onzL93Dp4as8v6TxXHYlEs9cYjf9lxOzXbrO4dAvErvKFZC6HrJsrdEjx+jx//D+Yq6E
 8Ap7fXHc6Uda+gVX1SreEV6ZzyTjcCse4lrpPUKLhkypsVTlKEEeGzcMWkxIoJX+G+31
 znl57GxXwU1qPZI4eNbo5MhpgN1BfghgATuczUJZW2yZjNm+h62b5dUwsNB9EdI3xNBQ
 8oBA==
X-Gm-Message-State: APjAAAUqSRP+I6AeoehIkLGFu/71C0U2FyYEeAe84l+kGGej6tNLcfp1
 rq80MDZO5eixNbpVztjHJQ==
X-Google-Smtp-Source: APXvYqzP7ZyQmIJlVYu5boWchd07kvVVJcGu77F6fpUDlaRoVSLg9EHtJ3yKHNipgk1av59pNOCtIg==
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr11756439oto.355.1576798528860; 
 Thu, 19 Dec 2019 15:35:28 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id m68sm2525707oig.50.2019.12.19.15.35.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:35:27 -0800 (PST)
Date: Thu, 19 Dec 2019 17:35:25 -0600
From: Rob Herring <robh@kernel.org>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [v2 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Message-ID: <20191219233525.GA9478@bogus>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_153529_830891_2764F335 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
 devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 08:47:46AM +0000, Lad Prabhakar wrote:
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> This patch adds the bindings for the R-Car PCIe endpoint driver.
> 
> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/pci/rcar-pci-ep.txt        | 37 ++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt

Please make this a DT schema.

> 
> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> new file mode 100644
> index 0000000..7f0a97e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> @@ -0,0 +1,37 @@
> +* Renesas R-Car PCIe Endpoint Controller DT description
> +
> +Required properties:
> +	    "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;

Normal ordering is: renesas,r8a774c0-pcie-ep

> +	    "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> +				     RZ/G2 compatible device.
> +
> +	    When compatible with the generic version, nodes must list the
> +	    SoC-specific version corresponding to the platform first
> +	    followed by the generic version.
> +
> +- reg: base address and length of the PCIe controller registers.
> +- outbound-ranges: outbound windows base address and length including the flags.
> +- resets: Must contain phandles to PCIe-related reset lines exposed by IP block

How many?

> +- clocks: from common clock binding: clock specifiers for the PCIe controller
> +	 clock.
> +- clock-names: from common clock binding: should be "pcie".
> +
> +Optional Property:
> +- max-functions: Maximum number of functions that can be configured (default 1).
> +
> +Example:
> +
> +SoC-specific DT Entry:
> +
> +	pcie_ep: pcie_ep@fe000000 {

pcie-ep@ 

> +		compatible = "renesas,pcie-ep-r8a774c0", "renesas,pcie-rcar-gen2";
> +		reg = <0 0xfe000000 0 0x80000>;
> +		outbound-ranges = <0xa 0x0 0xfe100000 0 0x000100000
> +				   0xa 0x0 0xfe200000 0 0x000200000
> +				   0x6 0x0 0x30000000 0 0x008000000
> +				   0x6 0x0 0x38000000 0 0x008000000>;
> +		clocks = <&cpg CPG_MOD 319>;
> +		clock-names = "pcie";
> +		power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> +		resets = <&cpg 319>;
> +	};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
