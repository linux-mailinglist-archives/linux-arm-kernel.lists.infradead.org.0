Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362A53D45B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RD4CVC4FcDWSj2bXRr3Qnvl/x4m0Ss9A8KQbbPtMGO8=; b=uGu3qWBlYTgnvpXd+0MXHPm7i
	OpGtcSn2WQf7LUEJ/1dl34N5zcgPWP9NG7SBShvY20VfMpV9ILhLMsbCEp3z9zEqu5bQ24YKfRN1V
	eOiOOu9RcC7jR1M0Ri0i3nvooz+qSxMfsy2FnX9kCEaLlxvc3oEyQUrLv+B4sZ7Ymtosow+65bnKt
	vNN/8zjTf5KHzJ9DfIohnDuiAExBF79MBXjuwDL9F1aGKigee4AXfb52vRYKcIafvNHK7tYHI8BkX
	eATTn/o/AbMq1YojOUszko/1PqEmrTDyFcx08ZTjjdycGWycg8w+el1kIQbI3UpPufr1qotJaR0rG
	s+fJiQnlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakiV-0005sh-FL; Tue, 11 Jun 2019 17:37:51 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakiJ-0005sC-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:37:40 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BHbb0k052309;
 Tue, 11 Jun 2019 12:37:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560274657;
 bh=PSibVXUX6koIKAYeevqyUAKP4rYNgbeonswbMrkEFlA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=OLlriRFB4DfwTdeDWkDO21GgQSsLgfHejmCEiY9cEsQMw8W+FcW930D482gEmKvDy
 qRjvtlMJ3S6u8szIGFkaZgChHFzcdyNEppk9AF8d3YK6I9DCxHr+oiisfSRw7hBkey
 9LYlfAVciSbvxEm9U5NEl+ENL/Qc8dU6ZOsfnW+c=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BHbbVm034224
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 12:37:37 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 12:37:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 12:37:36 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BHbZFR023188;
 Tue, 11 Jun 2019 12:37:35 -0500
Subject: Re: [PATCH v3] firmware: ti_sci: Parse all resource ranges even if
 some is not available
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20190606121357.7932-1-peter.ujfalusi@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <418209ba-1d38-3c9b-4a80-b053b5770a7c@ti.com>
Date: Tue, 11 Jun 2019 20:37:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606121357.7932-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_103739_579789_B2D184FC 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lokeshvutla@ti.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/06/2019 15:13, Peter Ujfalusi wrote:
> Do not fail if any of the requested subtypes are not availabe, but set the
> number of resources to 0 and continue parsing the resource ranges.
> 
> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi,
> 
> Changes since v2:
> - changed dev_err to dev_dbg for not allocation subtype as it is no longer an
>    error
> 
> Changes since v1:
> - moved the 'bool valid_set = false;' to avoid 'reverse Christmas tree'
> - Added Reviewed-by from Lokesh

Thanks, queuing up for 5.3.

-Tero

> 
> Regards,
> Peter
>   drivers/firmware/ti_sci.c | 13 ++++++++++---
>   1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index ef93406ace1b..571ce24d7f43 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -2342,6 +2342,7 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
>   			    struct device *dev, u32 dev_id, char *of_prop)
>   {
>   	struct ti_sci_resource *res;
> +	bool valid_set = false;
>   	u32 resource_subtype;
>   	int i, ret;
>   
> @@ -2372,15 +2373,18 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
>   							&res->desc[i].start,
>   							&res->desc[i].num);
>   		if (ret) {
> -			dev_err(dev, "dev = %d subtype %d not allocated for this host\n",
> +			dev_dbg(dev, "dev = %d subtype %d not allocated for this host\n",
>   				dev_id, resource_subtype);
> -			return ERR_PTR(ret);
> +			res->desc[i].start = 0;
> +			res->desc[i].num = 0;
> +			continue;
>   		}
>   
>   		dev_dbg(dev, "dev = %d, subtype = %d, start = %d, num = %d\n",
>   			dev_id, resource_subtype, res->desc[i].start,
>   			res->desc[i].num);
>   
> +		valid_set = true;
>   		res->desc[i].res_map =
>   			devm_kzalloc(dev, BITS_TO_LONGS(res->desc[i].num) *
>   				     sizeof(*res->desc[i].res_map), GFP_KERNEL);
> @@ -2389,7 +2393,10 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
>   	}
>   	raw_spin_lock_init(&res->lock);
>   
> -	return res;
> +	if (valid_set)
> +		return res;
> +
> +	return ERR_PTR(-EINVAL);
>   }
>   
>   static int tisci_reboot_handler(struct notifier_block *nb, unsigned long mode,
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
