Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9679F3D44E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WTJGvqRcm1qgKLrE+QLGUyFDToo0xFvx0qcT6J8y/Dk=; b=dYdOfbmE0Vyj2D19GvlGFde8D
	bZAiFm2VZtstsxFSlDYkvLhCHPQ+JIYsMbqANOXI/D45RrPPnHvDWwWDWMVGXar56MdACkyXHFTgz
	baatcV06vPFyVaQCI0T8u+7V0bz1CNXD4j6GGgFqdf3x1clccx0xlH9cgohhS9klg+3t3JGTChswf
	SdGdV6RH9Ec/mwVf3Gi7BUMRsEG19J8qn6vUNYW/Ihfdajb+eiDbW/XA15jRHWK6nm1UYcbmbvppP
	sDefg44nvyZdyKRwZKLegmg2UcCe0vIMpXyPeqUjwszDIjpENdaRoDVaF28E34+ZHWWmRFrHYHv5K
	C3d1C2v4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakfb-0003DY-GT; Tue, 11 Jun 2019 17:34:51 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakcC-0000SP-5i
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:31:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BHVIg2080041;
 Tue, 11 Jun 2019 12:31:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560274278;
 bh=1RmvW+AZ9FteTp3r96qSO0PelKVyqe7ED4AJeEZJgPM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=leILpbnQMLwVrBDDDmI4QvLvPFV/ZSJVE1jkZFENg6NcTx20XqpF38FNIjqyXEYN+
 5lJvMtgyyw+s7pWxUn0E9lVdyQ4DL2TqZeN9ilWPFhp8tla3DxuZunYtxOoBNGOh/+
 Tf7N3GzyDgbLO9U2J/8iVfANsSiEi20J/iuzZaT0=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BHVIU1078820
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 12:31:18 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 12:31:17 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 12:31:17 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BHVG9t054946;
 Tue, 11 Jun 2019 12:31:16 -0500
Subject: Re: [PATCH v2] firmware: ti_sci: Always request response from firmware
To: "Andrew F. Davis" <afd@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>
References: <20190528155510.373-1-afd@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <034a2922-1ee2-53b8-04ed-a05a66fda066@ti.com>
Date: Tue, 11 Jun 2019 20:31:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528155510.373-1-afd@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_103120_337437_8FF71E0A 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/05/2019 18:55, Andrew F. Davis wrote:
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
> Tested-by: Alejandro Hernandez <ajhernandez@ti.com>
> ---
> 
> Changes from v1:
>   - Rebased on v5.2-rc2

Thanks, queuing up for 5.3.

-Tero

> 
>   drivers/firmware/ti_sci.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index ef93406ace1b..36ce11a67235 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -466,9 +466,9 @@ static int ti_sci_cmd_get_revision(struct ti_sci_info *info)
>   	struct ti_sci_xfer *xfer;
>   	int ret;
>   
> -	/* No need to setup flags since it is expected to respond */
>   	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_VERSION,
> -				   0x0, sizeof(struct ti_sci_msg_hdr),
> +				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> +				   sizeof(struct ti_sci_msg_hdr),
>   				   sizeof(*rev_info));
>   	if (IS_ERR(xfer)) {
>   		ret = PTR_ERR(xfer);
> @@ -596,9 +596,9 @@ static int ti_sci_get_device_state(const struct ti_sci_handle *handle,
>   	info = handle_to_ti_sci_info(handle);
>   	dev = info->dev;
>   
> -	/* Response is expected, so need of any flags */
>   	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_GET_DEVICE_STATE,
> -				   0, sizeof(*req), sizeof(*resp));
> +				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> +				   sizeof(*req), sizeof(*resp));
>   	if (IS_ERR(xfer)) {
>   		ret = PTR_ERR(xfer);
>   		dev_err(dev, "Message alloc failed(%d)\n", ret);
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
