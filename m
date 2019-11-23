Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F81E107DC7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 09:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3L4z7wKgBeVNMAMMC740D1vpRjRDGgy8WWAJHwGSvQ=; b=ZfZfRhwKKTSrgX
	DY/siW/6sb2ComRW3KcNnZL4U0cLlkU5h1bptP9141HIOLe8mQ19ywu8s2cxt9iCkuT6F/JmLQzeB
	/tb3CswHxnrMdDqy9CuujXkKjegKiA3c41KfcU3QLnETn68dBgrqtahVqa5sKaHyvoVJzOk7IelEW
	vyHu6wqQRJ1QKhFYaaIjFB9wJNzMWn9nYoyh3PZMFmmaoD8gK5j9YTSTEY0HXf33OiZ9KEFdZNf3P
	k87162d9PjbyenjNjU7Ru9SUfwwMGXfA2OOT5ZC0aeto4PwVQxBO570UykvS3PTzTcffaEuUqQnTo
	Xx4kAxG80QOWgT/rpukQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYQy5-0004Ot-JU; Sat, 23 Nov 2019 08:40:37 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iYQxw-0004NM-V0; Sat, 23 Nov 2019 08:40:31 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAN8e5Jq003004,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAN8e5Jq003004
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 23 Nov 2019 16:40:05 +0800
Received: from RTEXMB02.realtek.com.tw (172.21.6.95) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Sat, 23 Nov 2019 16:40:05 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Sat, 23 Nov 2019 16:40:05 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::54f9:1e1e:4618:f740]) by
 RTEXMB03.realtek.com.tw ([fe80::54f9:1e1e:4618:f740%8]) with mapi id
 15.01.1779.005; Sat, 23 Nov 2019 16:40:05 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>, Marc Zyngier
 <maz@misterjones.org>
Subject: RE: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Topic: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Index: AdWTrwRiu8TDC5guRneVMItRk6mPLwAihi8AAIJriSD//6UUgP/7v8ZQgA4x2AD//PfkIIAOmDuAgAAzz4D//i+x8A==
Date: Sat, 23 Nov 2019 08:40:04 +0000
Message-ID: <4235c5641f0f4946beeeea8adfd74970@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
 <7a05ac2c-00bc-b2ac-0a33-be0242d33188@suse.de>
 <309cd67da48e4702ae3dcc4ca8ab4309@realtek.com>
 <279fd3a3-17dc-5796-f0b0-e39eb919081f@suse.de>
 <7c94c59649c04442886a98c057c07654@realtek.com>
 <23f44f6f4aec90b412d5d7ff6f4d95f1@www.loen.fr>
 <80d0aed8-3b85-1312-1091-0ced3ab1f5d2@suse.de>
In-Reply-To: <80d0aed8-3b85-1312-1091-0ced3ab1f5d2@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.143.78]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_004029_160403_A47D1A0D 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

> 
> MMIO, for GICD and GICR. It's about fixing the ranges of the /soc node:
> 
> My proposed
> ranges = <0x98000000 0x98000000 0x68000000>; needs to be split, with a gap
> between r-bus and GIC for continued RAM.
> 
> https://github.com/afaerber/linux/commit/1884ec6a533c9d5c2b6ca40ee138ff
> 7e8312b6c8
> 
> This goes back to Rob's review of RTD1295 [1], where we then for lack of
> memory space documentation assumed that everything beyond 2 GiB would
> be potential register space. Here we're dealing with up to 4 GiB though.
> 
> 
> James, are you planning to send a fix-up patch here? If not, you'll need to tell
> me what values to use, e.g., is there a NOR flash region on RTD1619, and does
> RAM continue also in between and after GIC, or is there some timer register
> behind it, like on RTD1195?
> 
> ranges = <0x00000000 0x00000000 0x00030000>, // ??? boot ROM size
>          <0x98000000 0x98000000 0x00200000>, // r-bus
>          // anything here? e.g., NOR flash?
>          <0xff100000 0xff100000 0x00010000>, // GICD
>          <0xff140000 0xff140000 0x000c0000>; // GICR
>          // anything here? e.g., timer enable?
> 
> ranges = <0x00000000 0x00000000 0x00030000>,
>          <0x98000000 0x98000000 0x00200000>,
>          <0xff100000 0xff100000 0x00100000>; // whole GIC?
> 

Yes, I'll send a fix-up patch.


Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
