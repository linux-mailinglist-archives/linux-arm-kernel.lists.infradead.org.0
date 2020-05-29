Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A51F1E8690
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 20:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7DIDVTtLoLYQOqipLzwZsLeTO46p0nN64L/DCRJAtXo=; b=qcylJylfLTEHfSMGU7scaMiTj
	WzWXrtrItdA3iOJHbmaLTxega60RMqQ95iJh0pWbDv/I32W7c4Hc1tpjCN5FPNEw4tr+rYvZ+y7ie
	9vkb5/HXZ9wq1fnBS7sizMPfC/UNOuRh9Mvac42ggahs0kofmZcW0xGVV9I3QaEJkdfCVzvmai/Ia
	ogTAOrtXamp8YcuvWBHedv0XZpNL+/3NrSk07d4egpdy9IMcxJh+M9JsYYCBCXauxda9RdkIqDSjB
	pCYSahhZXTLn4gkErh15ilgk8XwsgI4XFCtyddS6yEUuiabk/heEHsZQGdLEo2OqJFPmX2L91Ldzw
	WS2qCiFTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejez-0003K4-UX; Fri, 29 May 2020 18:23:13 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejen-0003J1-NJ
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 18:23:03 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04TIMrg8100299;
 Fri, 29 May 2020 13:22:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590776573;
 bh=sPL+7JF8rHgYei8jMdMnhOJQnH3qvwFo9YiQ/UVOtBk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=OFpF9T6aPW1jiMAsw+jzoXiPteEzQWhRGAILRgyXSNnAa+jp7eel8S2M00s2gyOVq
 l/fvmMxrA3Zf7mTbwEAQKCGHMF/Q5ppbGpisOy5WVldIBX/mKLjFUN0/EWRvHlOMBE
 aAD63HCd+8PwKaqFxG7TORxY/H86X78JJdq5nc2M=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04TIMrTS013909
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 29 May 2020 13:22:53 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 May 2020 13:22:53 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 May 2020 13:22:53 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04TIMoKe058585;
 Fri, 29 May 2020 13:22:51 -0500
Subject: Re: [PATCH v4 0/2] soc: ti: add k3 platforms chipid module driver
To: Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>,
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>
References: <20200512123449.16517-1-grygorii.strashko@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <a132765e-f4e4-a1e8-fb43-239188fecf1b@ti.com>
Date: Fri, 29 May 2020 21:22:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512123449.16517-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_112301_879349_522C9664 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nishanth Menon <nm@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dave Gerlach <d-gerlach@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Santosh,

On 12/05/2020 15:34, Grygorii Strashko wrote:
> Hi All,
> 
> This series introduces TI K3 Multicore SoC platforms chipid module driver
> which provides identification support of the TI K3 SoCs (family, revision)
> and register this information with the SoC bus. It is available under
> /sys/devices/soc0/ for user space, and can be checked, where needed,
> in Kernel using soc_device_match().
> It is also required for introducing support for new revisions of
> K3 AM65x/J721E SoCs.
> 
> Example J721E:
>    # cat /sys/devices/soc0/{machine,family,revision}
>    Texas Instruments K3 J721E SoC
>    J721E
>    SR1.0
> 
> Example AM65x:
>    # cat /sys/devices/soc0/{machine,family,revision}
>    Texas Instruments AM654 Base Board
>    AM65X
>    SR1.0
> 
> Changes in v4:
>   - convert to platform_driver as suggested by Arnd Bergmann <arnd@arndb.de>
> 
> Changes in v3:
>   - add handling of kasprintf() fail
> 
> Changes in v2:
>   - pr_debug() replaced with pr_info() to show SoC info on init
>   - minor format change
>   - split series on driver and platform changes
>   - add Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
> 
> v3: https://lkml.org/lkml/2020/5/8/357
> v2: https://lkml.org/lkml/2020/5/5/1193
> v1: https://lwn.net/Articles/818577/
> 
> Grygorii Strashko (2):
>    dt-bindings: soc: ti: add binding for k3 platforms chipid module
>    soc: ti: add k3 platforms chipid module driver
> 
>   .../bindings/soc/ti/k3-socinfo.yaml           |  40 +++++
>   drivers/soc/ti/Kconfig                        |  10 ++
>   drivers/soc/ti/Makefile                       |   1 +
>   drivers/soc/ti/k3-socinfo.c                   | 152 ++++++++++++++++++
>   4 files changed, 203 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
>   create mode 100644 drivers/soc/ti/k3-socinfo.c
> 

Any chances you can pick this up?

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
