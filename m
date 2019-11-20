Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29006103684
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 10:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiCQJ04tpnz+cgVnnjm8eDbxItAX53eY9k6MkocVyLY=; b=j65cd5+FUoUTc6
	pDMIDQC7PKHzX7IQEjcjaAeZa/NTT9khTWYsWfKHZcox5FCRFXyPe7CRo9tiiI849aB5ppm0qkbnP
	8Ple3rOag1jlb1f61Yv+7ujIid55Ub6ouqM8JWCSdzfA7BEv8RoU+Gjj0PYDsUhE8J1F4B0u9SplN
	sIj9b/Je8OF6V4U1Nw1mE/9HDaWc2sNsvfoN+oXQorjQ9zVj+d6SEmhCJobVYzrUhkH0B9iqzf4fe
	CrA5E2bawLdjIDysRTpiaHMi4bk5FjZzgnq1KpqACU61eVstrxDcUY9o2BLswm2fi3l/kLatHNV/x
	uczWwgvkpvDkqpOxD8xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXMAE-0007PB-7Y; Wed, 20 Nov 2019 09:20:42 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iXM9y-0007OW-Jg; Wed, 20 Nov 2019 09:20:28 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAK9KEv0032545,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAK9KEv0032545
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 20 Nov 2019 17:20:14 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Wed, 20 Nov 2019 17:20:14 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 20 Nov 2019 17:20:13 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::a4bf:5be3:6e60:69f9]) by
 RTEXMB03.realtek.com.tw ([fe80::a4bf:5be3:6e60:69f9%8]) with mapi id
 15.01.1779.005; Wed, 20 Nov 2019 17:20:13 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
Thread-Topic: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
Thread-Index: AQHVmD0XE9qksqLMuUeBNyO+ccQCh6eIaL1AgAJ0nQCABXPOcIABjY0AgAHm7YA=
Date: Wed, 20 Nov 2019 09:20:13 +0000
Message-ID: <734600434d7d4cce871353b33ef22a6f@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-6-afaerber@suse.de>
 <a43d184d74c34e269714858b2635c35e@realtek.com>
 <960a80b9-b1bf-3709-bbb7-fc2a3c3ae1da@suse.de>
 <753c18eee3fb4e9ea25d42798542b3dd@realtek.com>
 <ed66e712-4ceb-374c-dd36-476d79706251@suse.de>
In-Reply-To: <ed66e712-4ceb-374c-dd36-476d79706251@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_012026_780225_1ABCFC30 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

> Please see [1] - I had already updated the second reservation to start at
> 0xa800 and extended it to 0x100000 before your response here.

Thank you.

> The previous "bootcode" size of 0xc000 can be found here:
> https://github.com/BPI-SINOVOIP/BPI-M4-bsp/blob/master/linux-rtk/arch/arm
> /mach-rtd119x/include/mach/memory.h
> https://github.com/BPI-SINOVOIP/BPI-M4-bsp/blob/master/linux-rtk/arch/arm
> /boot/dts/realtek/rtd119x/rtd-119x-horseradish.dts
> 
> As you can see the 0xc000 and 0xf4000 were hardcoded and did not depend on
> SYS_BOOTCODE_MEMSIZE...
> For later SoCs I saw some FIXME(?) comment that area up to 0x100000 was
> reserved due to some Jira ticket and should get fixed? Any insights on what is
> in that memory range causing problems?
> 
The problem is solved. (memory overwrite by FW)

Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
