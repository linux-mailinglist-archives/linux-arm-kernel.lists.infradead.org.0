Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410EC438AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/vrxs/+8MDJYQIjDtIr1fvajJPUF4IrenVxiCdCv+M=; b=i5gxl3LF/1uiJo
	EVrXU5lBoT4E+ehjQbGnaj/Tsb9Gdwi0jP2FDrXRL7qXPQVyFHSc5Tuj9/pRUi30rfTw2E1Hggk62
	CgorqV9xQ83m9BQdJX2w7UGcCGIVdbOrpeDj9mAFBX5jgOsiNWpZgws8n6Hr5Q9mzrtkFJ95PTsZN
	UPBxIz/KSKG3fC+JFgaV3trSPPloqX53Th4g1G0orTmEzfJQOtHfTRra+wVNDaEMH37gz6t41h0UB
	NjiY0PyzCd0rg4uWrbz2ZP9wAGYWeT/yciCcCVk68lBgYGVV9klQHr8QLZA7qZ/9T0am+8UqxrCsZ
	vB8YNSP7JUQdxCNpD3Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRKU-00081B-Eg; Thu, 13 Jun 2019 15:07:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRHV-0004Es-0t
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ta/6q8vbVvmUuueQYgqLC/p+c/Ny9q8WzZOpMvtf6x0=; b=UFtM/fJ2jjodY3nbXfa8dt35yZ
 HOnwKFQgTEz9HnBtVYPKGTGrjT6bYBeLV67dgR1J29UWYexI8kKE2J9dFna8S0vQ4h6lkDKJYVtuq
 N03WCAe7XqEwkvk4zNlhhOhF59/SJp19CIbXz6LoG7xKW3gdKBoXp3kShqaSOGR4g2rX9zBM2R5/E
 62EUWL/qRAqbvJtk+T1lFMIApEbIYCqOLLQ1ou/cK7RhjRoRLS1xutynO1vYFv2iMJyyRWo+qNF5O
 3d7iaphi/Dh1mY6wpol2S5Ezti7GC8HUTYxXV5Ao8nEOYUzUlbjCiQDOUL14802uR7xFVDC50ZHHz
 MN34NITg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:35452 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRG4-0003lU-BJ; Thu, 13 Jun 2019 16:03:20 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFy-000093-UZ; Thu, 13 Jun 2019 16:03:15 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 18/18] drm/armada: no need to check parent of remote
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFy-000093-UZ@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:03:14 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080449_190567_F8B8E317 
X-CRM114-Status: GOOD (  11.68  )
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

There's no need to check the parent of the remote device to check
whether it is available or not, the remote is the device itself.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_drv.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index 1cfabcd6a629..f1729398b1bd 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -210,17 +210,9 @@ static void armada_add_endpoints(struct device *dev,
 
 	for_each_endpoint_of_node(dev_node, ep) {
 		remote = of_graph_get_remote_port_parent(ep);
-		if (!remote || !of_device_is_available(remote)) {
-			of_node_put(remote);
-			continue;
-		} else if (!of_device_is_available(remote->parent)) {
-			dev_warn(dev, "parent device of %pOF is not available\n",
-				 remote);
-			of_node_put(remote);
-			continue;
-		}
-
-		drm_of_component_match_add(dev, match, compare_of, remote);
+		if (remote && of_device_is_available(remote))
+			drm_of_component_match_add(dev, match, compare_of,
+						   remote);
 		of_node_put(remote);
 	}
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
