Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E46147A56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 10:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mjiqasdQbfCD/hibzdqCzCCfJe8MCbZNeBMzphE0BoA=; b=Dt/SPM7w5PpRxL
	iIXT+9r0vACMHabmJEXGnUj6UFZK6mHt8n8uGtgFCJpeSLA+TjFy5yc+2MI22RrXcZHAIrKKwUROY
	5kilHOqHgbSVCXSp8AHND3bxo8LPbN3Vz1YM9TRVFTTh68gh8rXA55GTd1rYXG+tNwhBnZUtKK1WJ
	xAmlqYfdI7E6ObDNoVcIlRhIZH/LkjD04djlg9W07r+Hfod9IE7NtXqd9PN/X1KrrkyOUDrIuRXmt
	GS9H82qIK2IViWyva62p1os6ZuCYUi1ECvZyQca9VsitLApVpJRZ9lFza/FoOpV79QeqPdlHoyQIH
	QCDolj/3bsIDDTZcl7CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuvBi-0006Uw-3U; Fri, 24 Jan 2020 09:23:38 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuvBY-0006UO-5w
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 09:23:29 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00O9NIeA077545;
 Fri, 24 Jan 2020 03:23:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579857799;
 bh=PKLdQgBAWNuEFj6zeHDzEvtdhk+JONPJ53CQRbLkK7o=;
 h=From:To:CC:Subject:Date;
 b=qB2R50uM8lvgd9HrgAw1crklWgJ/1JeTDp2i4GFDVFeXJb3XmerFA9esw/q3h5yCj
 mWzp3YJ7OxErIGUTiTiz0gdxfaSAOIoCdBBkv/+3naDSnrp5vIQ47QUD8HTv/SPtfv
 MuoLB4Y49JXvqNIL0bxTX8v1aeuy2dlQLVojVVFA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00O9NIYU045144
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Jan 2020 03:23:18 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 24
 Jan 2020 03:23:18 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 24 Jan 2020 03:23:18 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00O9NF73007440;
 Fri, 24 Jan 2020 03:23:16 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>
Subject: [PATCH] arm64: defconfig: Enable Texas Instruments UDMA driver
Date: Fri, 24 Jan 2020 11:23:59 +0200
Message-ID: <20200124092359.12429-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_012328_304130_638F705F 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, arnd@arndb.de, soc@kernel.org,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, vkoul@kernel.org,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The UDMA driver is used on K3 platforms (am654 and j721e).

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
Hi,

The drivers for UDMA are already in linu-next and the DT patches are going to be
also heading for 5.6.
The only missing piece is to enable the drivers in defconfig so clients can use
the DMA.

Regards,
Peter

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4631a1190719..a325a296d94c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -698,6 +698,7 @@ CONFIG_QCOM_HIDMA_MGMT=y
 CONFIG_QCOM_HIDMA=y
 CONFIG_RCAR_DMAC=y
 CONFIG_RENESAS_USB_DMAC=m
+CONFIG_TI_K3_UDMA=y
 CONFIG_VFIO=y
 CONFIG_VFIO_PCI=y
 CONFIG_VIRTIO_PCI=y
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
