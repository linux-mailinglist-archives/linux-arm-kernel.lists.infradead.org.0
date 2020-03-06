Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA16E17BA89
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:40:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lZi8cz8RzZT1vTZqi8QgJg5LGJ/hUjVrIfCr0Z3lxZw=; b=Q4kIDO1FZMnJ2U
	OuBgHaS0S+A4Y9YRI2mhzgzOJ3YklfOROg3eBzLx1GGjfeZEcPigWBfq+D2YNXOM28HrCcG5HdPH2
	zi20teSNxeKcqXuQHoxBwlmMeG/gp1iGpo/BFye34YoKyKMXF1uATwSHiuVLRf/XlUhV/EBiWqxv1
	g1F/y5jDpkwkyPK2w4Amy//11Wdn5IitXlMtodEQ5y9IBD/ACiKy7p53f+9EqVENo4qR+a4t7PcK5
	/zcpFta3ip/bpRgE5DllQAdEF0Pdn11AHgY7Zh3lpMFk/KVE3t4xNvjZDTeg6fuXCzP5+x840ojaO
	yxKmXLFIzjmqsl0gvkMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAOa-0008NG-Py; Fri, 06 Mar 2020 10:39:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAO3-0007y2-1S; Fri, 06 Mar 2020 10:39:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E5A3BADE8;
 Fri,  6 Mar 2020 10:39:19 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org
Subject: [PATCH 00/10] Raspberry Pi vmmc regulator support
Date: Fri,  6 Mar 2020 11:38:45 +0100
Message-Id: <20200306103857.23962-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023923_285314_D8627408 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 adrian.hunter@intel.com, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The series snowballed into adding a new quirk, as I reliased
sdhci-iproc's behaviour is not that uncommon.

Based on Phil Elwell's work in the downstream Raspberry Pi kernel.

---

Nicolas Saenz Julienne (10):
  mmc: sdhci: Add quirk SDHCI_QUIRK2_SET_BUS_VOLTAGE
  mmc: sdhci: milbeaut: Use quirk instead of custom set_power()
  mmc: sdhci: arsan: Use quirk instead of custom set_power()
  mmc: sdhci: at-91: Use quirk instead of custom set_power()
  mmc: sdhci: pxav3: Use quirk instead of custom set_power()
  mmc: sdhci: xenon: Use quirk instead of custom set_power()
  mmc: sdhci: am654: Use quirk instead of custom set_power()
  mmc: sdhci: Unexport sdhci_set_power_noreg()
  mmc: sdhci: iproc: Use SDHCI_QUIRK2_SET_BUS_VOLTAGE on bcm2711
  ARM: dts: bcm2711: Add sd_vcc regulator to emmc2

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 11 +++++++++
 drivers/mmc/host/sdhci-iproc.c        |  1 +
 drivers/mmc/host/sdhci-milbeaut.c     | 15 ++----------
 drivers/mmc/host/sdhci-of-arasan.c    | 22 +++++------------
 drivers/mmc/host/sdhci-of-at91.c      | 18 +-------------
 drivers/mmc/host/sdhci-pxav3.c        | 20 +---------------
 drivers/mmc/host/sdhci-xenon.c        | 20 +---------------
 drivers/mmc/host/sdhci.c              | 34 +++++++++++++++------------
 drivers/mmc/host/sdhci.h              |  4 ++--
 drivers/mmc/host/sdhci_am654.c        | 23 +++++-------------
 10 files changed, 50 insertions(+), 118 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
