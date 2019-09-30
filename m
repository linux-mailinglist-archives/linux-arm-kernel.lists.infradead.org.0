Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835E7C1CFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gq2kAZQp9oV22W5FceJSTJhJd6Sp0dte6KasO9Otspw=; b=ufo
	I7IC/GFRPUFN9YcK86eCrNt79BFOz/W3T+gwOaRc6YeAlOYenESI8/yxmcIEFeJv7EqDTeNK3HRMv
	QJGibTg3lUAQhT2q0d52j9hThquK1SZ+JNmfDnmMjiPoTZnZ2zUcNNSdlJVScANKFAw3oIWx5yw6Z
	ZMC2jcXXUhzuQXr3SLu0zbuGUzUfnvGpBHXizA1IXgWxuTREOOCeDtF1YSVS/KO238PLHxCFtKKpt
	1NOAFVT3EyoQHSk2z59g+9FzqZV1CsYbB6ukcVt6R8R/nD6tJv266kA2/tRCBppo3IPJQ7nR4zo40
	jgmavYt0ZLpVHnZ3edlUn6+zl+3gFlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEquo-000654-WE; Mon, 30 Sep 2019 08:20:19 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqu0-0005er-PF
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:19:30 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 50C11C0371;
 Mon, 30 Sep 2019 08:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569831567; bh=X6ZuF3t+/sYHmhk5OVSm+g3RjPonhti5heRvhuw4Vho=;
 h=From:To:Cc:Subject:Date:From;
 b=l+/KdG0pKWvbdymwv42EIOi+8FdJw3GGE65tEJc16tl4r9V70l1fb2pIJAWbN8v3I
 5jmyrl7IyHq4kLMFISbiioBWYFz/Th5n4O5YQaWUtIYSS+Kc6lzfFc4RqD5k3/+3ZR
 sj5FtRrsyQ6erUwuVWVrA8JlpgvYDIz1LiopCs+shzQ8gmr7h+vn8pxQWNrGTYdxSH
 e6oU/H+IlaVIilAKZEiHSprmoHIt0LUxTU4IcmpnmRc8ne2g+xeXCrkokwhbGEi+3v
 4BueV+lMcmQwHCTkmiaOklfqdRDx+eM+qFdgsZyd0hUCg6oohEaEmEWgxhrMXrLt5J
 0Jkp6ttf5gvRA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B4E7AA0057;
 Mon, 30 Sep 2019 08:19:21 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net 0/9] net: stmmac: Fixes for -net
Date: Mon, 30 Sep 2019 10:19:04 +0200
Message-Id: <cover.1569831228.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011928_898216_5243EC1D 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Misc fixes for -net tree. More info in commit logs.

v2 is just a rebase of v1 against -net and we added a new patch (09/09) to
fix RSS feature.

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
  net: stmmac: xgmac: Not all Unicast addresses may be available
  net: stmmac: xgmac: Detect Hash Table size dinamically
  net: stmmac: selftests: Always use max DMA size in Jumbo Test
  net: stmmac: dwmac4: Always update the MAC Hash Filter
  net: stmmac: Correctly take timestamp for PTPv2
  net: stmmac: Do not stop PHY if WoL is enabled
  net: stmmac: xgmac: Disable the Timestamp interrupt by default
  net: stmmac: xgmac: Fix RSS not writing all Keys to HW
  net: stmmac: xgmac: Fix RSS writing wrong keys

 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c     | 13 +++++++------
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h        |  3 ++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c   |  9 +++++----
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c    |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c     | 19 +++++++++++++------
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c    |  4 ----
 6 files changed, 28 insertions(+), 21 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
