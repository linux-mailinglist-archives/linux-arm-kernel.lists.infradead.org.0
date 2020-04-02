Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1741D19CCE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 00:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QEL9rpBvCPmo5a9B+ExVrudMBg+V9tyYVgXJDZzYAlc=; b=utVYsHrMcaVW5XQ4j6vc3uUxrx
	JmdclwbVfs7+lLU2TkmTTnZkBLjKOs06+iFJEZ7GAtVkLCXVo8Qwnq9uQHtIJr0a/bbIKOtIXxevR
	UIBhHaQOgBBTWqWNb7JWsFrRPQAsbRq4AQqhO8M04WUlQi1+rhjh8rV0vMooxubORXqH9zOa/PNOw
	oeYriYNnObwTI57XdHKwwUE8LNJCYTezIwB/AwTiB7VLHeXlyXlnC6OfSMR6G4002EEEJzZw5msV7
	GIUx0sA/CZWTXyKUeZIRYxLnZYTHSWRloyv9X1LXKkrHxEzfeeyg91G23Gycy2LuJOc5gNbKxsabE
	8ZfG16cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK8P0-0006wV-98; Thu, 02 Apr 2020 22:33:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK8Os-0006vT-L0; Thu, 02 Apr 2020 22:33:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id 91so4253243wri.10;
 Thu, 02 Apr 2020 15:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4SOzz1DmBA7mljFUWMggCDnfrvoqqdJY//N8mPAQhYE=;
 b=t1HKdcbKty17TKBnfpHl9npkiUav5NHVZLIc1xKNUBA5d7dKzmU/xIGPzs5ednbGGd
 XBAWp+f+UzLLgxY0lGOe63/h5U4+ZjL74YC4CLYQpwgekrVMBrdc48g/LMuCvAohXz8i
 2H2b7sueZ57tIvgGVF27yr7Vmf94+RdRcJXkveoqt89D75MzkbuysqCcFLwIm3NrfH2M
 jcJcLvsi/FyfidJB56IDME0T3gXtqOxFqDoGEEtyqR9GNeLxaxz70REq7bfKRbbioGN0
 AemGYKtlsIZjDw5GDhGwbs5S5bs8r5wE5Ho0at2yPap3x/klIjCWLzA4lDgdi0sZWyn4
 6w5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4SOzz1DmBA7mljFUWMggCDnfrvoqqdJY//N8mPAQhYE=;
 b=IRg1nsq3Xr4qexN8YVQ5Rr7V9q0xFU8tttDdpAkh1hgyBAs/jU5wbnUWt9BFietplF
 F+8ujBE0zJtHOwYel13hBs+RranVyx8EC2LCbjtz5+jeiOcz0q42huK37JQSnCvRBHje
 aCtnxYNxxTyBL9Jme6gRNrLs3j7EvOy7WrSLtntPWtQV26sy8ckJWfEa5rubI2z44XCS
 g8KsSWPT/G1VghriIKk1gWC1EK3ZJ3ojf7FtjS5ShsUAoLK143xLtKVK7ISNnFd+Nkgv
 Q0d3QA9vNOdh6zetplEPyk9zzkD51xk7syQJ+LtuzcoG1NiL/amAu+kniZ8XTQOUg5ko
 thmA==
X-Gm-Message-State: AGi0PubNrr5cB6dB32oY4jbt5Ax5HNk7t+/ouSPUjBnZ7F9h1NiPDyp+
 CG5Yta+5iHcOU4/+EKpNwZY=
X-Google-Smtp-Source: APiQypIZt8F4WTEtOcpr3GqFL8NVQOdrHJWExW7CZcX1Qg3fbPjjurB+yXpmAacN7vVbPadI4hsFJw==
X-Received: by 2002:a5d:45c7:: with SMTP id b7mr5291373wrs.44.1585866805442;
 Thu, 02 Apr 2020 15:33:25 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g186sm9267729wmg.36.2020.04.02.15.33.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 15:33:24 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jacob-chen@iotwrt.com
Subject: [PATCH v1 2/2] dt-bindings: media: rockchip-rga: add power-domains
 property
Date: Fri,  3 Apr 2020 00:33:15 +0200
Message-Id: <20200402223315.12260-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200402223315.12260-1-jbx6244@gmail.com>
References: <20200402223315.12260-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_153326_682805_AE433F4E 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'power-domains' for rk3399,
so add it to 'rockchip-rga.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index 3b110b574..dd645ddcc 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -39,6 +39,9 @@ properties:
       - const: hclk
       - const: sclk
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 3
 
@@ -63,6 +66,7 @@ examples:
   - |
     #include <dt-bindings/clock/rk3399-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3399-power.h>
     rga: rga@ff680000 {
       compatible = "rockchip,rk3399-rga";
       reg = <0xff680000 0x10000>;
@@ -71,6 +75,7 @@ examples:
                <&cru HCLK_RGA>,
                <&cru SCLK_RGA_CORE>;
       clock-names = "aclk", "hclk", "sclk";
+      power-domains = <&power RK3399_PD_RGA>;
       resets = <&cru SRST_RGA_CORE>,
                <&cru SRST_A_RGA>,
                <&cru SRST_H_RGA>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
