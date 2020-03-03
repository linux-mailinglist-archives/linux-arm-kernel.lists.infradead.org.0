Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFCF177A8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:35:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WPNlujXQIE5BVqTuy15ssYRmI7DVpwX7wgaHNwj3sKo=; b=aF18ukRW3uAPDu+Q5BkPJhC4e
	63OP5UCZXCiOsipHWc4YzwgpDg+4hGB+F9a+OrPu6Ovs4wz7W+/h8xwvlNd2LSyXvtYFyNRoLkH21
	fAYys/jGlxyFouMqqhntIzcGAoh/YdE6HsADcmURcCj67orGz2pGwwT11m3RUqT+qN2e3lWhVnxbr
	SZnbJ3qveEQidFT6NvkwKFn6B+qilzN8KfwMPA189dg8KzdxR9UBDr1900CAluGE50MoZzsnF5JV5
	zdKOmkd07tMS0AYpA8Z9p5au2UiX1W3VtyHXGzixKIwukDN1qKJi67wYUqOatbjn26wrZp/FAbzPd
	31WmGnVbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99a8-0001mi-9g; Tue, 03 Mar 2020 15:35:40 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99a1-0001mA-MC
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:35:35 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 023FZNri088793;
 Tue, 3 Mar 2020 09:35:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583249723;
 bh=We9hKUOb5/GmeQY53Xtn0VT7EhC2TrryfAgJsKh1aYc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WKRGqnxHkAr8CnJvXox0Sb4qtkXxzfGnF+W16wliI8Sf6j0VfYxBXUIZ94TZ9wuSe
 5P5+wlsPGYplDtANMyXJI1MKZusiefLeCG8FbLUxApE2RWBFjZalf4J8/2/OMuCuEV
 W/vk+K2MKv4uSkUF6KUxJhqr3k7ELgRAP0DyEU5c=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 023FZNKn047025
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 3 Mar 2020 09:35:23 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 3 Mar
 2020 09:35:22 -0600
Received: from localhost.localdomain (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 3 Mar 2020 09:35:22 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by localhost.localdomain (8.15.2/8.15.2) with ESMTP id 023FZIKM112679;
 Tue, 3 Mar 2020 09:35:19 -0600
Subject: Re: [PATCH 3/3] bus: ti-sysc: Implement display subsystem reset quirk
To: Tony Lindgren <tony@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-4-tony@atomide.com>
 <7d4af3b5-5dd7-76b3-4d3f-4698bfde288c@ti.com>
 <20200303151349.GQ37466@atomide.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <8cadd536-668a-4309-1878-7db2362717d2@ti.com>
Date: Tue, 3 Mar 2020 17:35:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200303151349.GQ37466@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_073533_851857_34D57A1A 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/03/2020 17:13, Tony Lindgren wrote:
> Hi,
> 
> * Tomi Valkeinen <tomi.valkeinen@ti.com> [200303 06:03]:
>> On 24/02/2020 21:12, Tony Lindgren wrote:
>>> +	/* Remap the whole module range to be able to reset dispc outputs */
>>> +	devm_iounmap(ddata->dev, ddata->module_va);
>>> +	ddata->module_va = devm_ioremap(ddata->dev,
>>> +					ddata->module_pa,
>>> +					ddata->module_size);
>>
>> Why is this needed? The range is not mapped when sysc_pre_reset_quirk_dss()
>> is called? This will unmap and remap twice, as this function is called
>> twice. And then left mapped.
> 
> That's because by default we only ioremap the module revision, sysconfig
> and sysstatus register are and provide the rest as a range for the child
> nodes.
> 
> In the dss quirk case we need to tinker with registers also in the dispc
> range, and at the parent dss probe time dispc has not probed yet.
> 
> We may be able to eventually move the reset quirk to dispc, but then
> it won't happen in the current setup until after dss top level driver
> has loaded.
> 
> We leave the module range ioremapped as we still need to access
> sysconfig related registers for PM runtime.

Ok, makes sense. I guess a minor improvement would be to unmap & remap once in 
sysc_pre_reset_quirk_dss before calling sysc_quirk_dispc.

  Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
