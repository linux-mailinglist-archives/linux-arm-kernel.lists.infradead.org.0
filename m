Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402EB4BFD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TgNiRp4hW6FT4aXaqE1sSfzXPdhtc83qvYHIEOl67Ro=; b=PXVrbF8D4qwHObD8T1+TNYB9VU
	a5W+e9416NigwaSDywicASaizLtBPpUQpUfOzGlDy2s6TeXfbAV3hJ2cKZpr0h8HTenvGaoVlR66G
	2famDpP6Dlxt7aURP/HlpWpbPfvKMfa/RjmihzqQ5gwNjvVEMovO0HqK9yobsDhV+dTrSBWtA2uDg
	Hw3WEqainiMUkAcKPdnB1cyai7Vy8/DtAHPDPsV4r+/v/SJkot627HMAGonG/5+cYOtZQh7uszAxK
	/kJnIxmGcV17XhNpFE10u/DlVpklHHXT0a0aqF3+sp1T5dhK2OVTq0j4CWgDMryGKBn+k1tCDltu/
	AbioRTqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeYk-0000Sq-UM; Wed, 19 Jun 2019 17:39:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePb-00005E-Df
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:26 +0000
Received: by mail-pl1-x641.google.com with SMTP id i2so103385plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rpOaaV9d83fotu4AxFyBdRWe6I4s8YAmRXD80aehfeA=;
 b=FJuV0vl27EOU1IxvFJ4+4/jLTgAKKtWOP5whZm0/yGGx0+7aom/eRNlo38YEwTXnVd
 lqsu2KtUjDiSRWr83Gw1NZa95h3CGUQUnrOYtPB8DGXpth1X0MGm/LKPHOSjdn7mcR5q
 Czssslwyute8s8xYAkB4hmiQnlXq7/EbHcagesCXnT+SkC5TH2lJ4C5C/hVovsnJGBzK
 9th4A6+B57PmYjNYK1igv6gRsZWOpw7L9XbbbowqZsoQnZByGZhZEmXH1Rdgf5frKFTS
 sP7itO9dHMtz9xeXjCyMZK8VoAp4scton3SZ+sACR7ELiypFhrCN69d+s7Ccg2xQK94j
 QKZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rpOaaV9d83fotu4AxFyBdRWe6I4s8YAmRXD80aehfeA=;
 b=a7dlhArvtWTJN4ae9wwcibnV0zEUtBmAbCpyjOTyVEKXLMZ9YhmTLxsgM8NUodQ+QF
 9fnEt0Wvt3naxlEov+56F0dmN0TxU0rzhGtREByg2mmVLbHCe7KSNdxEbq4P/hTfZkys
 QmHyxyjvyzTOiXFpLYNSrvYDhwA0gbXKCY8cGvdWd6ESebA8IeXwY9ZWr+8G865tTXin
 SYHjhbhfjJNSnNnUQGukonY4Jh+e3FhplkbxZi34cjgUbjau9tI2JC1acfHNoavk8f+Z
 CyBOr2KltvnnjLyQP/xamZa1hCxMzvSerVFsVrzk7ENLHfh0PjzuGCM5s+ifaDrTEwln
 JRnw==
X-Gm-Message-State: APjAAAWVTPkHjjUKt76SB3AvkyXFuaRnmM2CC8brA4ORzm8mKafqGnPW
 Msc4at6YeTGl7NOxGXisoQJhqg==
X-Google-Smtp-Source: APXvYqw8GvVBCUshAybFpNxSi0vSQGCXJwI4tIOzLoSfv2YXZCgtQLvOjNdCtLGBezmLUru9dnGg+g==
X-Received: by 2002:a17:902:f01:: with SMTP id
 1mr119544511ply.170.1560965418518; 
 Wed, 19 Jun 2019 10:30:18 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:18 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 29/45] coresight: platform: Use fwnode handle for device search
Date: Wed, 19 Jun 2019 11:29:33 -0600
Message-Id: <20190619172949.4522-30-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103019_505547_67AB16E1 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

We match of_node while searching for a device. Make this
more generic in preparation for the ACPI support by using
fwnode_handle.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 53d6eed44a20..4394095ad224 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -36,14 +36,13 @@ static int coresight_alloc_conns(struct device *dev,
 	return 0;
 }
 
-#ifdef CONFIG_OF
-static int of_dev_node_match(struct device *dev, void *data)
+static int coresight_device_fwnode_match(struct device *dev, void *fwnode)
 {
-	return dev->of_node == data;
+	return dev_fwnode(dev) == fwnode;
 }
 
 static struct device *
-of_coresight_get_endpoint_device(struct device_node *endpoint)
+coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
 {
 	struct device *dev = NULL;
 
@@ -52,7 +51,7 @@ of_coresight_get_endpoint_device(struct device_node *endpoint)
 	 * platform bus.
 	 */
 	dev = bus_find_device(&platform_bus_type, NULL,
-			      endpoint, of_dev_node_match);
+			      fwnode, coresight_device_fwnode_match);
 	if (dev)
 		return dev;
 
@@ -61,9 +60,10 @@ of_coresight_get_endpoint_device(struct device_node *endpoint)
 	 * looking for the device that matches the endpoint node.
 	 */
 	return bus_find_device(&amba_bustype, NULL,
-			       endpoint, of_dev_node_match);
+			       fwnode, coresight_device_fwnode_match);
 }
 
+#ifdef CONFIG_OF
 static inline bool of_coresight_legacy_ep_is_input(struct device_node *ep)
 {
 	return of_property_read_bool(ep, "slave-mode");
@@ -191,6 +191,7 @@ static int of_coresight_parse_endpoint(struct device *dev,
 	struct device_node *rparent = NULL;
 	struct device_node *rep = NULL;
 	struct device *rdev = NULL;
+	struct fwnode_handle *rdev_fwnode;
 
 	do {
 		/* Parse the local port details */
@@ -209,8 +210,9 @@ static int of_coresight_parse_endpoint(struct device *dev,
 		if (of_graph_parse_endpoint(rep, &rendpoint))
 			break;
 
+		rdev_fwnode = of_fwnode_handle(rparent);
 		/* If the remote device is not available, defer probing */
-		rdev = of_coresight_get_endpoint_device(rparent);
+		rdev = coresight_find_device_by_fwnode(rdev_fwnode);
 		if (!rdev) {
 			ret = -EPROBE_DEFER;
 			break;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
