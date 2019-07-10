Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F1D64995
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uIBVW6WosJlKFMrtZLj4h7QRKUu8jZh98yRUnvmuB0=; b=JNDB7vt7/V26aO
	eyjTyWnKznbRwThG69E5AkRHlHu4DJGKOmABeiE4S7YBMKWUDK/PMxyWGlRvz4w8nR3IlIpoc9wBq
	NrSaS6pca0ILVSc5pLL83G3VaQj7VHmEXG37cZhrn5+s/veOi6jJ0sVDZi/K0t0hXk7/ILEdbx/Lh
	Xcg3ZRmwjpboNkLDo7KTbjlE0CmsQHNWM2I6yLsLyEj2DV2gf4BuWraLVehBNV/uHwPxVO7TpEkfd
	HeWNbWDRNT9zMBau8Zp+t4+gxcF6RNPj17ZlLEAlM6FNTMdxmY5rw31/NRR5KprrDcUMq7SHrRfm6
	KOO584EBh3oBPrl4Hb0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEX4-0004Wu-0b; Wed, 10 Jul 2019 15:29:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEWk-0004Ui-TN
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:29:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49FD82B;
 Wed, 10 Jul 2019 08:29:01 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEC113F246;
 Wed, 10 Jul 2019 08:28:58 -0700 (PDT)
Date: Wed, 10 Jul 2019 16:28:56 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V13 08/12] dt-bindings: Add PCIe supports-clkreq property
Message-ID: <20190710152856.GB8781@e121166-lin.cambridge.arm.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
 <20190710062212.1745-9-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710062212.1745-9-vidyas@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_082902_997359_16CA1747 
X-CRM114-Status: GOOD (  17.57  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, kthota@nvidia.com,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 11:52:08AM +0530, Vidya Sagar wrote:
> Some host controllers need to know the existence of clkreq signal routing to
> downstream devices to be able to advertise low power features like ASPM L1
> substates. Without clkreq signal routing being present, enabling ASPM L1 sub
> states might lead to downstream devices falling off the bus. Hence a new device

You mean "being disconnected from the bus" right ? I will update it.

Lorenzo

> tree property 'supports-clkreq' is added to make such host controllers
> aware of clkreq signal routing to downstream devices.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Thierry Reding <treding@nvidia.com>
> ---
> V13:
> * None
> 
> V12:
> * Rebased on top of linux-next top of the tree
> 
> V11:
> * None
> 
> V10:
> * None
> 
> V9:
> * None
> 
> V8:
> * None
> 
> V7:
> * None
> 
> V6:
> * s/Documentation\/devicetree/dt-bindings/ in the subject
> 
> V5:
> * None
> 
> V4:
> * Rebased on top of linux-next top of the tree
> 
> V3:
> * None
> 
> V2:
> * This is a new patch in v2 series
> 
>  Documentation/devicetree/bindings/pci/pci.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/pci.txt b/Documentation/devicetree/bindings/pci/pci.txt
> index 2a5d91024059..29bcbd88f457 100644
> --- a/Documentation/devicetree/bindings/pci/pci.txt
> +++ b/Documentation/devicetree/bindings/pci/pci.txt
> @@ -27,6 +27,11 @@ driver implementation may support the following properties:
>  - reset-gpios:
>     If present this property specifies PERST# GPIO. Host drivers can parse the
>     GPIO and apply fundamental reset to endpoints.
> +- supports-clkreq:
> +   If present this property specifies that CLKREQ signal routing exists from
> +   root port to downstream device and host bridge drivers can do programming
> +   which depends on CLKREQ signal existence. For example, programming root port
> +   not to advertise ASPM L1 Sub-States support if there is no CLKREQ signal.
>  
>  PCI-PCI Bridge properties
>  -------------------------
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
