Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B015E8382
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNzZIOd21LY5AAZ1+hbnHv9MkhqCwo7TjBHGtE0VJhE=; b=TkePECQD7bkort
	qcT3zYBVOAp5Ki+EiKKD1qMRPruye5xScQt8Wc7r5+Q1C8o9JYJhLBVuJw/jJEB0Axl6Fq/02lAjR
	aXaxoNdMA1hbuxwHLRmzfKa/d32B2KepOBbTVItLQEgWgcqCy5YcViLnUDQZhzjBxrc0dGOAUVBLZ
	PhDi1GrgkN/XUviql3wtCB6h0ctDY0ZGhzmBdL4DvUApYZ4ii1vKxlx8SVVZdRGA6ZSOD8rZCYMga
	+PEyanXiPXkDogKRR3Xov8qILGGM9c11Z/szDUFoKol7CVCd6VwBqucvZHJkUK3kKzd0ttm4ahR9k
	IH+dptRLfK5w0DWe6f4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNG2-0006eU-6h; Tue, 29 Oct 2019 08:53:42 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNFt-0006e1-66
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:53:34 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9T8rMdP075590;
 Tue, 29 Oct 2019 03:53:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572339202;
 bh=GENQOkaFvVatZv1GMFR3zbGCbH5x94AbSDwlQyYRy4k=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ryNYsmDLJEX96Q+mU0OivEDViSqNSb3nMrcJpZ1CwikrLprdf3c1ZFwFLFEGyr7Z4
 bjY4DGY2VwoPy0uOWRd4JCMwAgwubYxlHYWPTXUntK8Ky3GoXdkre/Nmar9eZ/SrHJ
 sZVM/v/z2jsQ1peboThHmeA9SGFCGu6tzGoGz8ds=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9T8rMG2086926
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 29 Oct 2019 03:53:22 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 29
 Oct 2019 03:53:10 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 29 Oct 2019 03:53:10 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9T8rIvA090581;
 Tue, 29 Oct 2019 03:53:18 -0500
Subject: Re: [PATCH v3 02/14] soc: ti: k3: add navss ringacc driver
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-3-peter.ujfalusi@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <b5f47303-b6d2-190b-d38c-d3557a93b111@ti.com>
Date: Tue, 29 Oct 2019 14:22:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191001061704.2399-3-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_015333_355126_8CB806B9 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, tony@atomide.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Grygorii,

[...snip..]

> +
> +static int k3_ringacc_ring_access_io(struct k3_ring *ring, void *elem,
> +				     enum k3_ringacc_access_mode access_mode)
> +{
> +	void __iomem *ptr;
> +
> +	switch (access_mode) {
> +	case K3_RINGACC_ACCESS_MODE_PUSH_HEAD:
> +	case K3_RINGACC_ACCESS_MODE_POP_HEAD:
> +		ptr = (void __iomem *)&ring->fifos->head_data;
> +		break;
> +	case K3_RINGACC_ACCESS_MODE_PUSH_TAIL:
> +	case K3_RINGACC_ACCESS_MODE_POP_TAIL:
> +		ptr = (void __iomem *)&ring->fifos->tail_data;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	ptr += k3_ringacc_ring_get_fifo_pos(ring);
> +
> +	switch (access_mode) {
> +	case K3_RINGACC_ACCESS_MODE_POP_HEAD:
> +	case K3_RINGACC_ACCESS_MODE_POP_TAIL:
> +		dev_dbg(ring->parent->dev,
> +			"memcpy_fromio(x): --> ptr(%p), mode:%d\n", ptr,
> +			access_mode);
> +		memcpy_fromio(elem, ptr, (4 << ring->elm_size));

Does this work for any elem_size < 64 or any element size not aligned with 64?

IIUC, in message mode, ring element should be inserted in a single burst write
and there is no doorbell facility. If the above conditions are not met, we are
supposed to use proxy.

In this driver, I don't see any restrictions on the ring element size for
message mode and directly written to io. Am I missing something?

Thanks and regards,
Lokesh

> +		ring->occ--;
> +		break;
> +	case K3_RINGACC_ACCESS_MODE_PUSH_TAIL:
> +	case K3_RINGACC_ACCESS_MODE_PUSH_HEAD:
> +		dev_dbg(ring->parent->dev,
> +			"memcpy_toio(x): --> ptr(%p), mode:%d\n", ptr,
> +			access_mode);
> +		memcpy_toio(ptr, elem, (4 << ring->elm_size));
> +		ring->free--;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	dev_dbg(ring->parent->dev, "free%d index%d occ%d index%d\n", ring->free,
> +		ring->windex, ring->occ, ring->rindex);
> +	return 0;
> +}
> +
> +static int k3_ringacc_ring_push_head_io(struct k3_ring *ring, void *elem)
> +{
> +	return k3_ringacc_ring_access_io(ring, elem,
> +					 K3_RINGACC_ACCESS_MODE_PUSH_HEAD);
> +}
> +
> +static int k3_ringacc_ring_push_io(struct k3_ring *ring, void *elem)
> +{
> +	return k3_ringacc_ring_access_io(ring, elem,
> +					 K3_RINGACC_ACCESS_MODE_PUSH_TAIL);
> +}
> +
> +static int k3_ringacc_ring_pop_io(struct k3_ring *ring, void *elem)
> +{
> +	return k3_ringacc_ring_access_io(ring, elem,
> +					 K3_RINGACC_ACCESS_MODE_POP_HEAD);
> +}
> +
> +static int k3_ringacc_ring_pop_tail_io(struct k3_ring *ring, void *elem)
> +{
> +	return k3_ringacc_ring_access_io(ring, elem,
> +					 K3_RINGACC_ACCESS_MODE_POP_HEAD);
> +}
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
