Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3078A144CBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:02:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7OXkjRHr1oZBq2+F/GVv08L8p4u2RBlEvz6x+zIg/L4=; b=JvyQjK2wCYjmXg
	9Vr6d++1VFpnk3e1ijIK/aJtF+s5eSGuJUzEfpcFkMhpBmSJj/3ctOCGB9GUlZaTKYyqNjkaXKd8/
	zI9DLlr7yTn5w6eHLW41SAIfTXXrH8Y5XVvRHdlGHRxHg6wcfmqmQ1Z2UMYiU6KOKOBlBITPr0SXE
	62lok7hnsHxFGygDygLv27E9qMQCJ4Hfp58OVEchh7pPPmMG5Wi7X8cTZ2jcCPPC20fMwj/NICe8I
	t5vZbV8QOUoo+P+n8xOLV29sxSxL8LRuf/wSHblK4IFEq3VEedw4zDQFHTGt49EIh+SsIOC9qZetM
	UIofT7sDHDV28Oq53jyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuAxp-0006Fj-KE; Wed, 22 Jan 2020 08:02:13 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuAxc-0006EW-3X
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 08:02:01 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00M81iXB096342;
 Wed, 22 Jan 2020 02:01:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579680104;
 bh=6IDBUxOmtTdvVpWE+GGfcIBsvqixex6LMLwXZYg8ZYE=;
 h=From:To:CC:Subject:Date;
 b=Kx8VuYQue/C30SrIRA+lvNTcVT02F0tlajt7YFrt3Cj7/89MvjAzF5skEL6TL7pSc
 oDHjmwLSGEpTUztOaadrjUIh4Qjh0QgPLourQe3nLGe8/Wbuhk+0mrj6i1xZQ8M0CQ
 bf/JPvzj83H86TrDf3ZBOl9TDMPcDjyxEhSOm6cY=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00M81hkk079051
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 02:01:44 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 02:01:43 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 02:01:43 -0600
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00M81ctm007984;
 Wed, 22 Jan 2020 02:01:39 -0600
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
Subject: [PATCH 0/3] Add Support for MCAN in AM654x-idk
Date: Wed, 22 Jan 2020 13:33:07 +0530
Message-ID: <20200122080310.24653-1-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_000200_248008_B046EDD2 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, nm@ti.com, catalin.marinas@arm.com,
 sriram.dash@samsung.com, faiz_abbas@ti.com, t-kristo@ti.com,
 robh+dt@kernel.org, mkl@pengutronix.de, dmurphy@ti.com, davem@davemloft.net,
 wg@grandegger.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds driver patches to support MCAN in TI's AM654x-idk.

Faiz Abbas (3):
  dt-bindings: net: can: m_can: Add Documentation for stb-gpios
  can: m_can: m_can_platform: Add support for enabling transceiver
    through the STB line
  arm64: defconfig: Add Support for Bosch M_CAN controllers

 Documentation/devicetree/bindings/net/can/m_can.txt |  2 ++
 arch/arm64/configs/defconfig                        |  3 +++
 drivers/net/can/m_can/m_can_platform.c              | 12 ++++++++++++
 3 files changed, 17 insertions(+)

-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
