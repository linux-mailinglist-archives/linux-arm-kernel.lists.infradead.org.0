Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A1C10E51C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 05:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kdm0h0f3UpOAV1BB/s/2vSfqOmYCc9P+1bNjOcXqYIE=; b=egTzJdDWlMDUYx
	mf2OWdAq7IGF4uUFw+taSsTBU67fV21MnNHxshIS9IOUL6U195apNQ62sithFh/jWmxiaMW/HNQTS
	QogMjVTNuOPhH+Dcf39qva5J1xrkeY/CSJG+mJD/6qGnDZRQK8/SHrQpbuM/BOVcI5G78lglR0ZuF
	ClGZ42F0IKf2uqDztQi8wquO0LCD9xSejDLAz2vPqDp84LdOzGfzAMXsoZTzLX8B3MTHeWqJTAUTV
	DAtekfXwxvW9xBuDdvBnGt8wUz35t1uK+1HNrL2pdAWCVvqyVf3G7PPYL3S/8WWBjXXVRUH5BO0d7
	v9fVaXT0b6DPukJdXNtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibdXM-0006n6-0u; Mon, 02 Dec 2019 04:42:16 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibdXF-0006mW-6J
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 04:42:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id F358822486;
 Sun,  1 Dec 2019 23:42:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 01 Dec 2019 23:42:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=IKA+jd7OY4n+Q/wgyh1srRVYoa
 AqL85S33bS34sBvP4=; b=Iwzb7B00DBvxx5xICJBKsN+3qEJlfBN+Zgpig4FU9P
 hkKMYOJdA8et+ruDutI8Bd3apgwtu1++g8Pt4jjkulMM02wUmGeKALE121z+uZSf
 xfriG05wVFCd+ibtIzFMk2pSf4fkljG9tmBgunaWd22Hpydvxtavac0Pid6c7Dgk
 21vQMqcvGmgqapZzLmyyJa5pFHJ2esknxI1Rgh8/WYgnkA3b85ZspUsSoJ1VGHAs
 ZpVZa+50IBTy+d7P8c1+mL5tnL/W2GnLxoS7asJDDhLrcFHF35EsYQRxg439noZ+
 Xauy9Q7zy1nsF6cTTCtUX+ZgJw1cOhNFwbJwFpJQqv0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=IKA+jd7OY4n+Q/wgy
 h1srRVYoaAqL85S33bS34sBvP4=; b=xycrquaqo9dcSLsNomUgVK2uQVQeO/2FZ
 wnnzuT2G02A2ShIyAu1UXYVhHBzv+ssEqCQkJQ+Jn+I0ZGw+Cu2mUQe1CRifyxM/
 HdjmZ7BlMOM1mSGXf0JHho7LBA9r2zYXmiM/dz/WtlFJWp9rW1xgL06rTKWeJe+c
 +c8A0S2kXlZGhT8rrWKCRJ1y9RkXbAZDlCgH4NOTi11qElKhNeGrP4ry+XcB5MTJ
 V0LG/593yYCypPTvI4Ww3htGaDPun74z9Imes59vA9o1gBFjsGghI6Youu3Qkps5
 sh3c6UzUzk6wEAkwgVWpAj4PKlC9H3O6W4hPqjk9VoUbGJgacCG8w==
X-ME-Sender: <xms:G5bkXTkVZfywS2coZmyn3GmSIyxFmeqrMXcq_JI0qg6vsbdHVqEBVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:G5bkXShp0iQfF5ca8XFVQcyEVgGIDP2hlUR2oNADDSoCRqnEVjHm7A>
 <xmx:G5bkXZZMExfNIxdpAyB4nYcN45r9BNgjxOYbbw6XfLnC6upt-hrxOg>
 <xmx:G5bkXexf9CDOKyD_kT3RdFxrKUPTWfHSZ0Q7nB_h2-6dNFFNfkj9fg>
 <xmx:HJbkXQfIQrLvIOMYEnx00eHSnNJ8deaxhD7Sn2wIZUaLEBGb-W0JyQ>
Received: from localhost.localdomain (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6970530600BD;
 Sun,  1 Dec 2019 23:42:01 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: joel@jms.id.au
Subject: [PATCH] soc: aspeed: Fail probe of lpc-ctrl if reserved memory is not
 aligned
Date: Mon,  2 Dec 2019 15:13:47 +1030
Message-Id: <20191202044347.14508-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_204209_606988_B159B5EE 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Alignment is a hardware constraint of the LPC2AHB bridge, and misaligned
reserved memory will present as corrupted data.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/soc/aspeed/aspeed-lpc-ctrl.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/soc/aspeed/aspeed-lpc-ctrl.c b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
index 01ed21e8bfee..fec17948cda0 100644
--- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
+++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/log2.h>
 #include <linux/mfd/syscon.h>
 #include <linux/miscdevice.h>
 #include <linux/mm.h>
@@ -241,6 +242,18 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
 
 		lpc_ctrl->mem_size = resource_size(&resm);
 		lpc_ctrl->mem_base = resm.start;
+
+		if (!is_power_of_2(lpc_ctrl->mem_size)) {
+			dev_err(dev, "Reserved memory size must be a power of 2, got %zu\n",
+			       (size_t)lpc_ctrl->mem_size);
+			return -EINVAL;
+		}
+
+		if (!IS_ALIGNED(lpc_ctrl->mem_base, lpc_ctrl->mem_size)) {
+			dev_err(dev, "Reserved memory must be naturally aligned for size %zu\n",
+			       (size_t)lpc_ctrl->mem_size);
+			return -EINVAL;
+		}
 	}
 
 	lpc_ctrl->regmap = syscon_node_to_regmap(
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
