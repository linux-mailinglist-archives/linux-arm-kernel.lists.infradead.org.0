Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6FD1C88C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ko7Rdl7DXkZJzJF5dmvF8K5p8AMYs4Ny9kzrhsrZzJg=; b=OY9QrBo4He9AinpW63a0FqjFX
	9IST3XSPvE1Bh+xWqGOaSm0KpbL8BsOsB5zHmulxSntD8qn9mrVDUd+rJn3YIT+oYB3nPZOVU9P6j
	ug7tlsyyMC/JN0uGZLRHOtGSFHzgs40+rQWYLzdjykKLI5N+/TWTNyjfSRjD1zExLCx/dm7HVk26k
	A/U2T0LcMP/I1SEiucel6cxCi4FXhmzsb/Cg30nyci6Ho8CpHuPuNa/OS+lk7pktxxhCFxS8H2Gmf
	uN86n75/qvjzMAJvysYUOREGAEuYmHm6vXJjv++bRfwaueMHhBo2kXkZCKINGqvDIIFa2nmaZ5hi4
	dkm474mIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWezs-0004Tx-Mi; Thu, 07 May 2020 11:47:24 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWezk-0004TR-Sl
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:47:18 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 047BlDVV124185;
 Thu, 7 May 2020 06:47:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588852033;
 bh=BMGzqer+DWUoEKSS+dBUfKNGGh9G1GOzHgNg215nJaM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=u4kKeVAR6GOsWI6xKQQXLoC6q+A/7jMk1B2BX3f0AQUA6efHQdusFcqCdvsTtLmwb
 lZEc7BEeMS86EnKS3yGUL4gX+4RfB72iuNsKTyPT8PHb0RSM9V1Pzda86c1FlAro+L
 qYedcV8NKFNrSSjmPXWOZGZzQ7JyxjuJ1RPeJl5Y=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 047BlDat068218
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 7 May 2020 06:47:13 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 7 May
 2020 06:47:13 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 7 May 2020 06:47:13 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 047Bl9mu023398;
 Thu, 7 May 2020 06:47:10 -0500
Subject: Re: [PATCH v2 0/2] soc: ti: add k3 platforms chipid module driver
To: Grygorii Strashko <grygorii.strashko@ti.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Lokesh Vutla
 <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>
References: <20200505193417.2112-1-grygorii.strashko@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <c9153895-5e7b-d7e2-53f6-b36b9e1282fd@ti.com>
Date: Thu, 7 May 2020 14:47:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200505193417.2112-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_044717_004211_FED1862F 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dave Gerlach <d-gerlach@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/05/2020 22:34, Grygorii Strashko wrote:
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
> Changes in v2:
>   - pr_debug() replaced with pr_info() to show SoC info on init
>   - minor format change
>   - split series on driver and platform changes
>   - add Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
> 
> v1: https://lwn.net/Articles/818577/
> 
> Grygorii Strashko (2):
>    dt-bindings: soc: ti: add binding for k3 platforms chipid module
>    soc: ti: add k3 platforms chipid module driver
> 
>   .../bindings/soc/ti/k3-socinfo.yaml           |  40 ++++++
>   drivers/soc/ti/Kconfig                        |  10 ++
>   drivers/soc/ti/Makefile                       |   1 +
>   drivers/soc/ti/k3-socinfo.c                   | 135 ++++++++++++++++++
>   4 files changed, 186 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
>   create mode 100644 drivers/soc/ti/k3-socinfo.c
> 

Got a minor comments on patch #2, other than that looks fine to me. Once 
that is fixed, for whole series:

Reviewed-by: Tero Kristo <t-kristo@ti.com>
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
