Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B60A5430
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlAC4b3/9EPZ97QGUe+ZgO93otk5cam2N7MYxb4/Jhs=; b=NdjRc0uq3oqPDj
	sTgLkLKPbXXk5tQfdBAkJco066WTp5FaQ6NGxWAq0Jw8TzCBQNP/JByX1g5qc5j3N8Y0FkGhs6a+9
	r3fHTHivlwemUvG4c13+QrQ21kG14lcq8hjgVmOfT7eLUxYgS9+3k4sdzMlNS25WuUJoGSZTrQkt/
	JIAHV3vrn6yu1GGL4ImS8ff6pXUp8hMox5/1kEIoOZDyFZmYYrJveiYeqbZPf2/LRY2+H8gF2ZO5q
	Yt0gx5tXGxKxndOVkNzvCBPkU1Afe5X6Bqbzj9H+0BhA6e1ukrrbLc1CZEZ77o7ergUjgN6Pw1Gof
	vRgGRlLKtNjGwHx1XcwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jlF-0005GH-5U; Mon, 02 Sep 2019 10:40:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jks-0005FC-Be
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:40:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EB6028;
 Mon,  2 Sep 2019 03:40:12 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E197F3F246;
 Mon,  2 Sep 2019 03:40:11 -0700 (PDT)
Date: Mon, 2 Sep 2019 11:40:10 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 1/6] dt-bindings: PCI: tegra: Add sideband pins
 configuration entries
Message-ID: <20190902104009.GB9720@e119886-lin.cambridge.arm.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-2-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828172850.19871-2-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_034014_446539_85A68925 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 10:58:45PM +0530, Vidya Sagar wrote:
> Add optional bindings "pinctrl-names" and "pinctrl-0" to describe pin
> configuration information of a particular PCIe controller.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
> V3:
> * None
> 
> V2:
> * None
> 
>  .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> index 674e5adb2895..0ac1b867ac24 100644
> --- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> @@ -83,6 +83,11 @@ Required properties:
>  - vddio-pex-ctl-supply: Regulator supply for PCIe side band signals
>  
>  Optional properties:
> +- pinctrl-names: A list of pinctrl state names.
> +  It is mandatory for C5 controller and optional for other controllers.
> +  - "default": Configures PCIe I/O for proper operation.
> +- pinctrl-0: phandle for the 'default' state of pin configuration.
> +  It is mandatory for C5 controller and optional for other controllers.
>  - supports-clkreq: Refer to Documentation/devicetree/bindings/pci/pci.txt
>  - nvidia,update-fc-fixup: This is a boolean property and needs to be present to
>      improve performance when a platform is designed in such a way that it
> @@ -120,6 +125,9 @@ Tegra194:
>  		num-lanes = <8>;
>  		linux,pci-domain = <0>;
>  
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pex_rst_c5_out_state>, <&clkreq_c5_bi_dir_state>;
> +
>  		clocks = <&bpmp TEGRA194_CLK_PEX0_CORE_0>;
>  		clock-names = "core";
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
