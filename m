Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397D81DC35F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 02:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hCgo/IDvHQ5mvWU3XWEfEOWgvy86cddj7mXhacl3fE=; b=SXfyJP/RyeFqh/
	AfHMOhnO5/QBIX+axSPBmSxyJFsBxeq5tKnCg1Fgdzrqk+8ZeUo1H/fp0LD1n1LYPA5GLBbRwu28M
	LMTc6mexkLcN33prXFzFXgu+XX0+0Um9TDPHKm9bVa/4iJii+hYo7UeYptGb2iIfOXmsui5es/flC
	MyKlIKX13AH3S0nsqiJYLqIDmgx8fxR3xqsrinpMSz29qbsKfk7Buz6olZInce6N/MKQOhexa/elx
	yKjjOSt16YAf9B89qlTscCtLKMBckPplyPcz7RJsz1ZXAzLLG0OzHOXskkNiq5BcqUxZgoFTKjg/3
	vNZZGURXB8JVADVcm2DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYn7-0007PH-FB; Thu, 21 May 2020 00:10:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYmx-0007NR-52
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 00:10:20 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04L0ADbv039943;
 Wed, 20 May 2020 19:10:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590019813;
 bh=ST8Yem8ialn5243k7YW5yffQxZOhgWPUoOpWLgWxyRw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=n5JQIU7UxlsY3NiSOI8nNHRycPR0E7RssEID8o8Vlhkzd2RH0zm+qlXm5YU6NxBZ7
 2UrA9QiJU5E0sLHe9XF6/tSveVbY0pZW1kfgFhnaSveg9YBwExPch5wfCTMkKtyG/I
 UGsUQILAlsEY4tjmEseKrk0cYOAm7VeY/wLqhM9o=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04L0ADaR053697
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 19:10:13 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 19:10:13 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 19:10:13 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04L0ADTr065310;
 Wed, 20 May 2020 19:10:13 -0500
Received: from localhost ([10.250.48.148])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 04L0ACKH084879;
 Wed, 20 May 2020 19:10:12 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v2 1/4] remoteproc: Introduce rproc_of_parse_firmware() helper
Date: Wed, 20 May 2020 19:10:03 -0500
Message-ID: <20200521001006.2725-2-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200521001006.2725-1-s-anna@ti.com>
References: <20200521001006.2725-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_171019_270635_DC14DA5F 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new helper function rproc_of_parse_firmware() to the remoteproc
core that can be used by various remoteproc drivers to look up the
the "firmware-name" property from a rproc device node. This property
is already being used by multiple drivers, so this helper can avoid
repeating equivalent code in remoteproc drivers.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2: New patch

 drivers/remoteproc/remoteproc_core.c     | 23 +++++++++++++++++++++++
 drivers/remoteproc/remoteproc_internal.h |  2 ++
 2 files changed, 25 insertions(+)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 9f04c30c4aaf..c458b218d524 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1034,6 +1034,29 @@ rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
 }
 EXPORT_SYMBOL(rproc_of_resm_mem_entry_init);
 
+/**
+ * rproc_of_parse_firmware() - parse and return the firmware-name
+ * @dev: pointer on device struct representing a rproc
+ * @index: index to use for the firmware-name retrieval
+ * @fw_name: pointer to a character string, in which the firmware
+ *           name is returned on success and unmodified otherwise.
+ *
+ * This is an OF helper function that parses a device's DT node for
+ * the "firmware-name" property and returns the firmware name pointer
+ * in @fw_name on success.
+ *
+ * Return: 0 on success, or an appropriate failure.
+ */
+int rproc_of_parse_firmware(struct device *dev, int index, const char **fw_name)
+{
+	int ret;
+
+	ret = of_property_read_string_index(dev->of_node, "firmware-name",
+					    index, fw_name);
+	return ret ? ret : 0;
+}
+EXPORT_SYMBOL(rproc_of_parse_firmware);
+
 /*
  * A lookup table for resource handlers. The indices are defined in
  * enum fw_resource_type.
diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
index 4ba7cb59d3e8..e5341e91d2fc 100644
--- a/drivers/remoteproc/remoteproc_internal.h
+++ b/drivers/remoteproc/remoteproc_internal.h
@@ -28,6 +28,8 @@ struct rproc_debug_trace {
 void rproc_release(struct kref *kref);
 irqreturn_t rproc_vq_interrupt(struct rproc *rproc, int vq_id);
 void rproc_vdev_release(struct kref *ref);
+int rproc_of_parse_firmware(struct device *dev, int index,
+			    const char **fw_name);
 
 /* from remoteproc_virtio.c */
 int rproc_add_virtio_dev(struct rproc_vdev *rvdev, int id);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
