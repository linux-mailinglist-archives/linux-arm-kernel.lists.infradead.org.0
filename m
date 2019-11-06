Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AFFF1985
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:05:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yEPNpC0goC5K+w8MjWK2NgVVkzwG1/FizeKfIWsg7O8=; b=kU+
	ldUcIDsSlSRSnTYhUxvyDyculgoItPuYajvIiMRu1QwouS8tg8Y34Es9wtJsfNmhcHzEzymmHy9Td
	49hi82gupQ1octZS0WItHIpkh/BtgiX4APABAK/iEWOzQxck4PJ4ui01NL21aXoa8DWrrZLpILy9t
	12EhW1+/X+SYAwEzzXHxVYpdkeZcUWC2r+FI+gKSi4Gkn+7AsQWrhs6IfRweMHL6Xo/ScS04dFECj
	7SDn6Odcnom1vztHohaKUPZUrajySiRvivDx/gtyAL/tuns17E4vFE2Y5QKV30fsZVu0ZvxKVkSVt
	AsQ4klMq+GX9MwPD9uBLnbZL63fE8Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMsI-0001ef-7p; Wed, 06 Nov 2019 15:05:34 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMq1-0006qH-MH
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:03:21 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C994DC0486;
 Wed,  6 Nov 2019 15:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573052592; bh=GRMw5KsuEu3tCfQdQK07Pp1yvOjWXrXvCMdDCR8/7Rs=;
 h=From:To:Cc:Subject:Date:From;
 b=QVd8rwFitMwUxrJM2ueIli+P/H09CxFhXntduV37l53PAcTPAxJa1NCY3Pb9TZG1z
 qp1d+dlFLmdbvhTqAQmBuNK6f67Y/O8EcKTv5BIwWYCmr2v2sFMuS53LGkZhm+CX5T
 MsIwUi3ppwpkWyfKIKESa+lNzFP2fJ6pGSNxG0ufXoKToDvI0JtLUvLy2AqnhL7CRD
 C8G2lU05O5C/xAvKxDMFPiCS8GAQqV/rjzZ0iyUSAAG8FdIzLsTChmkSB0SKzJKJkI
 mfmE4wJOuzl2/JmN53EM304nOMEZpRVQXS2xgRh/G18rfg1xZrU9oDYCC5kOSHq/Al
 hhWGhu8WRMryA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A99C6A005D;
 Wed,  6 Nov 2019 15:03:09 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 00/11] net: stmmac: Fixes for -net
Date: Wed,  6 Nov 2019 16:02:54 +0100
Message-Id: <cover.1573052378.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_070313_779809_815EB290 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Misc fixes for stmmac.

Patch 1/11 and 2/11, use the correct variable type for bitrev32() calls.

Patch 3/11, fixes the random failures the we were seing when running selftests.

Patch 4/11, prevents a crash that can occur when receiving AVB packets and with
SPH feature enabled on XGMAC.

Patch 5/11, fixes the correct settings for CBS on XGMAC.

Patch 6/11, corrects the interpretation of AVB feature on XGMAC.

Patch 7/11, disables Flow Control for AVB enabled queues on XGMAC.

Patch 8/11, disables MMC interrupts on XGMAC, preventing a storm of interrupts.

Patch 9/11, fixes the number of packets that were being taken into account in
the RX path cleaning function.

Patch 10/11, fixes an incorrect descriptor setting that could cause IP
misbehavior.

Patch 11/11, fixes the IOC generation mechanism when multiple descriptors
are used.

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

Jose Abreu (11):
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
  net: stmmac: Fix TSO descriptor with Enhanced Addressing
  net: stmmac: Fix the TX IOC in xmit path

 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   2 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |   3 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   |   3 +-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   4 +-
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c     |   6 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  70 ++++++-----
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 134 +++++++++++++++------
 7 files changed, 144 insertions(+), 78 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
