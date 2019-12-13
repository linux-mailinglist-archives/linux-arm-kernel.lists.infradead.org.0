Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8946E11E7BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4I8MW0jpnGl6SicA8GMHMIkKzv3W+3+K28S+dOwRcPw=; b=Nlob1bIS/fV1Yh
	ws1dENAu578MIO+liBe/smE0Gz70uyUOdiN6jDtcMqsTL+USJKh5Ei98YryMZNHSNx9B6cU1CidZ4
	s9mZZPzsB/bqrrk2ALlZk0YBnlFeZJfYAZn3UwElACoOCU6VMZDVTR8VKf4XIas5CNXXWCTPCD1ce
	yiTzcggwIFagGBvJnYbUBEG40dQdFZncnRAPygt7+VdNCsgURoyjqqTZCJ2JuSIIH17Fa0w4Twkkp
	kPLDWH7pRrm/yb7Fyn8BAw8HjdT7k/yGnH88rFwBubQDslEjiGaQXA3B1C7capesgvOBTtaeMRi+a
	az2b6gUOc/VXcq48dBGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnTM-0004re-HB; Fri, 13 Dec 2019 16:07:20 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnS0-0003iy-6J
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:05:58 +0000
Received: by mail-yb1-xb43.google.com with SMTP id i72so963494ybg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PmiKmTwTQ0CJkoTG6PszHCX+iZK7oZLHF5W+m4h4bCQ=;
 b=pDhmaget9UZMaNSsEBxSXNQ00A0aG9sLNvD5tQaF2lcttifPiL88bfjbYQRg82MwkP
 L3F8of4RkLvvx7oK2+c/1Vt7y1wbPGw3G0LeSM2jX9Gp/peLvgpnrF8iWWCxA1Li9lqZ
 oKFfkI5+IcXuro6IkIkc18HzX0fMkKr0yrSINUgSzgVQ8lJS1S1S4oMC6SwQ0pP/dbyQ
 ToCAalYk+hgBA8B7GNOYLbDBJhGFqK79bqFU215XzYAfi/yLzhxcdzzcGUKx0Wt+N63j
 0FXWHvmNUggzuePqnUdQGhHJ6inQDP+zTWgTKYTzciyoJVxPgkGDAaRaS7ew3/SYrQIL
 +Xtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PmiKmTwTQ0CJkoTG6PszHCX+iZK7oZLHF5W+m4h4bCQ=;
 b=M7Q10ayHdryn4LzQyZuBePudG1TSVszA56zugguOxXA81S8sm614OQFa1Sus8Wujcj
 Tp7Ufyl1Mzy2BJt4HmtRZQynGd6rhwZWa6Yhnq7Bhtb4N2X8rVwaGajNTvaVZJLOGZMv
 bRxomjKkHqZe4ruX7vMgGvb73G4fbmmVLl6/qgjgpqVmnALucHgzVCWQ2r3JQW2eiAu0
 /hKOldRSdLXHN+g6ZwtcIbWbHXUss44H4hEgjdv+d5cAznuMCEg30H2MGT6O0KUVUNnG
 6cB1FV8yvHq9TEAKVCPxRQC58KQ73g+OAfvCo5mHSena8u176L42FALueeb1+p75GJYM
 vhEg==
X-Gm-Message-State: APjAAAWKr23HyxEGSgIAQZ0si751uimc3HiYDcuWfcU+LZXdXiRDtAhf
 QbVFtU6aQ5Qx4W2nXxwXq8Lk7NuE
X-Google-Smtp-Source: APXvYqyvMxo0m9J9o7pzqtQ4LDSJYU1J4I8OigUuQ/pFrJPc6HZMKaZZVwpP0Dg4mAOHuGg59i6WEw==
X-Received: by 2002:a25:4258:: with SMTP id p85mr9366936yba.121.1576253154449; 
 Fri, 13 Dec 2019 08:05:54 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v38sm3984694ywh.63.2019.12.13.08.05.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:05:53 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/7] soc: imx: gpcv2: Update imx8m-power.h to include iMX8M
 Mini
Date: Fri, 13 Dec 2019 10:05:37 -0600
Message-Id: <20191213160542.15757-3-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213160542.15757-1-aford173@gmail.com>
References: <20191213160542.15757-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080556_257925_0B2D50AB 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, Fabio Estevam <festevam@gmail.com>, ping.bai@nxp.com,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for i.MX8M Mini support in the GPC driver, the
include file used by both the device tree and the source needs to
have the appropriate references for it.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  No Change

 include/dt-bindings/power/imx8m-power.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/dt-bindings/power/imx8m-power.h b/include/dt-bindings/power/imx8m-power.h
index 8a513bd9166e..0054bba744b8 100644
--- a/include/dt-bindings/power/imx8m-power.h
+++ b/include/dt-bindings/power/imx8m-power.h
@@ -18,4 +18,18 @@
 #define IMX8M_POWER_DOMAIN_MIPI_CSI2	9
 #define IMX8M_POWER_DOMAIN_PCIE2	10
 
+#define IMX8MM_POWER_DOMAIN_MIPI	0
+#define IMX8MM_POWER_DOMAIN_PCIE	1
+#define IMX8MM_POWER_DOMAIN_USB_OTG1	2
+#define IMX8MM_POWER_DOMAIN_USB_OTG2	3
+#define IMX8MM_POWER_DOMAIN_DDR1	4
+#define IMX8MM_POWER_DOMAIN_GPU2D	5
+#define IMX8MM_POWER_DOMAIN_GPU	6
+#define IMX8MM_POWER_DOMAIN_VPU	7
+#define IMX8MM_POWER_DOMAIN_GPU3D	8
+#define IMX8MM_POWER_DOMAIN_DISP	9
+#define IMX8MM_POWER_VPU_G1		10
+#define IMX8MM_POWER_VPU_G2		11
+#define IMX8MM_POWER_VPU_H1		12
+
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
