Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A75EF6D7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 05:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQXUZ4JdFNNtigXWd7CehGW39yBMgkXn5RReFsJ1xyg=; b=FqiD4mRwUTNqGm
	z1q1douZU0aSqhGwGufcRPD0OWYgRNyjL64bQkrSkfLqu3kSGGAiCh2Ljr5Ef1KMze0nhvYh5m8sj
	6CQYs5SGsYbWIn0RCxE+7i9GTnT6uhuajMApEbXLqP+h3ZNGw8aYS/xcA6CVwpH7qi8178UpOS6qf
	7s48zrvgP60Wk0VAMMMqEmYi/3BhiiBuf98pOIRDQop471ZiHhDRK25Br7YhtrJjAAQVQf7E93uKV
	VLajHDMf2QnrZuEP0EuSuGalWYEvuPvAGmyHJDyBmP9Dl1P7cNwjaR5jjX6UL5P9N5KKIAmDBLeIt
	D6sX7zDDUw+rjBUYVFIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU0zf-0000Ms-UV; Mon, 11 Nov 2019 04:07:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU0zY-0000MR-LU
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 04:07:54 +0000
Received: from localhost (unknown [106.201.42.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEB86206BB;
 Mon, 11 Nov 2019 04:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573445271;
 bh=0sFiDQ1Ua0cntLXmApw+pNgbF+rKtXJ5SSDn5ybn9FU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b4jJ40N9GFXb0NQusGBdTcO5gkD517TNBKxqR5jaqNit19nmZKb/coqEswEfbdjiR
 GD2wyY6NdpPxOdCulUjESDGAQMJOaF3HcF6MgWEsa/aa+odZGFfcARZJ1Iv0KTKiEN
 TfB+vggW+N199oO82dWSZJftkJU4MLLjk+ePZ9wo=
Date: Mon, 11 Nov 2019 09:37:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 01/15] bindings: soc: ti: add documentation for k3
 ringacc
Message-ID: <20191111040747.GJ952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-2-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101084135.14811-2-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_200752_746151_B0752A4A 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-11-19, 10:41, Peter Ujfalusi wrote:
> From: Grygorii Strashko <grygorii.strashko@ti.com>
> 
> The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
> enable straightforward passing of work between a producer and a consumer.
> There is one RINGACC module per NAVSS on TI AM65x and j721e.
> 
> This patch introduces RINGACC device tree bindings.
> 
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/soc/ti/k3-ringacc.txt | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
> 
> diff --git a/Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt b/Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
> new file mode 100644
> index 000000000000..86954cf4fa99
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
> @@ -0,0 +1,59 @@
> +* Texas Instruments K3 NavigatorSS Ring Accelerator
> +
> +The Ring Accelerator (RA) is a machine which converts read/write accesses
> +from/to a constant address into corresponding read/write accesses from/to a
> +circular data structure in memory. The RA eliminates the need for each DMA
> +controller which needs to access ring elements from having to know the current
> +state of the ring (base address, current offset). The DMA controller
> +performs a read or write access to a specific address range (which maps to the
> +source interface on the RA) and the RA replaces the address for the transaction
> +with a new address which corresponds to the head or tail element of the ring
> +(head for reads, tail for writes).
> +
> +The Ring Accelerator is a hardware module that is responsible for accelerating
> +management of the packet queues. The K3 SoCs can have more than one RA instances
> +
> +Required properties:
> +- compatible	: Must be "ti,am654-navss-ringacc";
> +- reg		: Should contain register location and length of the following
> +		  named register regions.
> +- reg-names	: should be
> +		  "rt" - The RA Ring Real-time Control/Status Registers
> +		  "fifos" - The RA Queues Registers
> +		  "proxy_gcfg" - The RA Proxy Global Config Registers
> +		  "proxy_target" - The RA Proxy Datapath Registers
> +- ti,num-rings	: Number of rings supported by RA
> +- ti,sci-rm-range-gp-rings : TI-SCI RM subtype for GP ring range
> +- ti,sci	: phandle on TI-SCI compatible System controller node
> +- ti,sci-dev-id	: TI-SCI device id
> +- msi-parent	: phandle for "ti,sci-inta" interrupt controller
> +
> +Optional properties:
> + -- ti,dma-ring-reset-quirk : enable ringacc / udma ring state interoperability
> +		  issue software w/a
> +
> +Example:
> +
> +ringacc: ringacc@3c000000 {
> +	compatible = "ti,am654-navss-ringacc";
> +	reg =	<0x0 0x3c000000 0x0 0x400000>,
> +		<0x0 0x38000000 0x0 0x400000>,
> +		<0x0 0x31120000 0x0 0x100>,
> +		<0x0 0x33000000 0x0 0x40000>;
> +	reg-names = "rt", "fifos",
> +		    "proxy_gcfg", "proxy_target";
> +	ti,num-rings = <818>;
> +	ti,sci-rm-range-gp-rings = <0x2>; /* GP ring range */
> +	ti,dma-ring-reset-quirk;
> +	ti,sci = <&dmsc>;
> +	ti,sci-dev-id = <187>;

why do we need dev-id for? doesn't phandle the line above help?

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
