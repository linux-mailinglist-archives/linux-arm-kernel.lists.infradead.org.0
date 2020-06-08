Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3C71F1B3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c2Y/HVzUNR0xnY4BVMsfARaBZQvm4+FLtqHq5g4z5QI=; b=HXylhHXM0HiSog
	e6gVytI+NSYeQ75zL30SbdW9IhtIGXMm8xboo6CFS8nGIeWJ4MMf1qRMaSl3gDgrs+V5zCWudEONs
	4ZIqp00TdZZId3PK6QT5ATLIUWLLK5BIOMTltNwORUeWXhbtGj8q1T9bM48nmjG3VA100G8GDC3qM
	O8dwnhsAuBqPUj+bTEc/9HAUznyqOyJq5HHLNXMr0252BcwlGWVRSzUWMAzYIReISprdrCiKVxmBu
	OtZQcO8zvtGqnfxcbqzkPF2yWgJRhlFQOFR+DTd86Hr4C+FOlvBzR8LSzEh9pkKfgojvJJiSAvdir
	rq7gaVxXd2cb714c6wXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJ1D-000464-Ve; Mon, 08 Jun 2020 14:44:55 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJ15-00044y-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:44:49 +0000
Received: from T480.siklu.local (unknown [212.29.212.82])
 by mx.tkos.co.il (Postfix) with ESMTPA id 01B2D44046D;
 Mon,  8 Jun 2020 17:44:37 +0300 (IDT)
From: Shmuel Hazan <sh@tkos.co.il>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>
Subject: [RFC PATCH] pci: pci-mvebu: setup BAR0 to internal-regs
Date: Mon,  8 Jun 2020 17:40:25 +0300
Message-Id: <20200608144024.1161237-1-sh@tkos.co.il>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_074447_282670_0EC67F31 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.115.133.116 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-pci@vger.kernel.org,
 Shmuel H <sh@tkos.co.il>, =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Chris ackham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shmuel H <sh@tkos.co.il>

Set the port's BAR0 address to the SOC's internal registers address. By default, this register will point to 0xd0000000, which is not correct.

Signed-off-by: Shmuel Hazan <sh@tkos.co.il>
---
Sending again since I forgot to include a number of email addresses. 

Without this patch the wil6210 driver fails on interface up as follows:

# ip link set wlan0 up
[   46.142664] wil6210 0000:01:00.0 wlan0: wil_reset: Use firmware
<wil6210.fw> + board <wil6210.brd>
[   48.244216] wil6210 0000:01:00.0 wlan0: wil_wait_for_fw_ready:
Firmware not ready
ip: SIOCSIFFLAGS: Device timeout

With this patch, interface up succeeds:

# ip link set wlan0 up
[   53.632667] wil6210 0000:01:00.0 wlan0: wil_reset: Use firmware
<wil6210.fw> + board <wil6210.brd>
[   53.666560] wil6210 0000:01:00.0 wlan0: wmi_evt_ready: FW ver.
5.2.0.18(SW 18); MAC 40:0e:85:c0:77:5c; 0 MID's
[   53.676636] wil6210 0000:01:00.0 wlan0: wil_wait_for_fw_ready: FW
ready after 20 ms. HW version 0x00000002
[   53.686478] wil6210 0000:01:00.0 wlan0:
wil_configure_interrupt_moderation: set ITR_TX_CNT_TRSH = 500 usec
[   53.696191] wil6210 0000:01:00.0 wlan0:
wil_configure_interrupt_moderation: set ITR_TX_IDL_CNT_TRSH = 13 usec
[   53.706156] wil6210 0000:01:00.0 wlan0:
wil_configure_interrupt_moderation: set ITR_RX_CNT_TRSH = 500 usec
[   53.715855] wil6210 0000:01:00.0 wlan0:
wil_configure_interrupt_moderation: set ITR_RX_IDL_CNT_TRSH = 13 usec
[   53.725819] wil6210 0000:01:00.0 wlan0: wil_refresh_fw_capabilities:
keep_radio_on_during_sleep (0)

Tested on Armada 38x based system.

Another related bit of information is this U-Boot commit:

  https://gitlab.denx.de/u-boot/u-boot/commit/193a1e9f196b7fb7e913a70936c8a49060a1859c

It looks like some other devices are also affected the BAR0
initialization.
However, by default, u-boot won't initialize any PCI bus. Which
will cause the BAR0 register to stay on its default value. 

Any idea what is the right way to initialize BAR0?
---
 drivers/pci/controller/pci-mvebu.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/controller/pci-mvebu.c b/drivers/pci/controller/pci-mvebu.c
index 153a64676bc9..4a00e1b81b4f 100644
--- a/drivers/pci/controller/pci-mvebu.c
+++ b/drivers/pci/controller/pci-mvebu.c
@@ -203,6 +203,11 @@ static void mvebu_pcie_setup_wins(struct mvebu_pcie_port *port)
 	mvebu_writel(port, 0, PCIE_BAR_HI_OFF(1));
 	mvebu_writel(port, ((size - 1) & 0xffff0000) | 1,
 		     PCIE_BAR_CTRL_OFF(1));
+	
+	/* Point BAR0 to the device's internal registers (internal-regs on 
+	 * a38x, orion and more) */
+	mvebu_writel(port, 0xf1000000, PCIE_BAR_LO_OFF(0));
+	mvebu_writel(port, 0, PCIE_BAR_HI_OFF(0));
 }
 
 static void mvebu_pcie_setup_hw(struct mvebu_pcie_port *port)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
