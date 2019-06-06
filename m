Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68874370AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AE6MOJPNBkw5e40960Sv3dl1lKDV9IWbWhanwUtFhwA=; b=LRs0HxomPSue8E
	4zUe3BWgBX50m5gH8edny2MMtyQfcwouhEXodjkfDukLap+ul5vToYjS4XakTIHt9m46IOx/WukmX
	/8u1THjIuoJa+m8admw7u7jthHeMnaK0whLdBE9WOJkMMNqBh/kL2AOaBSG8FGgZirw7zZseYy7VY
	ZzrD2vH1JfNn2m9r/vTrgq+8BKQpthEhCMsM/XlPnQe5wdnAVXEwxved+hGfBw2WsPlYlAv0enXpI
	B87S7TJnK2P8/EzLh3NsdNfoIIdTdW9D8qR2XJojMn8JANQR/q9cXOKSxLZAu0oXffgtSmQ3gfhs6
	VQCzGwIFz40OmfI+QskQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYp0B-0006pZ-36; Thu, 06 Jun 2019 09:48:07 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYozd-0006GS-44
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:47:49 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so1344490lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J2Cqvkykb6IzlqW52A480gg6SUQ50ONET6S3EycqghE=;
 b=Ct2B8euOQrdzpG+cBAg47dgcUgrlI6vJX6UvUSSPeNwsKDpV+z4nSYOjKzI7W0wXTu
 r4jjtQhfwhUWEQvY5WPDdCcoU0aNZzPqjiQACNymjSE/whrVITUQW+sfJJRh67N7gAPV
 Y6aGOOnJIzpqaVpPjdK9zk+OILcF70TrXSnFDTE9d0Uy3ATZRk6SB8Wm0vsDLnuEgW9u
 Msd37JC1CJnUF4yMZWBh8aTUaup5fRhVX6rYUFH8B7T1WP2DESSOhwHMhzvxVFXo3gDL
 7pyLCCCDkdbKjJb4GMB88KOLLQZUiiIkR93f5TCKdSUkMPxl4b0iKh4nvjQxFwzkSw/n
 PuYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J2Cqvkykb6IzlqW52A480gg6SUQ50ONET6S3EycqghE=;
 b=r/AomGeDlMntLNR1WK6fESF9nEE8V0TlF8BeOG0/4ClMhove5uG2ldoiWqFyNDErIx
 B2N0vKUPFor5ZvVOJLbcR4RHwR5E6voQtQQYe+9Tvsk4fQBWwnWcH9Nr2vPPSXzLQW7G
 PQ50dCtL1ggQNQgD7Gj8HstVhlS8hhLlMtxNACOmYHxCGR+lz4AeEgdiBVjFp8TM9Zgg
 poGfKwpCqUS2LGOjQb3HfPryr6iUzNzrSt5RFFr1e5ZRVySbNZPUanyowbquUEO84E4A
 /KRca9Sxd0K51DLBYuk3LbkC1ER31CGomA1s+Ppww7iXq19S2D2Chm4nV99gU4uumUUn
 EVDw==
X-Gm-Message-State: APjAAAWaZTbgAqPuySBsnmFRtNFXCET/xzXvCHYP0eI+wCL3xyEKKpc9
 JOWId14l/kv5UwOeqeDHwjEHPQ==
X-Google-Smtp-Source: APXvYqzYFWFgXwM4oVScr/7MwzKqnuStv9TQA+4YHbIIppvBW9LTDZNPdBEJzK7doqcYm4prjjpeQg==
X-Received: by 2002:a2e:751c:: with SMTP id q28mr563236ljc.178.1559814451458; 
 Thu, 06 Jun 2019 02:47:31 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id y6sm256967ljj.20.2019.06.06.02.47.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 02:47:30 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: andrew@lunn.ch, f.fainelli@gmail.com, hkallweit1@gmail.com,
 davem@davemloft.net
Subject: [PATCH 6/8] drivers: net: phy: fix warning same module names
Date: Thu,  6 Jun 2019 11:47:26 +0200
Message-Id: <20190606094727.23868-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024733_909376_D78A85B1 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marex@denx.de, linux-fbdev@vger.kernel.org,
 Anders Roxell <anders.roxell@linaro.org>, p.zabel@pengutronix.de,
 b.zolnierkie@samsung.com, airlied@linux.ie, lee.jones@linaro.org,
 s.hauer@pengutronix.de, lgirdwood@gmail.com, stefan@agner.ch,
 linux-kernel@vger.kernel.org, a.hajda@samsung.com, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, netdev@vger.kernel.org,
 mchehab@kernel.org, shawnguo@kernel.org, vivien.didelot@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with CONFIG_ASIX_PHY and CONFIG_USB_NET_AX8817X enabled as
loadable modules, we see the following warning:

warning: same module names found:
  drivers/net/phy/asix.ko
  drivers/net/usb/asix.ko

Rework so media coda matches the config fragment. Leaving
CONFIG_USB_NET_AX8817X as is since thats a well known module.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/net/phy/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 947c974bc69e..bab179b75a2a 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -52,7 +52,8 @@ ifdef CONFIG_HWMON
 aquantia-objs			+= aquantia_hwmon.o
 endif
 obj-$(CONFIG_AQUANTIA_PHY)	+= aquantia.o
-obj-$(CONFIG_ASIX_PHY)		+= asix.o
+obj-$(CONFIG_ASIX_PHY)		+= asix-phy.o
+asix-phy-objs			:= asix.o
 obj-$(CONFIG_AT803X_PHY)	+= at803x.o
 obj-$(CONFIG_BCM63XX_PHY)	+= bcm63xx.o
 obj-$(CONFIG_BCM7XXX_PHY)	+= bcm7xxx.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
