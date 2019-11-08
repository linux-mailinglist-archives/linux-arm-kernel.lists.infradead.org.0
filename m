Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F8F43BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:44:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7JcStl5NgtYimJaj0vFG8XAsdD3pAOIxSuOO5EJKIZM=; b=XSSo/R0VXIS4H2
	LGEiL5zqYCy8oGcdRGpNSQB9XprDFm+y2Wlj50QB3WLJoZVUsTA1Ohil2l/8lf1jyFpQhDxQjKfgF
	k7ASa7Vgg2Quc7eViajBU04D7lYTYOxu5utsiXEzS+roozwqMhmJdunMCHvwDDF1d+Y3UgCrJ7SNJ
	XZmIESR2crIKeRMS+qjwjDDOUr5ZGWTO4p7tbliNuVEcTBPp7TP0GOi+ByBEyB3iaI15TvfHOjIiC
	xfobXrnvxzWXqM+YwJ+R6Bdtx06hqrAvsdrsrRLScXtokm5zHu54mxw4N8tQiJ8bckuW92leAAnpD
	G8X3EUoIdMv8Z3O59/Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0o5-0007gK-Ly; Fri, 08 Nov 2019 09:43:53 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iT0nU-0007DG-Op; Fri, 08 Nov 2019 09:43:18 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xA89guVu009625,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xA89guVu009625
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 8 Nov 2019 17:42:56 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCASV01.realtek.com.tw ([::1]) with mapi id 14.03.0468.000; Fri, 8 Nov
 2019 17:42:56 +0800
From: James Tai <james.tai@realtek.com>
To: =?iso-8859-1?Q?Andreas_F=E4rber?= <afaerber@suse.de>
Subject: [PATCH v2 0/2] Initial RTD1619 SoC and Realtek Mjolnir EVB support
Thread-Topic: [PATCH v2 0/2] Initial RTD1619 SoC and Realtek Mjolnir EVB
 support
Thread-Index: AdWWGJhW6hHY3ZYJQ8qKkqaxghH5QQ==
Date: Fri, 8 Nov 2019 09:42:55 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF91F9CB@RTITMBSVM04.realtek.com.tw>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_014317_095887_703B8220 
X-CRM114-Status: UNSURE (   7.02  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
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

This series adds Device Trees for the Realtek RTD1619 SoC and Realtek's
Mjolnir EVB.

v1 -> v2:
* Define compatible strings for Realtek RTD1619 SoC and Realtek Mjolnir
* Add uart1 and uart2 device node into rtd16xx.dtsi
* move cpus node and the interrupt-affinity into rtd16xx.dtsi
* Specify the r-bus ranges

James Tai (2):
  dt-bindings: arm: realtek: Document RTD1619 and Realtek Mjolnir EVB
  arm64: dts: Initial RTD1619 SoC and Realtek Mjolnir EVB support

 .../devicetree/bindings/arm/realtek.yaml      |   6 +
 arch/arm64/boot/dts/realtek/Makefile          |   2 +
 .../boot/dts/realtek/rtd1619-mjolnir.dts      |  40 +++++
 arch/arm64/boot/dts/realtek/rtd1619.dtsi      |  12 ++
 arch/arm64/boot/dts/realtek/rtd16xx.dtsi      | 154 ++++++++++++++++++
 5 files changed, 214 insertions(+)
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1619-mjolnir.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1619.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd16xx.dtsi

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
