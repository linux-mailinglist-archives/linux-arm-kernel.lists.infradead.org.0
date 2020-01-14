Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B789713AEA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=djbm4AhbIajt2G1/mGI+W7m6eBYT+zuvuJ2ztFAe2MA=; b=SnV
	0Z6LlAY+Rh2cjJ9yAPalhtH5t7+OOfGs7eWDl+IGH1kRWbVVLCKEsvJnKtBlUuujDSL8p7784mPig
	/DWq3H7E2xhVdDih6BAqM2EAAG8tsGWR/PNFQ/aKcSrYtQ6dGrcqM2Efs6RrllGN8Nxl6NNWao/wn
	w1s798n+Er0mm5Zis4pPohU7OnVH4mX76SnDVWG+bm1AvupdXGjVGNFeLALbSKG2nIR6Lm7TVfUW1
	VQ/1hm6rSSDK2u8rqe7AJA3QP4jvyA+GHSMUfkCUD48j/QJJ1v4b/+BCDpYc8EQbpJwHl2xA1gCC0
	++me3rSmZZWcuxACrnvuuq1N+88uokQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irOmP-0007qi-9Y; Tue, 14 Jan 2020 16:10:57 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irOlA-0005ub-Ir; Tue, 14 Jan 2020 16:09:48 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8B4D0C0620;
 Tue, 14 Jan 2020 16:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579018177; bh=lMsPxq+6nqsKDOeBMq7JTDZwDRAvL67CUWdXLkXkMqk=;
 h=From:To:Cc:Subject:Date:From;
 b=iffSGqxx8OFb+Pmq5zvInZjDB2S3nvyAmHaayuDazU2IvKr/ANqsV+5cZMMo8mEA7
 D/qW49WaOk4HilFsZS4A6AtLQpWaLJHDroppQP33m0JNSFWe0yPFn0Anbbg8bTjS9+
 NC5VtqbX5LZ3aE5VqaUl+HbTu18GVXyBoUFKuDW4bBBFWCjHssPmMRURjNyldKlSTd
 jOZVxY2F2e5aMUW8ntYKkUK21GyFdSAxBUD4StzGG/z/L8ThH3c4OIuxFdChJUTV0J
 /CyV16jzSwo0YukQ+a8zJk4cwoeD+HK9N3ktwFJPa3+MsS7cwCl8d4h6SGO0uaqTgz
 J/sl3s3Q7dV3A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 221CDA005B;
 Tue, 14 Jan 2020 16:09:34 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/4] net: stmmac: Fix selftests in Synopsys AXS101 board
Date: Tue, 14 Jan 2020 17:09:20 +0100
Message-Id: <cover.1579017787.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_080940_753407_078E127C 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-snps-arc@lists.infradead.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set of fixes for sefltests so that they work in Synopsys AXS101 board.

Final output:

$ ethtool -t eth0
The test result is PASS
The test extra info:
 1. MAC Loopback                 0
 2. PHY Loopback                 -95
 3. MMC Counters                 0
 4. EEE                          -95
 5. Hash Filter MC               0
 6. Perfect Filter UC            0
 7. MC Filter                    0
 8. UC Filter                    0
 9. Flow Control                 -95
10. RSS                          -95
11. VLAN Filtering               -95
12. VLAN Filtering (perf)        -95
13. Double VLAN Filter           -95
14. Double VLAN Filter (perf)    -95
15. Flexible RX Parser           -95
16. SA Insertion (desc)          -95
17. SA Replacement (desc)        -95
18. SA Insertion (reg)           -95
19. SA Replacement (reg)         -95
20. VLAN TX Insertion            -95
21. SVLAN TX Insertion           -95
22. L3 DA Filtering              -95
23. L3 SA Filtering              -95
24. L4 DA TCP Filtering          -95
25. L4 SA TCP Filtering          -95
26. L4 DA UDP Filtering          -95
27. L4 SA UDP Filtering          -95
28. ARP Offload                  -95
29. Jumbo Frame                  0
30. Multichannel Jumbo           -95
31. Split Header                 -95

Description:

1) Fixes the unaligned accesses that caused CPU halt in Synopsys AXS101
boards.

2) Fixes the VLAN tests when filtering failed to work.

3) Fixes the VLAN Perfect tests when filtering is not available in HW.

4) Fixes the Ethernet DT bindings for AXS101 board.

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
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: linux-snps-arc@lists.infradead.org
---

Jose Abreu (4):
  net: stmmac: selftests: Make it work in Synopsys AXS101 boards
  net: stmmac: selftests: Mark as fail when received VLAN ID != expected
  net: stmmac: selftests: Guard VLAN Perfect test against non supported
    HW
  ARC: [plat-axs10x]: Add missing multicast filter number to GMAC node

 arch/arc/boot/dts/axs10x_mb.dtsi                   |  1 +
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 32 +++++++++++++++-------
 2 files changed, 23 insertions(+), 10 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
