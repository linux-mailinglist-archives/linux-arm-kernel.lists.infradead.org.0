Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA089C2BE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 04:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=peIb2D/sx4+FCjQ/I7CHZJV0D3oyzlyJGcx1VqPMOg4=; b=Ob6EYxvPthgGhT
	6KjHGkekO4i6MhI0Xk0eF3Eg1HZ0gPEOWc7YExrvV83F9MqI7ib7W4o4MrJ3/JQ69Mp+3yB6s08ao
	IonIOUluzIrIZDtA7I+YenuX2cMy/vaN8SZcoSDqouPdwv5IFRixk4XTg2REvnEMC0p/2+LsNGngC
	l0bIt6zCLB4C3LSYexsRdW5QGnnsftqYzkgPB4WrjziEvWkDHzru42Spr/fRqumtfZlNy8OVBnxgA
	fMTZ4SD5eUKkmAXBsaQEf28wwsqXstxRkcOo8iq1uniIMi6blRINl3OJEk6TkK9b9n5t8gN9aIqoz
	frFMFnBDScfB4NlLbtOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF7zF-00042l-MS; Tue, 01 Oct 2019 02:34:01 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF7z5-00041T-Bb
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 02:33:53 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 79071891A9;
 Tue,  1 Oct 2019 15:33:42 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1569897222;
 bh=cr1LwIx1Qr1YHR8oFWzfuE98JzYPV5p2sKvZnEkZVrs=;
 h=From:To:CC:Subject:Date;
 b=J7P5S8YNJtqVMnJLXPFsFRBTxOffZ2ndk+Jgn25M3KzIb7dhZHQGOmwbtbfo6/YG9
 tXim6FVI9DBiUSCvwzkwaJa2y3SlZYB9oXEda0pJe6ihF3gltHKmga+2wHEeq+C89y
 8evUS0C4h6FuE6dmfulx/d4r72q4L3qV58IhBrLjSYXV9r5zoW1gu3kOb5V35W8VU5
 Z3mWPym6V8UP/sCF80tKYvOgXN33jjHIfd6E5JLg6IE6AKcBAC3hyTAsAbL9IMzRv8
 K0E2ci9lPvQRdhWefp6JecDBFspzQXmV8ILH+35iBpvkRgL9DzfMaq9sj8UtCf21q7
 W4hjPnCCqA4/A==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d92bb030000>; Tue, 01 Oct 2019 15:33:42 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Tue, 1 Oct 2019 15:33:38 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Tue, 1 Oct 2019 15:33:38 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "rayagonda.kokatanur@broadcom.com" <rayagonda.kokatanur@broadcom.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "li.jin@broadcom.com"
 <li.jin@broadcom.com>, "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>
Subject: Problem sharing interrupts between gpioa and uart0 on Broadcom
 Hurricane 2 (iProc)
Thread-Topic: Problem sharing interrupts between gpioa and uart0 on Broadcom
 Hurricane 2 (iProc)
Thread-Index: AQHVeAChr1G1lS1DPESIPAb5KujH5A==
Date: Tue, 1 Oct 2019 02:33:38 +0000
Message-ID: <32c3d1dfe61a656e3250438d887e5ba91bd880d0.camel@alliedtelesis.co.nz>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:dd9e:6998:e07c:4b65]
Content-ID: <98FB4C18FE312B41935AE4888DB878BF@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_193351_730828_8C76E0C0 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

We have a platform using the BCM53344 integrated switch/CPU. This is
part of the Hurricane 2 (technically Wolfhound) family of devices.

Currently we're using pieces of Broadcom's "iProc" SDK based on an out
of date kernel and we'd very much like to be running as close to
upstream as possible. The fact that the Ubiquiti UniFi Switch 8 is
upstream gives me some hope.

My current problem is the fact that the uart0 interrupt is shared with
the Chip Common A gpio block. When I have and interrupt node on the
gpio in the device tree I get an init exit at startup. If I remove the
interrupt node the system will boot (except I don't get cascaded
interrupts from the GPIOs).

Looking at the pinctrl-nsp-gpio.c it looks as though I might be able to
make this work if I can convince the gpio code to return IRQ_HANDLED or
IRQ_NONE but I'm struggling against the fact that the pinctrl-iproc-
gpio.c defers it's interrupt handing to the gpio core.

Is there any way I can get the gpio core to deal with the shared
interrupt?

Thanks,
Chris
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
