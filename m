Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B8F118BBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=trSlDv5/x6CWVOtkXyLYe8oIlUMylAHNxOpZHFgpYLM=; b=ZMZxybmUSzLhT3q/zLZyNhLCMg
	1p5P/IHQasah2W0GMoU7viY9dMOlxt5wtpalaQusezQlvTpnNcmd3KlrnjYc3bFR8gp1f9IX2yI7k
	lrQfKVQ0GF/KcRWTzflYVB5OOBB6fYWCuh7yDpWjMaIVegrNZhuNZsyIP3YhGIg8gLyBZmuIs1WxB
	mry4T/bRLB7BrDXrI24K+hyzJO2mScGb7EVWnsmsnvl5pHOWdPtT/ZRztLDbAg0Y79+q8PzMPBDYq
	Gsf4ZEy5jh4K9B8nIlp4DUylzofhkwYVA1/t2R77XbAkxxdkFmGqB1W0wZw6mhOf3QC52syXQKBJJ
	o8Mtj7UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegwH-0000sP-CY; Tue, 10 Dec 2019 14:56:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtx-00066o-8H
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C15AA328;
 Tue, 10 Dec 2019 06:54:12 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1E95E3F67D;
 Tue, 10 Dec 2019 06:54:12 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 09/15] firmware: arm_scmi: Add scmi protocol version and id
 device attributes
Date: Tue, 10 Dec 2019 14:53:39 +0000
Message-Id: <20191210145345.11616-10-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210145345.11616-1-sudeep.holla@arm.com>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065413_482640_DAF8EFE6 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linux kernel bus driver management layer provides way to add set of
default attributes of the devices on the bus. Using the same, let's add
the scmi per protocol version and id attributes to the sysfs.

It helps to identify the individual protocol details from the sysfs
entries similar to the SCMI protocol and firmware version.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/bus.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index f619da2634a6..ed0ed02f7158 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -92,11 +92,38 @@ static int scmi_dev_remove(struct device *dev)
 	return 0;
 }

+static ssize_t protocol_version_show(struct device *dev,
+				     struct device_attribute *attr, char *buf)
+{
+	struct scmi_device *scmi_dev = to_scmi_dev(dev);
+
+	return sprintf(buf, "%u.%u\n", PROTOCOL_REV_MAJOR(scmi_dev->version),
+		       PROTOCOL_REV_MINOR(scmi_dev->version));
+}
+static DEVICE_ATTR_RO(protocol_version);
+
+static ssize_t protocol_id_show(struct device *dev,
+				struct device_attribute *attr, char *buf)
+{
+	struct scmi_device *scmi_dev = to_scmi_dev(dev);
+
+	return sprintf(buf, "%u\n", scmi_dev->protocol_id);
+}
+static DEVICE_ATTR_RO(protocol_id);
+
+static struct attribute *versions_attrs[] = {
+	&dev_attr_protocol_version.attr,
+	&dev_attr_protocol_id.attr,
+	NULL,
+};
+ATTRIBUTE_GROUPS(versions);
+
 static struct bus_type scmi_bus_type = {
 	.name =	"scmi_protocol",
 	.match = scmi_dev_match,
 	.probe = scmi_dev_probe,
 	.remove = scmi_dev_remove,
+	.dev_groups = versions_groups,
 };

 int scmi_driver_register(struct scmi_driver *driver, struct module *owner,
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
