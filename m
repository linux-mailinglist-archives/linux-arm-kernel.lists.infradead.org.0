Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62418AB35C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ljqpL3KmJUEG2MaHg9lirG89hwd3hIRc2RNkrmQ3viw=; b=fBA
	nTfgT0Krk2uI3qBLBEpitxM8oXzzlpoYhKUtIx5BQEF/hYeQ53SdLHpYQWJWo5LW5GAYIkOF/7ZcH
	+DtZ29QLRI9SgZ1hkw1EaSvAFbVYGFkCqPLGfAsrLqf86jyH2JdiEWKFT4FxvurOvlHpEM2yFRQLg
	JiHssSkpkZyOEKT2/VHTcAbZ9bfncQ30NvUsQM/pvq4LbEEWODWZAwz4VmcpQSJvlBGonMHOAT0+B
	EaEuWYHyyf6HTzDwxSej4TMTcTB41ek1I+cimunuWJX5OEZJEgKxpP3P112R9s0dTscgP/iHrOz01
	a/xc5QLMPF/VMqrl3nFl2WvGZ2dLaIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68sJ-0005ie-BM; Fri, 06 Sep 2019 07:41:43 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68s6-0005h0-48
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:41:31 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 23988C0E35;
 Fri,  6 Sep 2019 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567755688; bh=4FNcbwGO762eeiYuWoydSpxazMahLxkBYcFUNjeJ3so=;
 h=From:To:Cc:Subject:Date:From;
 b=QV3sTkQjRq3+DWj4SAq7M3ARw0wOD88Y820JB4aK6VQ3BqbtO+ozEBJg5jkZxP6ba
 3K3PfEsnZAFP8beQSbvbq4rYsxCaqGuqw8h9pPqMiS6RCdbZ0eax/vPBjpPQJO3fpn
 4GOoFgI8P87xZ6bFcQt0szF2m6kys4oWjegPndcukIUo4cRGrBYIT79WQrcuzC9ip9
 4+AT6uXZ1T2NKq8mP+IAI4DwvUSgoSG5aniE63bpRkwW+wF/luxd0JWIyWzZQsXLIu
 EiPm2rX5BcbHPhAqfeLgzesocBttjgJAAkBystKy36O3f9cHmcsjU3truRAWoxfcIF
 40D7xgWd5/dhw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 001F5A005C;
 Fri,  6 Sep 2019 07:41:25 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/5] net: stmmac: Improvements and fixes for -next
Date: Fri,  6 Sep 2019 09:41:12 +0200
Message-Id: <cover.1567755423.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_004130_175777_3DAFCAF2 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Improvements and fixes for recently introduced features. All for -next tree.
More info in commit logs.

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Jose Abreu (5):
  net: stmmac: selftests: Add missing checks for support of SA
  net: stmmac: selftests: Set RX tail pointer in Flow Control test
  net: stmmac: dwmac4: Enable RX Jumbo frame support
  net: stmmac: selftests: Add Split Header test
  net: stmmac: Limit max speeds of XGMAC if asked to

 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  3 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |  6 ---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 25 +++++----
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 60 ++++++++++++++++++++++
 4 files changed, 78 insertions(+), 16 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
