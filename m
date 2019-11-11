Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58976F6DA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 05:47:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08xAT3JmQR/u2ub4e67ux/LrG0GRxq1XvF0PPNqj9yA=; b=QKQPdLcEio89Sz
	VFU6ZMLA3TuD1C+l9ChvcKX9cvY3rL9+xWkewGFfsQpTsEEPvkHbiXMp2ly+FxVi8WLmBVcR5/IvF
	lC7l7Lo3t4GADC1Z9WM4phTSB/GAQLy85xe3JJy7LGS7H5rlMDZx3WFyngtn1ItLMjj7fYG188Z3M
	izpsvprLXj7GFV0aAjZA/iLRa2RtNQiw22A8tbzN/ZyF/oFH5iAlYiZCwwP2C6DCa6Eel8Bbg2R04
	Jxndbh+FcDtgAjU4GVvWSdRlQfqhqRfnH+ZOAHSAdDWK5LnKgth9ecY1cV2OUwylUAk2GSRVBiwtM
	K7wUywsILWnYZlI8icrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU1bx-0005Je-B0; Mon, 11 Nov 2019 04:47:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU1bl-0005J9-Ju
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 04:47:22 +0000
Received: from localhost (unknown [106.201.42.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58AA32084F;
 Mon, 11 Nov 2019 04:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573447641;
 bh=IP70vFTbjgfIhIAFcbrEA9JEDy+eeHt6RS3u5EPlgbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UF5RhSmvO9U730zE98iGXTV3w9TzQlTw4fyfIsIbdmSrgvouKSNdj5oXPc1G8tmMM
 lCNYbcymyff2/P7kCAXR8hoNHDMBf//iMQl8NWAhoy3NVFHJrANZDSJnKCxHndZhxw
 A030trLz3NnavZzYGFk5pdA2C3UQbizREcwrgr4I=
Date: Mon, 11 Nov 2019 10:17:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 07/15] dmaengine: ti: k3 PSI-L remote endpoint
 configuration
Message-ID: <20191111044716.GM952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-8-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101084135.14811-8-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_204721_673001_765304A5 
X-CRM114-Status: GOOD (  12.41  )
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

> --- /dev/null
> +++ b/drivers/dma/ti/k3-psil.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0

...

> +extern struct psil_ep_map am654_ep_map;
> +extern struct psil_ep_map j721e_ep_map;
> +
> +static DEFINE_MUTEX(ep_map_mutex);
> +static struct psil_ep_map *soc_ep_map;
> +
> +struct psil_endpoint_config *psil_get_ep_config(u32 thread_id)
> +{
> +	int i;
> +
> +	mutex_lock(&ep_map_mutex);
> +	if (!soc_ep_map) {
> +		if (of_machine_is_compatible("ti,am654")) {
> +			soc_ep_map = &am654_ep_map;
> +		} else if (of_machine_is_compatible("ti,j721e")) {
> +			soc_ep_map = &j721e_ep_map;
> +		} else {
> +			pr_err("PSIL: No compatible machine found for map\n");
> +			return ERR_PTR(-ENOTSUPP);
> +		}
> +		pr_debug("%s: Using map for %s\n", __func__, soc_ep_map->name);
> +	}
> +	mutex_unlock(&ep_map_mutex);
> +
> +	if (thread_id & K3_PSIL_DST_THREAD_ID_OFFSET && soc_ep_map->dst) {
> +		/* check in destination thread map */
> +		for (i = 0; i < soc_ep_map->dst_count; i++) {
> +			if (soc_ep_map->dst[i].thread_id == thread_id)
> +				return &soc_ep_map->dst[i].ep_config;
> +		}
> +	}
> +
> +	thread_id &= ~K3_PSIL_DST_THREAD_ID_OFFSET;
> +	if (soc_ep_map->src) {
> +		for (i = 0; i < soc_ep_map->src_count; i++) {
> +			if (soc_ep_map->src[i].thread_id == thread_id)
> +				return &soc_ep_map->src[i].ep_config;
> +		}
> +	}
> +
> +	return ERR_PTR(-ENOENT);
> +}
> +EXPORT_SYMBOL(psil_get_ep_config);

This doesn't match the license of this module, we need it to be
EXPORT_SYMBOL_GPL
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
