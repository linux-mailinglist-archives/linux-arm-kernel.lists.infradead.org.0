Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E67EA340
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uFJufmO0+i+aMwfL4iKLVe9qp4X1dDqlKw0BnGLm0w8=; b=qyh018Hdvff5lT+R1phyENDPjr
	0rSLFWk32ELeVQ81VQ8mpNaNH/DU1WhWvDWj1tHU8SCE6Fiq9d3Zzb70nAJ08r69aC/aKlGcCn7/W
	ycWPY5ilWcsBx6SuzmttegvzCMg/q1jtoVPU0nlgiBoSZcn01omzfH3vbGtuW44FGi3y+RKNkL6Q0
	jdDvo3i7Ull3+NCn1qsQivfxx5uRiRigszAAMboH5KyRZMifHBwYmbqQXz39/y/8rpzJZVENb26cG
	ek59zEbYCqOx3XfwWiyfoDEXoeBucZ1gLNZ3xtg8+QuUG55WRjzG18cv8pjzem+SSlsIpoj+yb7Sh
	GRtiZ71A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPscz-0005EE-8z; Wed, 30 Oct 2019 18:23:29 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsbu-0004QO-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:22:24 +0000
Received: by mail-pf1-x442.google.com with SMTP id 193so855442pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 11:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RMrszFJgqQZnz4BQZjFom+3bPfD40qA/+5eRpXchJeY=;
 b=NS0T9NTn2sGO0rWBgW+4jVzupq39TCXDMIQTAD01DlJUEUxJasNRvYxTN7lhEcBxAO
 MJnXnU2YnlB5hJLWIYhhQJPobtXE07VNl3h8cPpZX3RaQK2Pqvysp1i2oTAKqoR3uMdB
 f74lLKWqLpqaNrN2EaQK/FTBSE2S4Qv2LdoxZObnuHBUKJCh31lwglekb9hOGGovtoVY
 W3N8p/9IH+gPHj8dmWQ0VB+tMf4EwMbPdE1UrNf6MUdlk3VrGn2jM11wUEeN7LnpIuAv
 MI2oK0TN/QUT5PpN2X0uZKU1TKX2+lL87m6iXHXsAGNam2rQmBqKAl9+YixKSr966MBy
 6BUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RMrszFJgqQZnz4BQZjFom+3bPfD40qA/+5eRpXchJeY=;
 b=HXcfi9DVBmS0uyiw0EXfVq7HeE/2KKfxFbIjKFbL06s7nsxya/CbiaZURVbvC2/Gq0
 yuhckY02D+uV0G2sYQ8E3R+bBbSEb0vmEA/bF29ZfwlDQjbxItO9ub9aB+8BpMfkzlSS
 wSBUv0Rb0KXgu4wVJQFNxYp8cGP5mAbcPxU3lvqJJ2yCFVPqJcDMmGm7ACWhjoMqXHuZ
 d9+csG07zRGbyscPRx3SYMGEZk26x429Av6OypVFwOisVljOegv84DsHsEjs0UlkFuE8
 OwwkbYlME0esq3Q/7tQzgiMlSgHP16xDZC9eAuC1dw0FR7Va0ecjaYCdOSaPtyv2f5fl
 p6aw==
X-Gm-Message-State: APjAAAWkEMi7w2hjkiFseAWPje4n5B78l8hhueRAqbK4xj/KKLyMPVdk
 jp7/51Vrjwcm9360Np6Epak=
X-Google-Smtp-Source: APXvYqx5ES4peqb/VFYaSUgBoAeQE3RpPCPQ5SNkOCGGUcY1JED3KHtlljdhgijC8J6e++KDRJUf4A==
X-Received: by 2002:a17:90a:d58f:: with SMTP id
 v15mr767564pju.17.1572459741909; 
 Wed, 30 Oct 2019 11:22:21 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z5sm521637pgi.19.2019.10.30.11.22.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 11:22:21 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] thermal: brcmstb_thermal: Register different ops per
 process
Date: Wed, 30 Oct 2019 11:21:32 -0700
Message-Id: <20191030182132.25763-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030182132.25763-1-f.fainelli@gmail.com>
References: <20191030182132.25763-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_112223_226096_009A973C 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we do not have interrupts on BCM7216, we cannot have trip point
crossing, the thermal subsystem expects us to provide a NULL set_trips
operation in that case, so make it possible to provide per-process
thermal_zone_of_device_ops

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 64f715053ce9..a75a335d1bb3 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -96,6 +96,7 @@ static struct avs_tmon_trip avs_tmon_trips[] = {
 struct brcmstb_thermal_params {
 	unsigned int offset;
 	unsigned int mult;
+	const struct thermal_zone_of_device_ops *of_ops;
 };
 
 struct brcmstb_thermal_priv {
@@ -278,19 +279,25 @@ static int brcmstb_set_trips(void *data, int low, int high)
 	return 0;
 }
 
-static const struct thermal_zone_of_device_ops of_ops = {
+static const struct thermal_zone_of_device_ops brcmstb_16nm_of_ops = {
 	.get_temp	= brcmstb_get_temp,
-	.set_trips	= brcmstb_set_trips,
 };
 
 static const struct brcmstb_thermal_params brcmstb_16nm_params = {
 	.offset	= 457829,
 	.mult	= 557,
+	.of_ops	= &brcmstb_16nm_of_ops,
+};
+
+static const struct thermal_zone_of_device_ops brcmstb_28nm_of_ops = {
+	.get_temp	= brcmstb_get_temp,
+	.set_trips	= brcmstb_set_trips,
 };
 
 static const struct brcmstb_thermal_params brcmstb_28nm_params = {
 	.offset	= 410040,
 	.mult	= 487,
+	.of_ops	= &brcmstb_28nm_of_ops,
 };
 
 static const struct of_device_id brcmstb_thermal_id_table[] = {
@@ -329,7 +336,7 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, priv);
 
 	thermal = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, priv,
-						       &of_ops);
+						       priv->temp_params.of_ops);
 	if (IS_ERR(thermal)) {
 		ret = PTR_ERR(thermal);
 		dev_err(&pdev->dev, "could not register sensor: %d\n", ret);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
