Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E441608D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZefnZpKxRkREPMxoSUt9dhP77BxeJmMPTBq0zFkWRfU=; b=oSW3CNXM543umg
	nEyiOQgm5nQe8zz4gIvfwTBJpEaYYX8ccmJ9oB/9UognNh0T/CZBcVuqqaxEnDwLM77ZCxAlmH6Ph
	LVfuNgw76CXTScEuhaJPl1TwZO4Ji490KPYSR3+Q1z3nYbkr7cfXPOP0AhZsH9hS/wnjEiAubT81C
	QP3GMEeF76bORrOLZiHOSYounqgsqwiQiwOeq9apMWQbDU21xi95IAZJKFs/6Z+gjbdbKNaxehFWx
	SfrT0UwaYSbm+Q648zhuwRZvopWNx3PX286/ntBkaG9NNIm/b0qQTiIE7M10sLBxGPtiNwZxYdZ9l
	b1Jf/YhCYxx7USapozRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPtY-00079M-CL; Fri, 05 Jul 2019 15:13:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPtQ-00078F-Op
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:12:58 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x65FCqTo112689;
 Fri, 5 Jul 2019 10:12:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562339572;
 bh=jhZ0U6kuPSnRvJ1GMDYkwAE5tkV0mIxZbCP4J8vReUE=;
 h=From:To:CC:Subject:Date;
 b=qPYxB52TUhrAtLWFcHnYbt5bz9s2GBxDcHKSE3aRM/LHT5y43y0af9RfcwkUi/tow
 hU8xodDwzTG8MY+dWHGz2jNJqsBU1+DACvKHuA67mtonhdb6n4yAt9/UX78HO9F2o8
 PbVUmh5zuRiAw+hG6Yvknfl/cics1ondnjm2LRMw=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x65FCqoC088518
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 5 Jul 2019 10:12:52 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 5 Jul
 2019 10:12:52 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 5 Jul 2019 10:12:52 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x65FCpjx069375;
 Fri, 5 Jul 2019 10:12:52 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Santosh Shilimkar <ssantosh@kernel.org>
Subject: [RESEND PATCH next v2 0/6] ARM: keystone: update dt and enable cpts
 support 
Date: Fri, 5 Jul 2019 18:12:41 +0300
Message-ID: <20190705151247.30422-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081256_898625_A9ABBFF4 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Santosh,

This series is set of platform changes required to enable NETCP CPTS reference
clock selection and final patch to enable CPTS for Keystone 66AK2E/L/HK SoCs.

Those patches were posted already [1] together with driver's changes, so this
is re-send of DT/platform specific changes only, as driver's changes have
been merged already.

Patches 1-5: CPTS DT nodes update for TI Keystone 2 66AK2HK/E/L SoCs.
Patch 6: enables CPTS for TI Keystone 2 66AK2HK/E/L SoCs.

[1] https://patchwork.kernel.org/cover/10980037/

Grygorii Strashko (6):
  ARM: dts: keystone-clocks: add input fixed clocks
  ARM: dts: k2e-clocks: add input ext. fixed clocks tsipclka/b
  ARM: dts: k2e-netcp: add cpts refclk_mux node
  ARM: dts: k2hk-netcp: add cpts refclk_mux node
  ARM: dts: k2l-netcp: add cpts refclk_mux node
  ARM: configs: keystone: enable cpts

 arch/arm/boot/dts/keystone-clocks.dtsi     | 27 ++++++++++++++++++++++
 arch/arm/boot/dts/keystone-k2e-clocks.dtsi | 20 ++++++++++++++++
 arch/arm/boot/dts/keystone-k2e-netcp.dtsi  | 21 +++++++++++++++--
 arch/arm/boot/dts/keystone-k2hk-netcp.dtsi | 20 ++++++++++++++--
 arch/arm/boot/dts/keystone-k2l-netcp.dtsi  | 20 ++++++++++++++--
 arch/arm/configs/keystone_defconfig        |  1 +
 6 files changed, 103 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
