Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A486C8B5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xaW0EPMVu+4hp8BMyXg/2Uft+LmEgfIkGkNLKXaJ9lM=; b=YadX9EFE/wGiaP
	AdBWBiXAfCZJWqKD115lEtRBeVeASNqlECK/x7FC+XaFWl33yGP1/Kd1C6zoT+lGB3NBjQ69jGbvf
	oh2zNOaUjxzkJ3LQbAs4xpwvcnSMx3ni7Lu+ydNxhGcOYW7IrgpjwpWnVtQhZeADWtR9ebbSCEH97
	/B6Hhp0oHPb+r8jqZ4nfYZx2WLdjGdFU7vMKhUT584MgORFfbBCD72JXmoI2nzyc+1Oah+6wSDDgq
	DqdIzbeYuuaN1O+BV+PMyZfj8t4VZcepeQPBweaacpneMg9ki8fcqCaizJlXX4WdjWoNNe9jrM7ln
	jJIK2+/RuO8snFfjwgOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfja-0001D9-VC; Wed, 02 Oct 2019 14:36:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfjU-0001Bv-2X
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:36:01 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2066621920;
 Wed,  2 Oct 2019 14:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570026959;
 bh=Bm2O2u6t2yaiuz7SLXAiNV1/Uq8x19unELLdKvJJbww=;
 h=From:To:Cc:Subject:Date:From;
 b=oQvjJj2gdaEuB8qqxNRmNCZRGmh2CIBDlFBLog249ZqvD0j+3z1mAXtRCtQriFdAu
 TpSlphE/MQJMIKBpxYTUBRh9yebPAsIlJOikPaqaibSEC2Yqdd1yEsV67jZhqkqQ4A
 WMRNolUsKn6y4D09kwkEITpUHzrkHRXa+N95h9Sg=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux@armlinux.org.uk
Subject: [PATCHv3] ARM: drivers/amba: release and cleanup the resource to
 allow for deferred probe
Date: Wed,  2 Oct 2019 09:35:51 -0500
Message-Id: <20191002143551.32288-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_073600_135743_C7F6EAE9 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: thor.thayer@linux.intel.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, p.zabel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With commit "79bdcb202a35 ARM: 8906/1: drivers/amba: add reset control to
amba bus probe", the amba bus driver needs to be deferred probe because the
reset driver is probed later. However with a deferred probe, the call to
request_resource() in the driver returns -EBUSY. The reason is the driver
has not released the resource from the previous probe attempt.

This patch fixes how we handle the condition of EPROBE_DEFER that is returned
from getting the reset controls. For this condition, the patch will jump
to defer_probe, which will iounmap, dev_pm_domain_detach, and release the
resource.

Fixes: 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control to
amba bus probe")
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v3: jump to defer_probe where the driver will unmap and pm_detach the
    driver resource for the next probe attempt
v2: release the resource when of_reset_control_array_get_optional_shared()
    returns EPROBE_DEFER
---
 drivers/amba/bus.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index f39f075abff9..4a021b1dab3d 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -409,9 +409,12 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
 		 */
 		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
 		if (IS_ERR(rstc)) {
-			if (PTR_ERR(rstc) != -EPROBE_DEFER)
+			ret = PTR_ERR(rstc);
+			if (ret == -EPROBE_DEFER)
+				goto defer_probe;
+			else
 				dev_err(&dev->dev, "Can't get amba reset!\n");
-			return PTR_ERR(rstc);
+			return ret;
 		}
 		reset_control_deassert(rstc);
 		reset_control_put(rstc);
@@ -448,6 +451,7 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
 			ret = -ENODEV;
 	}
 
+ defer_probe:
 	iounmap(tmp);
 	dev_pm_domain_detach(&dev->dev, true);
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
