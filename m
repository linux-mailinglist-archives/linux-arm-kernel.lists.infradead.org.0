Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA351A717F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 05:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=soC+eOOe0Sp3oSIMP6pdYWKxbMkAstzCsIy9on9YqVY=; b=G7uxZcMbCPkjJ2
	ea10DayUtKsnK0nZ1fZzy2La/BSZoLKWDjlBFc7BlriDAcMyLIPSTfrI57vRBeCE8dVJwX18vXota
	o8azkGm7xMkiMgUAMajal6k73NuFruU0v1jHLyV8H1/sTzaYUqSWNFvwIcYfHa0EvsZsUPmH6Krj+
	erRV0U94UkM1e2kY1NLmNO9QhWXeqg9KVN+KyXwAwFH/uoQmGTA32tFaiyIYWkjoeJCFJPa2PRTVh
	cFtuS6X7yyhhtq2wOr+/bLNoC0CcJt2GKyavlrjQVcfgiXOjqPB+uolEIOzHXJ3G0jQLSIzT9an8s
	31i+iTIJQ8Ov9biY54hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBwA-0008Q4-E1; Tue, 14 Apr 2020 03:08:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBvz-0008Ok-RJ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 03:08:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id w11so5377519pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 20:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sK5J9WWtksNX77+NYMwDl6iDZ21wbSLhPOx9BD2BM8M=;
 b=LSXUefafyRPCK1BKfVXiyl8L6XfmghKkzW97uJsOEM4gDKMgCfDopHvzMyxX9Myj88
 Gl5rTEhzpS1OYgiBDgymvERjRoXimxL5xwpDoZPX/ySaHiEso7gshkntX1zU3eV/rMje
 P7odV0SrY0XzqZfAZFoea4TeBlA+Wp45m+108=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sK5J9WWtksNX77+NYMwDl6iDZ21wbSLhPOx9BD2BM8M=;
 b=X1BqSQIyirrJZ2x4qAgpkIYWg3yqezMknd5e+m4mQfWmgIp5Ng6wfRNeLTiOG36h2b
 wbpF5/GRuJ6Pn7GmmnLxYWqZVZUQYRYbsf58NnGgWRN9mckPm8a3Zo8Q45FedR0lqMEY
 uYc8/Ydj9/cEZRfwxe/PcXB6N595SBtHNlB6cbRpF4B2kty+/6t95Bk36XgPtFqJZcjX
 1HFbIBTK6nQsRtRYeJpniLceMVfbwvv/JKQq5mz/lzrbpKU1pp3l4TTon6XrV2U706c6
 gI3DxbWhvr6TiDkF8YCrh7TLI+K4AZPYvwFZnNu4bkrYVwM5gHS3mVl21OcIH0glPbfv
 M6bA==
X-Gm-Message-State: AGi0PuYuC+/10QemlgYmE4Q/UdOrz3+LYx29tzzJe1WDy6Z5sbqHXYGj
 eFjtM5VzZwwljgSKAwOiRuKJ3qdMtms=
X-Google-Smtp-Source: APiQypJQpaS0PH8YnPtS/hZHhI9tNItaYB2TAmhKVyqtt1h2PIezqUr6JFZ0U4VOiU7IsrqBf+3Iqg==
X-Received: by 2002:a63:6287:: with SMTP id
 w129mr10337254pgb.410.1586833702123; 
 Mon, 13 Apr 2020 20:08:22 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id z23sm3610897pfr.136.2020.04.13.20.08.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 20:08:21 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: mt8173: fix mdp aliases property name
Date: Tue, 14 Apr 2020 11:08:14 +0800
Message-Id: <20200414030815.192104-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_200823_880794_3F9B6244 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix warning:
Warning (alias_paths): /aliases: aliases property name must include only lowercase and '-'

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index a212bf124e81..d1e9c41004b4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -42,14 +42,14 @@ aliases {
 		dpi0 = &dpi0;
 		dsi0 = &dsi0;
 		dsi1 = &dsi1;
-		mdp_rdma0 = &mdp_rdma0;
-		mdp_rdma1 = &mdp_rdma1;
-		mdp_rsz0 = &mdp_rsz0;
-		mdp_rsz1 = &mdp_rsz1;
-		mdp_rsz2 = &mdp_rsz2;
-		mdp_wdma0 = &mdp_wdma0;
-		mdp_wrot0 = &mdp_wrot0;
-		mdp_wrot1 = &mdp_wrot1;
+		mdp-rdma0 = &mdp_rdma0;
+		mdp-rdma1 = &mdp_rdma1;
+		mdp-rsz0 = &mdp_rsz0;
+		mdp-rsz1 = &mdp_rsz1;
+		mdp-rsz2 = &mdp_rsz2;
+		mdp-wdma0 = &mdp_wdma0;
+		mdp-wrot0 = &mdp_wrot0;
+		mdp-wrot1 = &mdp_wrot1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
