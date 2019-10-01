Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242CBC42D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 23:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7nqCM8yftzx4V9zwb7d77+kqkiHR0QRCSElctSICq/0=; b=iIUAmsPTB8C+pe
	d9pDVGAN2jWPhuQZhCmXkn+sngeNjM1DVgympOWQtPCi1TDUALA3kEEe0u0Jdeb7TqKQWNqm7rqUl
	NaoRIYV9F703PbRaB4DV/iGiI6zSfgWx3I/soxJ2CZR8U9BgNJWOiAEdglWrqLmdzUsELoGUc4C9U
	HVzXtKphAld8ifCUNkAYCcCkSIaw5Hu3cH/huInMf3l3s6luYml5btBuofO3cuyHB/gXd8bYlDqu5
	6sIzWgfGpMLGvnuPZ2cRfN188CgvMiSExvgij+pr/4NWWd9rVroujxmeYb35KmN4cjAe2PMb01BtV
	hZ/q/Y0ZyRiuA56zU8oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFPsy-00082Y-QR; Tue, 01 Oct 2019 21:40:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFPsr-000827-WC
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 21:40:39 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63B0021855;
 Tue,  1 Oct 2019 21:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569966037;
 bh=EXOOfmyP72S6DF4GjcNc343Kct+Ec+psa0RkkWegYg8=;
 h=From:To:Cc:Subject:Date:From;
 b=H6yDzxYiIrz42md3od0CYGxSqQx7lSzoEfsymyaa+JYKVjmCENfiWBLZnlf/1grQT
 MWgbYWJVRkRRKqYWD/g0xkm5GA6SzrTJz2PFQmN/6XGKZXXul4F0Dihq2llPSob87U
 RBQK5eElaBFzxadA/etQIIPNxFJF5pg+/kCYoOSY=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux@armlinux.org.uk
Subject: [PATCH] ARM: drivers/amba: release the resource to allow for deferred
 probe
Date: Tue,  1 Oct 2019 16:40:26 -0500
Message-Id: <20191001214026.21718-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_144038_054987_9F35C06C 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: thor.thayer@linux.intel.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, p.zabel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With commit "79bdcb202a35 ARM: 8906/1: drivers/amba: add reset control to
amba bus probe", the amba bus driver needs to be deferred probe because the
reset driver is probed later than the amba bus. However with a deferred
probe, the call to request_resource() in the driver returns -EBUSY. The
reason is the driver has not released the resource from the previous probe
attempt.

This patch releases the resource when amba_device_try_add() returns
-EPROBE_DEFER. This allows the deferred probe to continue.

Fixes: 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control to
amba bus probe")
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 drivers/amba/bus.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index f39f075abff9..f246b847c991 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -535,6 +535,7 @@ int amba_device_add(struct amba_device *dev, struct resource *parent)
 
 	if (ret == -EPROBE_DEFER) {
 		struct deferred_device *ddev;
+		release_resource(&dev->res);
 
 		ddev = kmalloc(sizeof(*ddev), GFP_KERNEL);
 		if (!ddev)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
