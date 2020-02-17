Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3047F161494
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:27:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZEvTsIkp87kHB1PcvZVNZxzdn+9VoGNNCTuhSg/DzQ=; b=Kx45NuV2+/8PBl
	NV1MrNWsCUKNGTvtqygo80HJiMM+UACrE5b3JScqKbllK+DrlXoc86/1PAnd28IhM75qqZdQPM56w
	/tmZ8/hOg4dAN5u8Kdp+QGifl7T6Ftx1YdB0t8+xrOm5+mqjHDf9AF0Tfw6ozIgiC8XYV1GFUcKCi
	VwoKp56TbIBSHgUIPs3LQc582AJOn2ITdLI3aeIOX4+CeUqwEid499MWJ/azPcSCYfjmmJ42yKmzh
	Uzhqlk102lk3ZmaIknRZMjRoGkBLQ5wvcZnb/FBiHDqQgE65ozx80H5TUVYl4QUcDpZTqo9Nx1BK1
	fRPdvvotqzWaBKZKdHdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hN6-0008UU-QE; Mon, 17 Feb 2020 14:27:40 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hMc-0008Hi-55
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:27:11 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01HEQxeF041813;
 Mon, 17 Feb 2020 08:26:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581949619;
 bh=d45ru5d3fIe+VZkm3lVD10Gnrxhb5tb33AdK63CL63Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=uDgHPfvP/R4R2E79YryAUHEf0ID5wky+B81iDKsc+JjLDA44TofwAf3JlqLvd75m6
 e2BaTFfKsdsSpuKc0yYOU0JEgobsPspkycxImlJi3JOyijDIT81UL2sBgu55oYboAZ
 9ylzoBULVAwaUHkT9pUwKK0a/WYI/QHLzhvezsLs=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01HEQxD3064624;
 Mon, 17 Feb 2020 08:26:59 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 17
 Feb 2020 08:26:59 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 17 Feb 2020 08:26:59 -0600
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01HEQoJM033875;
 Mon, 17 Feb 2020 08:26:55 -0600
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: m_can: Add Documentation for transceiver
 regulator
Date: Mon, 17 Feb 2020 19:58:34 +0530
Message-ID: <20200217142836.23702-2-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20200217142836.23702-1-faiz_abbas@ti.com>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_062710_299939_42C7FFE5 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

Some CAN transceivers have a standby line that needs to be asserted
before they can be used. Model this GPIO lines as an optional
fixed-regulator node. Document bindings for the same.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 Documentation/devicetree/bindings/net/can/m_can.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/m_can.txt b/Documentation/devicetree/bindings/net/can/m_can.txt
index ed614383af9c..f17e2a5207dc 100644
--- a/Documentation/devicetree/bindings/net/can/m_can.txt
+++ b/Documentation/devicetree/bindings/net/can/m_can.txt
@@ -48,6 +48,9 @@ Optional Subnode:
 			  that can be used for CAN/CAN-FD modes. See
 			  Documentation/devicetree/bindings/net/can/can-transceiver.txt
 			  for details.
+
+- xceiver-supply: Regulator that powers the CAN transceiver.
+
 Example:
 SoC dtsi:
 m_can1: can@20e8000 {
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
