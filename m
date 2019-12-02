Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8AB10EA37
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 13:48:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J1oCdj8Mu3ISIeKdtENOURTfzBKMHm1yh/R5M2PkDJw=; b=K+7KZPYEFLhfnrBVNn16bGc4a
	ij4vl7jsaBkPV/i11OJhdyoR+j5Ivd8s+ayjw0U9nHqzOwtxfDQgsjxsmuh9kVufmZ/Gd55je89/J
	X3gHYtGNH+y05ZCg/ZHQvlwRzPCE5Vbyuuz75fPhO9LBfdB4jrZ9CXnMUvYJLDNZGH6vPZgiagr4C
	K10Vpz6lKEZ2LVAhBXih5k1WTAlIaoUOwTQwdhI8qmKUwe6SkLxkoGXoNTvYAuCUpnTLP6msXHSD6
	lUrZ3cjE7PBsy9Z3BCAiJeqrJNZnRmKM6xIY07ngTdfdDVjKqUYSOa4tSwhOpTwZRj+GduHivgd5s
	aeDzRmBQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibl7N-0007RQ-Vp; Mon, 02 Dec 2019 12:47:57 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibl7F-0007QW-Gu
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 12:47:51 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@misterjones.org>)
 id 1ibl76-0000Yo-Ut; Mon, 02 Dec 2019 13:47:40 +0100
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH] PCI: layerscape: Add the SRIOV support in host side
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 02 Dec 2019 12:47:40 +0000
From: Marc Zyngier <maz@misterjones.org>
Organization: Metropolis
In-Reply-To: <20191202104506.27916-1-xiaowei.bao@nxp.com>
References: <20191202104506.27916-1-xiaowei.bao@nxp.com>
Message-ID: <606a00a2edcf077aa868319e0daa4dbc@www.loen.fr>
X-Sender: maz@misterjones.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: xiaowei.bao@nxp.com, robh+dt@kernel.org,
 frowand.list@gmail.com, minghuan.lian@nxp.com, mingkai.hu@nxp.com,
 roy.zang@nxp.com, lorenzo.pieralisi@arm.com, andrew.murray@arm.com,
 bhelgaas@google.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 zhiqiang.hou@nxp.com
X-SA-Exim-Mail-From: maz@misterjones.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_044749_709124_C86D625D 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: roy.zang@nxp.com, lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, zhiqiang.hou@nxp.com, linux-kernel@vger.kernel.org,
 minghuan.lian@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, bhelgaas@google.com,
 andrew.murray@arm.com, frowand.list@gmail.com, mingkai.hu@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-02 10:45, Xiaowei Bao wrote:
> GIC get the map relations of devid and stream id from the msi-map
> property of DTS, our platform add this property in u-boot base on
> the PCIe device in the bus, but if enable the vf device in kernel,
> the vf device msi-map will not set, so the vf device can't work,
> this patch purpose is that manage the stream id and device id map
> relations dynamically in kernel, and make the new PCIe device work
> in kernel.
>
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
>  drivers/of/irq.c                            |  9 +++
>  drivers/pci/controller/dwc/pci-layerscape.c | 94
> +++++++++++++++++++++++++++++
>  drivers/pci/probe.c                         |  6 ++
>  drivers/pci/remove.c                        |  6 ++
>  4 files changed, 115 insertions(+)
>
> diff --git a/drivers/of/irq.c b/drivers/of/irq.c
> index a296eaf..791e609 100644
> --- a/drivers/of/irq.c
> +++ b/drivers/of/irq.c
> @@ -576,6 +576,11 @@ void __init of_irq_init(const struct
> of_device_id *matches)
>  	}
>  }
>
> +u32 __weak ls_pcie_streamid_fix(struct device *dev, u32 rid)
> +{
> +	return rid;
> +}
> +
>  static u32 __of_msi_map_rid(struct device *dev, struct device_node 
> **np,
>  			    u32 rid_in)
>  {
> @@ -590,6 +595,10 @@ static u32 __of_msi_map_rid(struct device *dev,
> struct device_node **np,
>  		if (!of_map_rid(parent_dev->of_node, rid_in, "msi-map",
>  				"msi-map-mask", np, &rid_out))
>  			break;
> +
> +	if (rid_out == rid_in)
> +		rid_out = ls_pcie_streamid_fix(parent_dev, rid_in);

Over my dead body. Get your firmware to properly program the LUT
so that it presents the ITS with a reasonable topology. There is
absolutely no way this kind of change makes it into the kernel.

Thanks,

         M.
-- 
Who you jivin' with that Cosmik Debris?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
