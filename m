Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4F41D83C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CgCDAe4+KeCxYSFxWDlA/BzO4RiNm01esmjJ0V0Dd0=; b=MJbPhIQC4+ygZ5
	eKwwgy1FGMBbbDRZjJ6gqtCWmdsJBW7SnxCJwvhhwKezRpOB9lMkaD+/Pb+li/EKdlj4S4rbLNtre
	TFgZ5b3j8AcYl6g2RtxzAOhSfYQNKrLjWFeiFNIK5TZeUekszarT/MYt81qKnBH1UsOAiled5i+wY
	/y0Q6rejNlQuqqfblahAebhQKHwNo2FDKalZQTiMu1qDb3eLivLuQrG6QEMqbeN1vXb372MIx2nDy
	gtl157XIIuedAQ9WMPkdE3xAr9fIQDAhK+/SXXF9yLmsCHd7gLm2W1qUvzChBZwzTJR8KguXFRa+/
	2XhMAri6EjvYBDdiacRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakBl-0001Zc-VR; Mon, 18 May 2020 18:08:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6Q-0003Sq-1X
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id w19so2755415ply.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i3BWbBbkg8NyB0iXqBE55doZtUFR+gfZIquhH1ktDhE=;
 b=mJVRlvy7q0XT2dVo/1a6jMGnINkp6g4sFkzUJOFtT50IVmfcZKW5oWXVbz++zyWA7l
 iTzlDGkoR2WNvz/CkdFnIj2IeWA4X5NUSQJ45f7qI9TrqKHHkn4zuIIDUv5hhbl7TY6K
 j3ez8fMHe+og4a/xjLIFscra4qqsOv/fhuWvuCDZwQcnHb7WAzwd4vnpjf9h3QgOukrA
 ywRPjUNy1IsFOsG5SmvttHC+FTmiyCJjGuxuV1IodTdx36N+9dJaahYxB/utrL6sIQcZ
 5gZ8ihpywXHd8Y/AdqGbyfINNUv+j4XRqtgkM+vGW8eztJ6Y9BF6kQxcyUAWTBnKf0hf
 XkIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i3BWbBbkg8NyB0iXqBE55doZtUFR+gfZIquhH1ktDhE=;
 b=O428d+YP0QfUlwLEekFf8iHPEz9yZeDHFgX1JUi7VN/hCqzgQy3vqq4WMR1Gcz/T1/
 G2/MqsXlGllmUE/CMr6hOArcI+f/7iDa0CPFYMrfEwc+341M5qhRUmOA018p2lfJEAX1
 0X8o8ITxhqXv+OtPef2rjub57RtqzaOFNUYm43vlS52eZr68Xp+gY4ygAwT0wvIxZr5p
 35vryuaDGQ2ekUqQuHSpgLxvteEhuBDTcPhFoXxShwxiUW84hPqKKOnbwh53v6/jnLCP
 NSEuGfl47sO9ST+NAkwvubG0COWtVr3egIwsLrXrcaahmJ8GoUD+o4l8DhavBawgpPW0
 MSYg==
X-Gm-Message-State: AOAM532uosgPieZ/YazK3sXjsth9sTguEDgVNvBT82BZQ930L7wSZV2G
 3W2axEAhPoGbDgufoZ4NFiXrZv8XX9I=
X-Google-Smtp-Source: ABdhPJzDfkWuMuQZ2I+6W737DmcL/mZXIXXcL8EeXC/Q5GDTg1ytGpB/3Y75vPa+GYE+2r5mnKLk0A==
X-Received: by 2002:a17:90a:268f:: with SMTP id
 m15mr685647pje.190.1589824981460; 
 Mon, 18 May 2020 11:03:01 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.03.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:03:00 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 18/23] coresight: Initialize arg in sparse friendly way
Date: Mon, 18 May 2020 12:02:37 -0600
Message-Id: <20200518180242.7916-19-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110302_093864_FCFD3F62 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stephen Boyd <swboyd@chromium.org>

Sparse gets annoyed when this initializer is 0 but the first struct
member is a pointer. Just use { } to initialize instead so that sparse
is quiet.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm3x.c | 2 +-
 drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index e2cb6873c3f2..bf22dcfd3327 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -504,7 +504,7 @@ static int etm_enable_perf(struct coresight_device *csdev,
 static int etm_enable_sysfs(struct coresight_device *csdev)
 {
 	struct etm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
-	struct etm_enable_arg arg = { 0 };
+	struct etm_enable_arg arg = { };
 	int ret;
 
 	spin_lock(&drvdata->spinlock);
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 7443a2e4528d..fb0f5f4f3a91 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -412,7 +412,7 @@ static int etm4_enable_perf(struct coresight_device *csdev,
 static int etm4_enable_sysfs(struct coresight_device *csdev)
 {
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
-	struct etm4_enable_arg arg = { 0 };
+	struct etm4_enable_arg arg = { };
 	int ret;
 
 	spin_lock(&drvdata->spinlock);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
