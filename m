Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C7572065
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 22:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J+KsnEdqAPvlqt61DOtgrgDcj+Paa2hWyaSof5jCu8M=; b=e49ZoGSSBRncAT
	RADwfxu8EqgwkKyGCI81vbzQaAVxidh2uiu1LzxthE25uqWxNKTCAI5Gyg6RLaTvKeapkkmHXxWAj
	2iAVxvxW02bkBgEGMrEAkdYfAtnSbAYBYz7yktsEeKl3DJqDMZU0bjaOkLvQvx1gR1133zuzQAc+9
	//LpahIPb5Mdf7l3ISZNOZQB+26ydD1lOJCRzqgVG1GxgB1CS4GTz0xrWIDsgF4YN3cuDcr/xxTlf
	1+54vUJlnuxbXtcUYIqGn1JVEy1zgwHI1g4T7fMgRBI7gutEi34PpXRaQwiWyLa28ErntIuYZlSkZ
	82yBpBHHQ6UDfqXD6y9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq113-0007v0-TY; Tue, 23 Jul 2019 20:04:05 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq10p-0007sd-Ir
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 20:03:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 13:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="197248108"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jul 2019 13:03:45 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id DDC9981; Tue, 23 Jul 2019 23:03:44 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sunil Goutham <sgoutham@cavium.com>, Robert Richter <rric@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org
Subject: [PATCH v1] net: thunderx: Use fwnode_get_mac_address()
Date: Tue, 23 Jul 2019 23:03:43 +0300
Message-Id: <20190723200344.69864-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_130351_743378_43FB1840 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the custom implementation with fwnode_get_mac_address,
which works on both DT and ACPI platforms.

While here, replace memcpy() by ether_addr_copy().

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 .../net/ethernet/cavium/thunder/thunder_bgx.c  | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
index ad22554857bf..acb016834f04 100644
--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
@@ -1381,24 +1381,18 @@ static int acpi_get_mac_address(struct device *dev, struct acpi_device *adev,
 				u8 *dst)
 {
 	u8 mac[ETH_ALEN];
-	int ret;
+	u8 *addr;
 
-	ret = fwnode_property_read_u8_array(acpi_fwnode_handle(adev),
-					    "mac-address", mac, ETH_ALEN);
-	if (ret)
-		goto out;
-
-	if (!is_valid_ether_addr(mac)) {
+	addr = fwnode_get_mac_address(acpi_fwnode_handle(adev), mac, ETH_ALEN);
+	if (!addr) {
 		dev_err(dev, "MAC address invalid: %pM\n", mac);
-		ret = -EINVAL;
-		goto out;
+		return -EINVAL;
 	}
 
 	dev_info(dev, "MAC address set to: %pM\n", mac);
 
-	memcpy(dst, mac, ETH_ALEN);
-out:
-	return ret;
+	ether_addr_copy(dst, mac);
+	return 0;
 }
 
 /* Currently only sets the MAC address. */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
