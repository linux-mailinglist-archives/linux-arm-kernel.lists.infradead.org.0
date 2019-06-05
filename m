Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53EB36168
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a8lforkQr0I5z4i1ijuN3NCVud4TyeutmkJ4e0i28F4=; b=XxeXWaM5doPcHT
	WuyD+bBnUM/US6/NT+WfJW4MXRXaEhNse10MftB97DPMnxHB1Cj0JAGKy4+YrkpeoowZTuWclCwEi
	6kJZw4txG8k2yZbk6UAyIw8dkyEN7SM4pMaszilem0KEKTHA1kx5DZo88CLlzsMy4uJHjNKYMmJNa
	Zu+tvFfVh8pfuVWxucnwQKz4wAopdfrfEe+a3bx+4O5uGwhLKgPLFQaWloLzzc7lC9Hp95XvJv1q0
	GB2lbbjLBnoy1AkV4cTCecn/A077dK9XUcF3lKzG/KZtFATQZA/tV5q5As6pEPPNHGAo3M7fQAk5D
	7ZWKk0vSrhb3i1W6/UfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYsI-0004Na-Me; Wed, 05 Jun 2019 16:34:54 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYs1-0004F3-89
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:34:38 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55GYaDV130355;
 Wed, 5 Jun 2019 11:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559752476;
 bh=EyRxgNDYnTkm/dfjnoK+S5JmanetNm6H7MORnEhgjec=;
 h=From:To:CC:Subject:Date;
 b=gOiBm9pBFHyqPy/yVhu0P83nh5IWbcq7xeovKvOoR6BKYUdPPMf2ZsjLfRPN7r9wc
 6Da9dtiw75MqhEMlvRiVsA5BYwEWaOQ+Bq7lUUTjVqNfeOMzX9MjqQ5gn6VlRuUw25
 W3H+AKKgJe2pxfTHrhMMa4KswWIGm+d9M88gF4E4=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55GYZco010398
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 11:34:35 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 11:34:35 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 11:34:35 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55GYZlT023921;
 Wed, 5 Jun 2019 11:34:35 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x55GYZm10206; 
 Wed, 5 Jun 2019 11:34:35 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 0/4] Add MCU SRAM nodes for TI K3 SoCs
Date: Wed, 5 Jun 2019 11:34:30 -0500
Message-ID: <20190605163434.23173-1-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_093437_339063_81871FA1 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

The following series adds the DT nodes for the MCU SRAM present within
the MCU domain for both AM65x and J721E SoCs. The first 2 patches enable
the MCU SRAM node to be probed properly on AM65x SoCs, and the third
patch the equivalent for J721E SoCs. The third patch depends on the
base J721E support patch series from Nishanth [1].

The last patch is not related to MCU SRAM, but adds the ranges for the
R5F cluster that is also present in the MCU domain in preparation for
the R5F nodes.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189 

Suman Anna (4):
  arm64: dts: ti: k3-am65: Add MCU SRAM ranges in interconnect nodes
  arm64: dts: ti: k3-am65-mcu: Add the MCU RAM node
  arm64: dts: ti: k3-j721e: Add the MCU SRAM node
  arm64: dts: ti: k3-am65: Add R5F ranges in interconnect nodes

 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 8 ++++++++
 arch/arm64/boot/dts/ti/k3-am65.dtsi             | 6 ++++++
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
 3 files changed, 22 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
