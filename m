Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A98187BEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 10:19:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZnPaDNlQ2uoRn2iioJzKkMvqM7eE3fax6hC/Qy1Otqc=; b=WD1
	/RLi5OJNILakxOdjmBivGs7H7vuJTvQwn4KkocrwFFvsNumbrC/S3keh22meZXwUkFR0SKR0VGzv/
	h0GsIe8IXBiSDg3+9uFnDa9fEG90vsQT6Nlq/DLrwm3XHQkZuEVvAQpFu9AkKuXp/1M0fFc6oN057
	n6wHtpyXkmFPBPW9L3LucBN1qIufbgL9V9QknxyWH9dnWVuxsmIhViw5Ps7AfYjj5ysAwaVNBQeeq
	U5Q1kq+eZUJxhn/b3pROE5pLL1mjUKftiL4frpOff347bJEeDRUC7GqDX6zGBG9IqRLJlXjoaix9C
	7cCv+ZUyVQLzyOoyIhps7ggNW5jGG/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE8O6-0003wD-N2; Tue, 17 Mar 2020 09:19:50 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE8NU-0003Va-FM
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 09:19:14 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 870F940184;
 Tue, 17 Mar 2020 09:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584436751; bh=VK6M6NynkQutHkNGcSezRWGpOnu7G8uE4UbAW05pHdw=;
 h=From:To:Cc:Subject:Date:From;
 b=jdTQqScirKVGNgC3KqPiJjgx2fay44quEzcZ8Nv3oinH2jd8Xw2kGZw5NMQJ77u7n
 a392Hn0Iplmw1M+f/qUdWmrn/J/OUqFWBrlHbWker6Uucu2Txo+0EhQTIcNebNQ0Mp
 p02DOJKm5pETomSGgj0t+m1Jrmvw0ntnU6ZDbeCW2U5Rqr4bS9W8rMXDZYcSlS3wkv
 ZH2z4ZGf5QEz0OKly2jIm1gExDpDaVEBkw4AScvVEf1a/seizGjPgDqIC+2G88Swi6
 l0mO/3detAyWmkIB+zgPcwCstDym7fxAamm2590i/yrLpbTHp4m337j6MM63HHlrwD
 GzTQJjYcS18Zw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 1C533A005C;
 Tue, 17 Mar 2020 09:19:01 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/4] net: stmmac: 100GB Enterprise MAC support
Date: Tue, 17 Mar 2020 10:18:49 +0100
Message-Id: <cover.1584436401.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_021912_514602_9072BBFB 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Andrew Lunn <andrew@lunn.ch>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds the support for Enterprise MAC IP version which allows operating
speeds up to 100GB.

Patch 1/4, adds the support in XPCS for XLGMII interface that is used in
this kind of Enterprise MAC IPs.

Patch 2/4, adds the XLGMII interface support in stmmac.

Patch 3/4, adds the HW specific support for Enterprise MAC.

We end in patch 4/4, by updating stmmac documentation to mention the
support for this new IP version.

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
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
---

Jose Abreu (4):
  net: phy: xpcs: Add XLGMII support
  net: stmmac: Add XLGMII support
  net: stmmac: Add support for Enterprise MAC version
  Documentation: networking: stmmac: Mention new XLGMAC support

 .../networking/device_drivers/stmicro/stmmac.rst   |  7 +-
 drivers/net/ethernet/stmicro/stmmac/common.h       | 13 +++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 99 ++++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxlgmac2.h    | 22 +++++
 drivers/net/ethernet/stmicro/stmmac/hwif.c         | 45 +++++++++-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 58 +++++++++++++
 drivers/net/phy/mdio-xpcs.c                        | 98 +++++++++++++++++++++
 8 files changed, 340 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwxlgmac2.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
