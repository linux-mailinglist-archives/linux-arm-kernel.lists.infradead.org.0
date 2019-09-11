Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589F6B0319
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ySIHskiTsphxsONm+++/JMR8lTO4tG+3yQmC7aMiug=; b=Q1OLNhK+5RmfhQ
	JP7gMye5VoTMi0msJVGb0a2hURofx75S3BfvGTbGoFYVsBrrHRon4SFtn5JW7NL1TTSFxKsQpD1pC
	GMOIPkQaP3alDtA42wpLtaPFPtvWWJ8V4EvcK/5Rg42BtVfl8/l8/K6p72//6oTWSbPt3U1R7hiOL
	9A7NHWdOYtAVqqsff5J/6kVRIDvVIkJvpKzpM6krYmdIw3R+6nURGUJne8eQv/C5kIB8Ih5dkrCUj
	IPrML1wXmrqudXLwk0q5whZMCwnz6aGbb8fMENpE04VqeJqrc0r3iiOgHOCLVYycb2h6Yczj67esH
	6kEXascBbDPd3OIwcmdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86kT-0000IX-9X; Wed, 11 Sep 2019 17:49:45 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86iA-0006xc-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1568224039;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=mTfwQt8oJzxDFFQXPXctGO1zaD45fIs/3dbhjMrZbX8=;
 b=mW86hSc/5OKS5XYmkPbl1VPmBOiw3J4mRfM7YHjbjfnQNmXE8P1KirOYGRjTEPALMs
 jE++wXXa8siBWwt8SPAkBqKvoIvtMleF+r254BnHQ4Uc7oUFIGYkiqdzVZ00b2aOpp2D
 NVKswk2z8jQwhNJMcz4Mvhz47OH4SdsgPJuizkYUjp06s2ZzHDtNiqWc/lnrw/EjwooO
 Zb5qUw/a9+PJfUfk3v9XX+g++VQSV0iCSN81hOrsGMdjcEmlfDWP0GjH06AB2iWQ6mlq
 sdRkG9HboSe/fZqnTy9ZK74k9/bK6eQORhtWMDoo90/oIN1BLGv8K2z0KV/Cl4hqSnMw
 9lmg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7Nk1d2C6Y"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id u036f9v8BHlJ8nx
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 11 Sep 2019 19:47:19 +0200 (CEST)
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
Subject: [PATCH v3 7/8] cpufreq: ti-cpufreq: Add support for AM3517
Date: Wed, 11 Sep 2019 19:47:13 +0200
Message-Id: <beda9274922c0fdc293a974a707426fac7c77921.1568224033.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1568224032.git.hns@goldelico.com>
References: <cover.1568224032.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_104722_954801_D7E6BB8B 
X-CRM114-Status: GOOD (  12.76  )
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

From: Adam Ford <aford173@gmail.com>

The AM3517 only lists 600MHz @ 1.2V, but the register values for
0x4830A204 = 1b86 802f, it seems like am3517 might be a derivative
of the omap36 which OPPs would be OPP50 (300 MHz) and OPP100
(600 MHz).

This patch simply adds the am3517 to the compatible table
similar to a mix of the omap3430 and omap3430 structure.

Signed-off-by: Adam Ford <aford173@gmail.com>
Tested-by: Adam Ford <aford173@gmail.com>
Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 drivers/cpufreq/ti-cpufreq.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/cpufreq/ti-cpufreq.c b/drivers/cpufreq/ti-cpufreq.c
index f4704f9033e0..cd2f6b87ea3e 100644
--- a/drivers/cpufreq/ti-cpufreq.c
+++ b/drivers/cpufreq/ti-cpufreq.c
@@ -177,6 +177,21 @@ static struct ti_cpufreq_soc_data omap36xx_soc_data = {
 	.multi_regulator = true,
 };
 
+/*
+ * AM3517 is quite similar to AM/DM37x except that it has no
+ * high speed grade eFuse and no abb ldo
+ */
+
+static struct ti_cpufreq_soc_data am3517_soc_data = {
+	.efuse_xlate = omap3_efuse_xlate,
+	.efuse_offset = OMAP3_CONTROL_DEVICE_STATUS - OMAP3_SYSCON_BASE,
+	.efuse_shift = 0,
+	.efuse_mask = 0,
+	.rev_offset = OMAP3_CONTROL_IDCODE - OMAP3_SYSCON_BASE,
+	.multi_regulator = false,
+};
+
+
 /**
  * ti_cpufreq_get_efuse() - Parse and return efuse value present on SoC
  * @opp_data: pointer to ti_cpufreq_data context
@@ -274,6 +289,7 @@ static int ti_cpufreq_setup_syscon_register(struct ti_cpufreq_data *opp_data)
 
 static const struct of_device_id ti_cpufreq_of_match[] = {
 	{ .compatible = "ti,am33xx", .data = &am3x_soc_data, },
+	{ .compatible = "ti,am3517", .data = &am3517_soc_data, },
 	{ .compatible = "ti,am43", .data = &am4x_soc_data, },
 	{ .compatible = "ti,dra7", .data = &dra7_soc_data },
 	{ .compatible = "ti,omap34xx", .data = &omap34xx_soc_data, },
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
