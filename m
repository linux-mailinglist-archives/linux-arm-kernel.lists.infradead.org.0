Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5608911D4CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 19:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YQ27eytbRzPBKN8/r6pG4WTf2SHXb1RbmCS8VdECu0w=; b=czgZRxH/XBlcwLqqTMvvKP80a
	MR4LsmrEnUK3tbIn8zNiJDOE2nuwLskKxlaIg1m11wTixJjyyx/+34mD3MKNga0HEkar7X6SlZw2l
	utz7S9Vk1YKgqXmzR6HT/emyM12WdxR26rLeHkqZUMmjUnUFgjjg2QPUi3RaQzKD6XXyzc/u0C4fm
	zo4rmjh+x0M/hKYD2AmlhYE0JbyFY0A0Ia5gK/cKEBX6n9AbtB1NrBJmUloaow+/dtzEJCn4ifLCl
	kBpC187GFea33NWG07zzbtJbK5W25/Ne6IRl54B8MLv/MUG6kLvwJ4VaJtghsuJmUuPx6gu58H+Ir
	bFPINDN8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSmo-0002Nh-4M; Thu, 12 Dec 2019 18:02:02 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSmg-0002N3-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 18:01:55 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCI1jCj040670;
 Thu, 12 Dec 2019 12:01:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576173705;
 bh=7umw+lZFi1BHRxJtoDG/pDfGYt2ivKM2wzztYeraSx4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=mjvuyE5K/ua8woRHztS9LAAhCdNoMODmSggKIAY96KJd9xga6vMDt0Ew+yRwo/ZB7
 SujM4u8gfg0mmJzOqJ84dskQkiPjTeJmEmm7h1U/gqHPlCP/inKNXYtxri06JWnqdU
 4jI9RWOPrPp8n783qi+xF3rmI3BEPYxYXtOrVzgc=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBCI1jMa094685
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 12:01:45 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 12:01:44 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 12:01:44 -0600
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCI1fIu110459;
 Thu, 12 Dec 2019 12:01:42 -0600
Subject: Re: [PATCH v7 00/12] dmaengine/soc: Add Texas Instruments UDMA support
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <24491d96-df44-de64-73cb-2f67e6581629@ti.com>
Date: Thu, 12 Dec 2019 20:01:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191209094332.4047-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_100154_306472_31917DC4 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/12/2019 11:43, Peter Ujfalusi wrote:
> Hi,
> 
> Vinod, Nishanth, Tero, Santosh: the ti_sci patch in this series was sent
> upstream over a month ago:
> https://lore.kernel.org/lkml/20191025084715.25098-1-peter.ujfalusi@ti.com/
> 
> I'm still waiting on it's fate (Tero has given his r-b).
> The ti_sci patch did not made it to 5.5-rc1, but I included it in the series and
> let the maintainers decide if it can go via DMAengine for 5.6 or to later
> releases (5.6 probably for the ti_sci and 5.7 for the UDMA driver patch).
> 
> Changes since v6:
> (https://patchwork.kernel.org/project/linux-dmaengine/list/?series=209455&state=*)
> 
> - UDMAP DMAengine driver:
>   - Squashed the split patches
>   - Squashed the early TX completion handling update
>     (https://patchwork.kernel.org/project/linux-dmaengine/list/?series=210713&state=*)
>   - Hard reset fix for RX channels to avoid channel lockdown
>   - Correct completed descriptor's residue value
> 

Thank you Peter,
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
