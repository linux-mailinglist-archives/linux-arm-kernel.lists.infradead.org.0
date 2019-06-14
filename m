Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3390746528
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/tCPbq7HdNkI6n2w8Mh7VADbrkNqDDKQXX01ArYhHs=; b=iIhfzCxBlQfQe8
	uGahUJurzQx6o2cwivYMUv1gve7mTZPFeQf4RMg1UZSw4ct82/q/K6qPfATllhjhNEkh33ueCa9ee
	xkVTeeJGy63RXRn/MTYoZlL9vQk3O2dzMDYrGNmLKblcY5u0+pZ+tZw81IYwEBdLU+bb4x+cvomjg
	qc7YyaxzAZDelYl57ryfoPNpPX4bomioFrmG9u4GUzi3bQ8du1X+MjppIYsBjND8ya4UQ+G5IZfmv
	W6q6o6/zVlQOrLA690ZlbTYwfUe1MqwqnpOBRnSmOtoEA3ye7SuvBb5DXTgI4PAnrN80vxjjoG1by
	uR07e7MWdJdPIZ7iimVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpUx-0002jB-DM; Fri, 14 Jun 2019 16:56:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpTi-0000Wq-7w; Fri, 14 Jun 2019 16:55:05 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbpTd-0006Tl-AQ; Fri, 14 Jun 2019 18:54:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 1/4] clk: rockchip: add clock id for hdmi_phy special clock
Date: Fri, 14 Jun 2019 18:54:51 +0200
Message-Id: <20190614165454.13743-2-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614165454.13743-1-heiko@sntech.de>
References: <20190614165454.13743-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_095502_503478_CA4718F1 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: justin.swartz@risingedge.co.za, Heiko Stuebner <heiko@sntech.de>,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the needed clock id to enable clock settings from devicetree.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/dt-bindings/clock/rk3228-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3228-cru.h b/include/dt-bindings/clock/rk3228-cru.h
index 3b245e3df8da..de550ea56eeb 100644
--- a/include/dt-bindings/clock/rk3228-cru.h
+++ b/include/dt-bindings/clock/rk3228-cru.h
@@ -64,6 +64,7 @@
 #define SCLK_WIFI		141
 #define SCLK_OTGPHY0		142
 #define SCLK_OTGPHY1		143
+#define SCLK_HDMI_PHY		144
 
 /* dclk gates */
 #define DCLK_VOP		190
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
