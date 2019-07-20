Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5936ED6A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 05:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06epBzj4P8NUEvCOEs7Q+66VrF+9UpouHVZ+q13zHwU=; b=T2yczihtNEsotu
	h8d2a0LnzkBBTueBLTqnOmYh8LGDg+KJ2dsnF0DbwTGLXdIvSAPuRB/9xFDX8cYWNXJNI2NORMHK3
	WK3vvNyVeCf/zzoXx7Fxgze5fzFfti7ZYvFbkYr1m8bbhtGSDa0r/Tklemng9Ijrn46Ynw9bCWWdo
	cYm/5ZJJcnGoy9mfHQbfSlJsZdHeuiOEs1k263PDQdfHiJjLDbyn6UpMlxaG2OeoAriG/FHxiAG8o
	9ywwGNFVH7Dq/okVfj5FO4aW9RugmGK+haKuoFgCxNoPB3Cd0dQt05TmmDcogsYipMxcZeD3HilhS
	wp7XiJGnIUYBAkzTJ6Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoffA-0004IH-4B; Sat, 20 Jul 2019 03:03:56 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hofep-0004HD-5T
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 03:03:37 +0000
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 827899EB8FD686D92FFC;
 Sat, 20 Jul 2019 11:03:21 +0800 (CST)
Received: from DGGEMM423-HUB.china.huawei.com (10.1.198.40) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 20 Jul 2019 11:03:20 +0800
Received: from DGGEMM506-MBX.china.huawei.com ([169.254.3.227]) by
 dggemm423-hub.china.huawei.com ([10.1.198.40]) with mapi id 14.03.0439.000;
 Sat, 20 Jul 2019 11:03:20 +0800
From: "Zengtao (B)" <prime.zeng@hisilicon.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: RE: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Thread-Topic: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Thread-Index: AQHVN9Ajzwa2MbZo40exGsBlwJEt36bEv5mAgApM1VWAAn7PsA==
Date: Sat, 20 Jul 2019 03:03:20 +0000
Message-ID: <678F3D1BB717D949B966B68EAEB446ED2FF5D942@DGGEMM506-MBX.china.huawei.com>
References: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
 <20190711112039.leuvelpm7opeoaxq@flea>
 <678F3D1BB717D949B966B68EAEB446ED2FF5B22D@DGGEMM506-MBX.china.huawei.com>
 <20190717163753.ti6swjfhm7fczcn4@flea>
In-Reply-To: <20190717163753.ti6swjfhm7fczcn4@flea>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.67.222.33]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_200335_377694_BC0AB2BA 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi maxime: 

>-----Original Message-----
>From: Maxime Ripard [mailto:maxime.ripard@bootlin.com]
>Sent: Thursday, July 18, 2019 12:38 AM
>To: Zengtao (B) <prime.zeng@hisilicon.com>
>Cc: kishon@ti.com; Chen-Yu Tsai <wens@csie.org>; Paul Kocialkowski
><paul.kocialkowski@bootlin.com>; Sakari Ailus <sakari.ailus@linux.intel.com>;
>linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
>Subject: Re: [PATCH] phy: Change the configuration interface param to void*
>to make it more general
>
>Hi,
>
>On Wed, Jul 17, 2019 at 06:36:09AM +0000, Zengtao (B) wrote:
>> Hi Maxime:
>>
>> Thanks for your reply.
>>
>> >-----Original Message-----
>> >From: Maxime Ripard [mailto:maxime.ripard@bootlin.com]
>> >Sent: Thursday, July 11, 2019 7:21 PM
>> >To: Zengtao (B) <prime.zeng@hisilicon.com>
>> >Cc: kishon@ti.com; Chen-Yu Tsai <wens@csie.org>; Paul Kocialkowski
>> ><paul.kocialkowski@bootlin.com>; Sakari Ailus
>> ><sakari.ailus@linux.intel.com>; linux-kernel@vger.kernel.org;
>> >linux-arm-kernel@lists.infradead.org
>> >Subject: Re: [PATCH] phy: Change the configuration interface param to
>> >void* to make it more general
>> >
>> >* PGP Signed by an unknown key
>> >
>> >On Fri, Jul 12, 2019 at 02:04:08AM +0800, Zeng Tao wrote:
>> >> The phy framework now allows runtime configurations, but only
>> >> limited to mipi now, and it's not reasonable to introduce user
>> >> specified configurations into the union phy_configure_opts
>> >> structure. An simple way is to replace with a void *.
>> >
>> >I'm not sure why it's unreasonable?
>> >
>>
>> The phy.h will need to include vendor specific phy headers
>
>I'm not sure this is an issue.
>
>> and the union phy_configure_opts will become more complex.
>
>And this was the plan all along.
>
>> I don't think this is a good solution to include all vendor specific
>> phy configs into a single union structure.
>
>The thing is, as Sakari have stated, this interface was meant as a generic way
>to negotiate a configuration between a PHY consumer and a PHY provider (ie,
>whatever sends data to the phy and the phy itself).
>
>If you remove the explicit type check, then you need to have prior knowledge
>(and agreement) on both sides, which breaks the initial intent.

I get your point, so if we follow your design, it will look this:

union phy_configure_opts {
	struct xxxx1_phy phy1_opts;
	struct xxxx1_phy phy2_opts;
	struct xxxx1_phy phy3_opts;
	.....
}

And the general phy framework needn't to know about the type but just pass through, 
the caller and the phy driver definitely need to know what they are doing.
So I suggest a more general type void *, otherwise the general phy will need to see a lot 
of details which is not that general. 

Zengtao 

>
>Maxime
>
>--
>Maxime Ripard, Bootlin
>Embedded Linux and Kernel engineering
>https://bootlin.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
