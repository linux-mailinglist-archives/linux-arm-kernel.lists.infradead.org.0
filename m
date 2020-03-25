Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082EB1925E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OshEdFkSGzpsxU1jVpWboXRWixSDab92s1w3qlMZUeE=; b=M63kxyQGFVkHJ+BEM/WP0E1LHr
	tIDFn/59WZpDw34ZlAltovhKgt4HIRgYNANvO3Y83JPD+uV1803n/ZWBZXxobDx9GafX8dvYsMBf2
	ZADhda/jcnfMlHzyuK+CAHAP6Xonlh2rIGq1WAzn0xqPURz46p0v6nGBHCr2QCzgT2IBayFtpuz6z
	IUsdXMqK6gx6w65VaTMYDD3DHRtWCJ0PJZDJvHDrFs8lMZ611wlBssX0j2UPpbDiuiSUmJqN0lE1Q
	xDlutwZiO+uo6jSqN7oK6slHl/9JCq2C71/WrqGutabxl/746s4CYZ/n+rUhnDLl63Udi64zeTO2C
	Q0onXhIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3RG-0007Sf-WE; Wed, 25 Mar 2020 10:39:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3Qk-0007I8-FH; Wed, 25 Mar 2020 10:38:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id d5so2348184wrn.2;
 Wed, 25 Mar 2020 03:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/wgvz2lVpp5+P73ebkZ5cpJlG6NyplWSlH1ZFZco8LM=;
 b=eReNsT3/ql4XtBGPugbUGLIbqp4B391Ps/1xoYiR+OGIUAH8+B72MCrP2HlKPfoWaP
 pqYGsv0O8ZMQL6PQ+IalWVy372tw3azPRtzZgqDbyElePH+Tqh+q33JT2PdJ0HFxNGP5
 qRaT84ztZV1Oows1zWBxj5nUJUo4aoP26PcBpAec19SxZPm2MMk9Uq/svtyyxKJa3orv
 yvka7cvw1E52RdM4qI00bCg31CXx3lSjeUvvg7UbfjpHHVojeBhPr/W/FFRckGeye2FJ
 15R/lKijLyeFma7tkjaxFYbz40cTthdWPkHJoqQNrVmFBJPB1baHaW6/959pOfdz/cVB
 JpJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/wgvz2lVpp5+P73ebkZ5cpJlG6NyplWSlH1ZFZco8LM=;
 b=V7PF4ylCI0RS7lq8ybiNXPlgWhC/d5OwaXFx2yb9COu3mJwEwLcAQrKAxV5jVrO8/P
 cCGddzOG8khpq1MP2fGnNYf5fYaObvEp6VoI50iSp7EWUKC38OOUvS2LfxPnSUQ2lvHQ
 8iAxf7la13QJsASYBUSlOy8++G00GNY99kC8ve+q7aYrYGWmlE1ZJdMq7FTtTBQremq+
 8hUpVcyND4Y4yxHzw7H2UdSymaL4QRKLQb6W4g8fG6wwl3dCl9JlqN93sWrvKr0gffsZ
 FJw/2BggrascmgH9jLdPJ/9zEtM3CqhJN6BdpzP/ts/hMYCnh1I6izxYGyCL6NPVZbr5
 C8qg==
X-Gm-Message-State: ANhLgQ3yBmYAVdQUSTWB4axSY13AL91jBacEsoYwLkFxZSHsKDs5kPBM
 B1Vsz14VuSH7BoHo2QRxQsA=
X-Google-Smtp-Source: ADFU+vt2Dw8Gg8y8PXMVIdEPTxwRM9hacRHxiTFN7DEjZdRm/qg5K+XBLFsyyZk6b1ZiLZCI4gwDuw==
X-Received: by 2002:a5d:53d1:: with SMTP id a17mr2871409wrw.41.1585132716907; 
 Wed, 25 Mar 2020 03:38:36 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i21sm9163108wmb.23.2020.03.25.03.38.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Mar 2020 03:38:36 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 2/2] dt-bindings: display: rockchip-vop: add additional
 properties
Date: Wed, 25 Mar 2020 11:38:28 +0100
Message-Id: <20200325103828.5422-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200325103828.5422-1-jbx6244@gmail.com>
References: <20200325103828.5422-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_033838_507109_3F9B61E3 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, airlied@linux.ie, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'assigned-clocks' and
'assigned-clock-rates' for rk3399 and 'power-domains' for most
Rockchip Socs in 'vop' nodes, so add them to 'rockchip-vop.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/display/rockchip/rockchip-vop.yaml    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
index bc58c5132..497a9fb2d 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
@@ -75,9 +75,18 @@ properties:
       A port node with endpoint definitions as defined in
       Documentation/devicetree/bindings/media/video-interfaces.txt.
 
+  assigned-clocks:
+    maxItems: 2
+
+  assigned-clock-rates:
+    maxItems: 2
+
   iommus:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -95,6 +104,7 @@ examples:
     #include <dt-bindings/clock/rk3288-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/rk3288-power.h>
     vopb: vopb@ff930000 {
       compatible = "rockchip,rk3288-vop";
       reg = <0x0 0xff930000 0x0 0x19c>,
@@ -104,6 +114,7 @@ examples:
                <&cru DCLK_VOP0>,
                <&cru HCLK_VOP0>;
       clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
+      power-domains = <&power RK3288_PD_VIO>;
       resets = <&cru SRST_LCDC1_AXI>,
                <&cru SRST_LCDC1_AHB>,
                <&cru SRST_LCDC1_DCLK>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
