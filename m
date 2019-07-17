Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150746B6B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPB2t+y7+l12QynXzQqCZqOJf4b113Eow5sk/mWYgW8=; b=XP8CnUP1vEEQrp
	uHUJcEqh+DfEgCI6sJaIhcVXtDdp5+O7W2z0P80mYDEtbbXB7trGhI+26whNyQtyW8sORexHqPXHp
	5Q9gxQdwbrWkG93o7DeXbzFHwQFzAERdndx3bTqsWJTCrvD4IY6NJ+hSUkQ2yi+6qiPMUYn7yEKLx
	UVe2DZy+8QiUnEIJ0kJBdm97p+iKyjxiLUH0WWbbca4voKT/3NKAHue/eYILtqNfn2FMutywLB/AF
	U4J12sjhO984DBUwDuKg6Pix/VjfZsMiFR/9ribKRJomzRyC1m0lvRglCGC49uL/vUUnLXW/PzNLu
	YyoZXKgMTkxQXDQxrmqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndYO-0000eZ-OW; Wed, 17 Jul 2019 06:36:40 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hndYA-0000Ik-3V
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:36:28 +0000
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 7D03515792F57B4A9A3D;
 Wed, 17 Jul 2019 14:36:14 +0800 (CST)
Received: from DGGEMM423-HUB.china.huawei.com (10.1.198.40) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jul 2019 14:36:13 +0800
Received: from DGGEMM506-MBX.china.huawei.com ([169.254.3.227]) by
 dggemm423-hub.china.huawei.com ([10.1.198.40]) with mapi id 14.03.0439.000;
 Wed, 17 Jul 2019 14:36:09 +0800
From: "Zengtao (B)" <prime.zeng@hisilicon.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: RE: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Thread-Topic: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Thread-Index: AQHVN9Ajzwa2MbZo40exGsBlwJEt36bEv5mAgAln51A=
Date: Wed, 17 Jul 2019 06:36:09 +0000
Message-ID: <678F3D1BB717D949B966B68EAEB446ED2FF5B22D@DGGEMM506-MBX.china.huawei.com>
References: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
 <20190711112039.leuvelpm7opeoaxq@flea>
In-Reply-To: <20190711112039.leuvelpm7opeoaxq@flea>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.67.222.33]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_233626_322251_EC1FB64D 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, Paul
 Kocialkowski <paul.kocialkowski@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime:

Thanks for your reply.

>-----Original Message-----
>From: Maxime Ripard [mailto:maxime.ripard@bootlin.com]
>Sent: Thursday, July 11, 2019 7:21 PM
>To: Zengtao (B) <prime.zeng@hisilicon.com>
>Cc: kishon@ti.com; Chen-Yu Tsai <wens@csie.org>; Paul Kocialkowski
><paul.kocialkowski@bootlin.com>; Sakari Ailus <sakari.ailus@linux.intel.com>;
>linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
>Subject: Re: [PATCH] phy: Change the configuration interface param to void*
>to make it more general
>
>* PGP Signed by an unknown key
>
>On Fri, Jul 12, 2019 at 02:04:08AM +0800, Zeng Tao wrote:
>> The phy framework now allows runtime configurations, but only limited
>> to mipi now, and it's not reasonable to introduce user specified
>> configurations into the union phy_configure_opts structure. An simple
>> way is to replace with a void *.
>
>I'm not sure why it's unreasonable?
>
The phy.h will need to include vendor specific phy headers, and the union phy_configure_opts
will become more complex. I don't think this is a good solution to include all vendor specific phy
configs into a single union structure. 

>> We have already got some phy drivers which introduce private phy API
>> for runtime configurations, and with this patch, they can switch to
>> the phy_configure as a replace.
>
>If you have a custom mode of operation, then you'll need a custom
>phy_mode as well, and surely you can have a custom set of parameters.
>
>Since those functions are meant to provide a two-way negotiation of the
>various parameters, you'll have to have that structure shared between the
>two either way, so the only thing required in addition to what you would have
>passing a void is one line to add that structure in the union.
>
>That's barely unreasonable.
>
>Maxime
>
>--
>Maxime Ripard, Bootlin
>Embedded Linux and Kernel engineering
>https://bootlin.com
>
>* Unknown Key
>* 0x671851C5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
