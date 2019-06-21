Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D564E8F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 15:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=98YGtH+4B0ztNwsv1j3hAGRSLkeKiStcaUFNEOcqjFk=; b=tj0QfX1vqbEfE0SzrwcOdxuG+g
	+d6CVH/ARVtmw9eELMMk60mgLZfHMVjKcZBflSt6o5HppLxDZogv6Rhn4NkZO0XVsarF/YoDQ0mM6
	GcvwDYURYVmfXokKB11FV/6/3xtT58Z9+2onRFu9lplWci5RHOXKr3cw5CfTh+9Msi37K2fW852U5
	kSjFF+FhMtglo1uLTtO7FiSWpLlYS0p1aFCz3telrNheUGoPoXLg3Iiimj4jsoYldOSykQ8JvsttZ
	K4/goc9szPhRNlusbFpwy8/NJnqrUu9SAbti5yyIzTnsFHuywdOLtFZMqUlvr2lLdOB6E8jgw2x9u
	LGwibAIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJWO-0007T7-8s; Fri, 21 Jun 2019 13:24:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heJVu-0007Hk-A5
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 13:23:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id k11so6611458wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 06:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fq+Z50AlOAOovE68oIdAizLRw1Oe4GlAcSjc3Z5IAmg=;
 b=Cy8gsxAuPsWgA60+HCVbZ+nbzkJ6dlQSJjSVksW3OiAEHQUBROFi9UyiWxOUaGvUFx
 HuIGfoWy4Oqmng0EYzN9T0AaggH6lVP/7XJARkS/T9U9Klu6591jGN+U57ZTR1LiXr1c
 sOcYSMoUCEiMdHFihphRgKBFw9928QEYbt3CP05DCmdyHgqpRqZzMXfGgwZkrIKrfaJN
 o3ZpZVctPxxGqqonaD75qt4XOUxuMJSBAawKhGVPIgftzDjSusRc4HWL8Tz6yG2j9sXu
 l3c+2p/Bez1KE92iW8V/vPPJqZ4W0WE6Y84xI4VcQfvliIW0jMhlwaHNVfVGSY6eznZ4
 juuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fq+Z50AlOAOovE68oIdAizLRw1Oe4GlAcSjc3Z5IAmg=;
 b=jFhgNi2Lo4khG4FSMurUUIqg573yBoEJMfQ2575sHlV6SNDLQDqJODYsZMdKRLOWRD
 aaPeG1PZm7d7ORIIqgnMoB4Pb9G7tG5u5vLpiGUvS66TLIUyyeTDDJHQyjmqc3HW8p3M
 fYrzCyBFHg5a7bvQ2+0u2cbaMjTkV8ZtALSoHRdPqzy2ysC9YUuMSPpvq1WLn4RpgKYn
 R8QG+gecguOrvzvHBHm8McLAsHFtVUaRLnO7jqAb5XjtRp85o84h3nNul821+HVxWgTO
 0gDLQYLhE/aqD2iQmkiDWljsltHhioSiYksFrJ4Imm43IR/bY1KgMp+dKreq5MOpKGvK
 /Uzg==
X-Gm-Message-State: APjAAAXCPDv3788jZSoXRVUvvrHYf9VWh57UfwPqXLnoHtRkQZRXOALo
 yMVj+KchMFrPBsjuGCmkpbDHTA==
X-Google-Smtp-Source: APXvYqyXQ/G4rNGx0EM/Bw+9JQKTF91f36TGVl8rfi0tSILHCQdL+onbnDx+h5JIzzjxLnDFJhNJ/w==
X-Received: by 2002:adf:ce03:: with SMTP id p3mr73752462wrn.94.1561123412645; 
 Fri, 21 Jun 2019 06:23:32 -0700 (PDT)
Received: from clegane.local (206.105.129.77.rev.sfr.net. [77.129.105.206])
 by smtp.gmail.com with ESMTPSA id s188sm1981234wmf.40.2019.06.21.06.23.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 06:23:32 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: viresh.kumar@linaro.org
Subject: [PATCH 5/6] thermal/drivers/imx: Remove cooling device usage
Date: Fri, 21 Jun 2019 15:23:01 +0200
Message-Id: <20190621132302.30414-5-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621132302.30414-1-daniel.lezcano@linaro.org>
References: <20190621132302.30414-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_062334_386230_C19ACA88 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The cpufreq_cooling_unregister() function uses now the policy to
unregister itself. The only purpose of the cooling device pointer is
to unregister the cpu cooling device.

As there is no more need of this pointer, remove it.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/thermal/imx_thermal.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index 6746f1b73eb7..021c0948b740 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -203,7 +203,6 @@ static struct thermal_soc_data thermal_imx7d_data = {
 struct imx_thermal_data {
 	struct cpufreq_policy *policy;
 	struct thermal_zone_device *tz;
-	struct thermal_cooling_device *cdev;
 	enum thermal_device_mode mode;
 	struct regmap *tempmon;
 	u32 c1, c2; /* See formula in imx_init_calib() */
@@ -656,6 +655,7 @@ MODULE_DEVICE_TABLE(of, of_imx_thermal_match);
 static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
 {
 	struct device_node *np;
+	struct thermal_cooling_device *cdev;
 	int ret;
 
 	data->policy = cpufreq_cpu_get(0);
@@ -667,9 +667,9 @@ static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
 	np = of_get_cpu_node(data->policy->cpu, NULL);
 
 	if (!np || !of_find_property(np, "#cooling-cells", NULL)) {
-		data->cdev = cpufreq_cooling_register(data->policy);
-		if (IS_ERR(data->cdev)) {
-			ret = PTR_ERR(data->cdev);
+		cdev = cpufreq_cooling_register(data->policy);
+		if (IS_ERR(cdev)) {
+			ret = PTR_ERR(cdev);
 			cpufreq_cpu_put(data->policy);
 			return ret;
 		}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
