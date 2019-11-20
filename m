Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0549A1035AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 08:59:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jN8mJB29zFGDQPXgN7OD3zx6D1x4eFn6KV7q8fxwmp0=; b=EBmoFQbLuxOZL1
	Z6geYfHhKneATsTyFb6+8y0Vi3Wr59PbSC92y/B1VfK6Pru/bha42Lvwmjh1xU/14pvZeT0i5bVD9
	pdAajjMCqLz7ZPederq+iQxBCW3gfQqX8YGnrGd3FRFQ1tiaSN9nEhXW77gOqq4HCxQbUIgbwWvZA
	CjyQ7tPQi+5+He7rTu8Hf40SZp4AhMgKbPB/ALL7QCIH7ts/zL8+S0ZXwEvNceqC70F5HR92rQDZP
	AbUiVdU6vftemmu9kf6NrdgD31ZknF0l8WS/m5sPOevGkLijzOxVriR6SmtpMR2N2Oqb4uPWcZk7H
	fSwKRDczWbbMIzZL8frA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXKtT-0000HL-RD; Wed, 20 Nov 2019 07:59:19 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iXKtM-0000Ge-0P; Wed, 20 Nov 2019 07:59:13 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAK7wvGv028634,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAK7wvGv028634
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 20 Nov 2019 15:58:57 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Wed, 20 Nov 2019 15:58:57 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 20 Nov 2019 15:58:56 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::a4bf:5be3:6e60:69f9]) by
 RTEXMB03.realtek.com.tw ([fe80::a4bf:5be3:6e60:69f9%8]) with mapi id
 15.01.1779.005; Wed, 20 Nov 2019 15:58:56 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Topic: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Index: AdWTrwRiu8TDC5guRneVMItRk6mPLwAihi8AAIJriSACDOAZgAA+WRqQ
Date: Wed, 20 Nov 2019 07:58:56 +0000
Message-ID: <993d5da60a87443995347ee2a4c74959@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
 <25fdd8eb-f1a0-82ae-9c4b-22325b163b0e@suse.de>
 <43B123F21A8CFE44A9641C099E4196FFCF920024@RTITMBSVM04.realtek.com.tw>
 <6182b89f-cd7e-ce7c-56f7-e2f500321cde@suse.de>
In-Reply-To: <6182b89f-cd7e-ce7c-56f7-e2f500321cde@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_235912_183045_BA86F74A 
X-CRM114-Status: GOOD (  12.73  )
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
> This conflicts with what I see in BSP irq mux code here:
> https://github.com/BPI-SINOVOIP/BPI-M4-bsp/blob/master/linux-rtk/drivers/ir
> qchip/irq-rtd16xx.h
> 
> That does show UR0 as bit 2 for the iso irq mux, as for previous SoCs.
> Is that code wrong, or does the same UART0 IP block have two alternative
> interrupts for backwards compatibility? I therefore held back RTD1619 irq mux
> patches from my irqchip v4 series [1].
> 
It is code wrong. The UR0 should remove from "irq-rtd16xx.h".

> The BSP DT does assign non-mux interrupts to the UART node like you did:
> https://github.com/BPI-SINOVOIP/BPI-M4-bsp/blob/master/linux-rtk/arch/arm
> 64/boot/dts/realtek/rtd16xx/rtd-16xx.dtsi
> And I obviously trust that you tested your DT to produce serial output.
> 

> Also note how there are UR1_TO and UR2_TO (TO = timeout?) in addition to
> regular UR1 and UR2 interrupts in the mux above, just as for RTD1295 and
> RTD1195 (UR1/UR1_TO only). From my irqmux v4 series posted last night I had
> to drop those additional interrupts property values from the DT [2], as they
> violate mainline's DesignWare DT schema's maxItems 1 and would require a
> new compatible string (and a driver patch to make use of it).
> 
Yes, TO is interrupt timeout.


Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
