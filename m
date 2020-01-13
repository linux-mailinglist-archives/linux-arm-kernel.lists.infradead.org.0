Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74D0139970
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UVHSeugpczY11lV32ac2jJYbboEy6gXtkNHI0LIP8i8=; b=XU3
	j0ocNixNYjj+WddE/uJm++NWR9vJpuz/lNn8YkCbMB7e5udoZX0fqYrTOoUirDijPmXk6FgIpD/Za
	N07BRR6zQkSsXXHLpCfrU82gaP1OOaw+wvMUeAx2otF4hkKez6VbJyz7afOwpUq2wEHhicrLnlxXM
	tttMA4gRLbSjwnHHTzJEUpVL/QdbEGl6PvIa7U/g6EfXx4Kqv7/HZewO54zHq+W/DTHREtdEFkTK+
	E3qgJCN4qYAroKUVAIdKOG2ykNAqSvhob9ciSFW1L5P+1eDSFXENeae2eqkNCzYZ615VjzEozBOTs
	hcarFcmADe/SQFgisLNhcZqrXbnMgZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4ts-0008Nf-DB; Mon, 13 Jan 2020 18:57:20 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4tR-0008EO-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:56:55 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M5fdC-1il0Lq3iMk-007BNQ; Mon, 13 Jan 2020 19:56:41 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V5 0/4] ARM: Enable thermal support for Raspberry Pi 4
Date: Mon, 13 Jan 2020 19:56:14 +0100
Message-Id: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:hv0hsyqJpIwtbxYMr5BT7QCXdH39k5R/zvSb7rg54zqAk2xVZdt
 vqACBCM0IqNpkOOTIylb5dwGyyf5vtgFWk5hM8ifMETYCoaHMiXocVmc/u6L0jVJ3a70GG0
 WqH44JD2oGbMpWrPyeo56FQNAvk9R6ldrtNEgAbXNIhYvYVrW5zf3zsKF+8u/0zL5B8SUTN
 fimf7LOArh48+BUHwVVMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ipaKVj28PZs=:Wp79E36xfZoin7V0NtPfVO
 2IiRI/BtF4+V5ucyiYw4DA9CWBhL7ysioYVaxZUdIOclJoKL1jURyLG00hk6e4v5knohS2Gve
 oeq+me+cNaIrissmLGCSBfMuFhDGDMUs198CGvXJ1F2lKvNmQe9TQqEScUCIT9Pz3/IO5KD+A
 R7eYfZjuqhyhAk1sZzOShCIND/lGEupAns2GWqJ9e8mmIJCSHow2bUx1CnNYtHAIK2kGgu+OY
 8oJcfeaDaoNrPnJtS3AgNwmj9kGCVN94SUevoX4blg6AuWPytWHcJ4oeKlQI2j6sjBp+CVybF
 hBb4D4mtqXlDh7/SEHwc9bItJLGE2CwsvKcjZWOo5ddoX4GDtipxu0CZ5VSjXP5hPGpwWlIeE
 /InOwbuakmSjFqJpyW4HcC71Lz5y//yeuAhub7PToo9WMIeuKeJzknPI2jBEZLtXqlo1UPGkl
 rQTYBfnaM6E+LV8veCl/OVmW9aiNavKU2gcMWJ9uNghWJiKsrnywMZ5LWb/5BgBs9x73wM/mG
 Gy+5SS4cb7JR2Sg7ojGnF4AjdUAw/nOJAfiJeQFl6/k1iMNrgSWJko+mWiNBYZd0f4wi/wKNo
 LzAoWMGEKRSFeaeVq1ZJQuhzqnyU2MWHDv3Ny51E3JZ8O14GGUFe9xPQCnNym2jOh8mYgT1wm
 xaejTbj6+3zi65viJJ3vcb5ajhdBaYjJpn4flhNU+v7LjMKEYhvzaaE89WKF6QUuV6DK2H8D3
 rWob67I3BOzJX/NyEghuqcqoVeAefLoQ1+9z94AI1XiDHWcOfTj23vLLHQ7crTJaWXkkQbSKT
 wkSPKRHbKHMhXJXICcosys6C/GjTM7cOGtgwzWO0RzPxgzV95pJ1todNZpenkpGt9MerMb07F
 7NvciYDn0MRnn36LWT+A8xDfABGEIsXO9Pj2yWHkA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_105653_827890_FB80E448 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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

Changes in V5:
- git the rid of device member in private structure
- improve readability of bcm2711_get_temp
- avoid trace message in get_temp callback

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

 .../bindings/thermal/brcm,avs-ro-thermal.yaml      |  45 ++++++++
 arch/arm/boot/dts/bcm2711.dtsi                     |  12 ++
 arch/arm/configs/multi_v7_defconfig                |   1 +
 arch/arm64/configs/defconfig                       |   1 +
 drivers/thermal/broadcom/Kconfig                   |   7 ++
 drivers/thermal/broadcom/Makefile                  |   1 +
 drivers/thermal/broadcom/bcm2711_thermal.c         | 123 +++++++++++++++++++++
 7 files changed, 190 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
 create mode 100644 drivers/thermal/broadcom/bcm2711_thermal.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
