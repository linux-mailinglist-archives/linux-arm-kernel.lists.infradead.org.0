Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CADD51F2826
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3A6NUmHR4RztbQEvGZQeQCraMv00lElhU3FKstBEVM=; b=VHXq/+9gf4DS+D
	F5jqS6gDfsYGCgMyOn1ByxlcYuzZotJz8zE/VJMrvoayr2S0stQkdW5sP1v6l3AUqq9QjJQJLWC7/
	XEgdsXeaZffJ3Um4VnRI8vjyRrBywNx16EeSFpLl/tJcqPyVQHSIH4vNgHoja3tmXcEJp4pzQo4Bm
	J2GhrFI/p6P2t/PbIKjTLWbwqTH/TsBFu5a7LKv+a9A+1RaFX+FEcalcJD0hbo8VuA0UuM6xjv8Xa
	E51tK+a/PABb7iCcE7ov//7cTCkXStjYHvDbsu2QhTT8/Zbn9eWolZQ9M+HlVh8KK3BLDBigGXabU
	P+b5QDozYyTi+5a0sGbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRc7-0006CC-Em; Mon, 08 Jun 2020 23:55:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiRAa-000801-PL; Mon, 08 Jun 2020 23:27:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5E212078D;
 Mon,  8 Jun 2020 23:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658828;
 bh=JpyXvZPwGmhcDX7HBvEqn00iZ7V++vRJV0NKykGQJf4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GOPe+DPouTkMogf9DFV/c2fHeFf+WNPF6+pdll2L2mq/McZb0hPqXkknU1U55+18e
 6gjcX7zAj/XldOLb73XZxbbexm+3tf+XHqmKAD4fqcAPRZExEyd/1vy26QYnxV+wxX
 EPP4DNt1xLYpltfD1nfYGZnRHnaIO2Fj5g2q6k5U=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 19/50] dt-bindings: display: mediatek: control dpi
 pins mode to avoid leakage
Date: Mon,  8 Jun 2020 19:26:09 -0400
Message-Id: <20200608232640.3370262-19-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232640.3370262-1-sashal@kernel.org>
References: <20200608232640.3370262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_162708_914226_26B340D5 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Rob Herring <robh@kernel.org>,
 Jitao Shi <jitao.shi@mediatek.com>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jitao Shi <jitao.shi@mediatek.com>

[ Upstream commit b0ff9b590733079f7f9453e5976a9dd2630949e3 ]

Add property "pinctrl-names" to swap pin mode between gpio and dpi mode.
Set the dpi pins to gpio mode and output-low to avoid leakage current
when dpi disabled.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Signed-off-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../devicetree/bindings/display/mediatek/mediatek,dpi.txt   | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
index b6a7e7397b8b..b944fe067188 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
@@ -16,6 +16,9 @@ Required properties:
   Documentation/devicetree/bindings/graph.txt. This port should be connected
   to the input port of an attached HDMI or LVDS encoder chip.
 
+Optional properties:
+- pinctrl-names: Contain "default" and "sleep".
+
 Example:
 
 dpi0: dpi@1401d000 {
@@ -26,6 +29,9 @@ dpi0: dpi@1401d000 {
 		 <&mmsys CLK_MM_DPI_ENGINE>,
 		 <&apmixedsys CLK_APMIXED_TVDPLL>;
 	clock-names = "pixel", "engine", "pll";
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&dpi_pin_func>;
+	pinctrl-1 = <&dpi_pin_idle>;
 
 	port {
 		dpi0_out: endpoint {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
