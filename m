Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 584118237F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=erjivr2IiuXCg2vufxaS8hyAuB+sAbFL0LtSeSaXz0A=; b=evj
	Y9mzITeAhqYPZUg/Tu22Sb3Isz3d+DN3A+Hx1BTSetLku7F64j6z+YANpgeORNtmzpv2OWb449Fvb
	yI3QOHpG97UxBOMf78JktotRTKrC8fVpeiMjCY6sW6BvU71uNGSAvVII8yyvrWxj5VuXz8L6HhuKW
	tYR13X7pUqB+uVIk7bQz4wyqKYj3xd8VnvGkTmtKhACAjjYEfebWz2wtWKpSdJl7/RnC3Xqc6cyaj
	Y25vhk9/sEqMmytAnwA/M8tuHtWv3yEWt45kiQtO4NpjEWfl9bJbC3oC9mvUWrjwtG+oeInXFkCF+
	n2plziUxc4QmiMcX4EgozSrLmfZ9FSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugNe-0005eB-6a; Mon, 05 Aug 2019 17:02:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugMQ-0004RD-5j
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 17:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HcLabTYyDLmBUrB34RxjVwvZZWph8KWNolBtsqq9WGQ=; b=c9NIzzMUep3kJlz5KE+Cb+/W4
 x5bLxGcSnpKOCjyixBCNjnYXtglgGZ4O5ZIZkSwzd88MOXleqmcNi9VRlwvuJm5TdVyOIjq2jx/Bg
 ErWxuodRrJK3LcFeD8ZmfvB/TxHNi2S9DD4Ccm/flkwpaplnQT5N/iqQOeEDl3byXmVHdttoAmG6C
 HvuFU5XUROOxnyYMPF4oD70vSz5hD9IsSymmEPqubG0HdPUh9WwQS9X0uunhncOkXy8TvjwFuL59p
 SUxg47AWt7r8fHty3DOp2RYj+9JJi4tCJi2gQLr5DZyKp9nUyjPUy+iLTaO7/3f3C9XEVkOgQRzLf
 5/9hDYHug==;
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug7L-0005Oj-SI
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:58 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 67A76C015B;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023530; bh=0LbPrLAJZPL+E0+EEkTDfdECwXLyTc0PWcn5jnubUI8=;
 h=From:To:Cc:Subject:Date:From;
 b=fwhulZuLa3ryglwiiwLjF4/2ithvclLv+FstYbrMDuZUUzbasLHK6bKffdBkzXJbw
 Bze7ohv14AR+/LgKzBrDhlrZ922jio5ql9f+PUa5FEcwYYyeAXs+QkqwOQr3/UQUBb
 hywH00ci3zmVycCrIu0L1pOeotaSjKBgV9l864aNVk2LgVEOzpRcrwGKi1EhLmzoUP
 qure26YhNg7npw16CSBy72d8V4vyNnmbY9G/beRv3rnFEipdd05UGN+VH2rafPGzT+
 WT9LOXYfKY/xU+TzcfDjPLJmNSAVOu/7dGib4K7dwl+sJoZTIaBIj94VkSxpryQzzU
 TG0wIbOb+vBpA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id CD08FA005D;
 Mon,  5 Aug 2019 16:45:25 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 00/26] net: stmmac: Misc improvements for XGMAC
Date: Mon,  5 Aug 2019 18:44:27 +0200
Message-Id: <cover.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_174552_233330_4ADFA45C 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ This series depend on 3caa61c20875 ("net: stmmac: Sync RX Buffer upon allocation")
which is already in -net but not -next ]

Misc improvements for -next which adds new features in XGMAC cores.

More info in commit logs.

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Jose Abreu (26):
  net: stmmac: xgmac: Fix XGMAC selftests
  net: stmmac: xgmac: Implement MMC counters
  net: stmmac: Fix issues when number of Queues >= 4
  net: stmmac: xgmac: Implement set_mtl_tx_queue_weight()
  net: stmmac: xgmac: Implement tx_queue_prio()
  net: stmmac: Implement RSS and enable it in XGMAC core
  net: stmmac: selftests: Add RSS test
  net: stmmac: Implement VLAN Hash Filtering in XGMAC
  net: stmmac: selftests: Add test for VLAN and Double VLAN Filtering
  net: stmmac: Implement Safety Features in XGMAC core
  net: stmmac: Add Flexible RX Parser support in XGMAC
  net: stmmac: tc: Do not return a fragment entry
  net: stmmac: selftests: Add a selftest for Flexible RX Parser
  net: stmmac: Get correct timestamp values from XGMAC
  net: stmmac: Prepare to add Split Header support
  net: stmmac: xgmac: Correctly return that RX descriptor is not last
    one
  net: stmmac: Add Split Header support and enable it in XGMAC cores
  net: stmmac: dwxgmac: Add Flexible PPS support
  net: stmmac: Add ethtool register dump for XGMAC cores
  net: stmmac: Add a counter for Split Header packets
  net: stmmac: Add support for SA Insertion/Replacement in XGMAC cores
  net: stmmac: selftests: Add tests for SA Insertion/Replacement
  net: stmmac: xgmac: Add EEE support
  net: stmmac: Add support for VLAN Insertion Offload
  net: stmmac: selftests: Add selftest for VLAN TX Offload
  net: stmmac: selftests: Return proper error code to userspace

 drivers/net/ethernet/stmicro/stmmac/common.h       |  16 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   4 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 135 +++-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 880 ++++++++++++++++++++-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   | 118 ++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  41 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.c         |   4 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  47 ++
 drivers/net/ethernet/stmicro/stmmac/mmc.h          |   9 +
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c     | 192 +++++
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  21 +
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c   | 106 ++-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 380 +++++++--
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 513 +++++++++++-
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |   2 +-
 include/linux/stmmac.h                             |   1 +
 16 files changed, 2361 insertions(+), 108 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
