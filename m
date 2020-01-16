Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC34413EE09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gm8b7SyUHN32X+vhe8sveJH23MdE6hmyeUGUHP/YOZE=; b=CBenrMug3gBNlj
	yNtrJaWVJwYYpjycbhrQWfNCw0dKUPCpJX7KpWLESJBUDwykDGmG9G+cbfRORiq9dLrPiIDvIMsRy
	pppLM1JSpWwwzWzT7sbYkcEvSBOKuPu7ZTM33N+vmAzGGOSjknfwGrGvEO8OREmJQyTPbkfTI1Qfr
	EkkyHlWSYKG5NMhs5bv3cxZ1oGSRqKfYjaqSDaDPccqD6n5nCmfSG9oRuj7Y12uJghpWcGs907CHR
	i/ze8wTvviPxNks8Tl5sA4MjlaiAylIvtD29ilp3oyainw8AsqkrmzclR8+Sn2qBio90rLeKdmGJz
	YC+vnNd25oLzf0ars/gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Xf-0004dH-PG; Thu, 16 Jan 2020 18:06:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8wz-0006FJ-EC
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:29:03 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E1B32470A;
 Thu, 16 Jan 2020 17:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195736;
 bh=ZcKXNiY389qwnVB97Nh5gg7j/uHqe5GQIQymUVX9+Bs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f1cyz+9RhEz5BCCf/Uz544Z4+NHb9UcZWN/OmqXvtCbzHpvEgi9BKOW/kcz6sD9K3
 2otR4N5f2wN+gJTV4ICjGxZf4dE7J/WwkujLHd8UiwyBs8id6u/oUcP9xQiePAlRZA
 Kknpd8h63LiY/XywhiW2mGYg1PD5FWTGowZ7Fp8A=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 274/371] media: atmel: atmel-isi: fix timeout
 value for stop streaming
Date: Thu, 16 Jan 2020 12:22:26 -0500
Message-Id: <20200116172403.18149-217-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092857_610519_5C5D85AB 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Kroupski <alexandre.kroupski@ingenico.com>,
 Sasha Levin <sashal@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Eugen Hristev <eugen.hristev@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Kroupski <alexandre.kroupski@ingenico.com>

[ Upstream commit 623fd246bb40234fe68dd4e7c1f1f081f9c45a3d ]

In case of sensor malfunction, stop streaming timeout takes much longer
than expected. This is due to conversion of time to jiffies: milliseconds
multiplied with HZ (ticks/second) gives out a value of jiffies with 10^3
greater. We need to also divide by 10^3 to obtain the right jiffies value.
In other words FRAME_INTERVAL_MILLI_SEC must be in seconds in order to
multiply by HZ and get the right jiffies value to add to the current
jiffies for the timeout expire time.

Fixes: 195ebc43bf76 ("[media] V4L: at91: add Atmel Image Sensor Interface (ISI) support")
Signed-off-by: Alexandre Kroupski <alexandre.kroupski@ingenico.com>
Reviewed-by: Eugen Hristev <eugen.hristev@microchip.com>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/atmel/atmel-isi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/atmel/atmel-isi.c b/drivers/media/platform/atmel/atmel-isi.c
index 891fa2505efa..2f962a3418f6 100644
--- a/drivers/media/platform/atmel/atmel-isi.c
+++ b/drivers/media/platform/atmel/atmel-isi.c
@@ -496,7 +496,7 @@ static void stop_streaming(struct vb2_queue *vq)
 	spin_unlock_irq(&isi->irqlock);
 
 	if (!isi->enable_preview_path) {
-		timeout = jiffies + FRAME_INTERVAL_MILLI_SEC * HZ;
+		timeout = jiffies + (FRAME_INTERVAL_MILLI_SEC * HZ) / 1000;
 		/* Wait until the end of the current frame. */
 		while ((isi_readl(isi, ISI_STATUS) & ISI_CTRL_CDC) &&
 				time_before(jiffies, timeout))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
