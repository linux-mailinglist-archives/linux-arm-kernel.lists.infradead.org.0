Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682FFCC35F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 21:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IHe5kC4+uO0JUkKhJZa2Nw5MO/HbzKll8xh+ZevIGyI=; b=sKF
	39oVmv8wxtioAfAON69glQVJ9MmzxRf/VGHgBe8Tro3mBvPxfyr+gtudCx4Tg1AFa28aF9lb/g+yL
	Ety6ITF6FA4/fWljwkETpHf4UTS+M5pIr7o7GOs9uMn9mAmXL8hzb9WA6XOmDQhaUr4s2Et/xneeV
	EYWUkoRjNjw2wce1fvwkhibgq5+6ZL7Cf6DgJtyuz8fNYFnIGSOWflo/LPg/j+zl+6NohUnjPrBoK
	Mn1iSTSxu7Ljt7b1NEbiDVul4+2fhlS+SyBwF/jT8U0oAudZLRJOJIJnKGwmZilO09yYosgJTHYKY
	tvgXCGYJy4nweGVFMb3K7PuCOPPWUmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSxm-0004zp-4K; Fri, 04 Oct 2019 19:10:02 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSxb-0004zT-Pu
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 19:09:53 +0000
Received: by mail-io1-xd43.google.com with SMTP id q10so15919315iop.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 12:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7XAUCdbkHP+3qeD8IAi87BfnaeBU6yWduxm7aN24lrc=;
 b=PIZU3DOCNHkv//gcgVRRCWke4OqJTknwSMnrMGdlNMOQk5+OAk2CU4eRA34YoyeI4i
 gHzd0EfCXxavyvjfJn0MEx83fyTJBpGqHOYEwYVHvak3hPaPlD8CYK2VMCI3j6k8KkUO
 4qYEotBxrvW3HOa00czkUrEfMxl0WQVCa/f+/TEFQG2xBwyaOa+0MscWPyTZOwaG6g6Q
 Xa0RkY7Hqn/tViO/qtkRply5N8osvwqlWLW7HB5etrBY4jZGqLwS4Q1UWa1QuiSjCLqj
 bK1scbdu/XQLmH5D4kn6Zkup5bU3uv06GghskxHr+l57gDDzh5PhGchgmewNS0NDI6Pp
 qrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7XAUCdbkHP+3qeD8IAi87BfnaeBU6yWduxm7aN24lrc=;
 b=HYHFW5UEh1oRruDTQrFmbUQ5V1baV/qV7wyGpQI8hGMs9CliQ/mk4H9Ng7W0W0skVH
 GWRFVjjOvNrxKUBl06COnYZnYXCerdtYBk2AzTelCETLuiFdz2FUt8VHuvVFwzs6ZNAQ
 Aq9VVQk1FYFHkBE3rpQdDneNZ0wOjHVpGo+RpLz89Hmpd5qfKoLnmnkJaLV01xO8QBMC
 XAT0ycX4AZYbCg1Yw5zR9K9yU9v270WsZeWSvLZC6fnEV8EsLH0sBFdwjJuhe2CAeTUd
 annx7ilSlU6YK0i3H5AsHHw5mexrkTwEnCRbZ3EMPTFfoByFeeEcc6oT8C3+Ijobkj5C
 6hiQ==
X-Gm-Message-State: APjAAAXGZbw9GYwzS0y652FCFbQmUXQ9Jp2Z8g8T1pGvxEJyEY74Ob8F
 iBj+uLk6qdbCuVe1qvwUT/o=
X-Google-Smtp-Source: APXvYqxEP0qwOKKETCDmhwNirLOgrLxBuE1ywrf9+wtD9KLEnWuQcbFxVGAfRcVq1nneGNqxdqVLNQ==
X-Received: by 2002:a6b:3bc9:: with SMTP id i192mr2438459ioa.295.1570216190936; 
 Fri, 04 Oct 2019 12:09:50 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id i26sm2722087iol.84.2019.10.04.12.09.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 12:09:50 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] drm/imx: fix memory leak in imx_pd_bind
Date: Fri,  4 Oct 2019 14:09:33 -0500
Message-Id: <20191004190938.15353-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_120951_886441_70082A29 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 emamd001@umn.edu, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, smccaman@umn.edu,
 Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In imx_pd_bind, the duplicated memory for imxpd->edid via kmemdup should
be released in drm_of_find_panel_or_bridge or imx_pd_register fail.

Fixes: ebc944613567 ("drm: convert drivers to use drm_of_find_panel_or_bridge")
Fixes: 19022aaae677 ("staging: drm/imx: Add parallel display support")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/gpu/drm/imx/parallel-display.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index e7ce17503ae1..9522d2cb0ad5 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -227,14 +227,18 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
 
 	/* port@1 is the output port */
 	ret = drm_of_find_panel_or_bridge(np, 1, 0, &imxpd->panel, &imxpd->bridge);
-	if (ret && ret != -ENODEV)
+	if (ret && ret != -ENODEV) {
+		kfree(imxpd->edid);
 		return ret;
+	}
 
 	imxpd->dev = dev;
 
 	ret = imx_pd_register(drm, imxpd);
-	if (ret)
+	if (ret) {
+		kfree(imxpd->edid);
 		return ret;
+	}
 
 	dev_set_drvdata(dev, imxpd);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
