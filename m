Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8E4438A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VK9iDPGuu62KblCszeDffmXV5v2g2xmJxnX3tsI8AY=; b=pY8cJmoHBKImEo
	zwBfAEzc0hLszO3mg1HZi3VNh7z+FKi/9C5gnFeIFtV3MbL0KmqaJIXAXEu517B4hwWb/VFHozdlD
	gqho1neF/e6wkv0mKfMPm64QHJle/v45Wy6hfUXhd9Hbdzuhq8EKV/zGL/eyUjw586thH7rZMmxUb
	O9RLT5iPGcIvC0Aa4s/FZqKwY7eErDcTvoWjjGYRqafJfcOWb3PM87fdrjoutZZDx6Ej86NooAnA+
	mE9c90t8hlxXxWtuOddZJVnVRyo/OlHVY6xHDuaSzsfXciCJZd2GyBQ/iYZOhK6dwJ5GG0G/HFoK+
	AKLGGn8Mnw6RS0IGJqxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRKD-0007kd-8K; Thu, 13 Jun 2019 15:07:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRHM-00045O-Oj
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:04:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h+zQfoXGEdU88esHi4R2Nu34yF6Qen433V86RQonshc=; b=lsaeHZmsZOJVfBU/UYleDvTYH7
 X17A4x2Z+4DdrY4Fu0ssyiOliUIZV2IqPblHYIyDyz1mp8Mi3JMJ0ElnMqeyGDT9JJ2XEm+rGatU+
 yZLbZuUMk45XAU/S4G2GuG2kC0sY/EBPxSd3HhCWKomYap080BGCTvh9ffjtc0lpkQCLOfEzcptSv
 K/G6i77HN6MZoYReUJzptf+chnOLPWECZGeLTbND1vu1mKHQTw7s8/Dxdq6YhQ9Mnh3lb1H90jBam
 HvGusaEM0qpVNRu2i425665o53o8S+9p/STx9ckEbsW9MsYdan5SEouBDwnlJgXArloiyJW9oZiZ7
 eehYY3pw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:35450 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFz-0003lL-Ts; Thu, 13 Jun 2019 16:03:16 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFt-00008w-Qe; Thu, 13 Jun 2019 16:03:09 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 17/18] drm/armada: use for_each_endpoint_of_node() to walk
 crtc endpoints
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFt-00008w-Qe@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:03:09 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080440_922870_EC69F494 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than having a nested set of for_each_child_of_node() walkers,
use the graph walker to iterate through the endpoints for CRTCs.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_drv.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index 05fab5cb5c2d..1cfabcd6a629 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -204,11 +204,11 @@ static int compare_dev_name(struct device *dev, void *data)
 }
 
 static void armada_add_endpoints(struct device *dev,
-	struct component_match **match, struct device_node *port)
+	struct component_match **match, struct device_node *dev_node)
 {
 	struct device_node *ep, *remote;
 
-	for_each_child_of_node(port, ep) {
+	for_each_endpoint_of_node(dev_node, ep) {
 		remote = of_graph_get_remote_port_parent(ep);
 		if (!remote || !of_device_is_available(remote)) {
 			of_node_put(remote);
@@ -242,7 +242,6 @@ static int armada_drm_probe(struct platform_device *pdev)
 
 	if (dev->platform_data) {
 		char **devices = dev->platform_data;
-		struct device_node *port;
 		struct device *d;
 		int i;
 
@@ -258,10 +257,8 @@ static int armada_drm_probe(struct platform_device *pdev)
 		for (i = 0; devices[i]; i++) {
 			d = bus_find_device_by_name(&platform_bus_type, NULL,
 						    devices[i]);
-			if (d && d->of_node) {
-				for_each_child_of_node(d->of_node, port)
-					armada_add_endpoints(dev, &match, port);
-			}
+			if (d && d->of_node)
+				armada_add_endpoints(dev, &match, d->of_node);
 			put_device(d);
 		}
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
