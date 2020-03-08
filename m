Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9581A17D6CE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 23:33:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/d8wtlbw/TfnFHtXBToK6Go2YaHSSVUHQoPjK2LZ6Y=; b=eSU4DdpIHv7nH6
	NrudjFU2XSovPEvGj8djL4u/Tlyzgp2sYaSzAmjiGTwNrnkuYAK77/w1UduJzV6xZL1d7WfpKhmiu
	+RICOnHsJzBBPYcDe4+lA4NBeErqVrX4QpsxMn2eydoygH4DzwjVcDppkjivQ3egj5SMmB3N+a3Z4
	uohlUD0HN+eu2uhIbjx2NEdLCVyTnhjIADLxCgGZ4/l+HkuYjFMVa/uXdJ0K2jMv0+lk5TYBk6rMI
	lrPnyLBxCLf2LCP0OeNal1u9paBy4fvPC3fad+0CUuc3PJpP0rPfNPRhmE39P2IKaaAsP3x/guTOU
	TWaQsZ5Yqu/GGzEWL0Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB4UJ-0006zu-ID; Sun, 08 Mar 2020 22:33:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB4Ts-0006lN-PA; Sun, 08 Mar 2020 22:33:10 +0000
Received: from p508fd11c.dip0.t-ipconnect.de ([80.143.209.28]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jB4Tk-0003xR-OY; Sun, 08 Mar 2020 23:33:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/3] dt-bindings: Add binding for Hardkernel Odroid Go
 Advance
Date: Sun,  8 Mar 2020 23:32:49 +0100
Message-Id: <20200308223250.353053-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200308223250.353053-1-heiko@sntech.de>
References: <20200308223250.353053-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_153308_960544_5342A299 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 kever.yang@rock-chips.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 jbx6244@gmail.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add a compatible for the Odroid Go Advance from Hardkernel.
The compatible used by the vendor already is odroid-go2, to distinguish
it from the previous (microcontroller-based) Odroid Go, so we're keeping
that, also to not cause unnecessary incompatibilites.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index f4ba00d679e6..4343ce7880e4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -358,6 +358,11 @@ properties:
           - const: haoyu,marsboard-rk3066
           - const: rockchip,rk3066a
 
+      - description: Hardkernel Odroid Go Advance
+        items:
+          - const: hardkernel,rk3326-odroid-go2
+          - const: rockchip,rk3326
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
