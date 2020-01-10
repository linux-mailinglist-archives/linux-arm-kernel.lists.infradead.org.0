Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C46D137116
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U/L8+mfyO6fiiNekf7yGoiMFiBpyq+LPPTHQciwy0x8=; b=hA8
	e6ce8Yxl4fo411L9plxH3ltajiYjJ7ctTUKQGP2ZqDNvMG37jpS7aMTNh698R3YgHMRB620K1ttNE
	0fsTQb3L/+o7TJlLBugqmlhQHUC5U+qPK/TJ6nd22KWO19Z9l4AsCV4U4TBEL9Q5W1LCeHoSvDNoL
	lJD3PMJxgNAUZqqcesHcC3QVmJ2+EmFcTXQfdgOr+BYv3ki319zYT0Ssn/ESi++Bls7dYY8KP5E2V
	8N10U4FwvZdix/ma/bQuGa9nmCET6xqhSMuYxK45RzpesH0MAw0eeYv7Q0GU9bOlsH3cLGSV2+5qR
	fmsRUs575YvStDUAhiuDvupr+zkPxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipw9R-0007Oz-IO; Fri, 10 Jan 2020 15:24:41 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipw8j-0006u2-Nm
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:24:04 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 54EBE4060D;
 Fri, 10 Jan 2020 15:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578669837; bh=YXcyxyil0lGkpQvMbPeFKs6Zw5fWZ1TPJ+83+aDSukc=;
 h=From:To:Cc:Subject:Date:From;
 b=LiDZcVgMNPYNpj8ZItMUc7By1O3X+Kf0pfyJ9pUPyJjxg662goHX4A8W8Epnwl0nh
 03GdcCOwwRaxbxeLNPTvtlpIN/WljR1OKmdetvow9Rk4cH3U2nN4lhXRJ+MTY13KE4
 vyjmTBgqaxRZrsGu79plinbaib6fudxjrLOMIoxGSp65+8aavDVISsYI2JLLNBN/lz
 H4XBubZejjwzaXw2q039iBCyyxuNSs8HEIfKR1foGfJtKeKCwi0oA6Z5lrZmkADNYG
 5I+WudyRal7y0sBBOssxKDZXqzerT+huCJc/cJZYVukn6XtRD0s4CHHWTFlRphaXYE
 rRCkdjsrdYzdA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 120B4A0061;
 Fri, 10 Jan 2020 15:23:56 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/2] net: stmmac: Filtering fixes
Date: Fri, 10 Jan 2020 16:23:51 +0100
Message-Id: <cover.1578669661.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072401_579655_6DC393FE 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Two single fixes for the L3 and L4 filtering in stmmac.

1) Updates the internal status of RSS when disabling it in order to keep
internal driver status consistent.

2) Do not lets user add a filter if RSS is enabled because the filter will
not work correctly as RSS bypasses this mechanism.

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

Jose Abreu (2):
  net: stmmac: selftests: Update status when disabling RSS
  net: stmmac: tc: Do not setup flower filtering if RSS is enabled

 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c   | 20 ++++++++++++++------
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c      |  4 ++++
 2 files changed, 18 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
