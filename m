Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025F119D905
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 16:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8Ih5ICqdwvnM72VF78vwS7sdfIdLNPoCdQFdVQyimik=; b=UONaGDuQDcUI9HAqbgjldKKqkl
	lHpZBFOTxuowBKBP+BB/9c9Gw+lszLPpHDYUf3ICDKCUqURCrLrsiswvqIuvYD8XDkdgPthvAny38
	K8RiB4xQT6CS/Qs6/70AtUzFT8ST5PTVLDk0K7MnrVUdxDVAgyFfWaqUDzoIjC2M1HzN0IXWmbsqm
	fC/uexbMLPjP5BlYPr1VPA/9uKMOTB/T1NsjPlmigHgplqOL7ds7zvdkP6wa4G/UIoRWv/zTXX7JI
	uiyy0O3G6zwl/OiMZP4W9M69+un7mBFJGU14leetZdJI6uP5IrHamEcghTqn7mRk7akS1zaiM8D3u
	V6nV+sXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKNET-0002P4-FS; Fri, 03 Apr 2020 14:23:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKNDb-0001ri-3M; Fri, 03 Apr 2020 14:22:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id j17so8667206wru.13;
 Fri, 03 Apr 2020 07:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eO7X7pq9711SintqFPgETXqv2Z2n0tdDbbm4z7qxhxQ=;
 b=mr+nvzcL9deyVcXVL/g1iirSVwK3iqndoX+uC5K0N8OLS2lWwJzFG9Jw2Us/+fDJpW
 brLw+fuh6Ak35u+NuycplcSpqr82DZbcL0hLTZu/+IUeMfHv70EY85g6KjszihMlq5iA
 lSHDCK302Ag022kI1mIAq4N+ho3T7qHlcGZNzQvXl2zDPWFa/vGS/tAnUZqurLVHM11r
 WiZbq3t67mum6LuNLEe/neZ2QBJEXLMGOK8/86HtQtVT40k8OfRnx0CMngdy3mKuFtbT
 3V4NR93kIMMp7AZIbDs2j6RSLe193oXCWnU1L3yihX4G5Xlj/0HCPorjdSQgpacir6kO
 h8Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eO7X7pq9711SintqFPgETXqv2Z2n0tdDbbm4z7qxhxQ=;
 b=d4TabaJc3lY/sT60Klt3fk9BlHb9h+z3x5JtIJAbJyJITzXK0scL9CguYEqGm841SI
 vKgDJrqSso9Ds0tRFKEuVlU/eQtMsNRGYakJk8uStIMSYyGCrZDmFY+ZbglLLurvEMxz
 OzaGI8k7MmVSANA2nDwd6yY5BgmzG6/QnsqX9gkiz/lvg/dhTk4eI4hdxinIBt2nNfhV
 uWYKtIXG6QEjQuqXQJ705/553Nb5myqdycF5nvvdQ69eLewSp2EwWwWw/K5/o2/ejoY2
 mtzmIqB9ZBTh3kr+T4tnf31fDBc077f3l0X+tHnNBz+UY/NxK8cifZRiRvLfCsAiHEE+
 qUng==
X-Gm-Message-State: AGi0PuYdaY/k9jxJ18L8pjuzV7+CsNR1R1k4NZsy2SokErNJYz/gLxcN
 kSAAZHr3a2lJ2GbEtizx8O8=
X-Google-Smtp-Source: APiQypKqvGkEBCSrGQT9ZsOFXHyYXGCO7wGvqTuF8jcFlGkZFIKO0QpJ3Mhc4I2GDp3Z3cr8LBDI5Q==
X-Received: by 2002:adf:f8c1:: with SMTP id f1mr9559333wrq.345.1585923765447; 
 Fri, 03 Apr 2020 07:22:45 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u16sm12132223wro.23.2020.04.03.07.22.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 07:22:44 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 2/2] dt-bindings: display: rockchip-vop: add additional
 properties
Date: Fri,  3 Apr 2020 16:22:35 +0200
Message-Id: <20200403142235.8870-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403142235.8870-1-jbx6244@gmail.com>
References: <20200403142235.8870-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_072247_248604_172E64E3 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes v5:
  Add reviewed by
---
 .../devicetree/bindings/display/rockchip/rockchip-vop.yaml    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
index 42ee2b5c3..1695e3e4b 100644
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
@@ -94,6 +103,7 @@ examples:
   - |
     #include <dt-bindings/clock/rk3288-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3288-power.h>
     vopb: vopb@ff930000 {
       compatible = "rockchip,rk3288-vop";
       reg = <0x0 0xff930000 0x0 0x19c>,
@@ -103,6 +113,7 @@ examples:
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
