Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A05161493
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:27:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BP5neIrApoMvaSYedzV2jTdbLbmBTd34eWekhnC7jfA=; b=m57aD8zGtWIH1N
	GJ8VryUi1WtghQfGojiPw97958WzcjZslGbE8Y0bA/YUNMmfN54vVe4f62VhtS3RKLgRGgklVzQKm
	+J2mwWYEMpYCEBZmnPY4nVtLu2jUjMQ9rG3EUAZRdRw5AzuTpeoVNiuES4RNalUB5GnYh+UJks+uW
	7UzVZhMraYWgiySHjgSTC69veA4Z/lN5TrjfLT1UYnJ5VYu5FJdHVdjuYmSY5U3UMCQTRKnlZHMrl
	daf15pv+JXE3a46v/ABjdNbSeE0aosoA1QP18uFVBm7+UTiBDQn3RaJ0mNjN9/oYW2ah2oupTn1pe
	QwBl1UtD8u0KZeJeCJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hMr-0008IS-Mu; Mon, 17 Feb 2020 14:27:25 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hMc-0008Hh-5p
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:27:11 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01HEQtNf112638;
 Mon, 17 Feb 2020 08:26:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581949615;
 bh=po/B6mtGdawuqToBGVPn55uQrgRGXqH10+7GXhQfSLE=;
 h=From:To:CC:Subject:Date;
 b=g3l5Nhq25UNXDvFYR35wDVh1fJ82s2lJ/fYKKis+BlbjT/Ji/V3sOlfHeFsIESwgb
 ATU4N9ESsVcGqoy5y/EqlV8tl7UMFFoBw7hTp2XhFdntmB2s77CjhAuHyBJZnwkXiQ
 FNJhcHyFBghe3hPZgaeYyLN5b3bYbXiCvF4HAaYQ=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01HEQtMQ064540;
 Mon, 17 Feb 2020 08:26:55 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 17
 Feb 2020 08:26:55 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 17 Feb 2020 08:26:55 -0600
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01HEQoJL033875;
 Mon, 17 Feb 2020 08:26:51 -0600
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
Subject: [PATCH v2 0/3] Add Support for MCAN in AM654x-idk
Date: Mon, 17 Feb 2020 19:58:33 +0530
Message-ID: <20200217142836.23702-1-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_062710_300820_3E965EAC 
X-CRM114-Status: UNSURE (   8.40  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, sriram.dash@samsung.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, faiz_abbas@ti.com, broonie@kernel.org,
 mkl@pengutronix.de, dmurphy@ti.com, wg@grandegger.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds driver patches to support MCAN in TI's AM654x-idk.

v2: Model the sandby line to the transceiver as a regulator.

Faiz Abbas (3):
  dt-bindings: m_can: Add Documentation for transceiver regulator
  can: m_can: m_can_platform: Add support for enabling transceiver
  arm64: defconfig: Add Support for Bosch M_CAN controllers

 Documentation/devicetree/bindings/net/can/m_can.txt | 3 +++
 arch/arm64/configs/defconfig                        | 3 +++
 drivers/net/can/m_can/m_can_platform.c              | 6 ++++++
 3 files changed, 12 insertions(+)

-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
