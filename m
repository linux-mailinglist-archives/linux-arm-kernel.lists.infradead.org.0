Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744D81CFF6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EQBJg3zEkbrfCGTz9t8qz4jfNwWe143zDkwrQf+3AAQ=; b=XWiQ5GqNFfCNxsUjkGfUlUe1l0
	4O9wAqn/C9gZ1TOORPI+1loIfXYaaJ2AjCLvrNW/IxBE05kxPdz/4V8/9Iq/7vp38HPLDgrPNnHlm
	pYi/eoFFM8nz9t0BPO2Pl6wksfMFhlvRb3GzgIUER2XTgNuUNwllKUFT4MfMbXxberA2MZmlEJl2k
	i/kRrcC+DJzKJClCFtFIreT026R8hU1VHPHjty5iK4DYAf+RpmacWPX6o6vGh2ESNkH2xuHKUpJqp
	vBDFlLX75Sf4sQfWj3ekOUp1sNtHunmCEgHiaGNS/gc3oRNiH8iaS/GgT9LCmsGQUTgxVu8cEbPqk
	SfLJRPpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbdE-0006I1-OE; Tue, 12 May 2020 20:36:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbcm-00063p-I9; Tue, 12 May 2020 20:35:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so23685363wmk.5;
 Tue, 12 May 2020 13:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gfYE1e6W8kjaePoAQJvSuLN/OYX7PHv4LVzW2vnvs4U=;
 b=I3BtlE50IX115X0cHcjGheao2fxSRSlgpqWGc8ZET71/zj63DBUKXHE/Wieum6e4c4
 VGdiXNtHVJBKEdPIuvVBf1ytH/bVZxmIr4ahCHaIFeNiUhS+rOMVJQqsiOv7l3IoPJoO
 A2VYw8mXegEyhDe5gjVmAOScnkhEaFkMEyq6sbUaB73qoGmqaQ5SpwvMNhz3m3QxWRji
 swhTBh8fq7iT3hZQem31dUbr9LXAf4EdqeG0nrvJAe7pz2ldzoziCtCUAKZ1K+/vvejU
 wSgCPwRtIEB78tyLvUk90dAy8K+qIrddX0ocsUJLtEUWTdfbLRBfgZE4LM9dBsQ/spzU
 zyHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gfYE1e6W8kjaePoAQJvSuLN/OYX7PHv4LVzW2vnvs4U=;
 b=QrsvIzbJZGXq1MBpVnNuMd6s+aSQEircbSEU3/Ups6+imaqljMVhaR8JBJLhP39A9b
 fFNgxYOVkjVx7vOGwNsIrJ9SgBqhf8k2xaiZ+QemeGqf1hkLPPnDhndDPgl/YmBi+y0s
 WZSsJxaM5kpZ8QYTVcA1TYJOobAAiTaKshsvH9aloCbggfmexPfVgglUdqtUd6gx4V6A
 O8DNQTHRKY8DCR9qGImoC0VxkQpI1cBVe+Te2IsYMW7dERhwPHrp/SF9y0rnze/kUa2+
 RfQ2ztChvDuGteUOo9mC9QbfZ22yaUhUZaS25HulOd48pHPahQ5stNYE3iAArC9Kqlez
 9oqQ==
X-Gm-Message-State: AGi0PuYwgpthMQj3LWelniq1tgJU/SE7s+D+ZoO+1aU8zpPbKEm1ePMH
 4uAUyMgZQCovVb1xQpa5idI=
X-Google-Smtp-Source: APiQypKMLhrmlE4mch02mKHfNsvLNU5k6H13Y813A4y7x5vB6uvf/fomIIo8HMl3YQ+LDfVL83lRmw==
X-Received: by 2002:a1c:1d41:: with SMTP id d62mr18782392wmd.79.1589315734959; 
 Tue, 12 May 2020 13:35:34 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k131sm418219wma.2.2020.05.12.13.35.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 13:35:34 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/3] dt-bindings: pinctrl: rockchip: update example
Date: Tue, 12 May 2020 22:35:23 +0200
Message-Id: <20200512203524.7317-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200512203524.7317-1-jbx6244@gmail.com>
References: <20200512203524.7317-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_133536_596125_3759D15F 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Rockchip dtsi and dts files have been bulk-converted for the
remaining raw gpio numbers into their descriptive counterparts and
also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
mappings, so update the example as well.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
index 2113cfaa2..d3eae61a3 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
@@ -110,8 +110,8 @@ pinctrl@20008000 {
 
 	uart2 {
 		uart2_xfer: uart2-xfer {
-			rockchip,pins = <RK_GPIO1 8 1 &pcfg_pull_default>,
-					<RK_GPIO1 9 1 &pcfg_pull_default>;
+			rockchip,pins = <1 RK_PB0 1 &pcfg_pull_default>,
+					<1 RK_PB1 1 &pcfg_pull_default>;
 		};
 	};
 };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
