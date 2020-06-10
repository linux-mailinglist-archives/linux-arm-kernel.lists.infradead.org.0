Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F471F53CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7aICbE7yh+FUFYIFCZ2Mj2P7Km/b/HXwROUweq0RUpE=; b=JgZWdj9Ybfef+x7zuJSTa6wcl
	kV6F6PLWVNIGkAi3eu+qQzlkwQe1fb/oCclJQLZW3nxkt0u/0BV3cVattIGj6OQTdDLweEpxC1JJM
	RbyQzBAvmbWzR2cUX1FoewO6kLF+AbK48Jsz6BdAd8Nmkqj8BlgfTiW3sdPt+Vbj7BVNiBf/EF1Zu
	o7tywES8LVVXBg5FHJ0kXh4ATiX99QKvZ+ItELwqtwVhbgrq0WCT0niso7a42zIwUfeqhgWRBU9aM
	gmormywUQQRHWs1tbAigzrsaJ2dc4GmwVdlxAWdeok/9iTwCoR727wwzwpZyE+3q1GjETL923p+uk
	FaNK4ioTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jizCv-0000H3-3i; Wed, 10 Jun 2020 11:47:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizCl-0000G1-Nd
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:47:41 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05ABlNAC099893;
 Wed, 10 Jun 2020 06:47:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591789643;
 bh=ioRilCxbxofFqmKinvjjfsaLPYOAZ7YlTqzwbfbXGm8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HuwTVqm1QnbI/HMSVwLVaDVG/GwaHPuqDy0+f0dbPSlTp+/uwwXI/RgnIN+ponio5
 n+hze31xDi/xXH8JLLNSTbKMv/3eOr0DKNJgfRklWMc2z12O5R2D16qS+Ss/gljbVb
 FchhuVTBM3YRDa0Ppj4KPuPnWP2/llqksmaqk7VQ=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05ABlNTm105773
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Jun 2020 06:47:23 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 10
 Jun 2020 06:47:22 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 10 Jun 2020 06:47:22 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05ABlIx0077567;
 Wed, 10 Jun 2020 06:47:19 -0500
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
To: Tony Lindgren <tony@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
 <20200603140639.GG37466@atomide.com>
 <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
 <20200609151943.GL37466@atomide.com>
 <9ed70121-2a53-d2b3-051a-88eb83e6c53f@ti.com>
 <20200609165234.GM37466@atomide.com> <20200609171043.GN37466@atomide.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <7c4809d0-5262-a739-354a-61e617fe6c6e@ti.com>
Date: Wed, 10 Jun 2020 14:47:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609171043.GN37466@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_044739_913858_EAADCF96 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Keerthy <j-keerthy@ti.com>, Suman Anna <s-anna@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/06/2020 20:10, Tony Lindgren wrote:

>> On beagle-x15 I see these errors after modprobe:
>>
>> DSS: OMAP DSS rev 6.1
>> omapdss_dss 58000000.dss: bound 58001000.dispc (ops dispc_component_ops [omapdss])
>> omapdss_dss 58000000.dss: bound 58040000.encoder (ops hdmi5_component_ops [omapdss])
>> [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
>> omapdrm omapdrm.0: [drm] Cannot find any crtc or sizes
>> [drm] Initialized omapdrm 1.0.0 20110917 for omapdrm.0 on minor 0
>> omapdrm omapdrm.0: [drm] Cannot find any crtc or sizes
>> aic_dvdd_fixed: disabling
>> ldousb: disabling
>>
>> Maybe I'm missing some related module on x15?
> 
> Still did not figure what I might be missing on x15 :)

The log above shows that nothing is missing, omapdrm has probed fine. But it cannot see anything 
connected to the hdmi port. Are you booting with correct dtb for your x15 revision? And you have a 
monitor connected? =)

  Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
