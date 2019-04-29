Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC74E4EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTWA/Do9AW+82F2I7Xv4plUgoNS1OxqnZC/jQtBe7bk=; b=a55eBYckExSPLu
	qbkHKGdu/22hyOMuCn2lUuZ1U3jNfRZycbX+vPfvKBV/Ew58rFAWcCyd5PkZbRHc25S5kRmCMIZMB
	w2AaMQqIKzfqCHJ8fv0MyQv/CKFqJcw4f3lPaxqR5nVF4YRFlQcIyrfNXrqu4AB9yx7sxiocgd+qI
	RSxIeYnfeWpFaGVapJpagDyyAvNhTvUn9atvZ5tEiixW5s3GVE9wtsfwhC3rs3mtKhqnyQq0dSCin
	MLrwrKvXs1/KsyFXTiPXikTaBOLeDSwPmEb367uI6eZhECkzlJffi+dq0nBy2Pq5MbmCDPS+drct8
	x3XTrfs7hIfbEyKUEg+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7Tf-0005S3-Ms; Mon, 29 Apr 2019 14:41:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7TX-0005Rd-NL
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:41:49 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3TEfgDS005819;
 Mon, 29 Apr 2019 09:41:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556548902;
 bh=12cspNAIBmeFC9boxgWSm3Qi/ryg0xgp/h3FhKZhj1M=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=iPXPkUY5paXv1lRHkyy7RtN72NTaGb2WFeVD0vgT0V8NmMwZc1CBwcc2MzSi0y5Lz
 wqx1jVG7jfLXScQYyA9fnQjJMljzos7vypJHjjBP7fuGvecAGKHoPDsqUcI2ItgRwT
 Z0V3crTqbz9yzAwyrPKoYuVmM5yq7g/TfpvsDERE=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3TEfgdh090310
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 29 Apr 2019 09:41:42 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Apr 2019 09:41:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Apr 2019 09:41:42 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3TEffom082202;
 Mon, 29 Apr 2019 09:41:41 -0500
Date: Mon, 29 Apr 2019 09:40:49 -0500
From: Nishanth Menon <nm@ti.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: [PATCH] firmware: ti_sci: Always request response from firmware
Message-ID: <20190429144049.5dmudk63b3xftmr2@kahuna>
References: <20190429131533.25122-1-afd@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429131533.25122-1-afd@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_074147_902048_FB900CCC 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tero Kristo <t-kristo@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Santosh Shilimkar <ssantosh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09:15-20190429, Andrew F. Davis wrote:
> TI-SCI firmware will only respond to messages when the
> TI_SCI_FLAG_REQ_ACK_ON_PROCESSED flag is set. Most messages already do
> this, set this for the ones that do not.
> 
> This will be enforced in future firmware that better match the TI-SCI
> specifications, this patch will not break users of existing firmware.
> 
> Fixes: aa276781a64a ("firmware: Add basic support for TI System Control Interface (TI-SCI) protocol")
> Signed-off-by: Andrew F. Davis <afd@ti.com>
> Acked-by: Nishanth Menon <nm@ti.com>

yep, the patch allows backward and forward compatibility with TISCI
compliant firmware.

Thanks for doing the patch.

> Tested-by: Alejandro Hernandez <ajhernandez@ti.com>
> ---
>  drivers/firmware/ti_sci.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index 3fbbb61012c4..3f202c63b9a6 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -448,9 +448,9 @@ static int ti_sci_cmd_get_revision(struct ti_sci_info *info)
>  	struct ti_sci_xfer *xfer;
>  	int ret;
>  
> -	/* No need to setup flags since it is expected to respond */
>  	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_VERSION,
> -				   0x0, sizeof(struct ti_sci_msg_hdr),
> +				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> +				   sizeof(struct ti_sci_msg_hdr),
>  				   sizeof(*rev_info));
>  	if (IS_ERR(xfer)) {
>  		ret = PTR_ERR(xfer);
> @@ -578,9 +578,9 @@ static int ti_sci_get_device_state(const struct ti_sci_handle *handle,
>  	info = handle_to_ti_sci_info(handle);
>  	dev = info->dev;
>  
> -	/* Response is expected, so need of any flags */
>  	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_GET_DEVICE_STATE,
> -				   0, sizeof(*req), sizeof(*resp));
> +				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> +				   sizeof(*req), sizeof(*resp));
>  	if (IS_ERR(xfer)) {
>  		ret = PTR_ERR(xfer);
>  		dev_err(dev, "Message alloc failed(%d)\n", ret);
> -- 
> 2.21.0
> 

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
