Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E141502B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 09:38:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mwbAjKkLLYYLTyoVMBfNJTZtJLBjF8PVCUDjrOTzgq8=; b=oakuviV9biDwaNAQ4/D2OG+Ue
	6uhQ/TcZ39JzS+K0CuDYq+nquSowKezbln/pJKb76/Rj+UXKzC/QmGDLuPqRHdnKLKXLskcIru+Gb
	bXsy/laebpP5t0L337z/XRM43TmnAFt23G2LfZs1h6Mp7SUcLJp7zNb0RqLSvxsv5/wnNQBYoInGN
	fEvQ5OLaXHHuOYLDJKAzVXU6oMiacZO0uvv2NyyTu3+k/oq6yxGEz5o4/N1buYNdupsWXW7DLx3cJ
	2BfuQBa1AJUg/teKjYwF4jqrhfdDWB4lRWxr+V9hTFe9w4LTWT31TNxQwaeGOnJWYN9ZIYRpz0ILR
	bqtmY899g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyXFu-0003jA-VH; Mon, 03 Feb 2020 08:38:54 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyXFo-0003ik-9H
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 08:38:49 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0138ckDD100871;
 Mon, 3 Feb 2020 02:38:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580719126;
 bh=Tfda4LvuUEYTDvyGlYS6mOHiUVeU9HHASiG1AIAbvcA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=aielRH4sdU7RaEk2GdG9JP1i7St4zjZiS4dkoufB9dlA67dAq+AkPwIbhnA/R+2GP
 57BXHZUZgiBHZqa2XGSMFuxhEVySL5B+vW8TjKkktaX7409EQ3a/zB8ABoiEIeUCsg
 HIa2udZRK0MVzhbiZrAy6TLnfG7mwFqh3O0/qCRU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0138ckXi124317;
 Mon, 3 Feb 2020 02:38:46 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 3 Feb
 2020 02:38:46 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 3 Feb 2020 02:38:46 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0138cipW104965;
 Mon, 3 Feb 2020 02:38:44 -0600
Subject: Re: [PATCH] firmware: ti_sci: Correct the timeout type in
 ti_sci_do_xfer()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <nm@ti.com>, <ssantosh@kernel.org>,
 <santosh.shilimkar@oracle.com>
References: <20200122104009.15622-1-peter.ujfalusi@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <a63c23ec-d468-fc9b-3990-becd7c120df6@ti.com>
Date: Mon, 3 Feb 2020 10:38:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200122104009.15622-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_003848_366807_7F61446C 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lokeshvutla@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/01/2020 12:40, Peter Ujfalusi wrote:
> msecs_to_jiffies() returns 'unsigned long' and the timeout parameter for
> wait_for_completion_timeout() is also 'unsigned long'
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Reviewed-by: Tero Kristo <t-kristo@ti.com>

> ---
>   drivers/firmware/ti_sci.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index 3d8241cb6921..361a82817c1f 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -422,7 +422,7 @@ static inline int ti_sci_do_xfer(struct ti_sci_info *info,
>   				 struct ti_sci_xfer *xfer)
>   {
>   	int ret;
> -	int timeout;
> +	unsigned long timeout;
>   	struct device *dev = info->dev;
>   
>   	ret = mbox_send_message(info->chan_tx, &xfer->tx_message);
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
