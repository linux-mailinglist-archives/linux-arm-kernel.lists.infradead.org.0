Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FAC97CCE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iVN1nVUDDRqYVWZ5ODi5ofTkTQtRggr5KSlMqefc2g=; b=OaJjS/Cuu9gNXN
	PoxBIn5uqaxG6Y4QWnAdKq5rfV3qUo+b7Z8VpritPZH1Ab7BTQjRD1/zdD+ey5sXckwHsBKrR0ejY
	Myoqi5alJDWpc58pf9YA4NtGr8TLttu/ScYgtrQHfI4r9LQucwdz+L+hSVHZaE1VkWxyr3Z1Rkj9f
	A6Pj0VXIK0oGw7GTmJEZW+tgPh1wlemYNlBLjtpCN+a/nmdPMIuTGxUoO84RasBHMImDcZWCt7Xd0
	eTrcN/VOYZOWiuovb5ZLWkt6poes9Y5MPWkW8Vry/gSp6SDLRyoNuXK+GwEZwJiXHGFFkqVyMKKUV
	PnQEGkiUbaOdP9iKBRQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RXy-0002N5-S1; Wed, 21 Aug 2019 14:25:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RU4-0006tq-GQ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:21:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id p74so2319778wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BE56XeKlPm5JVcX8n3q5JNmJvyUhg1qETHFabaUvyfE=;
 b=Lnoj50t8bQ9bDRMRR2IVG3gDVVz+yPL5PUmwgYkRrDAf0BGZeBREwDCBPfdtWm9kBP
 tEDTpaYnE0C4mUW0R9BIBlTErQRUZ8IrJD7PcDvt4AlcV9EgfqSbelBCYHeEuFpUauqe
 OYlhTKrQLsz0bJBai3GlKXpR5/+kvGBQkw0mdQ0192//87LcnM2VaXxhPK5JzM4RxKcB
 O4oYr6/w1yguRxm96R0vxzXmCytT6V1e6eolbuH5KC7HvX6CybmVRKNzz0ZhfoXhQJfc
 FW1kCS3hd55lfc81CQv9KTtvkpS20Fu6j4qrhlMDGtBECabUJPAQ67+mboPQqUA2tqcn
 QL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BE56XeKlPm5JVcX8n3q5JNmJvyUhg1qETHFabaUvyfE=;
 b=nl0bHnxG1k47GJmycoevfss0mDdou5E288PUrLrTJpRzbSYxdn3RZdu/hSNuhqAXIM
 bKJP5igToHjenUo8+Wahor+uXEuR6ULcQC1qTPT17dIpHXgkHbMiwkqAxPH9v4ofH9Vi
 73SSwyAiH3BaBP3xOTf8leqr54r7029UN4BcSgVDdI4fJu85Y7NZpR8uJ4FDjxxJahtk
 8NvBJa5Yb6eoOM3dOorprpdaAAMMyANqZQI7A6EbjstB6Tmo/CkV9K6/siN6M0YEMY+9
 8wvw8jz55Ll2+Wo5Te0CfkZTmgg3AGJvogVt4zpmFFYU7eIbn3Zq1ZfoH33RYH3EGgRo
 TjxQ==
X-Gm-Message-State: APjAAAVk/pfnHp7uOjSQED7MS0jVH+8pX3uOr4RkhzBzdU7TNsGKtkUN
 UMYCvZC/wRimdOu2p8XfVCdwrw==
X-Google-Smtp-Source: APXvYqzuHs2peSetC63p+jjntS+Mxj6i8Ywj33/Z22DI61wK6k8o4lDfUFeda2o6zo5i32KR9FA1Qw==
X-Received: by 2002:a1c:6087:: with SMTP id u129mr313661wmb.108.1566397266758; 
 Wed, 21 Aug 2019 07:21:06 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.21.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:21:05 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 12/14] arm64: dts: meson-gxbb-nanopi-k2: add missing model
Date: Wed, 21 Aug 2019 16:20:41 +0200
Message-Id: <20190821142043.14649-13-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072108_701810_602BB2BC 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: /: 'model' is a required property

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index c34c1c90ccb6..233eb1cd7967 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -10,6 +10,7 @@
 
 / {
 	compatible = "friendlyarm,nanopi-k2", "amlogic,meson-gxbb";
+	model = "FriendlyARM NanoPi K2";
 
 	aliases {
 		serial0 = &uart_AO;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
