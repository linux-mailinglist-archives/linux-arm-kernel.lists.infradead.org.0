Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC47EAE43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:03:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/cBGK0SDR6IT7601ghM5z78BYwkIQnrR8zeXXiRKxuA=; b=qQv
	m0/QuAUHs6odQvTAM9n1GVDl7zBMB3XlN9p/Yq6hbJ00IEcJ/1nG/SFJ2PQ2PT0ED3Zuu4XOHxEhw
	MM1/KTK6R57nHFh9He4ELTGa2bpUFh4Ibl7sTXsNUKYpN88Ly+LM+NO6lBOvaSum+8+qH23XhQMAa
	Em8CJQRJWtSb/ZlzyBsN/wA9Nc6yO4Ar1A2NQihOgXBpc6ne8fa4n3IsTsoGHJYRgMuhfJ3mDzUXx
	EqHs7C15ZBL6qo/YWjH5GQEKnWsB28RfizrQbW9/nGlIxUs0kUxaBoD8Zi/vokC9eteDiRCPU9t9N
	6OMXr1HcpwlnlQ/UhYUpsqdEoDR9uYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8Ex-00064v-LF; Thu, 31 Oct 2019 11:03:43 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8CQ-0003yY-SZ
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:01:14 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 69311C08AB;
 Thu, 31 Oct 2019 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572519662; bh=V8PYaIxRBCd5CjKybZ8TOnz5iajxJsSRMUjscFeKcrU=;
 h=From:To:Cc:Subject:Date:From;
 b=PO3w6IibOhFkxjwWRg11eNllWPLX+y9tkr4SttSB67beRc+cRHHjP6iRn6DM+GjEO
 LqZ231z1+9KaOUORitebZ9DIzR9SKVRDBBR0jtNUFGi5h63+M5rBy98/POd8TLLtS3
 NTVaCYeYvZuUJZepDmruo50QV171HfQdTa6YWwyHlANv5Je5F83Qg+DGBOUPdLTxfw
 2mnMF3WBPXQME0RqhoBXP6i8Z2KhhfC5om++R9GdXgxPvfNZgZGSsQWRDzKbxaFKdc
 og88xysv/VLcUuQawRm44GeREezN3dabsxpOuumGmDa6p5EcZ9xC4scKrVM9O+bhqB
 EFSvwK9nOcVJg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 2F6B6A0057;
 Thu, 31 Oct 2019 11:00:59 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 00/10] net: stmmac: Fixes for -net
Date: Thu, 31 Oct 2019 12:00:38 +0100
Message-Id: <cover.1572519070.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040107_089653_99C31FFF 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Misc fixes for stmmac.

Patch 1/10, corrects a sparse warning reported by kbuild.

Patch 2/10 and 3/10, use the correct variable type for bitrev32() calls.

Patch 4/10, fixes the random failures the we were seing when running selftests.
This commit was re-worded because the old commit log no longer applied so we
didn't add the history log to the commit. So far, no selftests failures were
seen with the new re-worked commit.

Patch 5/10, prevents a crash that can occur when receiving AVB packets and with
SPH feature enabled on XGMAC.

Patch 6/10, fixes the correct settings for CBS on XGMAC.

Patch 7/10, corrects the interpretation of AVB feature on XGMAC.

Patch 8/10, disables Flow Control for AVB enabled queues on XGMAC.

Patch 9/10, disables MMC interrupts on XGMAC, preventing a storm of interrupts.

Patch 10/10, was added in this version and it fixes the incorrect number of
packets that were being passed to NAPI.

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

Jose Abreu (10):
  net: stmmac: Fix sparse warning
  net: stmmac: gmac4: bitrev32 returns u32
  net: stmmac: xgmac: bitrev32 returns u32
  net: stmmac: selftests: Prevent false positives in filter tests
  net: stmmac: xgmac: Only get SPH header len if available
  net: stmmac: xgmac: Fix TSA selection
  net: stmmac: xgmac: Fix AV Feature detection
  net: stmmac: xgmac: Disable Flow Control when 1 or more queues are in
    AV
  net: stmmac: xgmac: Disable MMC interrupts by default
  net: stmmac: Fix the packet count in stmmac_rx()

 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   4 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |   5 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   |   3 +-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   4 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |   2 +-
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c     |   6 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  10 +-
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 134 +++++++++++++++------
 8 files changed, 115 insertions(+), 53 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
