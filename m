Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B8616EE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WBBiSe1qTXNvNNQmSGUYPTuEA13w4WKT+vazNqR2yQA=; b=GJhcnRjc/9/vVQIui35p0I7RIm
	n00Z/XRM7lYqPMCgKrGygw4LZY0wRe9v8GCwNsh1XvU0EXZ4UU2uCxn7KJqMXogXyi53zbzdiBFqW
	12yydmWkJQ+5mIi0SNXC7Vz2O8uLxjzjk18imQ1R/t2dmyiiRaBRtEvtjrjd6C+/HZI+HEV4irrdz
	uhXOzgXCASK8XkMzj1WhypasWTldllybHBF9Hk1uzbPELQJUkKjW6iDB1IikBrOpYuLWqZgJnY8I0
	rQVPgfZpWSf1G07/3NZqiCpGQTidKurmAN/bNYJ6FP9hfjDq3m+zhTBW9MrzkxTwZbTnT6OZfWIDL
	mB+/mUPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCBj-0003Gx-Qk; Wed, 08 May 2019 02:20:07 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCBS-00039Q-Ln
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:19:53 +0000
Received: by mail-yw1-xc42.google.com with SMTP id w21so5888932ywd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0EeoewR//xUbK3i0o/KJF608WXfDbgqdCwHpncewd7E=;
 b=F2tMqGfimKMC2L/JnM/7bmrZTONvFzpTAdMZbSlTIwSP04wXPaAU1dPpOrXlIuxD/n
 WneYhC5DR045ONscF2T55jKKQWX4sZp9owiMRzwCAd4tUP0D1GrHTnmKExrF/LBA7wdD
 uxUjBSjcPUH1PVnjlocdUOhFGLYhYbenYlRm23SKoFmW49lRseOIHlw15k22EfGBO7lO
 Cciwm1pgxXKl/3MwCrc0bCGHN88DV7TYey1jtk2OJ235Fk8WCL+VfqXtjSiCeFtweXv1
 fO9KgFrjwpO9hiSLwh0cSNNBIK+Zgcm1Xt/0XgCFfL90v8r716YLQfoN1ficwFBQOhp9
 8hWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0EeoewR//xUbK3i0o/KJF608WXfDbgqdCwHpncewd7E=;
 b=Wej19MlD+h3l4ou3ghjYOpJn1Dcru66J2nkGJMK0i6SR90twDMzoutfInd9nW2XDTF
 zu+p5vTovN6P3TKRT13xyduGuhA7/PTk8ZTafMcZTSL9ACNqtXNzpUWzGudyffLg82LG
 QvtHTHIyeebDJ5jNUZ1I8Z6Z88o7m2ihDOzKMntuXV8f6TZUeV498RrxbOejUhUu7iRn
 VvC+5Sd3W4qm+HEdDWNx3GbCXK2CuLrPTth8ojDP28gSIYHPUHEZvEVH6JaEjBQw/jIx
 qdhLEiaV/wNQZ/yPZPynYyC9XPPHrlrIqBfBzpR3DS3IsCenaIhcNzIfoTSD+x2UisNO
 UiDg==
X-Gm-Message-State: APjAAAWrE42BwJHxb4AsGv2NiyGWIZocSd/lxN6HAQB2nWA0dAkXWwIe
 cK92A8Er/f3DZ3EW3yZBDzGkAQ==
X-Google-Smtp-Source: APXvYqz5tnEZO73T13Fqe5LvB6yCflFzReRwGlAEa8Grn8oeyEROxsQ5uAo34ooaFhVerIbMLdIyCA==
X-Received: by 2002:a81:6d87:: with SMTP id
 i129mr20365856ywc.424.1557281988734; 
 Tue, 07 May 2019 19:19:48 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.19.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:19:47 -0700 (PDT)
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
Subject: [PATCH v2 01/11] ARM: dts: hip04: Update coresight DT bindings
Date: Wed,  8 May 2019 10:18:52 +0800
Message-Id: <20190508021902.10358-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_191951_092157_E4D78E0F 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Guodong Xu <guodong.xu@linaro.org>,
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

Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: Guodong Xu <guodong.xu@linaro.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: Haojian Zhuang <haojian.zhuang@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/hip04.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/hip04.dtsi b/arch/arm/boot/dts/hip04.dtsi
index 0f917b272ff3..f58313353519 100644
--- a/arch/arm/boot/dts/hip04.dtsi
+++ b/arch/arm/boot/dts/hip04.dtsi
@@ -350,7 +350,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -385,7 +385,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -420,7 +420,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -454,7 +454,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -485,7 +485,7 @@
 	};
 
 	funnel@0,e3c41000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3c41000 0 0x1000>;
 
 		clocks = <&clk_375m>;
@@ -534,7 +534,7 @@
 	};
 
 	funnel@0,e3c81000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3c81000 0 0x1000>;
 
 		clocks = <&clk_375m>;
@@ -583,7 +583,7 @@
 	};
 
 	funnel@0,e3cc1000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3cc1000 0 0x1000>;
 
 		clocks = <&clk_375m>;
@@ -632,7 +632,7 @@
 	};
 
 	funnel@0,e3d01000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3d01000 0 0x1000>;
 
 		clocks = <&clk_375m>;
@@ -681,7 +681,7 @@
 	};
 
 	funnel@0,e3c04000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0xe3c04000 0 0x1000>;
 
 		clocks = <&clk_375m>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
