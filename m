Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDC817BBF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GBRqY+ZlG9OubVSKnDeYLCVruZ7J7nz5KtdbtEvy1HQ=; b=Llyk9nNjISHUkT
	K4Ku8ivAfJAFq8EtCWmNU5Vfm/GB9CiAfeVWDjzO1adIX8LZWq6ETkoy6jMVp61Q+6Iooroz7ZXHm
	feW2+eKYdhYcGhzKOBQX7Ia2dM0TG/dNkRTDX7Gf6WeBWVsNpUR01Mxt2D/8bEYsGgmezccZziOcj
	7Bm8D2QK+Mf4RAyRJW7NZxNu1mozJHQyOuAe6kMF5lnQ2edUlA1aLWjwVXTxigyUC9jfOkAC0Wsq0
	5IeRyQzPbTzjrJ675bZndXZNpapvVspYZ+TiOEpAnUFCQoZU+MmNjDDAOTdr83Jelpa0WthvuAFPy
	6EW/RQVfzNzRfdobIgVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABP1-0005GK-33; Fri, 06 Mar 2020 11:44:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABOY-00051D-03; Fri, 06 Mar 2020 11:43:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1C4D0AC23;
 Fri,  6 Mar 2020 11:43:55 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4]  USB: pci-quirks: Add Raspberry Pi 4 quirk
Date: Fri,  6 Mar 2020 12:43:44 +0100
Message-Id: <20200306114348.5172-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_034358_187453_F65C5942 
X-CRM114-Status: GOOD (  13.53  )
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
Cc: f.fainelli@gmail.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
loaded directly from an EEPROM or, if not present, by the SoC's
VideCore. This series adds support for the later.

Note that there are a set of constraints we have to consider (some of
them I missed on v1):
 - We need to make sure the VideoCore firmware interface is up and
   running before running the VL805 firmware load call.

 - There is no way to discern RPi4's VL805 chip from other platforms',
   so we need the firmware load to happen *before* running
   quirk_usb_handoff_xhci(). Failure to do so results in an unwarranted
   5 second wait while the fixup code polls xHC's unexisting state.

As per Stefan Wahren's comments I tested the behaviour on outdated
firmware. Boards dependent on this will not boot if firmware is not
up-to-date. Older boards with outdated firmware will fail to execute the
VideoCore firmware call, but xHCI will perform reliably. I added a
warning printout in case of failure.

I'm aware that Florian Fianelli noted on the previous revision that
waiting on the VideoCore firmware interface during PCIe's probe is far
from ideal. But this was before taking into account the second
constraint mentioned above. Impact on non RPi4 boards is minimal.

---

Changes since v3:
 - Addressed Greg's comments

There was no v2, my bad.

Changes since v1:
 - Addressed Floarians comments

Nicolas Saenz Julienne (4):
  soc: bcm2835: Sync xHCI reset firmware property with downstream
  firmware: raspberrypi: Introduce vl805 init routine
  PCI: brcmstb: Wait for Raspberry Pi's firmware when present
  USB: pci-quirks: Add Raspberry Pi 4 quirk

 drivers/firmware/Kconfig                   |  1 +
 drivers/firmware/raspberrypi.c             | 38 ++++++++++++++++++++++
 drivers/pci/controller/pcie-brcmstb.c      | 15 +++++++++
 drivers/usb/host/pci-quirks.c              | 16 +++++++++
 include/soc/bcm2835/raspberrypi-firmware.h |  9 ++++-
 5 files changed, 78 insertions(+), 1 deletion(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
