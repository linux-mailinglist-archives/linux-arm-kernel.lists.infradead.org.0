Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E906848353
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OCmKm0WKdTTbSoEBibKEJlJIQtqusNcpYIFZyOnjkBY=; b=dzl8UE8oxHULtu
	q211wOQh9Od90hGTgsAP93X64MjkLqWDo05MxX7i9W/5lNVXz/dklp2ZCM65o59QpyyH1U9Kf8BGA
	Q8XGNjR/HiLXo0/ndmxWhd/uBvhuTtvsfsPWX0BkZKGDIsK7f+l1ESjVuePbIpSiRoHEp7miF7NRz
	Uon4XIgXIxgX3rhmlKaSl0tTEYdgszNRgt5JAoBg2PuRSuQd5AbNV3d8WXeoeDpDSFfmkdxtkYWa5
	g6bvTN2d7Bbi/YVDah3nMKesYhvIzy6HIITYWZT2s1LO1cVmCLeA7zteQ54dxWGqiDV0KiyvvL9TY
	D2aC3pisqyUl7TOBKvmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrEP-0008VV-Av; Mon, 17 Jun 2019 12:59:29 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrEG-0008V1-3k
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:59:21 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M7aqD-1hi5Tv2z0v-007yoG; Mon, 17 Jun 2019 14:59:10 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH] coresight: platform: add OF/APCI dependency
Date: Mon, 17 Jun 2019 14:58:53 +0200
Message-Id: <20190617125908.1674177-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:r/0hHafrBCppjYQNVu+1mD3eJ6YmngQjlW/+xUHtbAPKwuxS3Qx
 nZBCpWPQCl4eOcffBSVdqrI12pu0iPjKkoHlB6z8bV2mxMrKGes9t8wxdzX6ErODzNxdSY1
 +X9SaGzIjMa25+R5c69d/fft6lnZMot+O+VNYm29YO/0ZFy5RMUqQzQ1iFYatF48GmeLolv
 8NsK0dvpOumD8022xjHsg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sN8TpRPEG88=:xqhx/AVla85jg89VvfExI5
 HuovXWfErDB6joo8/rCwqnViHA1Edahy7OdakVFAM1rJFEi9pPtH1TeaI76SfZ+GKyOfSjvlm
 oM+ernZo3JvwOhLi8sr3oUJ9QJCSCXinNs1FORjqWl/IeG9SZmjCh7Y/dyVWZ9wIR0eWB1Vfs
 3Jpm/34aEGzGRzEfbTtfTXccAndkIImMmBQE1hzDKzzYOkhGZwgRG+/EvMNFDQg+S1hRYNEah
 A1g0TNVzsiuzQgkgNh5LaqEmnnB732OzZif1kiVH20C7FDRjTvxRroSUV69FrZ+TH5a2VnntC
 lT2DlRjnjR998tC1CIP+5BRTFCKTiBYfXnEOYR5IXfyjAb9W1zKGriwacA+BzzJWkPOm8DjS8
 7mrjZ/QSQ2RFnwJBBcXJOtkihcwJtIfxJ9KC8jh+yMqgLyMmTEjKZhxBGZKVH3U+EAFHKXoeW
 4MICZtPsg6Ui2hZRrnqVn3k98GZzrzFx6BWyadPNgAN5PjkzRD0xd6AbNAa+DA6gkAyW2ucHc
 0pay8OJwotOa/roLwldvYYYliYA7H/XBQHmBM6sV4WsW9QIqm9RhfJHJaoyF/9us+NfiejG87
 w3AS3RPq+VVTB5eZk4xbb4/zh7PWc/3R3qvXODth3ydD+IKlMLNrkaCRVtx9WYKk2V7wwwBsB
 LAif0+Oje8ESKtUQ7oNLvvlVv3YFVlQIPhC2t41/uI73q/6JA5HQSehViqntrxK9HJqwHLYl6
 MAV2JQNWCt8QmwXCM+x4RveIgpSxBeBU9qfzTw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_055920_447258_12C11145 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When neither CONFIG_OF nor CONFIG_ACPI are set, we get a harmless
build warning:

drivers/hwtracing/coresight/coresight-platform.c:26:12: error: unused function 'coresight_alloc_conns'
      [-Werror,-Wunused-function]
static int coresight_alloc_conns(struct device *dev,
           ^
drivers/hwtracing/coresight/coresight-platform.c:46:1: error: unused function 'coresight_find_device_by_fwnode'
      [-Werror,-Wunused-function]
coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)

As the code is useless in that configuration anyway, just add
a Kconfig dependency that only allows building when at least
one of the two is set.

This should not hinder compile-testing, as CONFIG_OF can be
enabled on any architecture.

Fixes: ac0e232c12f0 ("coresight: platform: Use fwnode handle for device search")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/hwtracing/coresight/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
index 5487d4a1abc2..14638db4991d 100644
--- a/drivers/hwtracing/coresight/Kconfig
+++ b/drivers/hwtracing/coresight/Kconfig
@@ -4,6 +4,7 @@
 #
 menuconfig CORESIGHT
 	bool "CoreSight Tracing Support"
+	depends on OF || ACPI
 	select ARM_AMBA
 	select PERF_EVENTS
 	help
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
