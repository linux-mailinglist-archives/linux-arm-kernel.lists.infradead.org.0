Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051E7128AC3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 19:19:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hTarNMzfduXGKMNo3kKWVHE7ael1LNbvYFXMWr0887A=; b=OLr
	XBWXr+H8feA4jgQ81aMYBQlDsojSm9uiHtp6qNY4Cz6Y5ySSMD5RUwnlpe9HI+jPHOzPXR8RAFNQh
	KHmmRAUitPjTIILfKyMPI+Hz0YOzqvD1pV+MRxFefDUoQMfHL/mCXml3GIcBimQ5T74C3OLBHzO/Q
	Lo+jhCeldUakjp55lDTSlxlgTJOVww/LazdXaim/u1QymZIuwzRL+TLU1IkW5JcPEJsfHtv1fCF4t
	AbTSZRfMMJ0ILX+YnLlwQWgtZ6Q0uCKeXYTsWFZ2Uw/a217f4MHFpRo8wTx/LEXqkGPdyBaLAnQuv
	aajtru2WHf7tqZGMTDkaoqdJnjp7ItQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iijLL-0000md-83; Sat, 21 Dec 2019 18:19:11 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iijL9-0000lq-RM
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 18:19:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id 195so6152946pfw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 10:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=bwbzx/0lyuLyDgYjlpKZwdoDwlYToxmSNQqN2Jns3/U=;
 b=iafzJSRx/Oh+GsjR2eJ4ZkqzB5Pw0i+xDji0iUrPwKNsBXCMR/h7rRSPzD0vZlMela
 6/GMUqYS/4BARhHl0hNwVUAuXSKviN70XHxuqnmaSokLKcW9GMr20YleqNvxBuI05GMI
 5zefIMIKTzIXxMx1KYw33LQnboH+Qj+LodgB1d/l5GsN91jedf/bt1b0T37ydml6moDG
 6Rz/1uEp+h1r+qtjE2LEIwjE4ZCpMCGJmpVplFWbTp7QPtfj4vWS5X60x1xEP3Dcl4iG
 iRzdyYLvTo1d6oXwKTshMXs/0+TZySPVTUTiCF5Weqvp/egm7AyJIzQplp8tvj1gIA9+
 D+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bwbzx/0lyuLyDgYjlpKZwdoDwlYToxmSNQqN2Jns3/U=;
 b=L2hC+erpigUFJJmcv7sMX5kG704Ed91+dVashQwCUNqqyDMjjKTFrNeXLt+FoQTqNz
 N1nFNFUl8mybookcOFYya4w2BpQQk4nbsjYxf/0DLN0PPY8xaBxQbdHj6b4t1MmI6SYJ
 B9zUAZbCAxgLg/WSyTzpM8Pu1Uoh6rkEL/NfpxI+/lONgQ/MeEsFkizYCyGoD0IeyI8z
 6NcZay0m+9hEHNGiTcctXY833yQUuPAFBtEZJElfeSk6Y5lhrE3LPyD3HhvxACdC0nEC
 1UxodzK+SHYwq6ehzz4z5UM+oM5jMSuwe9PFRHE98n+rhZ53TOTrBsVs/XJnMyYG+1zg
 ZZLg==
X-Gm-Message-State: APjAAAVOpYM30tZekcbcuf8j2RhPyhH07CTSunQZI8daZvZbPyDcyqKa
 EhIFCJFv1rLKOOsUwaCGgSM=
X-Google-Smtp-Source: APXvYqwCQ2pikuGus5t9NRDx8dicrxR/iMjGdpMtjiAyPYt4OsDp/uwZ/85qHhf7prm6ugOwlBoVNA==
X-Received: by 2002:a65:488f:: with SMTP id n15mr23158105pgs.61.1576952338290; 
 Sat, 21 Dec 2019 10:18:58 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id m71sm17264906pje.0.2019.12.21.10.18.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 21 Dec 2019 10:18:57 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, krzk@kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] PM / devfreq: rk3399_dmc: Add missing
 devfreq_event_disable_edev
Date: Sat, 21 Dec 2019 18:18:54 +0000
Message-Id: <20191221181855.31380-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_101859_913652_C1E0111C 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/devfreq/rk3399_dmc.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 2f1027c5b647..4f4e7c041888 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -364,7 +364,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 			if (res.a0) {
 				dev_err(dev, "Failed to set dram param: %ld\n",
 					res.a0);
-				return -EINVAL;
+				ret = -EINVAL;
+				goto err_disable_edev;
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
+			goto err_disable_edev;
+		}
 	}
 
 	regmap_read(data->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
@@ -392,7 +395,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 		data->odt_dis_freq = data->timing.lpddr4_odt_dis_freq;
 		break;
 	default:
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err_disable_edev;
 	};
 
 	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, 0, 0,
@@ -426,7 +430,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	 */
 	if (dev_pm_opp_of_add_table(dev)) {
 		dev_err(dev, "Invalid operating-points in device tree.\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err_disable_edev;
 	}
 
 	of_property_read_u32(np, "upthreshold",
@@ -464,6 +469,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_disable_edev:
+	devfreq_event_disable_edev(data->edev);
 err_free_opp:
 	dev_pm_opp_of_remove_table(&pdev->dev);
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
