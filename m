Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70A513824E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 17:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v5Zlb2Q3fBb3w2sQ1g5prZd4PeUfVrMS2BXjO0RDHPI=; b=Tyj
	0V2BMiispGyqaqhbtYJ4YqhZgZz5EUbIJPJqpGSsQ2a2hrm4fH62MK6q7vS5ROiTDmAXvizj0DT+S
	aDB13g6S1XOm7tM2pddSjdTJeZZMKYDw8DkcygwEljgqzh1fPyyNgvKhGm2u3M4j70/rUPVG7KCP8
	2lR3tzuo/hw4BmytB0k005NYPBg3cfGlsPJO3uHnjZSMLZIxXWHYClgKZ9xf0THvalOK82PzM67NE
	ox54FiLd2mkHqZp+yOzq6qNMyxqB6ZAld3yBCGLWsxC7feleG7grnA9+ZhTn1cDQL3C/Nv4R2l/sQ
	NAxVaFxagbLmM/LfeYi/u4WmMRjan7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqJQw-0002s5-95; Sat, 11 Jan 2020 16:16:18 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqJQn-0002qm-Q6
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 16:16:11 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N8nrc-1jmtkG2NRW-015tRv; Sat, 11 Jan 2020 17:15:50 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V4 0/4] ARM: Enable thermal support for Raspberry Pi 4
Date: Sat, 11 Jan 2020 17:15:38 +0100
Message-Id: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:rYmDnJ/p/2M5yiHMY7ZWxfCjQjh91TWH0PLDwBcOocszvwo4FvW
 /5Zp8iJJ6i8SKmxc7FAQLWOrCNndtm4ltII4dKOa/Lc2hcwNCug7Z5ysI3NzigQwPz9nSkK
 IhIWsHT2k8OuICKKpSD2aFWvZHOL8XGQ2GWfRnrB1ThvqcLcz+1MKNv4EWgaFmvrrs7w9HV
 k1M+ynnUFDunJNdGrCgpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7SUTA/eFNfI=:Z28JbYq+DuU6GRmgZR0LOQ
 ZO70M+X4H27vFIM45Cj6FFdVPQEEMrPHPCb9nByN8I9fWgMRINE37LEMrV31RfCRazjt2zevo
 4DuXisXWONXO3/alzWuzrC5q2/+bhZ1fPPLFWYFyGhfH4APGy6w+Kb+qh7prTDEuBOMp6aACN
 cRTVo7ysP5wmuGD01ggtubUYMi/CCPsOqKygjl0FFOw2Yze2/m2g7n5mAR5qhly/935ysbU56
 Fz7TEFMxnau+MgWFETs+ga+L3+qGLox+8q2XE445mCZMuo023SIwcecz6Qx+i0BCdF2IApvjN
 ZqGxlF1Tau7OjAshAdmCVeps2hAVBLHZ6/jCnAmj2TbttM6UZ0sIbvICOrKWQMpYkxGgbPj/s
 rPPz1EmaSsvFtCOCEmaaV3Up27AGb1HWaEGRMkOUNqbukwmFnUPlEI70nlW1eNRuzw3hJ7D09
 VnLm9d6D5JMd8RXXyguFf0ZEkuLlWTp0ZDG5e/u+/V8SSxC2PMioA1ZNG3YXTpmdziF5loD9v
 OmLzudHLDR5RbDmImBRBfPlotE0Fv0eneXeje1Ky+i8qsQoXDKd7l9X5d1p6H7JBOFfM1A9Zj
 QHs4IyuwTSXmTwv/IADR8JVS4sqftU792FvEr61GWDU+l7boA4U6Fa1DU7+16TGn4mjWYReLX
 3S3zgzaF3y6RP+sYkJcXJ+ACcr0udFC8SIOegxMRc2iSOS6tSMdNRmCQsJvsrAneW/BWc6tW7
 NxIiQ3Vtd/2Kj4AzwHU3X2Y0xHOQdm1esznXEFjI+VbgGrXQUtf44+BFNcpMh3XUeAU6X8BgA
 MGDVlDFhlFqymcq7IhlWFTbMrIrWzlQfjJWt06XX9ZCqJh1ynEjcbHnjef7CDhIns7NdQxx9w
 kFTxt4HunVn04QHpo4Hhgg9DDiRJ7OPJvoVPsQigE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_081610_134226_E183C805 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables thermal support for the Raspberry Pi 4. Neither the
bcm2835_thermal nor the brcmstb_thermal are suitable for the BCM2711.
So add a new thermal driver to read out the SoC temperature from the
AVS RO block of the BCM2711.

Changes in V4:
- change my email address to avoid spurious characters

Changes in V3:
- add Rob's, Florian's and Nicolas' reviewed-by/tested-by
- adjust binding license
- make error pointer handling consistent

Changes in V2:
- rebase on thermal/linux-next
- convert binding to YAML
- make AVS RO block a subnode of AVS monitor and access it via syscon
- drop unnecessary TSENS clock and get the rid of remove callback
- add Florian's reviewed-by to last/unchanged patch

Stefan Wahren (4):
  dt-bindings: Add Broadcom AVS RO thermal
  thermal: Add BCM2711 thermal driver
  ARM: dts: bcm2711: Enable thermal
  ARM: configs: Build BCM2711 thermal as module

 .../bindings/thermal/brcm,avs-ro-thermal.yaml      |  45 +++++++
 arch/arm/boot/dts/bcm2711.dtsi                     |  12 ++
 arch/arm/configs/multi_v7_defconfig                |   1 +
 arch/arm64/configs/defconfig                       |   1 +
 drivers/thermal/broadcom/Kconfig                   |   7 ++
 drivers/thermal/broadcom/Makefile                  |   1 +
 drivers/thermal/broadcom/bcm2711_thermal.c         | 129 +++++++++++++++++++++
 7 files changed, 196 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
 create mode 100644 drivers/thermal/broadcom/bcm2711_thermal.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
