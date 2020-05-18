Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43611D76C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iamPpE4+P7Un2Yd1uYNz/6atdAVo3eWcYjujU75Rxr8=; b=QDB3vqVM314DlF
	5zhkg4hEmqBpJwQsmsGHciqsxVB0pPvKNcDE99r8eK6Bqjs6VyowTnt87L/VOIAzTDwSCwUlMejSE
	ieKB9IwFM7mYdZXMkEXSWVDCIQ6A7Bnwt+RnVgx8gz8lxHZQW6g5Ui0E4/SwEpqCtqeY5qO9HBWvw
	0YZh/H5SJqSJ82IQqZDrlR9MSsfK1VculMqbxsx1H5eUe9dR02+TdQ0MAcP04RUhy+vg7FYPQwYYr
	PLjJFZZTyKGD6BPubSyII2EyQo2vPWUOFMLGnVE1JmjDWeX9NXjWAGQc/xP5bIm7ORUkscgi1BmWa
	NyIoDcWZ5mXzSussgRpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadrj-0001GF-AU; Mon, 18 May 2020 11:23:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadra-0001FQ-Bj; Mon, 18 May 2020 11:23:19 +0000
Received: from ziggy.de (unknown [213.195.113.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E34C7206D4;
 Mon, 18 May 2020 11:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589800997;
 bh=UX5hVzE4RlHU3iDBRST21Nt0Qg+SmpVsaSQorMHrC0s=;
 h=From:To:Cc:Subject:Date:From;
 b=l3a2r826A4ELNWXZVsYarsVjGOrBdK2avwXVLH5up1ebMFSSDndfmDI6oGGUjXct5
 DoGsL3Smh437oCwNPBt09u56feV9t6UK/Nx+r+MlMDnPPZG6r9C/eSupiHhLyZnctK
 RirMJT1/iWD+liNMDCkscrRG5h6d6zE+FK+UMZHs=
From: matthias.bgg@kernel.org
To: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
 daniel@ffwll.ch
Subject: [PATCH] drm/mediatek: Delete not used of_device_get_match_data
Date: Mon, 18 May 2020 13:22:54 +0200
Message-Id: <20200518112254.23692-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_042318_420333_0902E266 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 matthias.bgg@kernel.org, enric.balletbo@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <matthias.bgg@gmail.com>

The driver will be loaded by via a platform device. So we
will need to get the device_node from the parent device.
Depending on this we will set the driver data.
As all this is done later already, just delete the call to
of_device_get_match_data.

Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index e2bb0d19ef99..63ec92ba0e92 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -447,7 +447,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
 	if (!private)
 		return -ENOMEM;
 
-	private->data = of_device_get_match_data(dev);
 	private->mmsys_dev = dev->parent;
 	if (!private->mmsys_dev) {
 		dev_err(dev, "Failed to get MMSYS device\n");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
