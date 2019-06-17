Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670B148151
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZGUAmfmJOeM9DUxBktZ1TmyXAf0PsKSkM50PCUwt7L8=; b=acm
	tbw6iL0gbqRAyPrNlgFbp8m5dlARhDgtmxJDMdCUNNAsE+XDOiVz2A3//Jz/LXSP2Jprzi7mMWe02
	ulhQj5ZrIrcYk1GKIazysM+pIkWNIvWaFbL8jU3ROUwdF8kw5iuGGrTHFooPGCY9a9ZAfT94ZS4s1
	ibHFKV50sz8j8RoaT9NA6elhZvPqrAXJvOCnfNg2QDkv0E19XCqk+84Mx+dVD0o4C5+rg+RqrBOEE
	r9pV1gIz4wS/b8AAG/AOHfx9qwFoNAojYqULUNlwVkta6WvfljvB0HZWAQjRL79o9HapSbQQxhkXE
	IiVPhtcnaLnCTXjDRKg+hBfv3Vg0eDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqEF-00087n-8p; Mon, 17 Jun 2019 11:55:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqE6-0007DM-Os
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:55:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id p11so9629731wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 04:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=p0dSD1o3AHgXjVo+yieUQmDjtFsBPsysRj0uW6rU34Q=;
 b=JENV0KnCmt/Dwk1nXe4AAcmIlf8KhWmyC5H8iva+UYLv7mbtGJ0z6XGxDKgADB3mc6
 rWrDUEnlr7Z3WBR9EPiHQxpW0Y5lZKAqUubjryNHbX92fe9VM2FmqZYWPaXA2VskP5kP
 P+W8mb/lqsiQx19zu9P/AygnBVAedl1BkZpmDBLHAyoyfper03B+CGrryRT3MBS40yIF
 ardqfg0t+y0tjIZSl31JtWjeYOUhY7yewjXFSKHJHErNJfdMp7wjg4UgYWWRy5DEVR32
 CAklr0Q9IklvXe9CJ1rZQ9ejaPSM5hxzMhN+IcMFFNBvnR8l48AhNMGqPf8Zf1/+fgsf
 ApcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=p0dSD1o3AHgXjVo+yieUQmDjtFsBPsysRj0uW6rU34Q=;
 b=Qtj63m4qBjq28wbJRx79lrK2VmNNxgc3GGhBb5HTaJPwGjdbJxTqfT0RhDlrF2Q53g
 vFWnFMq0YMvzXW+N8JtNnkQ4gWvHc+H3HG6q8WdT7mTnguyy1g+h5WoSTmACSXi9oDpG
 BzggH04tXMY/Dt1o6zsvnSGtzAxWxmv/fTl4aVJlpYiwSCHldX9qSql+9YIr++ztKVYW
 Gjxd0DywJxnBbyH10reBd6h2eYUULFvtY2lNO/0GS5IIL5EqScyrRHU4zYyVlTk9rcKm
 perf3gFMTGdpCUt+PQIy9bCZJ9Q9zu47KZctXQhzCrNlUl05z/RxWIv1rCnoRvl7Nbyo
 TPXQ==
X-Gm-Message-State: APjAAAUyywhDmpx7MjWoln2SLWGKWGjsu54QR4IUw1183zcR+IZGMmw2
 3GG6sCQ1OpqZdLScZpsK5YAzBg==
X-Google-Smtp-Source: APXvYqxXsJTvKjCphVHMwx4/FebOUiKV+9+M6nNY9VXfS4ti2jmM79hV6vZe/fK3Ujbd/dMlNttV+A==
X-Received: by 2002:adf:dc45:: with SMTP id m5mr8831205wrj.148.1560772502724; 
 Mon, 17 Jun 2019 04:55:02 -0700 (PDT)
Received: from dell.watershed.co.uk ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id n1sm10193748wrx.39.2019.06.17.04.55.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 04:55:01 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: agross@kernel.org, david.brown@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, pedrom.sousa@synopsys.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, linux-arm-msm@vger.kernel.org,
 linux-scsi@vger.kernel.org
Subject: [PATCH 1/1] scsi: ufs-qcom: Add support for platforms booting ACPI
Date: Mon, 17 Jun 2019 12:54:54 +0100
Message-Id: <20190617115454.3226-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_045506_824659_93F05DB2 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ard.biesheuvel@linaro.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

New Qualcomm AArch64 based laptops are now available which use UFS
as their primary data storage medium.  These devices are supplied
with ACPI support out of the box.  This patch ensures the Qualcomm
UFS driver will be bound when the "QCOM24A5" H/W device is
advertised as present.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/scsi/ufs/ufs-qcom.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-qcom.c b/drivers/scsi/ufs/ufs-qcom.c
index 3aeadb14aae1..364af6a63e35 100644
--- a/drivers/scsi/ufs/ufs-qcom.c
+++ b/drivers/scsi/ufs/ufs-qcom.c
@@ -12,6 +12,7 @@
  *
  */
 
+#include <linux/acpi.h>
 #include <linux/time.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -164,6 +165,9 @@ static int ufs_qcom_init_lane_clks(struct ufs_qcom_host *host)
 	int err = 0;
 	struct device *dev = host->hba->dev;
 
+	if (has_acpi_companion(dev))
+		return 0;
+
 	err = ufs_qcom_host_clk_get(dev, "rx_lane0_sync_clk",
 					&host->rx_l0_sync_clk, false);
 	if (err)
@@ -1208,9 +1212,13 @@ static int ufs_qcom_init(struct ufs_hba *hba)
 			__func__, err);
 		goto out_variant_clear;
 	} else if (IS_ERR(host->generic_phy)) {
-		err = PTR_ERR(host->generic_phy);
-		dev_err(dev, "%s: PHY get failed %d\n", __func__, err);
-		goto out_variant_clear;
+		if (has_acpi_companion(dev)) {
+			host->generic_phy = NULL;
+		} else {
+			err = PTR_ERR(host->generic_phy);
+			dev_err(dev, "%s: PHY get failed %d\n", __func__, err);
+			goto out_variant_clear;
+		}
 	}
 
 	err = ufs_qcom_bus_register(host);
@@ -1680,6 +1688,14 @@ static const struct of_device_id ufs_qcom_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, ufs_qcom_of_match);
 
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id ufs_qcom_acpi_match[] = {
+	{ "QCOM24A5" },
+	{ },
+};
+MODULE_DEVICE_TABLE(acpi, ufs_qcom_acpi_match);
+#endif
+
 static const struct dev_pm_ops ufs_qcom_pm_ops = {
 	.suspend	= ufshcd_pltfrm_suspend,
 	.resume		= ufshcd_pltfrm_resume,
@@ -1696,6 +1712,7 @@ static struct platform_driver ufs_qcom_pltform = {
 		.name	= "ufshcd-qcom",
 		.pm	= &ufs_qcom_pm_ops,
 		.of_match_table = of_match_ptr(ufs_qcom_of_match),
+		.acpi_match_table = ACPI_PTR(ufs_qcom_acpi_match),
 	},
 };
 module_platform_driver(ufs_qcom_pltform);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
