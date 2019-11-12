Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46258F94A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VtCLgR2pEBazYDhZUsVZe6NooeXn5HQzYwd6Wk3dQ6Y=; b=pbE/IM3bIcqd7D
	luqh3pQE0jijEcusoS5IlSLNCOcjxoVY9bnRePnJyHlxC4binYnbqQqgbHwOB5oJSybveebBfesTx
	P0hUWKeqQPUGNkYK5nTidgkNuKGFHmb98f6O+T8v0xmQZj1vU3FcntTuWnu6YN3E1XTWsYG4QN/j1
	f0NZ+wKdl4EwxrVhYcEV6GyTJGN7s/izH5bdVCCjMsHq8/hlhHnI+qji2LLmzsX5f43vl8VlebGQI
	DNcLr2MudvwdJI0acdIfqwM0EqJDRyrHbwZpIyanUgM4rQl+CEfuN0zTZxIjvjIP4aia704HxKY3q
	OmTFyhoGIbi+SYdlEnzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYMX-0000Ia-C5; Tue, 12 Nov 2019 15:45:49 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUYMA-00008H-I9; Tue, 12 Nov 2019 15:45:28 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xACFj30l012226,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xACFj30l012226
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 12 Nov 2019 23:45:03 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Tue, 12 Nov 2019 23:45:03 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 12 Nov 2019 23:45:02 +0800
Received: from RTEXMB03.realtek.com.tw ([::1]) by RTEXMB03.realtek.com.tw
 ([fe80::3d7d:f7db:e1fb:307b%12]) with mapi id 15.01.1779.005; Tue, 12 Nov
 2019 23:45:02 +0800
From: James Tai <james.tai@realtek.com>
To: =?iso-8859-1?Q?Andreas_F=E4rber?= <afaerber@suse.de>
Subject: [PATCH v3 0/2] arm64: dts: Initial RTD1619 SoC and Realtek Mjolnir
 EVB support
Thread-Topic: [PATCH v3 0/2] arm64: dts: Initial RTD1619 SoC and Realtek
 Mjolnir EVB support
Thread-Index: AdWZPXXTjSlMF45pSpOBNdAR/51KoA==
Date: Tue, 12 Nov 2019 15:45:02 +0000
Message-ID: <540b62715e77486485365081e992af76@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.182.66]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_074526_728449_757B051A 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series adds initial Device Trees for Realtek RTD1619 SoC and
Realtek Mjolnir EVB.

v2 -> v3:
* Adjust the address-cells and address-size property of root node
* Adjust ranges property of r-bus node
* Adjust uart node addressing
* Add comments for uart node
* Revert soc node

v1 -> v2:
* Define compatible strings for Realtek RTD1619 SoC and Realtek Mjolnir
* Add uart1 and uart2 device node into rtd16xx.dtsi
* move cpus node and the interrupt-affinity into rtd16xx.dtsi
* Specify the r-bus ranges


Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andreas F=E4rber <afaerber@suse.de>

James Tai (2):
  dt-bindings: arm: realtek: Document RTD1619 and Realtek Mjolnir EVB
  arm64: dts: realtek: Add RTD1619 SoC and Realtek Mjolnir EVB

 .../devicetree/bindings/arm/realtek.yaml      |   6 +
 arch/arm64/boot/dts/realtek/Makefile          |   2 +
 .../boot/dts/realtek/rtd1619-mjolnir.dts      |  40 +++++
 arch/arm64/boot/dts/realtek/rtd1619.dtsi      |  12 ++
 arch/arm64/boot/dts/realtek/rtd16xx.dtsi      | 163 ++++++++++++++++++
 5 files changed, 223 insertions(+)
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1619-mjolnir.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1619.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd16xx.dtsi

-- =

2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
