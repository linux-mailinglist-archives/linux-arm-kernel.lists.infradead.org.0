Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB02107DCB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 09:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uONGZIZubIiJHKWUnV4rNngZIc96Kzx6glWAKdXG4hQ=; b=g+g9JAnFbJFvcW
	/xaSsPqoN64Q5bnal4/HWd8tljxt6guqqcVCD7HA0SsrVtZ3+mxeICQrJR6d9uMsCMik/WE6LMkL/
	PvIBMiqu2wVNZph+Z98dGRVpQ6RFjp7qzsz5fTUbI1Jxe5FxKTPkXZVZLo1qlZ4xZ70YY/IfuzFMd
	P3C3p5p0YJN10MKHFHKEqEnFyd2O7EH8zjreIalO5WBuMwNJXcYBh/xD/HZG2M7v46HMbulDMmMCn
	uvIkhMXWXpUqASLKkVAykrm4706v8cJFno/ldiDeU/XOk8P5Z/XnMZadCk1tY9vrlqt7xXE6uILdN
	g4OYA27xgf63pLoIBP/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYR9w-0007o0-RU; Sat, 23 Nov 2019 08:52:52 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iYR9n-0007nL-SI; Sat, 23 Nov 2019 08:52:45 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAN8qVea003935,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAN8qVea003935
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 23 Nov 2019 16:52:32 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Sat, 23 Nov 2019 16:52:31 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Sat, 23 Nov 2019 16:52:31 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::54f9:1e1e:4618:f740]) by
 RTEXMB03.realtek.com.tw ([fe80::54f9:1e1e:4618:f740%8]) with mapi id
 15.01.1779.005; Sat, 23 Nov 2019 16:51:52 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Topic: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Index: AdWTrwRiu8TDC5guRneVMItRk6mPLwAihi8AAIJriSACDOAZgAA+WRqQAEum34AATt+NIA==
Date: Sat, 23 Nov 2019 08:51:52 +0000
Message-ID: <bc9c923789fe4f0586df3d2051e5721d@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
 <6182b89f-cd7e-ce7c-56f7-e2f500321cde@suse.de>
 <993d5da60a87443995347ee2a4c74959@realtek.com>
 <6d44e7f8-1ae5-ed3d-ac3c-0ee7903d660b@suse.de>
In-Reply-To: <6d44e7f8-1ae5-ed3d-ac3c-0ee7903d660b@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.143.78]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_005244_048824_DA545827 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
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

> >> back RTD1619 irq mux patches from my irqchip v4 series [1].
> >>
> > It is code wrong. The UR0 should remove from "irq-rtd16xx.h".
> 
> Actually, I just tested that UR0 works! (rev A01) So we shouldn't remove it from
> the irqchip driver, given the mapping changes requested for v5.

The UR0 has been removed from the RTD1619 specification. 
I'll check it again.


Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
