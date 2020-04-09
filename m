Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB961A2F28
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bPuzqZUyADtkkeZvYnsVmzasKn5Cc5zKJWp457/x+zw=; b=OTYc8TLUKrdI8B
	w4D5445bUCnaFH/aZL+zbza2LMEq83MOT7Xa6RyZ0hb9b4WQzYffOGLc8IbdLdskVYTBThr0+DenC
	6gEeb0vldiV12o4Onou95ro4htsKprmcpwn9n0OcyLktoFWtvxv87k6zjG/G0fO93e+61rzZpfT6C
	VWNhj3IFxnmwjQJb7Y/5bXX78J2oISxn6AOMx45+RAZmgcQ0+t/7iZzorX6lwNnB0k4G4iitpS96m
	8g7vsle/OWy5DDVxWpXjwBOd0DqPfz0Q2nD/B4jyb+IHANkntA27KXixyjt6ERH/Fg+Mu62ThWRhE
	aLQr5oTp0tStXLCG7fGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQeI-00031Q-IL; Thu, 09 Apr 2020 06:26:50 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQe6-0002z1-BR
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:26:40 +0000
IronPort-SDR: 8zGCG6RMGCtMSx0IkDWU3vTuzFvQNUgr1U3rKyu0DZl78ryFHZg4vlJdmEjkDqENisPcbbYjaC
 xr2ghb1USLkQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 23:26:37 -0700
IronPort-SDR: m8WN6J9uNsEDaxru+99Hbd3xgP3SwBjuPKmnbz/BmF5gPIRXmyltoFt8fEqTYeyV4Z5Y12EY/y
 s5MZUo4mFFLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,361,1580803200"; d="scan'208";a="242565865"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 08 Apr 2020 23:26:35 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jMQe3-00023k-6J; Thu, 09 Apr 2020 14:26:35 +0800
Date: Thu, 9 Apr 2020 14:25:57 +0800
From: kbuild test robot <lkp@intel.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [arm-platforms:hack/vim3l-crap 2/5]
 drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:27:8: warning: Variable
 'value' is reassigned a value before the old one has been used.
 [redundantAssignment]
Message-ID: <202004091448.HSHDfHXZ%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_232638_440856_CE542233 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git hack/vim3l-crap
head:   bdf08c52d4aaabc11f0b83dce15decda3fa67537
commit: afc99f4ddd4f97fb3af4dedca81a3a50451f85d0 [2/5] dwmac: workaround random DMA reset failures

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:27:8: warning: Variable 'value' is reassigned a value before the old one has been used. [redundantAssignment]
    value = DMA_BUS_MODE_SFT_RESET;
          ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:24:8: note: value is assigned
    value = readl(ioaddr + DMA_BUS_MODE);
          ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:27:8: note: value is overwritten
    value = DMA_BUS_MODE_SFT_RESET;
          ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:21:19: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(0, ioaddr + DMA_CONTROL);
                     ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:22:19: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(0, ioaddr + DMA_INTR_ENA);
                     ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:24:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    value = readl(ioaddr + DMA_BUS_MODE);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:28:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(value, ioaddr + DMA_BUS_MODE);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:32:35: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    while (readl_poll_timeout(ioaddr + DMA_BUS_MODE, value,
                                     ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:43:19: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(1, ioaddr + DMA_XMT_POLL_DEMAND);
                     ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:48:27: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 value = readl(ioaddr + DMA_INTR_ENA);
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:55:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(value, ioaddr + DMA_INTR_ENA);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:60:27: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 value = readl(ioaddr + DMA_INTR_ENA);
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:67:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(value, ioaddr + DMA_INTR_ENA);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:72:27: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 value = readl(ioaddr + DMA_CONTROL);
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:74:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(value, ioaddr + DMA_CONTROL);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:79:27: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 value = readl(ioaddr + DMA_CONTROL);
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:81:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(value, ioaddr + DMA_CONTROL);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:86:27: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 value = readl(ioaddr + DMA_CONTROL);
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:88:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(value, ioaddr + DMA_CONTROL);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:93:27: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 value = readl(ioaddr + DMA_CONTROL);
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:95:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(value, ioaddr + DMA_CONTROL);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:173:33: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 intr_status = readl(ioaddr + DMA_STATUS);
                                   ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:214:29: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
      u32 value = readl(ioaddr + DMA_INTR_ENA);
                               ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:234:41: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel((intr_status & 0x1ffff), ioaddr + DMA_STATUS);
                                           ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:241:26: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 csr6 = readl(ioaddr + DMA_CONTROL);
                            ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:242:42: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel((csr6 | DMA_CONTROL_FTF), ioaddr + DMA_CONTROL);
                                            ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:244:29: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    do {} while ((readl(ioaddr + DMA_CONTROL) & DMA_CONTROL_FTF));
                               ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:257:39: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(data | GMAC_HI_REG_AE, ioaddr + high);
                                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:259:22: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(data, ioaddr + low);
                        ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:266:27: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    u32 value = readl(ioaddr + MAC_CTRL_REG);
                             ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:273:23: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    writel(value, ioaddr + MAC_CTRL_REG);
                         ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:282:25: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    hi_addr = readl(ioaddr + high);
                           ^
   drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c:283:25: warning: 'ioaddr' is of type 'void *'. When using void pointers in calculations, the behaviour is undefined. [arithOperationsOnVoidPointer]
    lo_addr = readl(ioaddr + low);
                           ^

vim +/value +27 drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c

    15	
    16	int dwmac_dma_reset(void __iomem *ioaddr)
    17	{
    18		u32 value;
    19	
    20	
    21		writel(0, ioaddr + DMA_CONTROL);
    22		writel(0, ioaddr + DMA_INTR_ENA);
    23		dsb(sy);
    24		value = readl(ioaddr + DMA_BUS_MODE);
    25	
    26		/* DMA SW reset */
  > 27		value = DMA_BUS_MODE_SFT_RESET;
    28		writel(value, ioaddr + DMA_BUS_MODE);
    29	
    30		dsb(sy);
    31	
    32		while (readl_poll_timeout(ioaddr + DMA_BUS_MODE, value,
    33					  !(value & DMA_BUS_MODE_SFT_RESET),
    34					  100000, 1000000))
    35			pr_info("Reset failed\n");
    36	
    37		return 0;
    38	}
    39	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
