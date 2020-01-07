Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BC7132E2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8WnUxAnVGkgJvi+zAqRLQ0gisEJ2KpAvGroJ8GkekGY=; b=Y9Y
	ltp7pxyWynYtGhvhAixIn/aHDny1y6hpLMxjqIyW3cJjguqhpxNiKc8oVafo4IBObAG51yYnYpUkA
	GZuMp4+8oxXuZ0G4pfXlYUItBF6vsSw17oUrd7Y7CnKCODNIBGQse848LK8MnXOx3h/ti+97h4grK
	QSNGptKOrpKzAwFnfaNsuMxraBbMFk5dvCjjejPE4+4Ne6ZenZ0t5y7+zv3rHTcVEbc1k2LAjiyxX
	u7mIegHiogScS8PmmTqDWECgmx/DBANRWpxbK44i9DDj1Rc3aWbCUa24OrJXM8xROn9kdADWuO2W+
	PlfHW7FYiZBbrfaGXfpiW72mh9ISfGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotOw-0003vY-0d; Tue, 07 Jan 2020 18:16:22 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotOm-0003u4-Kz
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578420964;
 bh=fStf+8RF6qmT38/5o2VMhgNCxx4YDKOqS+6ymSk2hVA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=d9HAQrSHcd8IpQHrnD7QnLWvY34o9aZGluK5xDCOfkXl/ctDqARxBO039GMtLY6p8
 4b1dgvRfu8liXH5Sd4umlA1YgbS7OujTTja38Esiy9gCnKDzIqRxUH50o6udP4Vpn+
 fdZXnzQFcmCibON1iNWwO0ggMgR3NxaYqumiaA1M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MTAFh-1jHAwl1fqx-00UXyY; Tue, 07 Jan 2020 19:16:04 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V3 0/4] ARM: Enable thermal support for Raspberry Pi 4
Date: Tue,  7 Jan 2020 19:15:53 +0100
Message-Id: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:xkFz0dLUtTbMvdFsQps4ETe/MuVllBCYSLf/H/6OpwsfMs6tNd3
 X6PXvReYKhvwDSzLeprp9PesTWWsWfWB5Mkt87VssaeyetCzrSlQ8A4oX4Y6Ttkfz+VUObT
 rooWqxyoOcHxc2KFR6nigDhPGGfIgXaiM5Bj8aRB64sLA4ybf5r3nS/stlYgzy8O5GY6X1L
 UsOGhE69KexYdQRATkT9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WIesbUME1I0=:JFzG6lFhRvAeiyna9slav0
 mYylMG+lG39zpj0pqbGUrF0+eF9YfjFSr+H4N01Av1elAtoRK6AUStVwP7oW0C3wz+YIdkh8k
 TjVti9j3GBJ6+4PDN84kj+FU3F5N2z297iobibGRAtVMlFM/D8tulsoqpYMWO55fgZvxqms6a
 ahcYsWKqG2SzzMXjMUEmz5GjcnKSw3aikD8IAvS8pcSuRrtTHmg3iwfRd6pYBLzJihedkA0pe
 H/Q5a86O+3joTklgCO0A8BzALBWv/p6IqxWC/yQjF5gLUgvn49YnSQXgujREA2siVEtIVt6Xq
 TA6qMH/4KB9+CCRdvGHjZcXQhX94kc6p/pWH6ThPb6r6PqNpUe6ZhS9CpMqSwqu/6hCIXtBad
 EkAbwBAN5RimQlydCtvo+k7gT7Ob38p+sffQ9s6SxTnlTn4YNd9UbQxYo2yxS0mepGvZNZRjg
 3BbqRkj6ZkoqE5uXWZIyHfMUjEWdTdjwiavlW+SXSplrWjwuQG5BDrgPIsigFzGaXsXwdyTmX
 mldBdohc0x4HtyLZoA3HHW1tWNz4/noA/XB28FSpIh0fwjN98mx/u7iULeEMK9ICfOw2E817K
 OCBgPNRvAbgolZes3oW5TuzJL54zeCTqDG1KKMg07i9xg6dEoH0oEsfYdrwEz6cIAgEU+h/ak
 FQ5VgifCAtEMYRvTE1ykThGY/IbqzbthkNJMSx7gpfeOJijZ0vfGe+P5gmDuzCAY2fwzSughh
 c6klPCMDscqZod6FPanG0VkpnVT0CYDEOOBQ0y1wAgk5c8A7EptnQ8Cranysoz8MeF541FcnS
 m+wJbn7bAunCBP7/6u4R7DbQij0I2VWkns9EXmE1BkVWYurNvIDxCwYiOVlI1mNBUhox83k7T
 C63zidmO7y/GNSsQnrgfmgAt2S549/zWHyfUvaQJnRRS8WGs08KkN4mbRSKag9vplfCV0bLHl
 uXap25Tupjzppe23e9oyBmKXo6j8/pnvXSGKnzws+UC5ev3y/2ooqceJnIMzhB43GbUGkWkNA
 VyzAs6+Lyd8WeILoNip4Wa+tYHG2xS3ceTGw9yzYsMSGJJgMd0n2lc6v1FRECoD+z615aE624
 /RzGwNmXe9txKmx7Ynw7NLWM9WFd8+0Zt5XtJ4Tbdlku544Yt3yJRgaZqAMc0A+RfX950YbzS
 uz1Z2SFir2axcrKnlO9tYeq7vnU5HF//M+ck+JtvwH8yVgyt1vUXulh/vl4gwTGYxyigjvOBK
 7/Eyh/gKcnRbDez7QxE13FM/hi8MkSjT6TBddIA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101612_986489_E7297916 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org,
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
