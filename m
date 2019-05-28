Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE752C2CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 11:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=svJ291+Y+96gDPSZlfmnHBfPsksLVukmPoopl8ae9EU=; b=PQNirvwHCeZPlb
	CIhMfMNCDoAz/6lODaLUnEF5IEPKdK1MViD2+PgiT0EAYTBriUQrLeSUjjEYQpLyey81HJLT5T3nJ
	/9Gz7y2Puq8fQwoNZfJVoLyhm4kAGiTjuwsVY9PG2gvmbM/DsoJmoBZE0E5JvdnZffD4R5GA/wKQK
	gilLERVOq5Akl6aJN/1BZt2Z8AW9bl0DC5Lc+kFV2Vj3RLhnQAYrKNZK0u6JF37yhwmmMahL6RxOk
	aUrarPn2qS9f/SW8iNWaf9ekZejhL76dHs5xJvklUVBiqrJfYw9jRmKRkwxKNAdNhiGX8pjg+AIv3
	rGOU9xTVvShtRYcTtefQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVY8h-0001nY-5p; Tue, 28 May 2019 09:11:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVY8b-0001ms-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 09:11:18 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5831C91C97D14D4ADA04;
 Tue, 28 May 2019 17:11:12 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 17:11:03 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <peppe.cavallaro@st.com>, <alexandre.torgue@st.com>,
 <joabreu@synopsys.com>, <davem@davemloft.net>, <mcoquelin.stm32@gmail.com>
Subject: [PATCH net-next] net: stmmac: Fix build error without CONFIG_INET
Date: Tue, 28 May 2019 17:10:40 +0800
Message-ID: <20190528091040.20288-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_021117_430508_68CB68B0 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix gcc build error while CONFIG_INET is not set

drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.o: In function `__stmmac_test_loopback':
stmmac_selftests.c:(.text+0x8ec): undefined reference to `ip_send_check'
stmmac_selftests.c:(.text+0xacc): undefined reference to `udp4_hwcsum'

Add CONFIG_INET dependency to fix this.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 7791ad5..0b5c8d7 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -15,6 +15,7 @@ if STMMAC_ETH
 
 config STMMAC_SELFTESTS
 	bool "Support for STMMAC Selftests"
+	depends on INET
 	depends on STMMAC_ETH
 	default n
 	---help---
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
