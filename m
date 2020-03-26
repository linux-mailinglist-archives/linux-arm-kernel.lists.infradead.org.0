Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1D01944F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45qOzwqDm6weSvupy7boe0odwGLGo+96offouxcHUUQ=; b=C9IouvkhnKs9fG
	X2jwNyUXKpV98yFoRQrR3i6RF9RxzVLGshZd+3tH+pDkncGXJRMJl4eCK7cn643C5R9Excb23bXA0
	rdngtd7mRY/XBVNOw5VLtkRIaqGfYLICMjOEB/xLNw81E9a5Af897J5xHp95xpun7QhfhEDRPheic
	NDx72/nI6UAoRJ88s+g52UptXff7AgLV6YiCp84XcdwKdPfDVL5l4Kf/NYd4FYlVfkNHWVe5QvTQM
	6LPG7z340XIOAqL//tqliDk18CGtb2ZMTPQ3DWZiHelQb7ovOKRKdD7WkfDq80Vn6O9vqeY+z3fJx
	j08q/6NBQgIZLVQ+lTOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVtz-00074g-Jg; Thu, 26 Mar 2020 17:02:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVrW-0004kP-F7
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 17:00:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so8730723wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 10:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LxcKkp++L7yp/h9Hem5yr49+eGcTTPzuu5jvOWKTxmA=;
 b=sfZU1l0CsD8lTrhTD4XPLlFmnial8LrAHG1mR+jpGFP/i1SKVl8zPCXQPjbF7cihJh
 +A5dlLwmq9wcng6RiXhKVN6ZQPcEy+XekaY1TGo4OS+16+7A1kZ1/mbseAUOEqVQssGj
 iJq4CS4ZFHiDNtO/bVOiImEFDtPYP/aTNNwXzFc6B6TA2zHjeNuH5jICglqU82vI5Q53
 T6vDUfd/1Wqrwj7IVYbzuX9UZj2VhhC102ZjAxm/EY/wumUZBMHbGeTw0QXH6zTUZpfC
 29Eiz/WSLItxD1wbSw3oB9OHO/fCjYlfGcOhkNic3IyLT+teQHi7ww7K64o89DaBA1l7
 PCUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LxcKkp++L7yp/h9Hem5yr49+eGcTTPzuu5jvOWKTxmA=;
 b=UEaXqXyER1P8sT/o+xLnnUagSZvVvefYIzdFkbsT6qUCOXAsR/rS+iUgPXu7Y0+7Rn
 JlkfCPkVTlzKKDiim0wN3/uViO/Wkc3vzop+FEbCu3RKidAGlUGUj6dAryK67U7g8b1v
 TvnQ0jTTvc2LBcuZ3/vx08nAYSDIqm1x3YbUT3q5iZzlpp5nYvIncueTRCRAC6MRuXjD
 9M5rGhGMqsGzAlW3UuKRznDtVoZ6RPflx+C2SFfcKD0ontFNZh32HulP1AXilZyrouje
 euSjOgyOWnf1vGm2iFISS35avo2OhSNnbcB5gwa7+zWZtTlPLtZ5inUEosmQe+HjTYQf
 vOcg==
X-Gm-Message-State: ANhLgQ2gHfhvpaMf4IKsBIYug+3vqb+y8rpeK+y8nstpT5AB520rv03r
 hLYLhkQW9OvMjyayyUZ1hlX1Tg==
X-Google-Smtp-Source: ADFU+vt678Nhxx77VFoeY4pri/SUs/4tTh321n/fUb14KxYkkqXRV/VnCnyzTCIaRDHORBpwNgx1Jw==
X-Received: by 2002:adf:dec3:: with SMTP id i3mr10862529wrn.351.1585242007735; 
 Thu, 26 Mar 2020 10:00:07 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id r15sm4609823wra.19.2020.03.26.10.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 10:00:06 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: meson-g12b-ugoos-am6: fix board compatible
Date: Thu, 26 Mar 2020 17:59:56 +0100
Message-Id: <20200326165958.19274-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326165958.19274-1-narmstrong@baylibre.com>
References: <20200326165958.19274-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_100010_776536_44B0DBC6 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing amlogic,s922x in the board compatible list.

It fixes:
meson-g12b-ugoos-am6.dt.yaml: /: compatible: ['ugoos,am6', 'amlogic,g12b'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
index 06c5430eb92d..fdaacfd96b97 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
@@ -14,7 +14,7 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	compatible = "ugoos,am6", "amlogic,g12b";
+	compatible = "ugoos,am6", "amlogic,s922x", "amlogic,g12b";
 	model = "Ugoos AM6";
 
 	aliases {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
