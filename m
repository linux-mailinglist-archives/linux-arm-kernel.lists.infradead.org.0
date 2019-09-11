Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF270B0320
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFgw7zg2PdqOqGyib1Qz8NyZsHDz9xzACP6VGNH5zFY=; b=ad3Ci53R2NYGIg
	xHY+UZgj3Emr/gdSaRh/dEqGK5/9G30U/gvXTmFkSgkrfZ/t9U8HdKAZuEK5SZaFdzIVU5gYNRrkd
	Y3VmH24o3EKxZ+r9XSgvuAjGXW7xnG/oQaaeTIsdBdBWnCuAwhKWnMm+8+CPCQ+CaeVy8F8hf6gjO
	j3DJEhrYJ6hJq7wT2llbgulOffUZ+kR3TKs+9oA634sOyfKzj26YfyjfZTz8vJbMmykC/FeI+hgZo
	aia1d6Z7Stbecz/i6HHDVzDQnSGDFAP84dgsgrnvWVD/M6L/KtqksEqDAE4q8ECwyCWpsFAjluPT2
	QWg+cN5Ryjbl3nFwgCYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86ki-0000Xe-QN; Wed, 11 Sep 2019 17:50:01 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86iA-0006xC-Mm
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1568224038;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=9bpVfrWumTLzwbXZnEeTQC1ZDdnPwSUlf2P3XT0k/to=;
 b=U89t0WkD2s/tVRHvJZwgZgYXjt/xBEYDAGj437+j0ElYeeiMftBam9bT3BofpOKawA
 1hdB7XHEM6c6IKEumRIuHKsuHz77M289lMHSXsTHinUATUwe0aWjCSg8epoRSyb9P6iv
 QP003PU9/QiQkZok0vRlwJphueJ7foX8oWzUhTcEcx2It6zLvXGCKjs2R+TryunAb6cg
 KOkodJ7Xzwo4URyUCMD9EF0VFA8XR8Ry/WwGjLm+eEQ2PVcAfAwdNMyGo0roDeB1czTo
 FPMruqcYof3Sk45/AiXEquhvhEhHHaKUkeGuo9TpfR4+VypIlPzIctW6jJoEru20KTYE
 IrHw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7Nk1d2C6Y"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id u036f9v8BHlH8nv
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 11 Sep 2019 19:47:17 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Adam Ford <aford173@gmail.com>,
 =?UTF-8?q?Andr=C3=A9=20Roth?= <neolynx@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Roger Quadros <rogerq@ti.com>, Teresa Remmet <t.remmet@phytec.de>,
 "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: [PATCH v3 5/8] cpufreq: ti-cpufreq: omap36xx use "cpu0",
 "vbb" if run in multi_regulator mode
Date: Wed, 11 Sep 2019 19:47:11 +0200
Message-Id: <1c803be8060fb99b7d92e2f5cde3c0e1962fbe2b.1568224033.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1568224032.git.hns@goldelico.com>
References: <cover.1568224032.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_104722_890953_C1A80511 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5303:0:0:7 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@pyra-handheld.com, letux-kernel@openphoenux.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for using the multi_regulator capability of
this driver for handling the ABB LDO for OPP1G of the omap36xx
we have to take care that the (legacy) vdd-supply name is
cpu0-supply = <&vcc>;

To do this we add another field to the SoC description table which
optionally can specify a list of regulator names.

For omap36xx we define "cpu0-supply" and "vbb-supply".

The default remains "vdd-supply" and "vbb-supply".

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 .../devicetree/bindings/cpufreq/ti-cpufreq.txt       |  6 +++++-
 drivers/cpufreq/ti-cpufreq.c                         | 12 ++++++++++--
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/cpufreq/ti-cpufreq.txt b/Documentation/devicetree/bindings/cpufreq/ti-cpufreq.txt
index 0c38e4b8fc51..1758051798fe 100644
--- a/Documentation/devicetree/bindings/cpufreq/ti-cpufreq.txt
+++ b/Documentation/devicetree/bindings/cpufreq/ti-cpufreq.txt
@@ -15,12 +15,16 @@ In 'cpus' nodes:
 
 In 'operating-points-v2' table:
 - compatible: Should be
-	- 'operating-points-v2-ti-cpu' for am335x, am43xx, and dra7xx/am57xx SoCs
+	- 'operating-points-v2-ti-cpu' for am335x, am43xx, and dra7xx/am57xx,
+	  omap34xx, omap36xx and am3517 SoCs
 - syscon: A phandle pointing to a syscon node representing the control module
 	  register space of the SoC.
 
 Optional properties:
 --------------------
+- "vdd-supply", "vbb-supply": to define two regulators for dra7xx
+- "cpu0-supply", "vbb-supply": to define two regulators for omap36xx
+
 For each opp entry in 'operating-points-v2' table:
 - opp-supported-hw: Two bitfields indicating:
 	1. Which revision of the SoC the OPP is supported by
diff --git a/drivers/cpufreq/ti-cpufreq.c b/drivers/cpufreq/ti-cpufreq.c
index f2f58d689320..1a3073a3093e 100644
--- a/drivers/cpufreq/ti-cpufreq.c
+++ b/drivers/cpufreq/ti-cpufreq.c
@@ -41,6 +41,7 @@
 struct ti_cpufreq_data;
 
 struct ti_cpufreq_soc_data {
+	const char * const *reg_names;
 	unsigned long (*efuse_xlate)(struct ti_cpufreq_data *opp_data,
 				     unsigned long efuse);
 	unsigned long efuse_fallback;
@@ -164,7 +165,10 @@ static struct ti_cpufreq_soc_data omap34xx_soc_data = {
  *    seems to always read as 0).
  */
 
+static const char * const omap3_reg_names[] = {"cpu0", "vbb"};
+
 static struct ti_cpufreq_soc_data omap36xx_soc_data = {
+	.reg_names = omap3_reg_names,
 	.efuse_xlate = omap3_efuse_xlate,
 	.efuse_offset = OMAP3_CONTROL_DEVICE_STATUS - OMAP3_SYSCON_BASE,
 	.efuse_shift = 9,
@@ -298,7 +302,7 @@ static int ti_cpufreq_probe(struct platform_device *pdev)
 	const struct of_device_id *match;
 	struct opp_table *ti_opp_table;
 	struct ti_cpufreq_data *opp_data;
-	const char * const reg_names[] = {"vdd", "vbb"};
+	const char * const default_reg_names[] = {"vdd", "vbb"};
 	int ret;
 
 	match = dev_get_platdata(&pdev->dev);
@@ -354,9 +358,13 @@ static int ti_cpufreq_probe(struct platform_device *pdev)
 	opp_data->opp_table = ti_opp_table;
 
 	if (opp_data->soc_data->multi_regulator) {
+		const char * const *reg_names = default_reg_names;
+
+		if (opp_data->soc_data->reg_names)
+			reg_names = opp_data->soc_data->reg_names;
 		ti_opp_table = dev_pm_opp_set_regulators(opp_data->cpu_dev,
 							 reg_names,
-							 ARRAY_SIZE(reg_names));
+							 ARRAY_SIZE(default_reg_names));
 		if (IS_ERR(ti_opp_table)) {
 			dev_pm_opp_put_supported_hw(opp_data->opp_table);
 			ret =  PTR_ERR(ti_opp_table);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
