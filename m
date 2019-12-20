Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A970127731
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:32:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfsKwlfnsyZMh4NwJTXow2v31rzn2bdaFx1YSRYnXGQ=; b=DHw1R6zAc55g9B
	beqalS0lXEiAFKsHDbxw64TotQTV/c4y18aMFT7JmA/V0Hp0T45x5PEmF8WTNXDEudj2b/wYdlA9A
	pIt580J4JRgwXNUQrYYpRIEfZhDI6LwMAiRlehqCjaAV+/ofeOWfpPxHjT31fRhqrUPgTfwKrgkD1
	k1LtoVWSpQvYzMQHnQhrODeaoKVIiZQhfUywoAxeMKHPAtqY1nIAZiabJFgBlWGYUw9J9TEuUg1LT
	caRZDbaLTO6Ubsv5JL+BoL6GHjjQJoFDJSwnsVBLBUBT61OZUHHksvtUwfYEXnmmhlI28C4/oeURO
	NWWGLSl+Kwa7Vsb+RLfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDi3-0005Ra-Tg; Fri, 20 Dec 2019 08:32:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDhu-0005RF-6Z
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:32:23 +0000
Received: from localhost (unknown [106.201.107.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E99F1227BF;
 Fri, 20 Dec 2019 08:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576830741;
 bh=hBWzx2yIsLDhvkyJawI2ZCRbOghi05yT23MBgF01k/g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EHVWANNvlC3Dk/sWI4RHpbbVPN5qlthby8A4ORphYODzu08WzIloK8ma7wKqJ55P4
 M6vFsWoHicY+3Inil6sSALU5DspaucNFJ0ihPIpmuU49+pGZ8o/7ibrWK0+EaHxiFL
 UdiTJJIuNap/BD3JY06DG6MEBMy57lU3oGsPjtFc=
Date: Fri, 20 Dec 2019 14:02:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 04/12] dmaengine: Add metadata_ops for
 dma_async_tx_descriptor
Message-ID: <20191220083216.GK2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-5-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209094332.4047-5-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_003222_262577_95FB9B29 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 09-12-19, 11:43, Peter Ujfalusi wrote:

> +int dmaengine_desc_attach_metadata(struct dma_async_tx_descriptor *desc,
> +				   void *data, size_t len)
> +{
> +	int ret;
> +
> +	if (!desc)
> +		return -EINVAL;
> +
> +	ret = desc_check_and_set_metadata_mode(desc, DESC_METADATA_CLIENT);
> +	if (ret)
> +		return ret;
> +
> +	if (!desc->metadata_ops || !desc->metadata_ops->attach)
> +		return -ENOTSUPP;
> +
> +	return desc->metadata_ops->attach(desc, data, len);

this looks good to me, only thing is we should check if people are
mixing the modes :)

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
