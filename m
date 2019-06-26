Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C611356559
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yb3MTBG2MRq4h/V6YdDkwNsTe16Qb6WoOhV4PrR61xc=; b=Hd5MzZEkI3G0xN
	wtDKanBrb5u8tkj/r+7bIcnt+/PC0wvMPdcMJotYVuGYsza+RdEiEOv/YMT/+oQGIp9jYg9QbU1nr
	jPpvHcrhtnvI9iYV4nfcJWTwFIOnTsD0zKv94zAQqXDMoMtBtGjvGVt3GTcWxuby0Sfgne/EPwcxn
	2HKMektoZCFrBN0YGMCmAy7wq1Wc9lLUg61lcrCYgka2CiSaz/kI6PgT9V0BYNxJu5U6oNcPGU9xm
	vceovJvk+id2plvXF4sgUSoPdt6AwdcgJH8UKP1NDJqgJzw1Bk0jkYHWB73mHT0eVgwxt1wzMTArV
	ulbXR3I7wJVQ59UAa0zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3vx-0004FR-GT; Wed, 26 Jun 2019 09:09:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3t6-0002ap-BB
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:06:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so1809769wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j3tTOMHSiFLp+myEpmzmt12jpkjBS7JqoQLTAOWEufU=;
 b=kvEHQB03XrT84WCCgsKDcFFTwKXwKaZ9mDxKAfYFkJG0CyuFNQRy4K8U+kFQ/pSpA8
 r0FZiPGnVvSVEjDRozPe/MTE6t5BbBDy+i0PBLgpt+6tDDw0RzZ2vS3LjJWOZN4DwRZL
 BGnJh7xqxgqmsiPsbISq953QPFmuJ9iADvx8lIEBJ/xkcF+gctf3zO6QpOwhzOmBF0i1
 zfriLTSiHGJYZUvcZGdIIDxwbOSLyx4mRW2hQBrweBIY/TdJaOqa6xp4pvLLXuH0TY6O
 TWQOef7/FtK0IATdV/kq073FgFeAQjyr2yZVKMps3dem6FK9Oa5Oh7L7ggjpbboZhhhZ
 YYWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j3tTOMHSiFLp+myEpmzmt12jpkjBS7JqoQLTAOWEufU=;
 b=jukzpJrEh+ay8o78DwW3xF6uCGFkDVT5zbGIE1RjS4OAWcuO9VZmtpDnbvzIT3mUeb
 O8OJnFlcaHS23DMrOj6f87LR8GsuaWh/VwNu0jDvMmahTe0VSRpQ4jRkV33aPEhkp2Qp
 7SkqUoNnfBazvvz/i+cqKtAScIc2iVTXz246a7NJl25+b87zXimbj6aENTM9tUQNot7R
 KmNIDf1rByzSEE1Vri8Hqzqipvklp449kYW94kyIUg6MQcD0/jeJt12ef+ol0mJOHMtn
 ADONY0Iq48ENNoEZPpnUYgRhZiCSkWK3WCFNlsDB+C8ef5fjH5dTUTXwH5PWw7tXEPme
 Oh6w==
X-Gm-Message-State: APjAAAWNbNssek+eUesV211h5IC1mWZiRN2ulj1gatSZWLhRggwI5GOC
 HzHpXmyIZ0Llmzbz2u7CNq0zCQ==
X-Google-Smtp-Source: APXvYqzlmS3faQEc6tabH/P7o/TLm9JFP3+2CcVMZrRoZkQ0ElNEXs3j3ITiywoJc77PAE2qCCbTaw==
X-Received: by 2002:adf:e2cb:: with SMTP id d11mr2768630wrj.66.1561540002580; 
 Wed, 26 Jun 2019 02:06:42 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o6sm1925797wmc.46.2019.06.26.02.06.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 02:06:41 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v2 05/14] soc: amlogic: meson-clk-measure: protect measure
 with a mutex
Date: Wed, 26 Jun 2019 11:06:23 +0200
Message-Id: <20190626090632.7540-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626090632.7540-1-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020644_408266_B91FCB53 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
