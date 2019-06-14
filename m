Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA5B461F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 17:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9ObmGEW6CRSTEnwdIZ1p7BnW7UHjP/690Vb4BKXImk=; b=u96LXrN+OLaaxN
	6XQ03egg+YoD9M2I2iOf7nNTUT2XdHSyIfjWu94a3gvgxUG7Up2ZXScBJ69pHab1M2ERAs+vkI7a1
	EtOGLD/gmMoe5YbfxyfK6yhTPHBczBHNa7NuQO2GfCY+IUxVh+5dT5P2VwUbqJNZcZswM1UcO2qCi
	98z9+go1w5r8LMUhnMnJLpCU4kAiLQdbfcB+plki9vQnvkKoFh/JeZGDSDflGoEVXJL/uu0GMYpXe
	D4PUKfhfd1OEV3lCxO14YXznOHS64fwtuNjC93XaI1UxhMnn2RqjCX5jEbjSCw+HKtJQBYxBN7Axy
	xvk+0nQ0K0hdMK7Kbb1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnhx-0002pB-An; Fri, 14 Jun 2019 15:01:37 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnhp-0002oY-Du
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 15:01:30 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-6-Ae-vvi9EMKOPr28p6sbQQA-1;
 Fri, 14 Jun 2019 16:01:23 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri,
 14 Jun 2019 16:01:22 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 14 Jun 2019 16:01:22 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christoph Hellwig' <hch@lst.de>
Subject: RE: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Thread-Topic: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Thread-Index: AQHVIrfpTFjppS25RkWUhwqPPyqZ4qabLzdw///7eICAABIeYA==
Date: Fri, 14 Jun 2019 15:01:22 +0000
Message-ID: <d93fd4c2c1584d92a05dd641929f6d63@AcuMS.aculab.com>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-17-hch@lst.de>
 <a90cf7ec5f1c4166b53c40e06d4d832a@AcuMS.aculab.com>
 <20190614145001.GB9088@lst.de>
In-Reply-To: <20190614145001.GB9088@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: Ae-vvi9EMKOPr28p6sbQQA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_080129_739737_148E8AF6 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: 'Christoph Hellwig'
> Sent: 14 June 2019 15:50
> To: David Laight
> On Fri, Jun 14, 2019 at 02:15:44PM +0000, David Laight wrote:
> > Does this still guarantee that requests for 16k will not cross a 16k boundary?
> > It looks like you are losing the alignment parameter.
> 
> The DMA API never gave you alignment guarantees to start with,
> and you can get not naturally aligned memory from many of our
> current implementations.

Hmmm...
I thought that was even documented.

I'm pretty sure there is a lot of code out there that makes that assumption.
Without it many drivers will have to allocate almost double the
amount of memory they actually need in order to get the required alignment.
So instead of saving memory you'll actually make more be used.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
