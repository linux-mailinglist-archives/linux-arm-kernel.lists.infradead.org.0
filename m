Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B0311FF45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:58:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FAkZXHdfNZFZUaFy0SwyO3qqQ5qv09+B47cwBw1OUyU=; b=n3TI/pVvf/jpw42qeK5iybFv/
	G0chskuY6hlIekiYCXKg+kHa7g4IAjbrJRIIg+MIRLPjTtGJETWOfRnVQn6QBgoLC4J3Rl26//spE
	JxrJS9YifVhswckDIsmpaH6TC54S+23olpjo+S1hZpjVLhv9CqAK5Zs21lfQYET8c5xVs+f0UH5Jm
	RI3pCB23Io7FqDYpSdz8XdzhRVYO5aIdNphucVIeK+f0vhE6Ap8rNNcd5+1hROFcDw88lzhqM2Grm
	JnthtFxkXiNLKiyGIvpSahz3ou0/9wSANE+SdPjXVJOhLEeXm67h0bhFX9jDdtexiOGhNZe9zcXLL
	IvEY38pwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglGe-0001Gc-1Y; Mon, 16 Dec 2019 07:58:12 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglGT-0001Ft-Td
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 07:58:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG7vpeY063231;
 Mon, 16 Dec 2019 01:57:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576483071;
 bh=sfrarZ24vNSke4hOJFAUW1PxVnpBAlJQohsKdU29YcA=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=sxsrKQKConolNmlUvdEglb0f81TZhsFghK9P8H61G9+U4U2seNVslyhH9VhxlTwkh
 Y8oV8GsER+U8zh53Dl3GUsJjk99oSTyvrTrJMhLZyCz2kBWmi9T9KQL0PuBBjy3Y/q
 o4EU794RlVtgEoLpR52+IN+lgZBd0MeZa0TsmM5k=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG7vp00105355;
 Mon, 16 Dec 2019 01:57:51 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 01:57:47 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 01:57:48 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG7vkNW106258;
 Mon, 16 Dec 2019 01:57:46 -0600
Subject: Re: [PATCH] firmware: ti_sci: Remove unneeded semicolon
To: zhengbin <zhengbin13@huawei.com>, <nm@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <1576465684-30829-1-git-send-email-zhengbin13@huawei.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <07a096d2-fc08-6c16-15fc-b6502d0a6c45@ti.com>
Date: Mon, 16 Dec 2019 09:57:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1576465684-30829-1-git-send-email-zhengbin13@huawei.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_235802_061092_F0A1A176 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/12/2019 05:08, zhengbin wrote:
> Fixes coccicheck warning:
> 
> drivers/firmware/ti_sci.c:1809:2-3: Unneeded semicolon
> drivers/firmware/ti_sci.c:2241:2-3: Unneeded semicolon
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>

Acked-by: Tero Kristo <t-kristo@ti.com>

> ---
>   drivers/firmware/ti_sci.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index 4126be9..a063a08 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -1806,7 +1806,7 @@ static int ti_sci_get_resource_range(const struct ti_sci_handle *handle,
>   	} else {
>   		*range_start = resp->range_start;
>   		*range_num = resp->range_num;
> -	};
> +	}
> 
>   fail:
>   	ti_sci_put_one_xfer(&info->minfo, xfer);
> @@ -2238,7 +2238,7 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
>   			*size = resp->size;
>   		if (order_id)
>   			*order_id = resp->order_id;
> -	};
> +	}
> 
>   fail:
>   	ti_sci_put_one_xfer(&info->minfo, xfer);
> --
> 2.7.4
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
