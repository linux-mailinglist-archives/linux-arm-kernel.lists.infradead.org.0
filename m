Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB329190B68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GOS76r7H6UroEQ/owTFeAqfBuCfc9+JrT/dgoAjpN8k=; b=ClKqJcKhKNIPAj
	MLUPFkxUd0iFfsdVs/jNaBI0hTS7ol5SXgJ4m2bmDrOeMeFQZGP6ZHHqcc4CNFvuZUXk6eiN3GMhe
	/96vXurOfuGX5BRTSxElUidIj3N05e8yesLQ8DyjDGpB+O9yxdw+MiijEHPsgkCnCTjpAxo6xj4HJ
	gCiJlvNO5pZ1UqM1OQe2Gh1gZuMgsdthcjsDZPpQulkEHrnho+IVY6gWl5Z6D3w5imXPZh0RqGIiF
	aeWtRqh59X8nJN0Sosq29oW6qnwGXjYhh7flIvgCWd5bhbNWBFzoni8aFFPXRqLkbLdKsEH/l7ptp
	azI/DAXgJo6afWJGlg5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGh8u-0002Oi-Bn; Tue, 24 Mar 2020 10:50:44 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGh8l-0002Ny-1Z
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1585047035; x=1616583035;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=TxlBi3ra4HMx8zuqspMqJ3ApAbYybIFOtoUMzIZQnpE=;
 b=s0Xxc9Anr1x+ZOtH21MS07PT0+zasQ3lIQovHIuEWctX/yqnh+FFGMFG
 8Lej8t1Gq+i5yCLwCUCXTa1V5W2V7f27BT4veU9Mki61DqAn4ra5YoQOI
 KylmUs7e4tzR3pCIeg8Y6tKzNRdkH2sBlyAqUsNmAogQSYtAK88K5iI3j 0=;
IronPort-SDR: bCo4jtv7LFaaBuNw2kk0Cv7swc6NiVbyPBkdlU1QBKrMC8FohCy5dsrclfPt1QZQBiyT+3uQzN
 d2F/l/rARt9w==
X-IronPort-AV: E=Sophos;i="5.72,300,1580774400"; d="scan'208";a="34501424"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2a-22cc717f.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 24 Mar 2020 10:50:27 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-22cc717f.us-west-2.amazon.com (Postfix) with ESMTPS
 id 2E6EFA18E6; Tue, 24 Mar 2020 10:50:26 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1236.3; Tue, 24 Mar 2020 10:50:25 +0000
Received: from u8a88181e7b2355.ant.amazon.com (10.43.162.241) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 24 Mar 2020 10:50:15 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <andriy.shevchenko@linux.intel.com>, <tglx@linutronix.de>
Subject: [PATCH v5 0/6] Amazon's Annapurna Labs Alpine v3 device-tree
Date: Tue, 24 Mar 2020 12:49:12 +0200
Message-ID: <20200324104918.29578-1-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.43.162.241]
X-ClientProxiedBy: EX13D36UWA001.ant.amazon.com (10.43.160.71) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_035035_128119_410BEB4D 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, benh@amazon.com, linux-kernel@vger.kernel.org,
 hanochu@amazon.com, dwmw@amazon.co.uk, jonnyc@amazon.com, ronenk@amazon.com,
 talel@amazon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series organize the Amazon's Annapurna Labs Alpine device tree
bindings, device tree folder and adds new device tree for Alpine v3.

Changes since v4:
-----------------
- Re-order nodes in increasing order.
- Add disable to UART nodes.
- Add missing UART nodes (1,2,3)
- Add comments for GIC/UART
- Add io-fabric bus, and move uart nodes into it.
- Fix MSIx range according Alpine function spec

Changes since v3:
-----------------
- rebased and retested for tag Linux 5.6-rc2

Changes since v2:
-----------------
- Move up a level for DT node without mmio regs.
- Drop device_type from serial@fd883000 node.
- Minor change name of PCIe node to: pcie@fbd00000

Changes since v1:
-----------------
- Rename al,alpine DT binding to amazon,alpine
- Rename al folder to be amazon
- Update maintainers of amazon,alpine DT
- Add missing alpine-v2 DT binding
- Fix yaml schemas for alpine-v3-evp.dts:
	- #size-cells:0:0: 0 is not one of [1, 2]
	- arch-timer: interrupts: [[1, 13, 8, 1, 14, 8, 1, 11, 8, 1, 10,
	8]] is too short
- Change compatible string of alpine-v3-evp to amazon,al

Hanna Hawa (5):
  dt-bindings: arm: amazon: rename al,alpine DT binding to amazon,al
  arm64: dts: amazon: rename al folder to be amazon
  dt-bindings: arm: amazon: update maintainers of amazon,al DT bindings
  dt-bindings: arm: amazon: add missing alpine-v2 DT binding
  dt-bindings: arm: amazon: add Amazon Annapurna Labs Alpine V3

Ronen Krupnik (1):
  arm64: dts: amazon: add Amazon's Annapurna Labs Alpine v3 support

 .../devicetree/bindings/arm/al,alpine.yaml    |  21 -
 .../devicetree/bindings/arm/amazon,al.yaml    |  33 ++
 MAINTAINERS                                   |   2 +-
 arch/arm64/boot/dts/Makefile                  |   2 +-
 arch/arm64/boot/dts/{al => amazon}/Makefile   |   1 +
 .../boot/dts/{al => amazon}/alpine-v2-evp.dts |   0
 .../boot/dts/{al => amazon}/alpine-v2.dtsi    |   0
 arch/arm64/boot/dts/amazon/alpine-v3-evp.dts  |  24 ++
 arch/arm64/boot/dts/amazon/alpine-v3.dtsi     | 408 ++++++++++++++++++
 9 files changed, 468 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/al,alpine.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/amazon,al.yaml
 rename arch/arm64/boot/dts/{al => amazon}/Makefile (64%)
 rename arch/arm64/boot/dts/{al => amazon}/alpine-v2-evp.dts (100%)
 rename arch/arm64/boot/dts/{al => amazon}/alpine-v2.dtsi (100%)
 create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
 create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3.dtsi

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
