Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DB517C4C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:45:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=haPnMEWlkS7EGtoGzvBravqC7xS7gruphjDJuRoip0Q=; b=e7Rn5qLpARSWG0
	uf8nsmDhh5P3hRs/V/MEMZsjcghGP7p+ngfsyzF/Yox0OO9vWEPMW5LE9BziY7rNt6FHeyAc7CjRv
	hlefc2IsXTUD4m9zWKxYsQ3atWJPp/RkGV3VCgMTlGQLh18ZcSwhuk1o4wuwQTM0GEPHBgtZHGWOU
	KvkXUS4uIIOD+tgL/IZVL81uY97gGgyIlReHbiXkB0KEdJUk88Kcx4nYJ82XkrN6s4ZpnKJ6+Ln2u
	32CukTajxF3Wmg9LYDlO6WT9zzb3lSs1Lpo1SW3fIQ+2mjh64AL9biFVOwmWj4Ef8i0KJQjRUCn7H
	yGj55pWDKlTI5IBXs+9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAH1l-0008B4-Av; Fri, 06 Mar 2020 17:44:49 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAH1J-0007rO-RP; Fri, 06 Mar 2020 17:44:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BC6A9AC66;
 Fri,  6 Mar 2020 17:44:19 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: adrian.hunter@intel.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/11] Raspbery Pi 4 vmmc regulator support
Date: Fri,  6 Mar 2020 18:44:02 +0100
Message-Id: <20200306174413.20634-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_094422_038957_4A8D71B6 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: stefan.wahren@i2se.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-mmc@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The series first cleans up a common pattern, which is ultimately needed
to integrate the regulator with bcm2711's sdhci-iproc. It then
introduces the relevant device-tree changes.

---

Changes since v1:
 - Use helper function istead of quirk
 - Add GPIO label

Nicolas Saenz Julienne (11):
  mmc: sdhci: Introduce sdhci_set_power_and_bus_voltage()
  mmc: sdhci: arasan: Use sdhci_set_power_and_voltage()
  mmc: sdhci: milbeaut: Use sdhci_set_power_and_voltage()
  mmc: sdhci: at91: Use sdhci_set_power_and_voltage()
  mmc: sdhci: pxav3: Use sdhci_set_power_and_voltage()
  mmc: sdhci: xenon: Use sdhci_set_power_and_voltage()
  mmc: sdhci: am654: Use sdhci_set_power_and_voltage()
  mmc: sdhci: Unexport sdhci_set_power_noreg()
  mmc: sdhci: iproc: Add custom set_power() callback for bcm2711
  ARM: dts: bcm2711: Update expgpio's GPIO labels
  ARM: dts: bcm2711: Add vmmc regulator in emmc2

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 13 ++++++++++++-
 drivers/mmc/host/sdhci-iproc.c        | 17 ++++++++++++++++-
 drivers/mmc/host/sdhci-milbeaut.c     | 13 +------------
 drivers/mmc/host/sdhci-of-arasan.c    | 15 ++-------------
 drivers/mmc/host/sdhci-of-at91.c      | 18 +-----------------
 drivers/mmc/host/sdhci-pxav3.c        | 20 +-------------------
 drivers/mmc/host/sdhci-xenon.c        | 20 +-------------------
 drivers/mmc/host/sdhci.c              | 24 +++++++++++++++++++++---
 drivers/mmc/host/sdhci.h              |  5 +++--
 drivers/mmc/host/sdhci_am654.c        | 17 +++--------------
 10 files changed, 61 insertions(+), 101 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
