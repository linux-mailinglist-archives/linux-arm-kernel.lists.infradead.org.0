Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A43A18C97E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=e/P/EiQ85UZ8g4cjBUcwSvHwNWTYFy5Iu554Oo4acT8=; b=MK9h8guQi3kqa102eCpmE8runY
	V0wLx13cPitiMxTJlhv48HHwHrJx7tdD/R/157pN0P2joqA7sOxkyw/JzQhjWmtymz8KGq11INWSQ
	Oaus4zUALc+Q2hNBVfi2UPXvCb75ULW5TkarX2G+MYsNOu397XIv2L/vaxbHbAlKisMuA4ZRoJQ7/
	n3HLvb3YfF+Cs/FHYBwbG2DjlZz4hjeE6YfmWSf4q0jpUkcrAwUkXdx7YSR4ON2hQXk2cZmDzifsb
	oxgE4D/lcD6heV02KGexnoPgJcGJSbxTfR/7Pkh6SHtZZ88DQKJcrOeKMffMGTMxIIVARXrO0zNDn
	eZI/5bbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDbz-0005Vh-IM; Fri, 20 Mar 2020 09:06:39 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDbr-0005Ud-SG
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:06:33 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02K96Q4t063837;
 Fri, 20 Mar 2020 04:06:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584695186;
 bh=Q5YfpKwFGdfPmRI/QVjhIwgWp4hsoO0X3OHK0DGXbfs=;
 h=To:CC:From:Subject:Date;
 b=TBuwqOdDyj6qCq4QeQv/e9MrAMGaqLJCHSiBn1R5vtsUoIRhyzEDlXZIMiE144rmk
 1upNghbncibL6xVPmx5bZ9kXVpEIDrE2w85iESALyv9Kjlo2FUwqhMrSHdmJZClHtp
 09NPKLyAx9rpgRNLT4EFOj0sunvdwvR4VOZB9OPc=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02K96P0r090681
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Mar 2020 04:06:26 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Mar 2020 04:06:25 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Mar 2020 04:06:25 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02K96OPg105219;
 Fri, 20 Mar 2020 04:06:24 -0500
To: <arm@kernel.org>, <soc@kernel.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] arm64: dts: TI K3 SoC changes for v5.7
Message-ID: <4b6b7804-4bcb-07ba-5e76-6a411e1f457f@ti.com>
Date: Fri, 20 Mar 2020 11:06:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_020632_042089_F5CAE736 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-k3-soc-for-v5.7

for you to fetch changes up to ad3bcb0f484ceab287bb127f416ab4921c512396:

   arm64: dts: ti: k3-j721e-mcu: add scm node and phy-gmii-sel nodes 
(2020-03-19 10:36:18 +0200)

----------------------------------------------------------------
Texas Instruments K3 SoC family changes for v5.7

- Add missing clocks to dwc3 nodes on am65x (fixes USB)
- Add DMA entries for main_spi0 on am65x
- Add phy-gmii-sel nodes for both am65x and j721e (towards ethernet
   support)
- Add DMA entries for ADC for both am65x and j721e
- Add MCU system control module on j721e (needed by phy-gmii-sel)

----------------------------------------------------------------
Dave Gerlach (1):
       arm64: dts: ti: k3-am65: Add clocks to dwc3 nodes

Grygorii Strashko (2):
       arm64: dts: ti: k3-am65-mcu: add phy-gmii-sel node
       arm64: dts: ti: k3-j721e-mcu: add scm node and phy-gmii-sel nodes

Vignesh Raghavendra (3):
       arm64: dts: ti: k3-j721e-mcu-wakeup: Add DMA entries for ADC
       arm64: dts: ti: k3-am65-main: Add DMA entries for main_spi0
       arm64: dts: ti: k3-am65-mcu: Add DMA entries for ADC

  arch/arm64/boot/dts/ti/k3-am65-main.dtsi        |  4 ++++
  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 12 ++++++++++++
  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 20 ++++++++++++++++++++
  3 files changed, 36 insertions(+)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
