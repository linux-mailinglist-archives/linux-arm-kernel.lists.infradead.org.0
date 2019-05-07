Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F087C1626B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3g3iQudBUculHigSrd6G0vWxuFXx87wx9shRrTqo+cw=; b=Jby6vWC69YHC/0DC1Jgzz+hCf4
	cXMl9CZ4hMoFVFvELdmE9A1c025TN0Nc5/p9dzx7E98danZcbh1Hm9ltqiYJNqflEQUgzRI9CSBGw
	G3Cdfgyvn1XZMTfCLCvPDlk2AqzBp83Q3lPXuETqoXIemjxxEFSwq1SI9HEico3uxIaW97SO25ymk
	FH1YMZnuscsD+B01LCHddz6DVXB1LlIx6TABMhIkP/wiaUOq4i3TnAbVicsFY+k3YBOeveEviT2hS
	Yw6m9JZQ9GRWAklYcmPo7964ykFOYYPeFvbaU8Cs69+7eyQDMHC6cM+5icrjQAkT8Lss1Uokp7+1d
	q2C28lbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxml-0002Bn-JK; Tue, 07 May 2019 10:57:23 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxje-0005fW-Aq
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28A77168F;
 Tue,  7 May 2019 03:54:10 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 E9E283F5AF; Tue,  7 May 2019 03:54:08 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 20/30] coresight: Cleanup coresight_remove_conns
Date: Tue,  7 May 2019 11:52:47 +0100
Message-Id: <1557226378-10131-21-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035410_737839_6102FAF5 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a device is unregistered, we remove all connection
references to it, by searching the connection records of
all devices in the coresight bus, via coresight_remove_conns.
We could avoid searching if this device doesn't have an input
port (e.g, a source). Also document the purpose of the function.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 04b5d3c..068bd2f 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1096,10 +1096,21 @@ static int coresight_remove_match(struct device *dev, void *data)
 	return 0;
 }
 
+/*
+ * coresight_remove_conns - Remove references to this given devices
+ * from the connections of other devices.
+ */
 static void coresight_remove_conns(struct coresight_device *csdev)
 {
-	bus_for_each_dev(&coresight_bustype, NULL,
-			 csdev, coresight_remove_match);
+	/*
+	 * Another device will point to this device only if there is
+	 * an output port connected to this one. i.e, if the device
+	 * doesn't have at least one input port, there is no point
+	 * in searching all the devices.
+	 */
+	if (csdev->nr_inport)
+		bus_for_each_dev(&coresight_bustype, NULL,
+				 csdev, coresight_remove_match);
 }
 
 /**
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
