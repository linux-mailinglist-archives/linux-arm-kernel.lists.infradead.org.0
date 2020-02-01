Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE4C14F5E3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 03:04:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ND1kqpoJhWBQJ9hjtm/GpzUzAyZxQHyTNLHUHgadqcg=; b=OLY
	30G3BJAMjIaQGGKSgWEKDXybN+U2jIzvM2qiLs+WwxQQvJeyI2xHMD8REspBCOpMcWdvdzsCE+Lt/
	ieey9W/qNjrhOkfuqfYrJQoOkw3cmmAApzCkVJK0wHnehpiltX4uZH01RLfmWSFQUYKI5g0Heeg3s
	AD6lEPgye5PV5VSE3elvLYPz01SLFDESdU+C3Tt9p79gZBpVEXndM9xOoOwELRg1QJiaej6Hk750j
	vLHlbmhiWXwTAe/U7PP1VA8QTFLeOjKQr8jUmsT84mhBkcCjF2A3IuDYvXwaUfJjcE7jf6XddxUe1
	T6EyiDYvD+z2UC39eLpFgtt1Ze9S1Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixi8q-0000Tn-9w; Sat, 01 Feb 2020 02:04:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixi8g-0000T1-RL
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Feb 2020 02:04:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id i6so4386409pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 18:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ro9iu9VNOuWviWh4OwZbe94+Deahhttu3CMtreUHnJg=;
 b=qld644UZy5MSMdAtQDkFv4eR5rOeOIeuYYfxUs23Icnpl5o/mtxhvzILGSb2z3jyMK
 c4iUPxDxY0Yui24NWEKH6kWwdJHWBYIaJbb+XuE5HNcq0q1qMCIs1vanew6u6v1GhJw9
 T2PcbubEr4HNdp7sRw4LVM3gfCDjNnqxxPI5MEdEgxq/gTu7B14se15UnnzgPmYO7Y1F
 Onh2bVuPh9sw+R1MxRUdtJ3k/kMPZ9sED/MwqC3dx7ii9eVo7Fg0SxP6ejCYvW5RGAcO
 xRR9sNJU9jPBC74vhh33HTE/r8mAT9q+SVPXs4nUv4T2HKAfxu1oG4uYc+5fw45hAwru
 Ohgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ro9iu9VNOuWviWh4OwZbe94+Deahhttu3CMtreUHnJg=;
 b=FWRa6jv9W0aFIQkIWoNHdGD49+m9TWUhNkvbrVO+m2idyfM5PAQ1YXwMvlmSuyTPAj
 lyMrONjNxYw6AUWLX7XXHEgsecBEu8uhLklvzFT1YwrCzwhP1EhlHZf7hNG87KlTalW3
 mRIhfLBHRRyqtKLMs92/3USqQsU0LLUsQ1rEIP0gtCHEEc23xbzZGpypODvCtNv5VqwR
 EFBIezbxkWyIHnMYZit0bQazBRZPceKPZl5HUhr7kVk5vlplSEHszmASEKQDSxJqmPci
 sQfnRK8YuU1k+/gz/3+B80Sk4sUQHfdfFL8EXva6cCb53ZNEDIGn2j7rbNr/G9WknPvx
 ikRQ==
X-Gm-Message-State: APjAAAX6NkTthQHGIhkxEPkeP2w8a/dJ74g3ekQxxxXMgIf3/eWdRq2U
 ktjFB1be/EMxu2VzAQbF/ms=
X-Google-Smtp-Source: APXvYqx+2t7NY80ATnmYXbW5lMP4yKLfBufkJ9KD/yZ72OykzVDh9Voe5Bf4K1yXya/3K/FKiTxm4w==
X-Received: by 2002:a63:8e:: with SMTP id 136mr13129030pga.319.1580522641354; 
 Fri, 31 Jan 2020 18:04:01 -0800 (PST)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id p3sm11744575pfg.184.2020.01.31.18.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 18:04:00 -0800 (PST)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: davem@davemloft.net, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com
Subject: [PATCH] net: stmmac: Delete txtimer in suspend()
Date: Fri, 31 Jan 2020 18:01:24 -0800
Message-Id: <20200201020124.5989-1-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_180402_913973_9D8F7F7B 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nicoleotsuka[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When running v5.5 with a rootfs on NFS, memory abort may happen in
the system resume stage:
 Unable to handle kernel paging request at virtual address dead00000000012a
 [dead00000000012a] address between user and kernel address ranges
 pc : run_timer_softirq+0x334/0x3d8
 lr : run_timer_softirq+0x244/0x3d8
 x1 : ffff800011cafe80 x0 : dead000000000122
 Call trace:
  run_timer_softirq+0x334/0x3d8
  efi_header_end+0x114/0x234
  irq_exit+0xd0/0xd8
  __handle_domain_irq+0x60/0xb0
  gic_handle_irq+0x58/0xa8
  el1_irq+0xb8/0x180
  arch_cpu_idle+0x10/0x18
  do_idle+0x1d8/0x2b0
  cpu_startup_entry+0x24/0x40
  secondary_start_kernel+0x1b4/0x208
 Code: f9000693 a9400660 f9000020 b4000040 (f9000401)
 ---[ end trace bb83ceeb4c482071 ]---
 Kernel panic - not syncing: Fatal exception in interrupt
 SMP: stopping secondary CPUs
 SMP: failed to stop secondary CPUs 2-3
 Kernel Offset: disabled
 CPU features: 0x00002,2300aa30
 Memory Limit: none
 ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---

It's found that stmmac_xmit() and stmmac_resume() sometimes might
run concurrently, possibly resulting in a race condition between
mod_timer() and setup_timer(), being called by stmmac_xmit() and
stmmac_resume() respectively.

Since the resume() runs setup_timer() every time, it'd be safer to
have del_timer_sync() in the suspend() as the counterpart.

Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index ff1cbfc834b0..5836b21edd7e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4974,6 +4974,7 @@ int stmmac_suspend(struct device *dev)
 {
 	struct net_device *ndev = dev_get_drvdata(dev);
 	struct stmmac_priv *priv = netdev_priv(ndev);
+	u32 chan;
 
 	if (!ndev || !netif_running(ndev))
 		return 0;
@@ -4987,6 +4988,9 @@ int stmmac_suspend(struct device *dev)
 
 	stmmac_disable_all_queues(priv);
 
+	for (chan = 0; chan < priv->plat->tx_queues_to_use; chan++)
+		del_timer_sync(&priv->tx_queue[chan].txtimer);
+
 	/* Stop TX/RX DMA */
 	stmmac_stop_all_dma(priv);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
