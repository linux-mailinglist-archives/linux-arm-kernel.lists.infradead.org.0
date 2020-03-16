Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6581862C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkeeeKaKMPsdVDEnlO2JCCoFqKIC/tpRPSpntm2Nu64=; b=Micm312oOKtEnN
	/Acz3/zgKV4KKDYd7bX/pj4oUI0zpG6qQbFEm6fUxQZZE2sSiCI8txzk4WxI36nJ8gwJlaYI/S/1a
	KCaWZeRTBGNCMMG+ofDKwc3hG5Tx1yRFEH+fwhFXwRXvhNEF5QJxkGt5hQFVrBbvOmBKUeEE7KDlx
	aOoE3HVAZUNTICmmbuXxUMRuN0XYJBOtw1lXFikufHucyn3k7lwS5ym6DomXwk9NYk6Vr9tKaqvm+
	gWVZ2TkE+xp/1RNyzs5EWkGV1j2pvKRVI94nk124lkJnuzLX+Pc5iO49TfN/lX5M6MhXqLvPepsw8
	Epye92yVQp+0nU8eRFWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfgd-0002y3-GA; Mon, 16 Mar 2020 02:41:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfaL-00032P-PV
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:34:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1775E20726;
 Mon, 16 Mar 2020 02:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326073;
 bh=kj8Aiz461xZA+wkG7vkjclbH830EtJcUQuSZSLkNXdc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bpeOtpZW2pXTbmGBYPAibgopo2wgX4WP+GXgQetmq8hREdvDEiqLCT5b/hkI63lGr
 G5JednNdkG5BWn1jtK580aqwdAR02f61b3b6Xd+UxMvZW4fpn/t3xv6uLkYTcKOZ34
 ryDyYXJwiKm7flpcCOz8iA2lD09yhAl0uYjsv5sQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 18/35] drm/exynos: hdmi: don't leak enable HDMI_EN
 regulator if probe fails
Date: Sun, 15 Mar 2020 22:33:54 -0400
Message-Id: <20200316023411.1263-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316023411.1263-1-sashal@kernel.org>
References: <20200316023411.1263-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193433_933206_FBEABE31 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, linux-samsung-soc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

[ Upstream commit 3b6a9b19ab652efac7ad4c392add6f1235019568 ]

Move enabling and disabling HDMI_EN optional regulator to probe() function
to keep track on the regulator status. This fixes following warning if
probe() fails (for example when I2C DDC adapter cannot be yet gathered
due to the missing driver). This fixes following warning observed on
Arndale5250 board with multi_v7_defconfig:

[drm] Failed to get ddc i2c adapter by node
------------[ cut here ]------------
WARNING: CPU: 0 PID: 214 at drivers/regulator/core.c:2051 _regulator_put+0x16c/0x184
Modules linked in: ...
CPU: 0 PID: 214 Comm: systemd-udevd Not tainted 5.6.0-rc2-next-20200219-00040-g38af1dfafdbb #7570
Hardware name: Samsung Exynos (Flattened Device Tree)
[<c0312258>] (unwind_backtrace) from [<c030cc10>] (show_stack+0x10/0x14)
[<c030cc10>] (show_stack) from [<c0f0d3a0>] (dump_stack+0xcc/0xe0)
[<c0f0d3a0>] (dump_stack) from [<c0346a58>] (__warn+0xe0/0xf8)
[<c0346a58>] (__warn) from [<c0346b20>] (warn_slowpath_fmt+0xb0/0xb8)
[<c0346b20>] (warn_slowpath_fmt) from [<c0893f58>] (_regulator_put+0x16c/0x184)
[<c0893f58>] (_regulator_put) from [<c0893f8c>] (regulator_put+0x1c/0x2c)
[<c0893f8c>] (regulator_put) from [<c09b2664>] (release_nodes+0x17c/0x200)
[<c09b2664>] (release_nodes) from [<c09aebe8>] (really_probe+0x10c/0x350)
[<c09aebe8>] (really_probe) from [<c09aefa8>] (driver_probe_device+0x60/0x1a0)
[<c09aefa8>] (driver_probe_device) from [<c09af288>] (device_driver_attach+0x58/0x60)
[<c09af288>] (device_driver_attach) from [<c09af310>] (__driver_attach+0x80/0xbc)
[<c09af310>] (__driver_attach) from [<c09ace34>] (bus_for_each_dev+0x68/0xb4)
[<c09ace34>] (bus_for_each_dev) from [<c09ae00c>] (bus_add_driver+0x130/0x1e8)
[<c09ae00c>] (bus_add_driver) from [<c09afd98>] (driver_register+0x78/0x110)
[<c09afd98>] (driver_register) from [<bf139558>] (exynos_drm_init+0xe8/0x11c [exynosdrm])
[<bf139558>] (exynos_drm_init [exynosdrm]) from [<c0302fa8>] (do_one_initcall+0x50/0x220)
[<c0302fa8>] (do_one_initcall) from [<c03dc02c>] (do_init_module+0x60/0x210)
[<c03dc02c>] (do_init_module) from [<c03daf44>] (load_module+0x1c0c/0x2310)
[<c03daf44>] (load_module) from [<c03db85c>] (sys_finit_module+0xac/0xbc)
[<c03db85c>] (sys_finit_module) from [<c0301000>] (ret_fast_syscall+0x0/0x54)
Exception stack(0xecca3fa8 to 0xecca3ff0)
...
---[ end trace 276c91214635905c ]---

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
Signed-off-by: Inki Dae <inki.dae@samsung.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/exynos/exynos_hdmi.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_hdmi.c b/drivers/gpu/drm/exynos/exynos_hdmi.c
index 09aa73c0f2add..0073a2b3b80a2 100644
--- a/drivers/gpu/drm/exynos/exynos_hdmi.c
+++ b/drivers/gpu/drm/exynos/exynos_hdmi.c
@@ -1802,18 +1802,10 @@ static int hdmi_resources_init(struct hdmi_context *hdata)
 
 	hdata->reg_hdmi_en = devm_regulator_get_optional(dev, "hdmi-en");
 
-	if (PTR_ERR(hdata->reg_hdmi_en) != -ENODEV) {
+	if (PTR_ERR(hdata->reg_hdmi_en) != -ENODEV)
 		if (IS_ERR(hdata->reg_hdmi_en))
 			return PTR_ERR(hdata->reg_hdmi_en);
 
-		ret = regulator_enable(hdata->reg_hdmi_en);
-		if (ret) {
-			DRM_DEV_ERROR(dev,
-				      "failed to enable hdmi-en regulator\n");
-			return ret;
-		}
-	}
-
 	return hdmi_bridge_init(hdata);
 }
 
@@ -2020,6 +2012,15 @@ static int hdmi_probe(struct platform_device *pdev)
 		}
 	}
 
+	if (!IS_ERR(hdata->reg_hdmi_en)) {
+		ret = regulator_enable(hdata->reg_hdmi_en);
+		if (ret) {
+			DRM_DEV_ERROR(dev,
+			      "failed to enable hdmi-en regulator\n");
+			goto err_hdmiphy;
+		}
+	}
+
 	pm_runtime_enable(dev);
 
 	audio_infoframe = &hdata->audio.infoframe;
@@ -2044,7 +2045,8 @@ static int hdmi_probe(struct platform_device *pdev)
 
 err_rpm_disable:
 	pm_runtime_disable(dev);
-
+	if (!IS_ERR(hdata->reg_hdmi_en))
+		regulator_disable(hdata->reg_hdmi_en);
 err_hdmiphy:
 	if (hdata->hdmiphy_port)
 		put_device(&hdata->hdmiphy_port->dev);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
