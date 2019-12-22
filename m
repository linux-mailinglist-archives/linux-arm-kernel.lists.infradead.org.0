Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842AA128E72
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDMZWhEk72G9LWGoSK7X3xBvCEtiVcXOOYa9VKBv1do=; b=ulESbjNbrmXQPV
	Fgh4D5QZ5jUFJy5ZiYHMFXYc2l5AaNt9ihaiSC8ffT+LjBP7WVp7quAdpSrcgq9Xg5if2zNpUclSy
	sPrSPRf577sD3mEFCO+YqHzIjM4RzgNEKbh69OmDvh1Trq94IqivW2/6+sVOLCwgJIQgSlQXLBI5J
	BRUuSTtll+HXhAreYFY4ov/QbpptdXyGFZ7FXBlnG/4a9aYPzpsxWNGJUvv1tQgYOUWaZObul3P0p
	10FVB5UJN89/xqimjlasLeqXQ4Qlg6Pblw5DvQ0sfFnIKb5WpOnNmBa/IDeTldIphgm2qmNwEVtIU
	9GIKcEjnEKWjrt8OLjWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1yb-0003DA-5j; Sun, 22 Dec 2019 14:12:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wZ-0001dI-55
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so13365057wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ikfJiDpjg9QYCtJ3tEmCYkHOmVUTASh0OD5MpVkjVLU=;
 b=gzLNJJ0Q+KkYDQw5mVCzdY39juEHI8921wIgvSOjZnq1UQYZGK9ioW6xbd1w/pZyOc
 0FTklasvkROuH4jJvbWbnzv/l8jlw/ytE9LaNk0ms+B0WE4SVnpersTg5bb6c6prdwu/
 7qhUoU6YDXcQ9GaiNxFL2uVuy5/6zbiwjfXR+AyIcmWKaqxG87IIPFDfhMZt7Sp65zzr
 Ac3OLh/kvNmUAMfD13U1nVS3q0GT+in7M7LFeQjeY0F6wkGiRokwV2TGK21hDkLIgLUh
 xM02vCWaEXRAUPHS17wOr4APBbYGsdv+rHwPImkyemBUhN+aarFT2XQlCST7n0FP3ceE
 WGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ikfJiDpjg9QYCtJ3tEmCYkHOmVUTASh0OD5MpVkjVLU=;
 b=apjmBkVOQLs4gpfTTmXlTGsIkfakmIw/pcuYWiEcGgdtpappxBvU495xE++Box8hS3
 3N1CJZ1c6RiqEgpGJ/1VhTsyQPhtDOKPSa8nQUg/cTOgWCPa2PpHc1S+/NEVq3JyNk5v
 vbMUxllOYFkG7MNadfoKHiNsnCgQvTsgP9N6pNjOq8SsMrfu3iB4TUUKqS7yKfrFv9cS
 n4Ky8elfdlk69qIjyw3O7kwqEmZwqcLh7HDtEi1yn4mp5ehRgI7iNkHd1F6d5z3ZCGfj
 qbO9Go08wKDD5+jjJVZPt5BPQhO1I6y/aSE1nPFkzIzxDucHj4XUei3LrdkK0Ar8+CTx
 OrJA==
X-Gm-Message-State: APjAAAVAKn7JatPwQLDbZLY1Z3wJMgPx+CCrqYYurfSgb4smAHyNWUAq
 KHbnF3YM6L6AkZeIaIOvvdI=
X-Google-Smtp-Source: APXvYqxH/UjRNAHzS217dwm1H2UKxNF5l3vyB9FvGUpFv1KPJJBP0SrEThecMZsb/8psOPk7oPR+eg==
X-Received: by 2002:a1c:9d8b:: with SMTP id g133mr25936600wme.27.1577023849320; 
 Sun, 22 Dec 2019 06:10:49 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id t190sm16546496wmt.44.2019.12.22.06.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:48 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 07/13] memory: tegra: Add system sleep support
Date: Sun, 22 Dec 2019 15:10:29 +0100
Message-Id: <20191222141035.1649937-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061051_214825_C86359DF 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Add system suspend/resume support for the memory controller found on
Tegra186 and later. This is required so that the SID registers can be
reprogrammed after their content was lost during system sleep.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index 57895116c8e5..77a313f1bf0e 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -602,10 +602,29 @@ static const struct of_device_id tegra186_mc_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, tegra186_mc_of_match);
 
+static int tegra186_mc_suspend(struct device *dev)
+{
+	return 0;
+}
+
+static int tegra186_mc_resume(struct device *dev)
+{
+	struct tegra186_mc *mc = dev_get_drvdata(dev);
+
+	tegra186_mc_program_sid(mc);
+
+	return 0;
+}
+
+static const struct dev_pm_ops tegra186_mc_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(tegra186_mc_suspend, tegra186_mc_resume)
+};
+
 static struct platform_driver tegra186_mc_driver = {
 	.driver = {
 		.name = "tegra186-mc",
 		.of_match_table = tegra186_mc_of_match,
+		.pm = &tegra186_mc_pm_ops,
 		.suppress_bind_attrs = true,
 	},
 	.prevent_deferred_probe = true,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
