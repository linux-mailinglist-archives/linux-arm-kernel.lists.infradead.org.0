Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B4711686
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 11:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xpx+y+dQCE+f5iKEG7VbkFv2UDakINOg3ke3Sj99ywA=; b=AOCJjGsRYTI48JUfYL3qTPoWg
	Gd3jUIGRsaHOKYsxPIgNA7HdiziHOk/xkAKam/YvSfqL3ZVQ4YfrE2594CfCX/RuuJEN4PIwLCNga
	IwqcyOTdrLUeIRCCil5T+cL1D78c/Yh6KGNMc5VQI9dMSO9qxQ8n/bIvlUqqD5k15137b1fn4rGjt
	9JgD2CRxCy/RbdkBhvqnn4YArn5/Xi6Hfrq+TNuOo7Lwgklknfw4lrHGQhMK5a91npNCFJUP/wvEy
	1oJtDE4TzS/jBXnnJ3apcPHVmbFN0A7e6c/n9lYuOY2OPtiT7fJQbnqpru8+LvMqZR9LhrVlL52KB
	3FrfQhP9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7xG-00066O-D9; Thu, 02 May 2019 09:24:38 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7x9-00065X-P5
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 09:24:33 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x429OSxR127950;
 Thu, 2 May 2019 04:24:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556789068;
 bh=F9A3bt1zkLhhGJ9fZudisufgABQtzH8ITMMH99OzyGU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=KuFHVQtLUDzz+GLUqIs6FP+Mnv6oMzxhACFs4xIGsVMKO8ZpUDGgAR/hcamvjRUw7
 6j3FAtsc7aGk3+sFXhCGxIhRdJvu1318hbmwKEJrqaRUFsmBaQuyeA/cPU+61bGVxn
 oECKEzn3PjdqBcA6qUS3CIezmXf0bcqmJ2tg57W8=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x429OSjE013461
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 May 2019 04:24:28 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 2 May
 2019 04:24:27 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 2 May 2019 04:24:27 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x429OOsZ068403;
 Thu, 2 May 2019 04:24:25 -0500
Subject: Re: [PATCH v3 2/5] dt-bindings: ti_sci_pm_domains: Add support for
 exclusive and shared access
To: Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20190410053728.17374-1-lokeshvutla@ti.com>
 <20190410053728.17374-3-lokeshvutla@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <9fe962b7-0500-6916-1dc3-04db0e11cd4d@ti.com>
Date: Thu, 2 May 2019 12:24:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190410053728.17374-3-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_022431_894175_0DE62EC5 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/04/2019 08:37, Lokesh Vutla wrote:
> TISCI protocol supports for enabling the device either with exclusive
> permissions for the requesting host or with sharing across the hosts.
> There are certain devices which are exclusive to Linux context and
> there are certain devices that are shared across different host contexts.
> So add support for getting this information from DT by increasing
> the power-domain cells to 2.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Based on some offline discussions with Rob, I am withdrawing my concerns 
on this patch, thus:

Acked-by: Tero Kristo <t-kristo@ti.com>

We would still need ack from Rob though.

-Tero

> ---
>   .../devicetree/bindings/soc/ti/sci-pm-domain.txt      | 11 +++++++++--
>   MAINTAINERS                                           |  1 +
>   include/dt-bindings/soc/ti,sci_pm_domain.h            |  9 +++++++++
>   3 files changed, 19 insertions(+), 2 deletions(-)
>   create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h
> 
> diff --git a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
> index f7b00a7c0f68..f541d1f776a2 100644
> --- a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
> +++ b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
> @@ -19,8 +19,15 @@ child of the pmmc node.
>   Required Properties:
>   --------------------
>   - compatible: should be "ti,sci-pm-domain"
> -- #power-domain-cells: Must be 1 so that an id can be provided in each
> -		       device node.
> +- #power-domain-cells: Can be one of the following:
> +			1: Containing the device id of each node
> +			2: First entry should be device id
> +			   Second entry should be one of the floowing:
> +			   TI_SCI_PD_EXCLUSIVE: To allow device to be
> +						exclusively controlled by
> +						the requesting hosts.
> +			   TI_SCI_PD_SHARED: To allow device to be shared
> +					     by multiple hosts.
>   
>   Example (K2G):
>   -------------
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2359e12e4c41..dc7a19cc1831 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15345,6 +15345,7 @@ F:	drivers/firmware/ti_sci*
>   F:	include/linux/soc/ti/ti_sci_protocol.h
>   F:	Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
>   F:	drivers/soc/ti/ti_sci_pm_domains.c
> +F:	include/dt-bindings/soc/ti,sci_pm_domain.h
>   F:	Documentation/devicetree/bindings/reset/ti,sci-reset.txt
>   F:	Documentation/devicetree/bindings/clock/ti,sci-clk.txt
>   F:	drivers/clk/keystone/sci-clk.c
> diff --git a/include/dt-bindings/soc/ti,sci_pm_domain.h b/include/dt-bindings/soc/ti,sci_pm_domain.h
> new file mode 100644
> index 000000000000..8f2a7360b65e
> --- /dev/null
> +++ b/include/dt-bindings/soc/ti,sci_pm_domain.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __DT_BINDINGS_TI_SCI_PM_DOMAIN_H
> +#define __DT_BINDINGS_TI_SCI_PM_DOMAIN_H
> +
> +#define TI_SCI_PD_EXCLUSIVE	1
> +#define TI_SCI_PD_SHARED	0
> +
> +#endif /* __DT_BINDINGS_TI_SCI_PM_DOMAIN_H */
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
