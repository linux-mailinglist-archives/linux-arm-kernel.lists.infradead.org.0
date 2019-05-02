Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043061121A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 06:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=afipB1yZt+XvTuOpeZKTSP3zxBJ7EQ3cYYlqyFOUmV8=; b=l5gEEKAPhEs+UY/XAgtFwe7lN
	9i0/j/schTJqguK+ICKQyTA4cs5+TcJT8yZTrpVa2b5piYId+E78Ym1NPBvbz2/6C2/Gy1FKylJuN
	45Uz1BhXg275lSEYwM+tYiqTBtu9XeA7BcmLJJYY0I9MXbw0Jzh/6g82vPWFOE2Qcl3I3aX0kSD7k
	BSXBHtQ1zmAncjX9bb9maOxMFTawn+D9DtuceY30SMtfsc+IL9kOG0JxuhygzPd2hIQ6WK/UtEq9W
	BOfjA4uhSJecrvDdNgkTB658vTzJISScvPuZ+VHRuj1JRHBnUS23ZVZhu55o9THWcQXAcNjIuNxQL
	OFQ4WEmiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM33Z-0001mw-VN; Thu, 02 May 2019 04:10:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM33S-0001mX-8U
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 04:10:43 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x424ATiF058065;
 Wed, 1 May 2019 23:10:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556770229;
 bh=WP2eDi6KVchBRDVnVVXz+FHJY7pgOayGruqTvD7qkCI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ul5FRZvsGkR458edeIfMo7q0aNKnCixOSGWJ29KgiDRQpWFEqbRFL5+hoQbVJ7tb+
 xa9bmfcQd98FHJ5CrSoPLLWrGIOMiC6sOyjQqvt5sC/Pz8QCMMcmGuGR+FbNlvCgIK
 40XkHfJXH/W1NkLSGtiUgO0rchnPfFy198BckwQk=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x424ATfG038853
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 1 May 2019 23:10:29 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 1 May
 2019 23:10:28 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 1 May 2019 23:10:29 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x424AO2u069515;
 Wed, 1 May 2019 23:10:25 -0500
Subject: Re: [PATCH 0/2] Two ti-sysc driver fixes for v5.3 merge window
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190501214129.12572-1-tony@atomide.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <3cb61934-0add-38f5-dd37-6fc597e0ed6b@ti.com>
Date: Thu, 2 May 2019 09:40:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501214129.12572-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_211042_402949_A82B55B1 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/05/19 3:11 AM, Tony Lindgren wrote:
> Hi all,
> 
> Here are few fixes for the am335x d_can boot issue Sebastian reported for
> Beaglebone.

Tested for AM437x-gp-evm RTC+DDR mode and DS0.
Also tried DS0 on Am335x beaglebone black.

For the above:

Tested-by: Keerthy <j-keerthy@ti.com>

> 
> Regards,
> 
> Tony
> 
> 
> Tony Lindgren (2):
>    ARM: dts: Configure osc clock for d_can on am335x
>    bus: ti-sysc: Handle devices with no control registers
> 
>   arch/arm/boot/dts/am33xx-l4.dtsi | 14 ++++++--------
>   arch/arm/boot/dts/am437x-l4.dtsi |  4 ----
>   drivers/bus/ti-sysc.c            | 23 +++++++++++------------
>   3 files changed, 17 insertions(+), 24 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
