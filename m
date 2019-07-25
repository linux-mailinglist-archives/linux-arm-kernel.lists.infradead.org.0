Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C9874270
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 02:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vwfKiML79Eh/Dpo2CJ4B9cnOwoxAY8ZYFea/XRJyElU=; b=ty7LKnw+WUacsH
	qOeLb6fQGyGM6wgWjyggkUvHZf0LywxiMgXmeY9PjbOtd8JZ0jSAIZEnTsgiEdmvE8qsYYXFCUKdL
	Hgr6QfdOLpYDTh+kJ+kA1eZJdSmscwD8ii4xaXYEeEXkWob3SAdnrwH9RKDky9hyUOf0mBZoZkX2W
	03gQsbSExpJStWlgqQg9Q22yyDfJyLcW7f1rMw1HSmHzshm8HadXyQrM2JLn5UWp4lKTje8VmcV0C
	e5HyX2MAbRE0NudukbJk8bYIvrpXJRaTE4qZ0KiSGAe20dQjiGov5nXe0bylBAdJYkAst9p+2N95H
	iMBsN9yDEqIxYLm54mkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqRLH-0002uU-EK; Thu, 25 Jul 2019 00:10:43 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqRL3-0002tD-4F
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 00:10:30 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6P0AQMQ015356;
 Wed, 24 Jul 2019 19:10:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564013426;
 bh=zEvTO0Udn/0fWpLDNjhTpf7b5lOPB1wh9q8pS43qibI=;
 h=From:To:CC:Subject:Date;
 b=nnD3B/O3unY47hXpkWt6BiJvhHQH5W6nNv5S+JK6JBcoh1/m/K7ID1MKjYOM2X/aF
 2V+bT5Hso4lekNRoRTYWWlDTOmfDKjlswfR7BlAXzInXo125IjmzrVTzKXarXM2bFe
 dPyzGXAQ9k1aeZXThx7zIiibFW9qE7YtlzP+hb64=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6P0AQMP030735
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 24 Jul 2019 19:10:26 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 24
 Jul 2019 19:10:25 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 24 Jul 2019 19:10:25 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6P0APGA028555;
 Wed, 24 Jul 2019 19:10:25 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6P0AOZ03252; 
 Wed, 24 Jul 2019 19:10:24 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH v2 0/4] Add Mailbox nodes for TI K3 AM65x & J721E SoCs
Date: Wed, 24 Jul 2019 19:10:16 -0500
Message-ID: <20190725001020.23781-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_171029_317845_B3B6AC1B 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero, Nishanth,

The following series is a revised version of the series [1] that adds
the Mailbox DT nodes and the sub-mailboxes used to communicate between
the main MPU processor running Linux and the various R5F and DSP remote
processors present on the TI K3 AM65x and J721E SoC families. Patches
are based on v5.3-rc1 + the HwSpinlock DT node series [2], and are
intended for the 5.4 merge window. Functionality is verified using a
out-of-tree unit-test module and some additional loopback test nodes
available here [3] for reference.

Changes in v2:
 - All clusters are enabled by default in base dtsi files
 - The sub-mailboxes are moved to the actual board dts files
 - Unused clusters disabled in the board dts files

regards
Suman

[1] https://patchwork.kernel.org/cover/11053401/
[2] https://patchwork.kernel.org/cover/11053311/
[3] https://github.com/sumananna/mailbox/commits/mbox/test/5.3-rc1-k3-v2

Suman Anna (4):
  arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-am65-base-board: Add IPC sub-mailbox nodes for R5Fs
  arm64: dts: ti: k3-j721e-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-j721e-common-proc-board: Add IPC sub-mailbox nodes

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 108 ++++++++++++++++++
 .../arm64/boot/dts/ti/k3-am654-base-board.dts |  58 ++++++++++
 .../dts/ti/k3-j721e-common-proc-board.dts     |  93 +++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 108 ++++++++++++++++++
 4 files changed, 367 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
