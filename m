Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12FFFFEC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 07:54:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jTZFZjeCkylHwrAJWo1CfcXOyTavLeFDCov/5THaag=; b=S0aRYG9qkbxaY2
	kBqYNmt933Xjl+Wq54j33NbuFAq/1n+6GSANS4z14nZyH3cTViTpIUNWEGJJAl2WqqjbuzvOXvNsQ
	DnmP7jbuQINPb4AekyhFlLhQ5sGcaU9j9//mndHJCYRXRg5RI9bB5Y5GzewwDGJ5DQ46TBYw2WMgR
	hOzpMhrbK/+W/KcN4p3H3pjxire+uowSIlhJKTaIKwWCPttMEi/2EstCUbhFhMzJGCTKFNX4BBrO2
	Yf+awvQ2lFj9GDtWSKIK7Hr+2PKZNNCrUg8k0WRmeP5mA8Aii0WfVNfytRB7jTwKxu4c4Ri8/eK/U
	5Slc+/nyUhDjjFxap1gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWavB-0004UI-VA; Mon, 18 Nov 2019 06:54:01 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iWav4-0004TN-Ji; Mon, 18 Nov 2019 06:53:56 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAI6resY006183,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAI6resY006183
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 Nov 2019 14:53:40 +0800
Received: from RTEXMB02.realtek.com.tw (172.21.6.95) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 18 Nov 2019 14:53:40 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 18 Nov 2019 14:53:39 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::5cc4:90a5:6821:926]) by
 RTEXMB03.realtek.com.tw ([fe80::5cc4:90a5:6821:926%8]) with mapi id
 15.01.1779.005; Mon, 18 Nov 2019 14:53:39 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
Thread-Topic: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
Thread-Index: AQHVmD0XE9qksqLMuUeBNyO+ccQCh6eIaL1AgAJ0nQCABXPOcA==
Date: Mon, 18 Nov 2019 06:53:39 +0000
Message-ID: <753c18eee3fb4e9ea25d42798542b3dd@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-6-afaerber@suse.de>
 <a43d184d74c34e269714858b2635c35e@realtek.com>
 <960a80b9-b1bf-3709-bbb7-fc2a3c3ae1da@suse.de>
In-Reply-To: <960a80b9-b1bf-3709-bbb7-fc2a3c3ae1da@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_225354_784705_B7AFA292 
X-CRM114-Status: GOOD (  12.76  )
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

> 
> Fixed, also further above for the soc node. This now leaves a gap until
> 0x18100000 - is that gap RAM or non-r-bus registers then?
> 
> 		ranges = <0x18000000 0x18000000 0x00070000>,
> 		         <0x18100000 0x18100000 0x01000000>,
> 		         <0x40000000 0x40000000 0xc0000000>;
> 

> Did you also review the other two ranges? The middle one was labeled NOR
> flash somewhere - are start and size correct? The final one depends on the
> maximum RAM size - does RTD1195 allow more than 1 GiB RAM? All
> non-RAM regions should be covered here.
> 
It is reserved for NOR flash. The start and size is correct.
The rtd1195 can support to 2GiB RAM.

> So another question, applicable to all SoCs: This reserved Boot ROM area at
> the start of the address space, here of size 0xa800, is that copied into RAM, or
> is that the actual ROM overlapping RAM? If the latter, we should exclude it
> from /memory@0's reg (making it /memory@a800), and add it to soc's ranges
> here for correctness.
> 
Yes, we should exclude it from /memory@0's reg.

> With the follow-up question: Is it correct that, given the size 0xa800, I have a
> gap between /memreserve/s from 0xa800 to 0xc000, or should we reserve that
> gap by extending the next /memreserve/ or inserting one?

We should reserve memory address from 0x0000 to 0xa800 for the internal ROM.


Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
