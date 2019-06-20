Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D353C4C85C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTQqfbR4sr1J63rPiPA1wKfMlyLTJiOQk+4p2hUCHxI=; b=BjfwcJDHUtTKnd
	Ae9VngjyFiPdW0e/9m1en0yjy2iWh+18Pz92PiXTuCcjDUMDMutOPyEHKlogky/BL+kY8LsRxV40j
	6pW5sT9eegbpai7TmdXTGe+zZrGn8AScXma5Htjm3q6CmrgCzFTUsMsxMJ70j3tfiuyRKu1ocgSfu
	a9cr/kxJvVW8ZqgFnXF3xNAJn929kb+8OW/oscV4t4hj55Z5wgNl22RgM9hsfyZzbn4HzYEQzNE/6
	BLw8miyGXBZS/82hmpZieUKgpUDJZU87qYDxgc2aFh3Fea0NkizL0DntSdRFlqJuaFu1Xz9J9kGRk
	TjXSnBpTFgn5gDrMxdCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrQh-00061c-Dj; Thu, 20 Jun 2019 07:24:19 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrQL-00060y-KA
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:23:59 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5K7Nmuw074605;
 Thu, 20 Jun 2019 02:23:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561015428;
 bh=4nptE+V/8zTkQNKxzkmRKnHwJXFg/cYh6mx5TMhKhtI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vrU7djtQBnNcjPj8h1kXXoUlHOqY7vzkaCMbFrKYEYBmem9hPzglV3HH97v/7T4Z/
 XYuVUmPEpVyz8xaCir4fLsxMvj7rqdEBOIuv+xkxvxjvidu/Vw5jaMejrMotL2rdRI
 j3+ARvTMDq07pmeGXHSk2wPX+1sfAPqoxUjO4Dxo=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5K7NmsK070685
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 02:23:48 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 20
 Jun 2019 02:23:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 20 Jun 2019 02:23:48 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5K7Nfrn091447;
 Thu, 20 Jun 2019 02:23:42 -0500
Subject: Re: [PATCH V10 10/15] dt-bindings: PHY: P2U: Add Tegra194 P2U block
To: Vidya Sagar <vidyas@nvidia.com>, <lorenzo.pieralisi@arm.com>,
 <bhelgaas@google.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
References: <20190612095339.20118-1-vidyas@nvidia.com>
 <20190612095339.20118-11-vidyas@nvidia.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <1ecf61d7-5535-4f07-5e1e-5d492f4194da@ti.com>
Date: Thu, 20 Jun 2019 12:52:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612095339.20118-11-vidyas@nvidia.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_002357_749198_00502BFC 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/06/19 3:23 PM, Vidya Sagar wrote:
> Add support for Tegra194 P2U (PIPE to UPHY) module block which is a glue
> module instantiated one for each PCIe lane between Synopsys DesignWare core
> based PCIe IP and Universal PHY block.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Acked-by: Thierry Reding <treding@nvidia.com>

Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
> Changes since [v9]:
> * None
> 
> Changes since [v8]:
> * None
> 
> Changes since [v7]:
> * None
> 
> Changes since [v6]:
> * None
> 
> Changes since [v5]:
> * Added Sob
> * Changed node name from "p2u@xxxxxxxx" to "phy@xxxxxxxx"
> 
> Changes since [v4]:
> * None
> 
> Changes since [v3]:
> * None
> 
> Changes since [v2]:
> * Changed node label to reflect new format that includes either 'hsio' or
>   'nvhs' in its name to reflect which UPHY brick they belong to
> 
> Changes since [v1]:
> * This is a new patch in v2 series
> 
>  .../bindings/phy/phy-tegra194-p2u.txt         | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
> new file mode 100644
> index 000000000000..d23ff90baad5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
> @@ -0,0 +1,28 @@
> +NVIDIA Tegra194 P2U binding
> +
> +Tegra194 has two PHY bricks namely HSIO (High Speed IO) and NVHS (NVIDIA High
> +Speed) each interfacing with 12 and 8 P2U instances respectively.
> +A P2U instance is a glue logic between Synopsys DesignWare Core PCIe IP's PIPE
> +interface and PHY of HSIO/NVHS bricks. Each P2U instance represents one PCIe
> +lane.
> +
> +Required properties:
> +- compatible: For Tegra19x, must contain "nvidia,tegra194-p2u".
> +- reg: Should be the physical address space and length of respective each P2U
> +       instance.
> +- reg-names: Must include the entry "ctl".
> +
> +Required properties for PHY port node:
> +- #phy-cells: Defined by generic PHY bindings.  Must be 0.
> +
> +Refer to phy/phy-bindings.txt for the generic PHY binding properties.
> +
> +Example:
> +
> +p2u_hsio_0: phy@3e10000 {
> +	compatible = "nvidia,tegra194-p2u";
> +	reg = <0x03e10000 0x10000>;
> +	reg-names = "ctl";
> +
> +	#phy-cells = <0>;
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
