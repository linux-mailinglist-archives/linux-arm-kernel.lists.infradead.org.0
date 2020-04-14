Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847B61A9703
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lh0SUu2hr0E0gtYC528eeluzFEPJlUXSFcJKRGU1+qw=; b=Qk8eXo/pWLkEK1
	08ftDspvZKxvMJ4fUp1LnfhDqE5Ns4Kg/jN2PyPRRgH5DI0TlF2DCVOFEyR9IbQY7ne9DkJtvy7MR
	ES55iNcCIpp44cdWiCwaugW21nOOM7aNipRqTtvZnfMyD7AVyiogLV4ipo7JRcWrZE8L1xBemiw1p
	vWqTA3PknCjgQI1mH3D6Z65szEwVBqzRWEbMsWa69hzdMwjpm5Z39qhU+lM3gLiThQJ6bQ36685BF
	XM1+lDUwkFNzU/pIM83c+WC79jmcPsXV1C96UhTuiW8kTTFfOU2kH/FvaqjIvmynDhXgY7OAKmGUV
	D0wg+vb92JhWFwtTwrNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdbj-0006es-TM; Wed, 15 Apr 2020 08:41:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdYz-0001hH-E4; Wed, 15 Apr 2020 08:38:30 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jOGx5-0007Fi-9I; Tue, 14 Apr 2020 10:29:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v4 2/3] dt-bindings: Add binding for Hardkernel Odroid Go
 Advance
Date: Tue, 14 Apr 2020 10:29:37 +0200
Message-Id: <20200414082938.2977572-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200414082938.2977572-1-heiko@sntech.de>
References: <20200414082938.2977572-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013829_514102_AF6ADE3D 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Rob Herring <robh@kernel.org>,
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
Acked-by: Rob Herring <robh@kernel.org>
---
changes in v3:
- add Rob's Ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 715586dea9bb..d4a4045092df 100644
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
