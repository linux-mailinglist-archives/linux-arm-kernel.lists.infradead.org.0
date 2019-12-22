Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1483D128F1C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 18:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KjVKoNmTmasTBAyR7Mnton9cYLzfurI8kDpGMK5bXgU=; b=rR2
	s4ZD6rcQzGg8KZAF3g0EwVkHq5qSKQ6NDFrBruH+yit5SiH24K3W6on9mVE8UaM0n2HHQ9WHCiIxa
	SYbSMosk1d/Mx1o0fBPEn7iPh6i2Z3j4gzQBFHk6XzGYXHdXl6RoYnpbAZVOAqeWXV45gui1fIyR6
	bI0HxBxDbiS3tvkFDLtvwMBnT+bfPs2OEZT9myquLvVCoBaXFBF90jmGgKeO2yh5mgIKN50Ev1fMM
	OxDz7yoWzR08lIOhomQqen4w/IIrzJqKcUoj+bOgn5Mo6oyjDisfOyzHl+WnYreR2/f83BrNeozR2
	wATuU2a8K9q1lCEuhjFkKeDH7kyd39Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij5Eh-00056Q-49; Sun, 22 Dec 2019 17:41:47 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij5EW-00055W-Rc
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 17:41:38 +0000
Received: by mail-pj1-x1041.google.com with SMTP id bg7so5968745pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 09:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GjIArb4hl7a0UGSCX9uBkL4nmbYXvZobEZoJkTTSRZE=;
 b=mPCxLyETPkbxQhjDoSLsPUtXBpNUwEKEmKVzgnHkA4JnaBUw9M+lvbXtEb0YReHJzT
 l9J15qZXXxVM2VC27XXsahsfGBCRDuqDDpjHhreb5qzctHmIQULVnWBhI+RiAetpgSrC
 XSxwVxo1l7JEL0zM9SBC+n2cJSl4PakbOrBBpkdZt7zOzjPgKoSa0A4BlkPJX3lYH/zT
 LoD2mwynQpO0XKOlsRQKLwlCpiqsJuanDg4131Td4qRhCD9CWw3dQyz+7xYoa9XyN7U4
 3nrW7xwYI4zARl/3xWOI71nMSMLqScXF3MAuF7LNA6VGBJWEFZ6BAa6MEgugUlu8tYcZ
 acSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GjIArb4hl7a0UGSCX9uBkL4nmbYXvZobEZoJkTTSRZE=;
 b=dHbCGvfuUNJRSrwref2HYjhOgYe8Hcndymk/UNqZ0w2X3BAnH9PnIbZoaaE3tb9jv0
 ZIGCNu/0lvcKg3E6lcfBmf+VgSGwXfr6Nx+jJg7hxbKFdW6gUAZwHBWzmrnZB4/q5sNi
 cOWQgj6WbluuG+ifKaqEkDZv3y3HRTaBDIyO8lb+gU2SjGFH7WjhmOhSi88o5f+2nH3a
 Bnyzpv+IR/ftCjnJN80ANCGmD/8aBjy7AElskap82vcSMEihZ+0jESHjXMZnIFbhzv8O
 u2+xJPNugBxXkHKg0I9QeMDc8nqRLLqP51UDdnM4Ji9n09rtsauR0wWJk8rgtTQ8tX2m
 rg4Q==
X-Gm-Message-State: APjAAAU3BrAXn5OJaSZTyaNYZHbFJBkxJtcHRhQjHt+yl5MtLzb7WLpm
 S7iJEyDNOXDiKZL5j7FMKrJHF60lThA=
X-Google-Smtp-Source: APXvYqxWJxGk8wNhQDGsDwCsSuiO1+raKJZgeeqvjiRwYP/0gDQg6gDnZJGz3gr4oLv5qmI2Aww9Rw==
X-Received: by 2002:a17:902:9f88:: with SMTP id
 g8mr27115715plq.100.1577036495552; 
 Sun, 22 Dec 2019 09:41:35 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id i3sm19663100pfo.72.2019.12.22.09.41.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Dec 2019 09:41:34 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, krzk@kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] PM / devfreq: rk3399_dmc: Disable devfreq-event device
 when fails
Date: Sun, 22 Dec 2019 17:41:31 +0000
Message-Id: <20191222174132.3701-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_094136_895709_2CE3A66E 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The probe process may fail, but the devfreq event device remains
enabled. Call devfreq_event_disable_edev on the error return path.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
v2:
-change subject
-rename lable to err_edev
-fix error path handler
---
 drivers/devfreq/rk3399_dmc.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)


diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 2f1027c5b647..4288745304c7 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -364,7 +364,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 			if (res.a0) {
 				dev_err(dev, "Failed to set dram param: %ld\n",
 					res.a0);
-				return -EINVAL;
+				ret = -EINVAL;
+				goto err_edev;
 			}
 		}
 	}
@@ -373,8 +374,10 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	if (node) {
 		data->regmap_pmu = syscon_node_to_regmap(node);
 		of_node_put(node);
-		if (IS_ERR(data->regmap_pmu))
-			return PTR_ERR(data->regmap_pmu);
+		if (IS_ERR(data->regmap_pmu)) {
+			ret = PTR_ERR(data->regmap_pmu);
+			goto err_edev;
+		}
 	}
 
 	regmap_read(data->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
@@ -392,7 +395,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 		data->odt_dis_freq = data->timing.lpddr4_odt_dis_freq;
 		break;
 	default:
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err_edev;
 	};
 
 	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, 0, 0,
@@ -426,7 +430,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	 */
 	if (dev_pm_opp_of_add_table(dev)) {
 		dev_err(dev, "Invalid operating-points in device tree.\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err_edev;
 	}
 
 	of_property_read_u32(np, "upthreshold",
@@ -466,6 +471,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 
 err_free_opp:
 	dev_pm_opp_of_remove_table(&pdev->dev);
+err_edev:
+	devfreq_event_disable_edev(data->edev);
 	return ret;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
