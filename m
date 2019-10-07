Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECADCDBCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 08:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aTDjl1jEEQIy+PXv2gJRLC2hDgFQ7jNt7yyZOku3T28=; b=EQW0eNa8xK42NZb2lU+RUy/RL
	h6mJMO1ajbUk7n574f8giyS51I/CJtLWoNuN7OF11wfSYy97HHXs7apfKQ+lizaOm0GvkxO8K3D+9
	9yUJ1B6Pbbew9hMC3PoOF9//ndfL6MKZTBGFl9M9ExSfU3QeLwdfRxzF4CXbl/oHjSKvs7sUEXFJP
	lUKnH2LWn1HB9FnkQhkOB6J55yvUbZd2XyMghvfT5RtpNunIRQOwfO8j+XmubZJBgByHpGKB9ZLwe
	0OUVgemBs494SWqTE1vHdA4YYD8pIMzxOJuDQD3m9+Q8S6s5v9tEb/H0BRsUAgb01yF/WerToZwJv
	u9GgNVKtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHMHB-00082H-J9; Mon, 07 Oct 2019 06:13:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHMH2-00081n-QZ
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 06:13:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x976DQ4f064153;
 Mon, 7 Oct 2019 01:13:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570428806;
 bh=sGCWRnpUHNtSpha8n3OkkeFYJDB/yK1x0XFHBz/Hs4Q=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=JpOZs2avjMIEaFZoTGiLI+3ZOfCSYbsAosFzugT8hOiUoEevHo/FoiNkviXjrzEj1
 m4bGZ8JWb2dhTXIalsfpZvfEWByVUGBP/eeCN7qIXBgz6sMa/yZQz78qFsy+IEdwv8
 h50Yzwdg1VC/LQmI/XwdodNYO4jvBqr7QhnXI/Ic=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x976DQ5Z114175
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 7 Oct 2019 01:13:26 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 7 Oct
 2019 01:13:23 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 7 Oct 2019 01:13:25 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x976DOKo040325;
 Mon, 7 Oct 2019 01:13:24 -0500
Subject: Re: [PATCH] ARM: omap2plus_defconfig: Fix selected panels after
 generic panel changes
To: Tony Lindgren <tony@atomide.com>
References: <20191003165539.50318-1-tony@atomide.com>
 <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
 <20191004155426.GM5610@atomide.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <21f98050-4eb1-e709-387f-164fb420deaf@ti.com>
Date: Mon, 7 Oct 2019 09:13:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191004155426.GM5610@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_231337_008700_AD46FC7A 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-omap@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 18:54, Tony Lindgren wrote:
> * Tomi Valkeinen <tomi.valkeinen@ti.com> [191004 08:42]:
>> On 03/10/2019 19:55, Tony Lindgren wrote:
>>> The old omapdrm panels got removed for v5.4 in favor of generic panels,
>>> and the Kconfig options changed. Let's update omap2plus_defconfig
>>> accordingly so the same panels are still enabled.
>>>
>>> Cc: Jyri Sarha <jsarha@ti.com>
>>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
>>> Signed-off-by: Tony Lindgren <tony@atomide.com>
>>> ---
>>>    arch/arm/configs/omap2plus_defconfig | 12 ++++++------
>>>    1 file changed, 6 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
>>> --- a/arch/arm/configs/omap2plus_defconfig
>>> +++ b/arch/arm/configs/omap2plus_defconfig
>>> @@ -356,14 +356,14 @@ CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
>>>    CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
>>>    CONFIG_DRM_OMAP_PANEL_DPI=m
>>>    CONFIG_DRM_OMAP_PANEL_DSI_CM=m
>>> -CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
>>> -CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
>>> -CONFIG_DRM_OMAP_PANEL_SHARP_LS037V7DW01=m
>>> -CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
>>> -CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
>>> -CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
>>>    CONFIG_DRM_TILCDC=m
>>>    CONFIG_DRM_PANEL_SIMPLE=m
>>> +CONFIG_DRM_PANEL_LG_LB035Q02=m
>>> +CONFIG_DRM_PANEL_NEC_NL8048HL11=m
>>> +CONFIG_DRM_PANEL_SHARP_LS037V7DW01=m
>>> +CONFIG_DRM_PANEL_SONY_ACX565AKM=m
>>> +CONFIG_DRM_PANEL_TPO_TD028TTEC1=m
>>> +CONFIG_DRM_PANEL_TPO_TD043MTEA1=m
>>>    CONFIG_FB=y
>>>    CONFIG_FIRMWARE_EDID=y
>>>    CONFIG_FB_MODE_HELPERS=y
>>
>> Sorry, I didn't remember to update these. Some additions:
>>
>> These can be dropped, they no longer exist:
>>
>> CONFIG_DRM_OMAP_ENCODER_TFP410=m
>> CONFIG_DRM_OMAP_CONNECTOR_DVI=m
>> CONFIG_DRM_OMAP_PANEL_DPI=m
>>
>> This can be added to get the DVI output working on many of the boards:
>>
>> CONFIG_DRM_TI_TFP410=m
> 
> We have patches already posted for these by Adam and me so we
> should be good to go with just $subject patch missing now.

Ok.

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ti.com>

  Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
