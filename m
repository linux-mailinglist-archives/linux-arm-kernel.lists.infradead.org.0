Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302618D62B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4Xe5slL6duEQi+thGM6mP7lSi3KF4Sz06buhXwDkN4=; b=rYcfxq9Cq1aSTh
	WYcrCOnx2qBsB/1hiTIiUIXsytrcfVHm0B4K63LRb0f677O3Vl/Mz1PDhDeOhOPozuJJAqPQFCHWf
	VQl7RpMdR5FkFzYLjzHRm+gjTQFfvmIfocdKnTSFFcCdygHKmwUOyKGyn7kvvbdVaRSMTuKvPioz0
	0NJur3PNX00x/CSY4B6vRkbaY/N9JHP6RdgUGOE2sa7xO0cPZj6DE+kZR7sTjQlF0ZFF1vPezuLQu
	JGGYC4oRdxcr5rn/EOxZ8CaGhRT2Uyfx1pIAbEHzU8dV0m1N+pYaPBpTTygJXiiSg0solDA8cwTJj
	jP3Iz8tTNpJnPeZQFhZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuJt-000623-P6; Wed, 14 Aug 2019 14:32:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHN-0002dn-Tw
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id z23so4664748wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d9R5lD+eyPtty/EDRB0dxvoT1lDKjG0Cf5Gg/5QaCyE=;
 b=GNzT3FnIRl2b3ybIdQLPxMtE9bcdJkCqUB/3O8hct7afWdURosTJPbMY96tVMfIvjk
 CvSVfwooKZNsxNPcBIFpagBc7IfYBvJbbOm9x39Q21Edp8unNSxuRrFEj/wi8Csdg947
 sTs2lsUyNp+YcFPbIPC4T870vz13/0JgLc5vL2d+x/lvaNrPSrQ3BqJO+++YihV+v0+/
 E6zpiWoSI7G2EHzpnYIo8UjuCCXin2rui80fisFkDcYBofOR9AFj9Qicfqfery2wgEvJ
 Dfcjd2GvMzLSUSpu3skeR3k4ucBm17R9M21hyFtnKt5Tr+qWa30wSPfVSvOqaKC2JGVA
 XSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d9R5lD+eyPtty/EDRB0dxvoT1lDKjG0Cf5Gg/5QaCyE=;
 b=Sc+EWIJprqWa783e3+D7dZC9l2QkCwfuitx+u0hBy1wJ3gvyb6r5uc+HGpIz6dIW1W
 xqZtx5mjcNgERShdLoiYeWVGNy3viFqmeqwuEhVl+SD6qUN46Jl/7Gz6L9klML0jA8gY
 VNEgLOXfUrm1qBD3YMPzBpkviCs/UxE/UFYS3xoZWFhxC8zRuRUOPhzwuWkvxRSVhVYW
 Yv+wK5AP2DquwDslw8730NhWuj9ynjgneRGO2SGR4y6P/6HgiOfZmAgVVbCQnJrW13EV
 7Z1baC3+IdtZ6534l4oihyH3mT3xKSNJycbH2EJwiCLFe+PsBUI8hyk8s+vmA7cizXys
 rAiA==
X-Gm-Message-State: APjAAAWcAYg9r7asCxw0N6tVIILLQBYPlW3a6zCto+Yf0LIv1EgZQSYc
 2FJCkXSUKUIsHZVP0LbMGFcUUQ==
X-Google-Smtp-Source: APXvYqw9hNnn1+mAsquSAj/R9n5028pqU8HwYAJy2MdmuUrEF/+GoIdhBFhAN4poaGz3c4MgOPxF/g==
X-Received: by 2002:a1c:9696:: with SMTP id y144mr8796545wmd.73.1565792969990; 
 Wed, 14 Aug 2019 07:29:29 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 07/14] arm64: dts: meson-gx: fix periphs bus node name
Date: Wed, 14 Aug 2019 16:29:11 +0200
Message-Id: <20190814142918.11636-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072934_070826_DA31D228 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
meson-gxbb-nanopi-k2.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
meson-gxl-s805x-libretech-ac.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index d8127f863b55..a7735d2f0037 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -437,7 +437,7 @@
 			};
 		};
 
-		periphs: periphs@c8834000 {
+		periphs: bus@c8834000 {
 			compatible = "simple-bus";
 			reg = <0x0 0xc8834000 0x0 0x2000>;
 			#address-cells = <2>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
