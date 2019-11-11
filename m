Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5957FF6D86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 05:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d72V7v/NnE4ZsdjbVOdt8mB3vzCEqUoL4SmT3jUzp2Q=; b=MO2vC4OLcuSxtF
	kfyP/olzlxA7KpsWOMP+Bm/Gyw2oSuKvujnVZ8vitOlPJ1Vnd+fA29I+ENoZxsdWZ32Xlb/CnWrV0
	fRadUwQDIpmIEaPP53KJlHWU+1sGnStW0h9evqmcsshA97fBcScK6vU5B5iVQNi32GGdxrWZ2rMXJ
	Xk7pz5jzFo7QjC2OPBEB37m0QBL9OStIoDHXyHjXtEiGZ4Z4PyHKestEunRsnOjwS4XoU8AAINYVO
	BwwcDFJmefQ1QNpQD34Ch47e85+3UIRJtwH3+wWTa3R+HnQWNNgq2v62WrraPnpBWHk/0ajnd4G1k
	CqqcjVmcCQFs2Q/Md9/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU1Cp-0005Lu-Bw; Mon, 11 Nov 2019 04:21:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU1Cg-0005LQ-18
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 04:21:27 +0000
Received: from localhost (unknown [106.201.42.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DA4420818;
 Mon, 11 Nov 2019 04:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573446085;
 bh=lvxCU40m4tZyyey/7nhqGzV+Zd9LeGdHgIAioJyXq2I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z3vmezjKdj2sbvDJNTw0HUI9laGnq4+Tt43Dnhm5C6P/g/yXezcOiATItMnJ/H0g6
 McJ/yhL9YCEXIkhNs8Ff6YXYYhL6wTOZK8c1fStEN8JMBlQRq2I+pAuVkSpnDn62Yp
 h3yq1qn2ppcqDfdrM77guOFNj0SkH3zxHzpQN5gA=
Date: Mon, 11 Nov 2019 09:51:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 02/15] soc: ti: k3: add navss ringacc driver
Message-ID: <20191111042119.GK952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-3-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101084135.14811-3-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_202126_091982_A741D7AF 
X-CRM114-Status: GOOD (  12.32  )
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

> +config TI_K3_RINGACC
> +	tristate "K3 Ring accelerator Sub System"
> +	depends on ARCH_K3 || COMPILE_TEST
> +	depends on TI_SCI_INTA_IRQCHIP
> +	default y

You want to get an earful from Linus? We dont do default y on new stuff,
never :)

> +struct k3_ring_rt_regs {
> +	u32	resv_16[4];
> +	u32	db;		/* RT Ring N Doorbell Register */
> +	u32	resv_4[1];
> +	u32	occ;		/* RT Ring N Occupancy Register */
> +	u32	indx;		/* RT Ring N Current Index Register */
> +	u32	hwocc;		/* RT Ring N Hardware Occupancy Register */
> +	u32	hwindx;		/* RT Ring N Current Index Register */

nice comments, how about moving them up into kernel-doc style? (here and
other places as well)


> +struct k3_ring *k3_ringacc_request_ring(struct k3_ringacc *ringacc,
> +					int id, u32 flags)
> +{
> +	int proxy_id = K3_RINGACC_PROXY_NOT_USED;
> +
> +	mutex_lock(&ringacc->req_lock);
> +
> +	if (id == K3_RINGACC_RING_ID_ANY) {
> +		/* Request for any general purpose ring */
> +		struct ti_sci_resource_desc *gp_rings =
> +						&ringacc->rm_gp_range->desc[0];
> +		unsigned long size;
> +
> +		size = gp_rings->start + gp_rings->num;
> +		id = find_next_zero_bit(ringacc->rings_inuse, size,
> +					gp_rings->start);
> +		if (id == size)
> +			goto error;
> +	} else if (id < 0) {
> +		goto error;
> +	}
> +
> +	if (test_bit(id, ringacc->rings_inuse) &&
> +	    !(ringacc->rings[id].flags & K3_RING_FLAG_SHARED))
> +		goto error;
> +	else if (ringacc->rings[id].flags & K3_RING_FLAG_SHARED)
> +		goto out;
> +
> +	if (flags & K3_RINGACC_RING_USE_PROXY) {
> +		proxy_id = find_next_zero_bit(ringacc->proxy_inuse,
> +					      ringacc->num_proxies, 0);
> +		if (proxy_id == ringacc->num_proxies)
> +			goto error;
> +	}
> +
> +	if (!try_module_get(ringacc->dev->driver->owner))
> +		goto error;

should this not be one of the first things to do?

> +
> +	if (proxy_id != K3_RINGACC_PROXY_NOT_USED) {
> +		set_bit(proxy_id, ringacc->proxy_inuse);
> +		ringacc->rings[id].proxy_id = proxy_id;
> +		dev_dbg(ringacc->dev, "Giving ring#%d proxy#%d\n", id,
> +			proxy_id);
> +	} else {
> +		dev_dbg(ringacc->dev, "Giving ring#%d\n", id);
> +	}

how bout removing else and doing common print?

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
