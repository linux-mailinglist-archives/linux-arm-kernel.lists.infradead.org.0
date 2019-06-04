Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4768B34412
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eHu3yrYNGT6oCykw1yHsAsiaaK9ucBfuzGbM3VdMtE=; b=nQ14nM0QKtvBSK
	kicTXbGoURpNiHEIX5bITwu3oFq4XEnzeSeNPSyfaLc+TuMdrydrhi/ye06/0LzafFnqbihO2mxiE
	6XfulIDfT1VWa8Q+f3KnVH7BQKCuAw6Fg4/bHvVka6YOXmDlxJwUV7B/oiwLDMplQ5YpIT9cqhMmr
	HIfhVWrWTgACQ6hWcd0H3mnIg4s/KrNM6wfetIRNgkGYO+5898dEzW7XdODgJCU4FNRhlO8hgrtdC
	0Q5dfFlGkGnn37VgGAHcYH5CX+mcNQeIY7w4CUphDS/XRFaLRp85K7nb4mgBuMJusncI6FC2k7Exo
	2Hz9yIJKas/Y1+93vRtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Sz-0001Kf-9Q; Tue, 04 Jun 2019 10:14:53 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6Ro-0008Cx-Nn
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:14:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54ADcX7047415;
 Tue, 4 Jun 2019 05:13:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559643218;
 bh=tY23XJDB0NJObEvJ+JKUNGWwJpDuXmdSbiQXCKOBmSw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QsAwEU9SpFJ/NE3opF1L83hsqKm+l56T261NzOlk5UWrwIFaqiti8FDx9SnCWrpQ6
 Pw4oDgt9X8YrC6LdH2JUj4GvHKzQySdRRQMTTANyfTfHK+mlaDCDDKruRslTHRDyOB
 9pYF2zPzSFFJmN9E3I+0Aqc3RpTD8dg0rrJon/lA=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54ADcU7099617
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 05:13:38 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 05:13:38 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 05:13:38 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54ADXbZ009574;
 Tue, 4 Jun 2019 05:13:35 -0500
Subject: Re: [PATCH] firmware: ti_sci: Parse all resource ranges even if some
 is not available
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <nm@ti.com>, <t-kristo@ti.com>,
 <ssantosh@kernel.org>
References: <20190604101000.6741-1-peter.ujfalusi@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <4ff3a042-41a2-62d3-c899-7a62406ad6a4@ti.com>
Date: Tue, 4 Jun 2019 15:43:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190604101000.6741-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031341_754749_6030F039 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/06/19 3:40 PM, Peter Ujfalusi wrote:
> Do not fail if any of the requested subtypes are not availabe, but set the
> number of resources to 0 and continue parsing the resource ranges.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/firmware/ti_sci.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index af3ebcdeab18..5d13ed724ff0 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -2783,6 +2783,7 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
>  	struct ti_sci_resource *res;
>  	u32 resource_subtype;
>  	int i, ret;
> +	bool valid_set = false;

Minor nit: Can you maintain the reverse Christmas tree here? It looks good :) No
strong feelings though

Other than that:
Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
