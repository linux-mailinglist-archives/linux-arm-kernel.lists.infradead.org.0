Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08FD16EE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uOMfTjDZJ/gZvECPHqNFskvBGBLOaCOs5lf1fqIJK/c=; b=Aefv0eoq3SIzYAfL8XRZ5zyBHX
	0VzzTK3paAAZWnu5ssfyJFZCXtD60ik1fVD0bLaGnuhtoVRzYkg7Bgpwd854LaX/Bbu0EixLpPIco
	hV1d8nHvAjA27pDyiq0RYMcSaDPZKt2EX/lX0fMiLr6Z0EWfAgF3tPotNSFyA8/y0AfXSEE1fYj+w
	Sfps1F5bZ8LAc5n+gO4f5lMNB283s9go5s7LBhIK203NQmw0gqSsb0ds6CfD10SK1+3LC/0AeUUyh
	cgaPkVEP41xpRtOGbhPJhA4PBJdfqOUXjg8unjO9tfgzfoAPulboOXyiUOATNQcjxbM6VoImVWmhD
	AbvOBHcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCBx-0004KJ-BE; Wed, 08 May 2019 02:20:21 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCBa-0003Hd-55
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:20:06 +0000
Received: by mail-yw1-xc43.google.com with SMTP id n188so15005105ywe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EJcheVh2VdnVEm8ir4B4beYwlwhOMfHWAEVZqUrLmdY=;
 b=p/eCSvrcLDZ3saZccWINQ109dB0I3a8hAVs99je3InpqziiOYpiYVfCJjumpxjXllc
 XCnYvbctI+g4kL0+WVM2sCWoAuOwXIAhLHG3iyAXhHr5+E84B60yt0AcT0fEFkzRL8LK
 I9+n3PSNFP9niT7U3k5Ags6fH+hYcB+p4ph5y9KIzcFqDWz+fzD/qsG4gMowdUw/GViv
 UGwf4wAyl9+YnQA86zfj6xq7pnk52N0F8usHXwiWPVUpKPSx74JTmWlxhn7URI02VgxN
 xlenWVyVV3TH0J8RnUqEk9hoU8hvK5Z7agLQhLLE+IYVuc1H2UEBZdsiHAgSL6HdyITu
 v3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EJcheVh2VdnVEm8ir4B4beYwlwhOMfHWAEVZqUrLmdY=;
 b=N/LZqbu0YCAy1R1n2evz3SBMQNu64/tXA9RP092ObxEte8xzYoJdXL5RM3McDBSfdi
 fqEzmo0vRacCLlg7iqEfG1dqWFEXPjbC6N03nOfmfcKjexOPmg+3UkFiqbzBz/KnpwxU
 o5Gr4rjfhx/2ezm9Fi8xEKxVZAHZCmt62ocN11jBSR8WDV+QYGxrek8JoPYKWqBgDAg+
 6bkHX2GOY4cm7aL+j/f1TCN/IaPbqLnWSoEIzSXOHgCcNhT2Nd8e5LWb2t1os8BWz3rJ
 1pQOeJea9YzoixcFa6coPomuBpSEkigtZHb/d6emdUO/ls3LuaQ+4vsv8l2lRiDDz1Lw
 OROQ==
X-Gm-Message-State: APjAAAVAa62f6X6x4bQBAGyfYoDxw1InAQkddZC78xkropsFXq09bK8D
 fTOGroQSbZhoyVA+mZ+5zJEmTQ==
X-Google-Smtp-Source: APXvYqy114deqNgQb7N10yZoINB5kBO7zPcLq30xR6rE9zB8xFdeDOpPGqIuNv46YKnOqdetLwfiig==
X-Received: by 2002:a25:d64a:: with SMTP id n71mr23617255ybg.462.1557281996153; 
 Tue, 07 May 2019 19:19:56 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.19.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:19:55 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Wei Xu <xuwei5@hisilicon.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linaro.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 02/11] ARM: dts: imx7s: Update coresight DT bindings
Date: Wed,  8 May 2019 10:18:53 +0800
Message-Id: <20190508021902.10358-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_191958_958249_40BB2360 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Chris Healy <cphealy@gmail.com>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CoreSight DT bindings have been updated, thus the old compatible strings
are obsolete and the drivers will report warning if DTS uses these
obsolete strings.

This patch switches to the new bindings for CoreSight dynamic funnel and
static replicator, so can dismiss warning during initialisation.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/imx7s.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 106711d2c01b..d8b4eb67146d 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -117,7 +117,7 @@
 		 * non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell"
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -175,7 +175,7 @@
 		ranges;
 
 		funnel@30041000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x30041000 0x1000>;
 			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
 			clock-names = "apb_pclk";
@@ -217,7 +217,7 @@
 		};
 
 		funnel@30083000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x30083000 0x1000>;
 			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
 			clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
