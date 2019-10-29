Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0650BE8ACD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zL2x8Svki/Xg8i5Akywz1K30P2JE1sPUU/oWy493gdU=; b=Xt8
	Sixku9rHk1p+30CXy99B8qN6F1ZnN1nLgyFclK9LTDLeKGQudjvY3awEy8YyffdG8Qg1q1cBYE3Ep
	EPKiiZcnPLuNrNxLVROy72lnmdBwqi/Drkp+9o2TofeqzuIOUN1OATLUcXZwDYAN7hlNS9sFJ8Yod
	jIXp1xUACrzgBx+jBTn56KKFtq7srLjIdd8gbLdfDjvyWEHxE5ISn/9Zgj8nw8GJkRIprCyiuKHYv
	5eQRaJEbb+tV4FIBuhL+Va4SFEt5ONGGchQK+E9UTbQG3xVv4GTxWdRpbP40gx+E/fsiq5sZax7Z3
	UfkxotuM5q1iJGjUqmWtW+zAoZRkt+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSXk-0002kE-51; Tue, 29 Oct 2019 14:32:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSXa-0002Vn-3p
 for linux-arm-kernel@bombadil.infradead.org; Tue, 29 Oct 2019 14:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6zu96O6nW8G+BQtgil5/02CqVD3AHOFR6gyIA+He8Uk=; b=OE7k91t23fwg78VAjz9YS+1uK
 6vEL31QS+CUjggSjRAHwIUKmTkPTf/1qsWf8qTqHI7KQlRrRu/APXsNyP/4SVE07lQWj3tOeXDP9V
 3VXrfNTZ+yVIfcMECvEz2MryMeDFFOimdaSJE8aEUdFGucjFMnKv6oVqapSfKLrGaA43fbkCxcNTm
 Kixbsc36Q3Cx2yQCSXyUMJF1a85vNKn3ysdCggZlb219aBVBtjOnvcbGjpgC/jedM38Kkq9kDktNV
 fYNQAOsoEIrcXF7xxmuprBzgKwhh+04bKTzmWY8h2cNg/VzTPnL3x//krtUGBBM0o+TfwpOkAKQjd
 t+ZlBXOXw==;
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSI0-0006wh-IU
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:16:09 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3731FC04BB;
 Tue, 29 Oct 2019 14:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572358520; bh=nGvMdw6v8QDeKK9JnNRRIrf2w9HChn1Wdr+DNEOBHYA=;
 h=From:To:Cc:Subject:Date:From;
 b=iNG18OtbHULWKiWvg4ptyuJZJ/uwepsJ4ZxfBLvqzEPhb6abo/kHUWLbhYAev+oYm
 mAsJiltcGBwyFA0hqWlhQ9D7f1WoSnonrGO1w604iQQEH9JFOrkj2SAveDuU6AVn+m
 a07foVBen1Qu8Ie+fjtuv0utJN9SvCUbfryp5dlPfOg4p+8gl37g3WYUY++x8FDpWc
 wuGaWTo7OO1LzTcG+M0TA6XBfnZ0TZDOWq9dY6zKG6w4BXhkekfjCgJLD5KyPb/IJH
 a4MRmhkwRsbWhKktXJ1/X4g5m3B0MFTyn50B91Gf5oqfL+2YrLcTZlR9WMdf7+bCMZ
 LSqW4UXNqJx1A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id BA0ECA0057;
 Tue, 29 Oct 2019 14:15:08 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/9] net: stmmac: Fixes for -net
Date: Tue, 29 Oct 2019 15:14:44 +0100
Message-Id: <cover.1572355609.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141604_799266_4B7CE246 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Patch 1/9, corrects a sparse warning reported by kbuild.

Patch 2/9 and 3/9, use the correct variable type for bitrev32() calls.

Patch 4/9, fixes the random failures the we were seing when running selftests.

Patch 5/9, prevents a crash that can occur when receiving AVB packets and with
SPH feature enabled on XGMAC.

Patch 6/9, fixes the correct settings for CBS on XGMAC.

Patch 7/9, corrects the interpretation of AVB feature on XGMAC.

Patch 8/9, disables Flow Control for AVB enabled queues on XGMAC.

Patch 9/9, disables MMC interrupts on XGMAC, preventing a storm of interrupts.

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

Jose Abreu (9):
  net: stmmac: Fix sparse warning
  net: stmmac: gmac4: bitrev32 returns u32
  net: stmmac: xgmac: bitrev32 returns u32
  net: stmmac: selftests: Must remove UC/MC addresses to prevent false
    positives
  net: stmmac: xgmac: Only get SPH header len if available
  net: stmmac: xgmac: Fix TSA selection
  net: stmmac: xgmac: Fix AV Feature detection
  net: stmmac: xgmac: Disable Flow Control when 1 or more queues are in
    AV
  net: stmmac: xgmac: Disable MMC interrupts by default

 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   4 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |   5 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   |   3 +-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   4 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |   2 +-
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c     |   6 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |   5 +-
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 104 +++++++++++++++------
 8 files changed, 94 insertions(+), 39 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
