Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E450A16C1F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 14:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y5x8L1QwdvhiQXHFdm2VuWZmQzGuiY/YuDKLkbocDF8=; b=YKm2vniSNiTjstyKAVRfEbekB
	GhmbXnZUGqwFs5f6DRH5C1Er7KvXa4ouj4WZZssoHZKr7oXrzYkiMX0EPV3k7rpG9foB/XRYvRGJN
	65dLqW2f1zfkSxgdAmw3WkD1EZdAQ63Zx7aONLahh+Ejj8Vlh2a30R6VzlVNb8Iy4eID4V9Qq/fhM
	khdJCxBOUCbTRSGBfe7jviY2Dt8XDXXL06Y0p1FIqHHfw7CjWRaTIhNWW6ZPVgzpF50hjtuL0LbJ7
	KxB7fE7LYcZIHId4g7Y9VfPedM1MVboSN2e+v74Xaw0zXQWTsmHgnfnjtDLrjNe8brVp2bv9iSAQ6
	O+y810sHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6a65-0007tI-6k; Tue, 25 Feb 2020 13:18:01 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6a5w-0007sN-0t
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 13:17:53 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01PDHOol042048;
 Tue, 25 Feb 2020 07:17:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582636645;
 bh=lZ62AKaTB/Atbtpwa67sBTXqFH1ZmiihyqLCvh1A9fA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=K4wkCBoy+olSygfm7BA8MQdkjr6f+AsXt7grThlRsMjHH8kKwfOeVLzzs5k1SCige
 Mb5HwZ+bskuIAzm3KFEUoQVL4eJxYc0xqIv49gKT5wn70q8E9y0aJPe9wZQDZRcdTL
 DnKH1LoUJAMAJuOJEfq3ragVeOzEFsnq4vCO4wC8=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01PDHOoS121640
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Feb 2020 07:17:24 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 25
 Feb 2020 07:17:24 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 25 Feb 2020 07:17:24 -0600
Received: from [192.168.2.14] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01PDHMpk082587;
 Tue, 25 Feb 2020 07:17:22 -0600
Subject: Re: take the bus_dma_limit into account on arm
To: Christoph Hellwig <hch@lst.de>, Russell King <linux@armlinux.org.uk>
References: <20200218184103.35932-1-hch@lst.de>
From: Roger Quadros <rogerq@ti.com>
Message-ID: <6e0988f4-7958-29d9-6249-24ee51edee3a@ti.com>
Date: Tue, 25 Feb 2020 15:17:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200218184103.35932-1-hch@lst.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_051752_110844_975EEDE1 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: "Nori, Sekhar" <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On 18/02/2020 20:41, Christoph Hellwig wrote:
> Hi Russell,
> 
> this series fixes the arm dma coherent allocator to take the bus dma
> mask into account, similar to what other architectures do.  Without
> this devices that support 64-bit mask, but are limited by the
> interconnect won't work properly.
> 

Can we please have this series marked for -stable? Thanks.

-- 
cheers,
-roger

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
