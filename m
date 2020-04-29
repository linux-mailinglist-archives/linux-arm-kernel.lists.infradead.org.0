Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F881BE441
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RGfu33MAPD5baHXWLlTPcLmbha0HQBoel04eQNEsv5o=; b=bwAOX3Pkp39ojk
	U+a5pTYwztxDeUbs6VvbyD1h2KYkPkj9/pFUyOHKQP3ic/7Jma3zEhk+/pDD0GkO1bW0msNt4nv1N
	5aH8goDLAvuOAs8HZRFudvqKeJAYQ4wsHc5xjpK/3TxBiO+hmeL1337MuNQP3LfdR9kPPTq6ojGp9
	qKyzMkmA7f2jyPFeu5I22C18wsQT8b8iFd6CLOxEmlU0Az902qA6tfVNl1yADyxpPwEkFu+Rdpeoo
	br/2+rgac9i7UzAxHRXGxBmZ/GHYj6rgN3zgy/nmDm3yiS37b5On9nqQ1akTMoDcVoylugwgYBd6I
	Fm9yjZ2VLcYphnYckZgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpsa-0007Rp-NW; Wed, 29 Apr 2020 16:48:12 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpsG-0007PH-9D; Wed, 29 Apr 2020 16:47:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BB954AD49;
 Wed, 29 Apr 2020 16:47:47 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
Date: Wed, 29 Apr 2020 18:47:30 +0200
Message-Id: <20200429164734.21506-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_094752_468254_23FB40FF 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, tim.gover@raspberrypi.org,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
loaded directly from an EEPROM or, if not present, by the SoC's
co-processor, VideoCore. This series adds support for the later.

Note that there are a set of constraints we have to consider (some of
them I missed on v1):
 - We need to make sure the VideoCore firmware interface is up and
   running before running the VL805 firmware load call.

 - There is no way to discern RPi4's VL805 chip from other platforms',
   so we need the firmware load to happen *before* running
   quirk_usb_handoff_xhci(). Failure to do so results in an unwarranted
   5 second wait while the fixup code polls xHC's unexisting state.

By Florian's suggestion I've been spending some time exploring the device
link[1] API in order to see if that could save us from explicitly creating
probe dependencies between pcie-brcmstb and firmware/raspberrypi (patch #3).
Technically these dependencies could be inferred from DT. It turns out Saravana
Kannan has been looking at this already. A new boot mechanism, activated with
fw_devlink=on takes care of the device probe ordering on devices with
consumer/supplier relationships. For now this relationship is created based on
the usage of generic DT properties, but has no support for vendor-specifc DT
properties, which we'd be forced to use in order to create a relationship
between our two devices since our setup is highly non generic. There will
probably be at some point support for such properties, and we will then be able
to revisit some of this code.

All this is based on the work by Tim Gover in RPi's downstream
kernel[2].

[1] https://www.kernel.org/doc/html/v4.13/driver-api/device_link.html
[2] https://github.com/raspberrypi/linux/commit/9935b4c7e360b4494b4cb6e3ce797238a1ab78bd

---

Changes since v6:
 - Make rpi_firmware_init_vl805() more robust
 - Rewrite comments and patch descriptions to be more accessible to non RPi
   fluent people
 - Removed Florian's Reviewed-by in patch #2 as function changed
   substantially
 - Tested with/witout u-boot

Changes since v5:
 - Fix issues reported by Kbuild test robot

Changes since v4:
 - Addressed Sergei's comments
 - Fix potential warning in patch #2

Changes since v3:
 - Addressed Greg's comments

There was no v2, my bad.

Changes since v1:
 - Addressed Floarians comments

Nicolas Saenz Julienne (4):
  soc: bcm2835: Add notify xHCI reset property
  firmware: raspberrypi: Introduce vl805 init routine
  PCI: brcmstb: Wait for Raspberry Pi's firmware when present
  USB: pci-quirks: Add Raspberry Pi 4 quirk

 drivers/firmware/Kconfig                   |  3 +-
 drivers/firmware/raspberrypi.c             | 52 ++++++++++++++++++++++
 drivers/pci/controller/pcie-brcmstb.c      | 17 +++++++
 drivers/usb/host/pci-quirks.c              | 16 +++++++
 include/soc/bcm2835/raspberrypi-firmware.h |  9 +++-
 5 files changed, 95 insertions(+), 2 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
