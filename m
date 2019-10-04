Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9616CC0FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a3chcLOlRD48mLOBkiTMew1JX/LDeLjd+C1ZbpaMsgc=; b=ENljK0Jkxz3c6k16Uzj6vlTeb
	a+WQVKJwuQX21IwZPoQ5xDIB4RtoULYdEGpcb1RbQ/U2W4UE8tC0oRDTuDcNt7JQ7FKAYMwBYCr0G
	hcn7VoCdiRgYAgReP9pverW/jHascXdqGrakqYoRr17QkEFN0NAAKAtbyViSqU6PqMdoxaeVA+LTa
	7LdimyTy1fxnlFllB9f1cyos3I0fqlnO/wJhIJEQ7k5BzgW4PdKkesVoJDgOSaLXrH+9ooxr5q1fA
	6PTebuQ3ZlrsN0eOB3vjLvaaKYmJPMYRy6Xv40sjrMpN1JPJm+kATKDcxbiTKLqRcD4Xm6r/ecdPe
	/xArzh09w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQcp-0004D8-EI; Fri, 04 Oct 2019 16:40:15 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQcd-00038s-3q
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:40:04 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x94GOKIT145942;
 Fri, 4 Oct 2019 16:37:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=51ThAHTVRLLrLX7DDUUketK1Xn5udBHC8gklOuQw7w4=;
 b=poGgqbX6JCl/NL0NREIW4P9+l8QLaal32Xkto+/gKm9KzGXG36J3t9Y97IxbfC79abuc
 HIhJcvwgU73VKa+HhUYWIpCN14vCfAWcuykFg8ecFCTacZSd9CNbsvDrj5/EnIrO7zZd
 SnwCs6AysNBsPxEQu+OM86HU/KXoTrvfvgl0uFeMuiL/Urusogu37yaibi7r7bw1mRXl
 P+U7Do6b28k22LsC3kulgYBA2XxWdLTCodBCIzLu9N6fRpGQGYkQF1JQyrUaoEKGwtaN
 b6g/DpZETiiQ7cEIsMCUf+7h0vD9o3h4LFWUFwJWWR3f41akUitzgfesOp1b6XbHzdK6 ew== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2va05sckk2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 04 Oct 2019 16:37:34 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x94GNGmV029717;
 Fri, 4 Oct 2019 16:35:33 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2vdk0uxdww-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 04 Oct 2019 16:35:33 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x94GZUL7027727;
 Fri, 4 Oct 2019 16:35:31 GMT
Received: from [10.209.227.25] (/10.209.227.25)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 04 Oct 2019 09:35:30 -0700
Subject: Re: [PATCH v3 00/14] dmaengine/soc: Add Texas Instruments UDMA support
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, vkoul@kernel.org,
 robh+dt@kernel.org, nm@ti.com, ssantosh@kernel.org
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <c567c1a2-2e74-3809-8e0f-4c2049ba4747@oracle.com>
Date: Fri, 4 Oct 2019 09:35:29 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191001061704.2399-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9399
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910040145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9399
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910040145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_094003_310681_C609B580 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/30/19 11:16 PM, Peter Ujfalusi wrote:
> Hi,
> 
> Changes since v2
> )https://patchwork.kernel.org/project/linux-dmaengine/list/?series=152609&state=*)
> - Based on 5.4-rc1
> - Support for Flow only data transfer for the glue layer
> 

> 
> Grygorii Strashko (3):
>    bindings: soc: ti: add documentation for k3 ringacc
>    soc: ti: k3: add navss ringacc driver
>    dmaengine: ti: k3-udma: Add glue layer for non DMAengine users
> 
> Peter Ujfalusi (11):
>    dmaengine: doc: Add sections for per descriptor metadata support
>    dmaengine: Add metadata_ops for dma_async_tx_descriptor
>    dmaengine: Add support for reporting DMA cached data amount
>    dmaengine: ti: Add cppi5 header for UDMA
>    dt-bindings: dma: ti: Add document for K3 UDMA
>    dmaengine: ti: New driver for K3 UDMA - split#1: defines, structs, io
>      func
>    dmaengine: ti: New driver for K3 UDMA - split#2: probe/remove, xlate
>      and filter_fn
>    dmaengine: ti: New driver for K3 UDMA - split#3: alloc/free
>      chan_resources
>    dmaengine: ti: New driver for K3 UDMA - split#4: dma_device callbacks
>      1
>    dmaengine: ti: New driver for K3 UDMA - split#5: dma_device callbacks
>      2
>    dmaengine: ti: New driver for K3 UDMA - split#6: Kconfig and Makefile
> 
>   .../devicetree/bindings/dma/ti/k3-udma.txt    |  185 +
>   .../devicetree/bindings/soc/ti/k3-ringacc.txt |   59 +
>   Documentation/driver-api/dmaengine/client.rst |   75 +
>   .../driver-api/dmaengine/provider.rst         |   46 +
>   drivers/dma/dmaengine.c                       |   73 +
>   drivers/dma/dmaengine.h                       |    8 +
>   drivers/dma/ti/Kconfig                        |   22 +
>   drivers/dma/ti/Makefile                       |    2 +
>   drivers/dma/ti/k3-udma-glue.c                 | 1225 ++++++
>   drivers/dma/ti/k3-udma-private.c              |  141 +
>   drivers/dma/ti/k3-udma.c                      | 3525 +++++++++++++++++
>   drivers/dma/ti/k3-udma.h                      |  161 +
>   drivers/soc/ti/Kconfig                        |   12 +
>   drivers/soc/ti/Makefile                       |    1 +
>   drivers/soc/ti/k3-ringacc.c                   | 1165 ++++++
>   include/dt-bindings/dma/k3-udma.h             |   10 +
>   include/linux/dma/k3-udma-glue.h              |  134 +
>   include/linux/dma/ti-cppi5.h                  | 1049 +++++
>   include/linux/dmaengine.h                     |  110 +
>   include/linux/soc/ti/k3-ringacc.h             |  245 ++
>   20 files changed, 8248 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/dma/ti/k3-udma.txt
>   create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-ringacc.txt
>   create mode 100644 drivers/dma/ti/k3-udma-glue.c
>   create mode 100644 drivers/dma/ti/k3-udma-private.c
>   create mode 100644 drivers/dma/ti/k3-udma.c
>   create mode 100644 drivers/dma/ti/k3-udma.h
>   create mode 100644 drivers/soc/ti/k3-ringacc.c
>   create mode 100644 include/dt-bindings/dma/k3-udma.h
>   create mode 100644 include/linux/dma/k3-udma-glue.h
>   create mode 100644 include/linux/dma/ti-cppi5.h
>   create mode 100644 include/linux/soc/ti/k3-ringacc.h
> 
Can you please split this series and post drivers/soc/* bits
separately ?  If its ready, I can apply k3-ringacc.c changes.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
