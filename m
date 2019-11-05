Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0516EFA55
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=goFASCnua9AGOo2wCzISM4JCuLKob0GX4YP128eesWs=; b=DnbnQuX6rZ9B3ZMpB8e2nFNuy
	zdrut9dfteBTOyp7JxQsNYO9EMfFBi2mSnJHIFGM+tpybR3HH3aVy+G6GNBzcpfqqlArkZTB3k6y+
	M93dOBw1bw6MqMCghN/HcyW0vi/uM5URrXkNdqj0MYPX7tq398a+ovnWAtU0HPP4Iq/U8fyKts5WO
	LpW/WogZW3fyQKLSJ95SaP5dFzRVpKTD7/N5lCfoFYIfjCFhXqoichXcW3TlSRfJQo89ZdtBSMA5a
	llS0BXVde9DfpdjRsAo8qliA0rMHCtyAo8nnIgejzJMzrMgn+0p0SxDlsDPuvfkqyr8d2fytOa05x
	iouFhqJLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRveH-0007JO-Cq; Tue, 05 Nov 2019 10:01:17 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRve9-0007Hl-At
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:01:11 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA5A11fx040316;
 Tue, 5 Nov 2019 04:01:01 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572948061;
 bh=zbPTKFMP/VzQXIz/GVFKvy0Bu0kY7EmlTfBJtaGCMnY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hsPSJ5PPRBoB3sBXG1LtBARKT2zN9fCaS9LhkOkrYQOM6HVtlkEYAyyjQYYcbL/XM
 q7JBa0WNoXYcB2azHcRf3Q0RRsax/sDEnAZGihLR+wRBuUhoBOebhTGnKhRhk3Isya
 9ZPn28nDm1syDYIbRJCvQ8ncDuI9x/uMElv4KebQ=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA5A11PC107280
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 Nov 2019 04:01:01 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 5 Nov
 2019 04:00:46 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 5 Nov 2019 04:01:00 -0600
Received: from [10.250.98.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA5A0vHX101993;
 Tue, 5 Nov 2019 04:00:58 -0600
Subject: Re: [PATCH v4 07/15] dmaengine: ti: k3 PSI-L remote endpoint
 configuration
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-8-peter.ujfalusi@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <bbe8e13f-b865-a352-7960-31b2865e5421@ti.com>
Date: Tue, 5 Nov 2019 12:00:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191101084135.14811-8-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_020109_483766_9C4A8DC0 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 01/11/2019 10:41, Peter Ujfalusi wrote:
> In K3 architecture the DMA operates within threads. One end of the thread
> is UDMAP, the other is on the peripheral side.
> 
> The UDMAP channel configuration depends on the needs of the remote
> endpoint and it can be differ from peripheral to peripheral.
> 
> This patch adds database for am654 and j721e and small API to fetch the
> PSI-L endpoint configuration from the database which should only used by
> the DMA driver(s).
> 
> Another API is added for native peripherals to give possibility to pass new
> configuration for the threads they are using, which is needed to be able to
> handle changes caused by different firmware loaded for the peripheral for
> example.

I have no objection to this approach, but ...

> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>   drivers/dma/ti/Kconfig         |   3 +
>   drivers/dma/ti/Makefile        |   1 +
>   drivers/dma/ti/k3-psil-am654.c | 172 ++++++++++++++++++++++++++
>   drivers/dma/ti/k3-psil-j721e.c | 219 +++++++++++++++++++++++++++++++++
>   drivers/dma/ti/k3-psil-priv.h  |  39 ++++++
>   drivers/dma/ti/k3-psil.c       |  97 +++++++++++++++
>   include/linux/dma/k3-psil.h    |  47 +++++++
>   7 files changed, 578 insertions(+)
>   create mode 100644 drivers/dma/ti/k3-psil-am654.c
>   create mode 100644 drivers/dma/ti/k3-psil-j721e.c
>   create mode 100644 drivers/dma/ti/k3-psil-priv.h
>   create mode 100644 drivers/dma/ti/k3-psil.c
>   create mode 100644 include/linux/dma/k3-psil.h
> 

[...]

> diff --git a/include/linux/dma/k3-psil.h b/include/linux/dma/k3-psil.h
> new file mode 100644
> index 000000000000..16e9c8c6f839
> --- /dev/null
> +++ b/include/linux/dma/k3-psil.h
> @@ -0,0 +1,47 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + *  Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com
> + */
> +
> +#ifndef K3_PSIL_H_
> +#define K3_PSIL_H_
> +
> +#include <linux/types.h>
> +
> +#define K3_PSIL_DST_THREAD_ID_OFFSET 0x8000
> +
> +struct device;
> +
> +/* Channel Throughput Levels */
> +enum udma_tp_level {
> +	UDMA_TP_NORMAL = 0,
> +	UDMA_TP_HIGH = 1,
> +	UDMA_TP_ULTRAHIGH = 2,
> +	UDMA_TP_LAST,
> +};
> +
> +enum psil_endpoint_type {
> +	PSIL_EP_NATIVE = 0,
> +	PSIL_EP_PDMA_XY,
> +	PSIL_EP_PDMA_MCAN,
> +	PSIL_EP_PDMA_AASRC,
> +};
> +
> +struct psil_endpoint_config {
> +	enum psil_endpoint_type ep_type;
> +
> +	unsigned pkt_mode:1;
> +	unsigned notdpkt:1;
> +	unsigned needs_epib:1;
> +	u32 psd_size;
> +	enum udma_tp_level channel_tpl;
> +
> +	/* PDMA properties, valid for PSIL_EP_PDMA_* */
> +	unsigned pdma_acc32:1;
> +	unsigned pdma_burst:1;
> +};
> +
> +int psil_set_new_ep_config(struct device *dev, const char *name,
> +			   struct psil_endpoint_config *ep_config);
> +
> +#endif /* K3_PSIL_H_ */
> 

I see no user now of this public interface, so I think it better to drop it until
there will be real user of it.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
