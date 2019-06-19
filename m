Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8224C1E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TgNiRp4hW6FT4aXaqE1sSfzXPdhtc83qvYHIEOl67Ro=; b=bKeTcT63pmgWzRuKF0+cr28RbG
	Nwq7whNLvxzbyHt6vyF0xEngCk4vcIMHalengAXCsbTRARkDweyYo7NGvXZt50KvjsUf5edFQjmKc
	/4c6SIQMsRqrGnh/bSG/IBb6xuRuf3+HJzAOQgvywnKxGjj6R2EXE48Q9QTyGcphO+fuBxKG7JgpM
	Zex3KZlfscAf20EEx0lFGTU2bTlyNmru7ev6OA/jHSBPby4NhZFOuAAGiI0Az225qVaJ9B3QlTZ9+
	e7XF/XRiOWlfnZU4vY58O2t1anOz8gYCkXjWWJcHqPMfNNwPU7/PcZ9Qi3o2l/PhGnNv9GyM+ny8K
	L0ubS+ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgis-0002wt-AB; Wed, 19 Jun 2019 19:58:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeD-0006VZ-8k
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:34 +0000
Received: by mail-pf1-x443.google.com with SMTP id d126so220230pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rpOaaV9d83fotu4AxFyBdRWe6I4s8YAmRXD80aehfeA=;
 b=bmP9qbeD5XbBeUp57OyrV7rSRDZKxCT98sCMhmCNt16p1xD1X9uEMfGOV3TmK1Od5o
 SVwqCvNyir0QK5UhUQ1V9X6XSghseuK/5gK3sC4RFsQXS6h3QrUZquuT0FX0gwLaKUQU
 qzMCym40dvZvExUBv3AzfbboIfXRNKzVZb3zAhyfaZnJupURk1fANFzEZxnupn9fNYpR
 Y8phHlnvXwP2nIUEy6wpsIh4vJON0gT5T1NZe3ohI8K3GAhohszkF2GMcrRz8BrqAuWx
 9AhnsCbjnlbv3sl20T9Efm6ilKNyClNpoEsMciNi5siBdKdr3d3XQLrVr33j4VY5QG2X
 dtEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rpOaaV9d83fotu4AxFyBdRWe6I4s8YAmRXD80aehfeA=;
 b=A6HsSMIjzbcZYjAYnNLZvvhVKI4RILbg3rk5rfudUiMEQmCr1EPXHlC4YPNJL/Zxqi
 M+QqLJBMZh3a5VpLw0zGLTrIzzJ+Rp084UVmraA3EmkPkq+ez26yo22nIgkoBX2G00LN
 P8T7QOBBvW79GnPRKy4Vk6wu1U6CX+ZFESwMg0VR03LovULzqqCmdSNWFJUNYss+0Stm
 9AjwD5/fzR3tU1ynobYPKwKIKWr4zMkkQcz6CgCUrrQ2lMgSKHfcjCMKajqXzvsKgW/c
 3ZSpgsLPhfWX6g6RgRHyK5nMwohqxvCBJ1CwPpEy0jWJz/iGIdf+wRZX//dlM9+t3oSv
 faeA==
X-Gm-Message-State: APjAAAUy41wsR3iGam7u5795UUhV+pmFqok+grcyZoTJ029eJeSB92ld
 AUFntk6W1M/FUAnuUb6dU0b6Jhhuu8Oz/g==
X-Google-Smtp-Source: APXvYqySwJbYU50Z8Ybidn0rVAyyocWt0yP70mmfwEIi09QwTHRveGkZLV0iY1jOw7eaZYdGkn1yUg==
X-Received: by 2002:a63:3008:: with SMTP id w8mr9388855pgw.11.1560974011869;
 Wed, 19 Jun 2019 12:53:31 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:31 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/28] coresight: platform: Use fwnode handle for device search
Date: Wed, 19 Jun 2019 13:53:02 -0600
Message-Id: <20190619195318.19254-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125333_399886_0394DC77 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
