Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48426A78B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 04:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qK3sNtlh5mWeYzMuz9c+ZAFeJYSBm4XzSpqHXtxpC64=; b=FAcj++5vIkZjK/
	9f8u9AXPTNEAQn4awN8lh/kLB+BhkPJy3/4VhOdimNoN0qLKUV19lXMAbTEUG1S7X+6bYJyrZBOlu
	YvC2tWLABJTORX2Fdm31upd4GuHG9tVdMhLsoOrHrC2S8BIOvV65q1ACVddMmFG5WrA5wjwqtFlO9
	12LHKGdcBHkYxP7NpTRHG/p3nPdp/+aJ4ADxjn+oVi03reu70bXLoe6OH9TMG0e2p0l6m4FT9/0op
	5rDVc1qBOAGbBnooYplVgovJz9SKts7ddpQ/+H4mhs+kcg2x/fqkjxxXvJrfCrvg1hcgkfXkF8RES
	3SZPuxeJOafQRbfSjb+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Kuw-0001Ot-KE; Wed, 04 Sep 2019 02:21:06 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Kuj-0001Ns-7k
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 02:20:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id DD8344FF;
 Tue,  3 Sep 2019 22:20:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Sep 2019 22:20:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=0OPawNPcXoaz6itJ9OLuJZ+eo+
 4zgp53fsik4iX6Y5A=; b=bUpB5qhwONHVcB/LkxyhBPPs4qTdJBZXSmbrFxSTcJ
 92TXrH1wYZdpRiyTtVwvkeN2/a2T6uKm6Ze5w/QS9G+sZqri/5lWjOnhzTwe2TCD
 TNE72RGJAKufDF0PB/X94IwTcae53qa+fM++DXwP+0bCzRbQw2aoSQ1GTO5EeRQb
 IeLdKmKacwvuNr/bVUaAUrPcyNAxk6FWd54Znxrm+mZZbJxJWPz4TTKlI0EnH8Fl
 txsXwYJehSrzOWHAsTK6dR6DdO8YXzO0NvCislhISfpF6GTlmBVrKmVZ0o6HvZ+T
 oV+LLOF7qWZ0FyowDQEJI/xc0wNJdG6Z9m7Tqz8JN4/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=0OPawNPcXoaz6itJ9
 OLuJZ+eo+4zgp53fsik4iX6Y5A=; b=aHkwBUfdVOz919lRbW3s0C/fAMdKFV0x+
 ZYP7AEM7cT3YuXCYRrLos9Y38ihlmfhzk4PlRWDLbXS0++rzTR+/K9+pUJM5koTy
 Kc2/CmKDDjap69Tnr+QbEJcA+cJne37Gzv/p0VLnrw7j71Z81wyFNoAsbISsfwwM
 92cNKXz+y1QSM6yS5e5/zZBllzINa8gp8kKPiIBIKHbKfX9SzVe+rjyUpEB8xCAO
 Gu/ciU3unWSKrQeBmoCiZWXUUXCtQJdMRxuOTsTrJ1mfVeT/PXQVudFjevT3QYJ8
 +CCeRrmGzKaMkg361tnyHnUc2xEphCHjdUtd3D9K/CSuuWgW0iq8g==
X-ME-Sender: <xms:fR9vXThOywdquuTHqB5WK9u6cRRLdroK8yAz90O8nChsB55IXSnF2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejgedgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehoiihlrggsshdrohhrghenucfkphepvddtfedrhe
 ejrddvudehrddujeeknecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:fR9vXYYdpaVaMDvBDQYcEqe0CJQD0Tk-oF7coHtC6EAZDDGORCzPWg>
 <xmx:fR9vXfIr6kfZHrZqcDvsdkQDj8ZjCX2aZNgMKexQM0LMI_OxYZC5Fg>
 <xmx:fR9vXVvztQC8bxljLHw2O96MWiEZ_r-uqKEUJRicw_EPOPKUK6IELA>
 <xmx:fh9vXRVnebMtj_QQWeJhX8aiIv66Y3St9pbVADOY8yxyWnhEyXl0hQ>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4E4F2D6005B;
 Tue,  3 Sep 2019 22:20:42 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v3] mmc: sdhci-of-aspeed: Depend on CONFIG_OF_ADDRESS
Date: Wed,  4 Sep 2019 11:51:20 +0930
Message-Id: <20190904022120.4174-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_192053_321088_0B505D43 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ulf.hansson@linaro.org, kbuild test robot <lkp@intel.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 openbmc@lists.ozlabs.org, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Resolves the following build error reported by the 0-day bot:

    ERROR: "of_platform_device_create" [drivers/mmc/host/sdhci-of-aspeed.ko] undefined!

SPARC does not set CONFIG_OF_ADDRESS so the symbol is missing. Depend on
CONFIG_OF_ADDRESS to ensure the driver is only built for supported
configurations.

Fixes: 2d28dbe042f4 ("mmc: sdhci-of-aspeed: Add support for the ASPEED SD controller")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
v2 was a series of 4 patches, three of which were applied leaving this build
fix to be reworked. The v2 series can be found here:

https://patchwork.ozlabs.org/cover/1156457/

 drivers/mmc/host/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 0f8a230de2f3..3a52f5703286 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -157,7 +157,7 @@ config MMC_SDHCI_OF_ARASAN
 config MMC_SDHCI_OF_ASPEED
 	tristate "SDHCI OF support for the ASPEED SDHCI controller"
 	depends on MMC_SDHCI_PLTFM
-	depends on OF
+	depends on OF && OF_ADDRESS
 	help
 	  This selects the ASPEED Secure Digital Host Controller Interface.
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
