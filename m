Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FEF97C76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PF/amBu6phUYhAD52uLSYl6kSuHUIWvx+mDqjVZqS8=; b=MaZoA6cVnP3G2+
	PzIGxDE1qP4+Iyj6SNJ06ROGBHR8dC/5eQ4PC43mjBNIEnSprhz6Rt6uubrMsJiqjckQPNxbww8KG
	34XrQv6nLbRK/xa2HnVs5A3zqHQ7L/zUThmvY2U3WBc1Hzz58nXFp8x+XDofUq0iORd5tRob4Mpg6
	7Tcf66J8uNT9zNCwVGT9h0HskfsvAp6cyuuZfQpQOds9d+wAEG622sJGK3DGZXexziTLStXgVppG8
	c9Zh5kPvb0/rOJLK1BWixN/apfz5Ljg6//JY5mQu+/B7MTO4WjApvWTK2mPmG21Gx2QBmj5bEq3sB
	DDVAtMvGn1cXd8o5hlUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RUU-000736-FS; Wed, 21 Aug 2019 14:21:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RTs-0006gF-CS
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:20:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so2215729wrd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xBn+s7shYC39K9Spwq6+NMMR/jl0g0PIkiRbeqrATnM=;
 b=U/VJAIWr87HIEPwTw6ElLTU+BjcfdWObT+soaik9zxpQDIVHoX/0bjZK/FOEiirw/M
 SS69viIfEFVAfR6Q1dHPajmwVRdN9bo/ooyrTLtz9E3+TCcV8ngieuMQg0q18YgRFMqa
 l6HgIUuyPsRBWKCIzcWjNtpf0k3KxlaTT40Pc4ri5V/wus7rC5QFXeJt4A5/5iQ3fXIs
 5j8XdCSRKHz6eYplrYr/+QD+TlmN0GRfsBAWYjQTIMbWalua40oYT/Xjqm3lnJoIKz2F
 I/scEtrhlncrq01IxhTSVmqfoUZO1dDtfVgovHbiDk05CeM40zvC5Ce4vsHJKC5eZi3g
 VzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xBn+s7shYC39K9Spwq6+NMMR/jl0g0PIkiRbeqrATnM=;
 b=k2GNWvve6N5rD6Dyw1oDmq0FCYz77ndFfNaq9J4Q1V+xXOX5AHCDulWZMBfXKb+GZv
 GVm5zozqgUo3dZSyCdkSlN0ZpeCHAW1XxheRjwZ01zlKeREL+7WwNcdPoyO6xgAdRqWJ
 YcoS7eB3I3dZoUwa+euSZv68ARnVvzkXCsyE+ohqlDuEsahXJZmsTE1HOIpYMGEBiv5R
 xrw6oj8d0sDjsifOOhGyafheIdYXpB+hIW82VXRxbBzfxoPVgb7fCZOV1b8WA9N014NI
 bZNxLyfWLPdqyguWvHAUdTcPnKFtaEYCs5Pz5BMDaP1sRhOIWoWCjU4eXNMPt5VvJzup
 aPTg==
X-Gm-Message-State: APjAAAXAJ5CTt+Gm7n7eCLChByfKNxe7mMgnVBKfHzfIbBj11gtSEU6c
 8G9UDyuN5DLSSSyfQ9YoG+HLfA==
X-Google-Smtp-Source: APXvYqxy04ouXX3eyK6f9Fi/iYrgL3Vj5mFrNuT90x0YMz28UBE0Fi9V1zFuiKfoH/mxJeevShFsXQ==
X-Received: by 2002:a5d:6911:: with SMTP id t17mr40633375wru.255.1566397255042; 
 Wed, 21 Aug 2019 07:20:55 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:20:54 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 02/14] arm64: dts: meson-gx: drop the vpu dmc memory cell
Date: Wed, 21 Aug 2019 16:20:31 +0200
Message-Id: <20190821142043.14649-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072056_425453_49F9F519 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: vpu@d0100000: reg-names: Additional items are not allowed ('dmc' was unexpected)
meson-gxl-s805x-libretech-ac.dt.yaml: vpu@d0100000: reg-names: ['vpu', 'hhi', 'dmc'] is too long

The 'dmc' register area was replaced by the amlogic,canvas property
which was introduced in commit f1726043426c73 ("arm64: dts: meson-gx:
add dmcbus and canvas nodes.") and commit cf34287986d0b6 ("arm64: dts:
meson-gx: Add canvas provider node to the vpu")

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index faff77175486..c2d3fffea8a7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -528,9 +528,8 @@
 		vpu: vpu@d0100000 {
 			compatible = "amlogic,meson-gx-vpu";
 			reg = <0x0 0xd0100000 0x0 0x100000>,
-			      <0x0 0xc883c000 0x0 0x1000>,
-			      <0x0 0xc8838000 0x0 0x1000>;
-			reg-names = "vpu", "hhi", "dmc";
+			      <0x0 0xc883c000 0x0 0x1000>;
+			reg-names = "vpu", "hhi";
 			interrupts = <GIC_SPI 3 IRQ_TYPE_EDGE_RISING>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
