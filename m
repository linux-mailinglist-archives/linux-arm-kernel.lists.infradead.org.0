Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7025614BCFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:39:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mwJLawuwBw0IQ57DGdM6mKlGHUVMSBLU0GwLTWxkyQ=; b=EJtYJI1dohR22l
	Jp0jsm9vK7eFzsB6u0sps9vu6mso+twzyClxsijQYlVaEQ0B77qbVwScxVUjJkGs+lBpsXM522qj0
	tok0yar20fg6sgOSFUbVqWmw00HTl51xd5z/0PHIk9kWWzXP3ykEW50EIhkBBC5iTPZUHW6nnIQFp
	VHM2byqtEU6b/JlG7Ukbe6zAZXDH7n5SExaO8sKwo0qsD7GB+u0NwmgTjpT7F1wxQP6cn+GYr1QC9
	+GFAo+KozI/K/sC3AJ2RAA8u+fMcPXoXw7O0Mo7HJHHyNEWhR27vqX/3eFZeqLc/+TslXXz8A3PXW
	QGN+BrGoe2SwipUXnTzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSxb-0004Io-Io; Tue, 28 Jan 2020 15:39:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSwg-0003ox-Mr
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:38:32 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SFYEVV022156; Tue, 28 Jan 2020 16:38:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=AuiqSzi6bqRR1AVD2RD8ITGqmQVq3UURTqjBjuqVaMw=;
 b=wqI4Xfg+1WfvT3OegYHR9hnrIO76+F0RgnUiXSoWUnlG+Q6Awu5eEacVdOvM3chy/wMO
 AaPu/oyVBwwKqK4WeTe0uLTY75csFgKpRfL5MaBAxByGhxntmh120Hrf225qMBHwIf2G
 vuo4jNMcC5eVy/uYVv/cdf0m7f5CQSM9a5uRDEzezD9zFx3eEDSq3fJfvriwrv2XP1oy
 Hb1Z0A+d+eNocoxO2LoWyIXsJcSOcDbRaFrxjXc6zbdLKo5BZa7rIgy60hzh4BXfGqHj
 hTJBXooWUPk2rnOqRlTAVoiozbhJZhGFt5O89YDnchrXXqFl4gtQhasR0O8zEmRZpx/d 4Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrc136p54-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 16:38:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 67E18100039;
 Tue, 28 Jan 2020 16:38:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5408E2BF9CF;
 Tue, 28 Jan 2020 16:38:21 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 16:38:20
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <broonie@kernel.org>, <robh@kernel.org>, <arnd@arndb.de>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <fabio.estevam@nxp.com>, <sudeep.holla@arm.com>, <lkml@metux.net>
Subject: [PATCH v2 3/7] base: Add calls to firewall controller
Date: Tue, 28 Jan 2020 16:38:02 +0100
Message-ID: <20200128153806.7780-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200128153806.7780-1-benjamin.gaignard@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_073831_061767_F8627C87 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 loic.pallardy@st.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, stefano.stabellini@xilinx.com,
 system-dt@lists.openampproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To avoid modifying all the drivers call firewall_set_default_config
before probe to apply the configuration define in device node (if any).

When unbinding the device try to apply configuration named "unbind".

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 drivers/base/dd.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/base/dd.c b/drivers/base/dd.c
index d811e60610d3..6a2153f6b19b 100644
--- a/drivers/base/dd.c
+++ b/drivers/base/dd.c
@@ -20,6 +20,7 @@
 #include <linux/device.h>
 #include <linux/delay.h>
 #include <linux/dma-mapping.h>
+#include <linux/firewall.h>
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/kthread.h>
@@ -521,6 +522,10 @@ static int really_probe(struct device *dev, struct device_driver *drv)
 re_probe:
 	dev->driver = drv;
 
+	ret = firewall_set_default_config(dev);
+	if (ret)
+		goto firewall_failed;
+
 	/* If using pinctrl, bind pins now before probing */
 	ret = pinctrl_bind_pins(dev);
 	if (ret)
@@ -601,6 +606,8 @@ static int really_probe(struct device *dev, struct device_driver *drv)
 		blocking_notifier_call_chain(&dev->bus->p->bus_notifier,
 					     BUS_NOTIFY_DRIVER_NOT_BOUND, dev);
 pinctrl_bind_failed:
+	firewall_set_config_by_name(dev, "unbind");
+firewall_failed:
 	device_links_no_driver(dev);
 	devres_release_all(dev);
 	arch_teardown_dma_ops(dev);
@@ -1135,6 +1142,8 @@ static void __device_release_driver(struct device *dev, struct device *parent)
 
 		device_links_driver_cleanup(dev);
 
+		firewall_set_config_by_name(dev, "unbind");
+
 		devres_release_all(dev);
 		arch_teardown_dma_ops(dev);
 		dev->driver = NULL;
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
