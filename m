Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0C5153D80
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 04:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMlqUGKjcLA/La1GMqszXluX7gErqKDv/KcgMOam6uo=; b=bRorNkYWMb4RDG
	C7L2j/g4dFcK4KuiM8mWU2eJHkxMx8wKpYJyJsIFU6qTFWQyf94P3td5GwTbLONAryR2SXGKsLHA3
	+zhF2lxF02v4xbJVFENofJo4WLzhxUMc0L5KlsHuUK4bFbPy/6FqnE6R8qfRrCVsbxzH6wdTM8jJg
	uH+Ukb8gpAdUxh3rX20VJrMvY5p2Wxbo3Sgx5mGKNRFi/9EdkrcFwa09fVWs2Fkww49+kC7jUBlVz
	LEH5e7muePqUhMWb7CN6Dn+Y4aTD8AU/DS9y+W7X244XFXEu3IeaxQYQUb6VLwM3hgP4TJmigsED4
	/tlK/O8QPRcOJ3SBSWfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izXgf-000410-As; Thu, 06 Feb 2020 03:18:41 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izXgH-0003nV-Vc
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 03:18:19 +0000
Received: by mail-pl1-x649.google.com with SMTP id d20so2400425pls.15
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 19:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=KEIH1qwXja/ZmU3/27elfahliyGtpPNLFM8jJAbIPe0=;
 b=t6ozdDcWXnqlycYXVvxHhOWC41qF8dQhtkxMgc3cj9ys3LWT7swok1SnhBVAqh4iIK
 8NGSfV4wb+JIYUnOBtkwGiKW7JzQK9Fbhjvr2h71WZluUnlT9W0Bgr8EhRAlKqKxDztE
 0d9+GSbN9KCNqXWGRSEM/FSn/rRn+D8W6XEcFtH27mvwDZUFKXCYgdT3hVS5EWHVu/gw
 PF+v4DFja2f+vDZtTesIeq+13RktcT/86fnEUJd6gxFj9jDTQ/A4tu/vpr5NXiqjgmwY
 sKlio/9K9cB+vXBOcyXXIYz+P3CWg0IwHwRwAVQ5UJU7ydufexjk2HoQyc1cdNCiCFN7
 DDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=KEIH1qwXja/ZmU3/27elfahliyGtpPNLFM8jJAbIPe0=;
 b=NYlirrRrTRcVSgV7R+2oZiwe7ewji0hseW76YBrqAWTYzT6IJF+o7zgUMX89w6jKiG
 to3NRfrRKiIkVbF5ujaTWFzqxLTGQZ6qtiHNG7/1JYkIpC4xbjzWQHgI7hqgKcOM0uPI
 N6+/4hO7I25LLMVUUTdlTpjvXcsQxQ0FIE3KyB7TJFCraJd9f80L1shTZf/3JlPFcIAS
 jOZWelwJv3Zq0wjxTpVdLCnsdf47JkM+NqTRP7GIBs0PCQXG1anO/W+29YoB+n113uwO
 TAJGKbZXLBeNjiOH+vSXWPVmDdSiHU6jLAtzt60Am3axgB71qkecHd2C9TMcA8SIVlpx
 h3aw==
X-Gm-Message-State: APjAAAX9CpocBzNjNmI9GMBPNhWjNkGypHRJgAHYV3ktwVPe+ApvUJFL
 BJopyoE81eJo0V8Cy4fW6K99k1ZcrmBD
X-Google-Smtp-Source: APXvYqwvYH4hqfpVMgHnlTJXAR9wXcKrV1aylz6TVB7wVNgSuffWm5cIKjVzB2ZMIRRMPL4bBaqkFWGwqZ2Y
X-Received: by 2002:a63:ff5c:: with SMTP id s28mr1290924pgk.196.1580959095995; 
 Wed, 05 Feb 2020 19:18:15 -0800 (PST)
Date: Thu,  6 Feb 2020 11:17:50 +0800
In-Reply-To: <20200206031752.193298-1-tzungbi@google.com>
Message-Id: <20200206102509.1.Ieba8d422486264eb7aaa3aa257620a1b0c74c6db@changeid>
Mime-Version: 1.0
References: <20200206031752.193298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 1/3] drm/mediatek: exit earlier if failed to register audio
 driver
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_191818_018173_483484D4 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Exits earlier if register_audio_driver() returns errors.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index c79b1f855d89..23c2b0e8693d 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1656,7 +1656,7 @@ static const struct hdmi_codec_ops mtk_hdmi_audio_codec_ops = {
 	.get_eld = mtk_hdmi_audio_get_eld,
 };
 
-static void mtk_hdmi_register_audio_driver(struct device *dev)
+static int mtk_hdmi_register_audio_driver(struct device *dev)
 {
 	struct hdmi_codec_pdata codec_data = {
 		.ops = &mtk_hdmi_audio_codec_ops,
@@ -1669,9 +1669,10 @@ static void mtk_hdmi_register_audio_driver(struct device *dev)
 					     PLATFORM_DEVID_AUTO, &codec_data,
 					     sizeof(codec_data));
 	if (IS_ERR(pdev))
-		return;
+		return PTR_ERR(pdev);
 
 	DRM_INFO("%s driver bound to HDMI\n", HDMI_CODEC_DRV_NAME);
+	return 0;
 }
 
 static int mtk_drm_hdmi_probe(struct platform_device *pdev)
@@ -1705,7 +1706,11 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	mtk_hdmi_register_audio_driver(dev);
+	ret = mtk_hdmi_register_audio_driver(dev);
+	if (ret) {
+		dev_err(dev, "Failed to register audio driver: %d\n", ret);
+		return ret;
+	}
 
 	hdmi->bridge.funcs = &mtk_hdmi_bridge_funcs;
 	hdmi->bridge.of_node = pdev->dev.of_node;
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
