Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70024D149
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yb3MTBG2MRq4h/V6YdDkwNsTe16Qb6WoOhV4PrR61xc=; b=SNoi/PdwMDdbCY
	XsqMC4TB5NiHcv60A/T2Gh6KpNi3IYU5sH9FZTZdFm14xxPrYAbmgwg/Qbcrk9adK8GZkB5+JWY+d
	sHlJmtwq6eqIXcGaOiedjyB3ZX3HZJtenu36SajnRuj0O63y51VkD0ah3Wnwf2cIri/tOougJ6gCs
	VvABW7VLHSIZ0+Ylz3qTv7ld/nrH+hBvDUr9ezvaOrdGSllv2zGt6g/8IibWVP08qZDFf2naU+ac7
	RFccTE2/cnklJhOVNGqj/+SU6fxmHoGKd2TGrAYs9uAk195b5Q5urNjBUqXFSlnKWepDC6MsaIVqK
	tc865vpXp/E7U7eubjsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyb5-00050G-Dl; Thu, 20 Jun 2019 15:03:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyY7-0003EI-Nt
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:00:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so3418488wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j3tTOMHSiFLp+myEpmzmt12jpkjBS7JqoQLTAOWEufU=;
 b=BViqmsQ5foznBhU97cwBP9VbZrKPmLd0cybtB6EXw4tXt0WePDI0JEDxWIpG6iSQoi
 jXseiSDXzCZWAH+hUXGclwQSkU023IAkyoO97sLtfKaqWDVbwm78SitxkIeQKCPp1MTq
 Ipmp5yuUb24kxuvvJmJE6bdQCpPMwVR0R/yhHa+9DehOo8HgmZUNNP5VCS+9Wb4mVMiT
 r6C/0RSeH3nc/Ru8H7RLDkhx2opcrmeoWebTXbTKOz52XCEKlt7nv+Vs9z8xYJYpYDBx
 Tm8ix/M+0NDe8ba6+KDU/X67qmImXaCr3+SnJAhFIlcOZC361jVgiugWBSPWcwG6wJ1Z
 yvRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j3tTOMHSiFLp+myEpmzmt12jpkjBS7JqoQLTAOWEufU=;
 b=ugRwIGxCNM04arAhuOnUdo1ftTG+q64UsAC+/7RWHw+8ezagR4+lhwRB437vO+MRhf
 TERwenZQw//Q3QG5ZC9pKg7JOqNTU6MHq7g3m1DaBTa5M33uuBRwcDC5BaEyJPacZ3BA
 Ft7in/qsKSNni2o8Ntyf+9Bk2EXDJXEESQ9yeO8mKBosbcrKpe76WdTjl835thVLWWzo
 4IsitGMg3aC7UDxDvW4PlD7FUXBj1vyKSfrZUR1iuJ21xG2wP19d1DfS8hlnTIYF/Q0I
 7cp4R4IckoXPmWW/gqgMQAG0jRTEc1wpjtS8KXFhjS3vr9Qp4oERPUtLv5F4R082SBam
 RFig==
X-Gm-Message-State: APjAAAXHpobvkmbPMSVp9FNhv3rZZxPXYtjEzt8bFbUuCExy+CrL62mj
 xShNWpiAvK/duQZ4GjfiuVhEkA==
X-Google-Smtp-Source: APXvYqwW09JatGavk0kfkKK3QI+iY3OiKQCr/aYkFwqWsgEoBB3fJbciAsuTmwz4Yh3rFxMBDCYTQA==
X-Received: by 2002:a1c:a7ca:: with SMTP id q193mr60560wme.150.1561042826032; 
 Thu, 20 Jun 2019 08:00:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o126sm6802520wmo.1.2019.06.20.08.00.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 08:00:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT 05/14] soc: amlogic: meson-clk-measure: protect measure with
 a mutex
Date: Thu, 20 Jun 2019 17:00:04 +0200
Message-Id: <20190620150013.13462-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150013.13462-1-narmstrong@baylibre.com>
References: <20190620150013.13462-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080027_838250_2C562DA1 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to protect clock measuring when multiple process asks for
a mesure, protect the main measure function with mutexes.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/meson-clk-measure.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
index 19d4cbc93a17..c470e24f1dfa 100644
--- a/drivers/soc/amlogic/meson-clk-measure.c
+++ b/drivers/soc/amlogic/meson-clk-measure.c
@@ -11,6 +11,8 @@
 #include <linux/debugfs.h>
 #include <linux/regmap.h>
 
+static DEFINE_MUTEX(measure_lock);
+
 #define MSR_CLK_DUTY		0x0
 #define MSR_CLK_REG0		0x4
 #define MSR_CLK_REG1		0x8
@@ -360,6 +362,10 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
 	unsigned int val;
 	int ret;
 
+	ret = mutex_lock_interruptible(&measure_lock);
+	if (ret)
+		return ret;
+
 	regmap_write(priv->regmap, MSR_CLK_REG0, 0);
 
 	/* Set measurement duration */
@@ -377,8 +383,10 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
 
 	ret = regmap_read_poll_timeout(priv->regmap, MSR_CLK_REG0,
 				       val, !(val & MSR_BUSY), 10, 10000);
-	if (ret)
+	if (ret) {
+		mutex_unlock(&measure_lock);
 		return ret;
+	}
 
 	/* Disable */
 	regmap_update_bits(priv->regmap, MSR_CLK_REG0, MSR_ENABLE, 0);
@@ -386,6 +394,8 @@ static int meson_measure_id(struct meson_msr_id *clk_msr_id,
 	/* Get the value in multiple of gate time counts */
 	regmap_read(priv->regmap, MSR_CLK_REG2, &val);
 
+	mutex_unlock(&measure_lock);
+
 	if (val >= MSR_VAL_MASK)
 		return -EINVAL;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
