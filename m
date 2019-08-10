Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7472A8889E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EydzARkVceHSdc3q0Ty2B0CwABGt7AbPNlt7BN1Ty1E=; b=Zb3mdY/OCtUpqdRPgqM9Q2bb0c
	J6dDWEWFdH/Hx/PqqswkhyTi6HpXj63j8UJJrQfzV9rcPsQez59k5wqwo8XUms+zJThWopJ4vPHdH
	GSl60JjAn7kZIIap6DJtpSGC0GIvqro3HXTC0y0wGuwTb98aVDReRg28Y1N8HLCrYzbQhS9wsy5Gx
	VjULPhvIG3F2dP0hONodEBeX3bADWYru2sobSjOfCCWYdqTrts3jEOTWnftjC6SeqQLqx+KnASy5o
	w3ox55bB2ldy7RKfFF7HfsuxFDcNCcyvw7lZcYMNz3NnGlOLYqC8mF7NsLCV5lkb3xie+BZEaEcom
	i5XBqYLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJy2-0003JO-ID; Sat, 10 Aug 2019 05:31:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJwZ-0000zV-OU
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so47087381pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=p+GfeX4Ueh4qeynfnY+nHD9xlpPk1TsHoPAB9+k1TQY=;
 b=k+aheYMTnj5mlzWzq1ilxhyRi5juqsvNPyrBOubgRPgTrctQUunUxavZ+AlHE8J1a6
 ZlQhaRmaaQWfA67IUltiIi96nWydnGnVsJZMJExGzLMaJwnJBrKFBqeK/ghEg5tBkfd2
 rhXRgo6+8lYV/CTa7YgKdI6GuNg8nzDD1fnxiniCsOV6k3RawXRpzph0dDBhFnEX2Wq2
 jG//G+mNdwhTLRq8ygt2iqFNae2jbFnD94ykXL9A67w3pada5OETSmXo1Cx2C4xi4n0i
 qtY7utQEumhIfl9v+xmmsVUdF4gbq0AQnLre/QVU7OqkpN9FWvBkVXhApGYw1uDx1MdN
 I8hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=p+GfeX4Ueh4qeynfnY+nHD9xlpPk1TsHoPAB9+k1TQY=;
 b=fk2+dFKVi7y5ydIdJ42Nu6h9OV68F9C8czKZOWso8TN5PFojyiZNXBa4NF/a8htq4x
 5jVFKzlV/WbcfrSu6TXip56zvbPsmpwCxaNdnA6Sd8z+4sDrqUEKXxai7pmGpHp+xOpW
 VDhF0rffMN7xQbzUkQBzxNLQqv9mi6di3J+N5O5p5eDH0ij1z1vn1HY1S5ouwgDuepX4
 xtmzBM/qZSl7PgTYpM4DmGWkgj1hpsUMHqepeN6LfOmnjPORY+djOIEGWUwttc3WD1XH
 n7xAgnAfcUJC0COfWQJS4b/r9BJcefgbEe/WEU/IeQ6usWEvAG3V3E6EaXhz+WVEwqSF
 Re/g==
X-Gm-Message-State: APjAAAVLzqqcZEuGUtLeSHta15zWKiiiWyQ0x4txjhLNVnr0zUU7SMl9
 5JCnTI3PxTe1565C6bwdElk=
X-Google-Smtp-Source: APXvYqxxpWtEqoQhAm3ka4Zp+gt5YbokpRaK82eECedhofkwnz5TtrsipKnUkmCv/rhm//nnApa9bA==
X-Received: by 2002:aa7:8d98:: with SMTP id i24mr25669455pfr.199.1565414970942; 
 Fri, 09 Aug 2019 22:29:30 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id r6sm17958624pjb.22.2019.08.09.22.29.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:30 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 05/18] thermal: sun8i: rework for sun8i_ths_get_temp()
Date: Sat, 10 Aug 2019 05:28:16 +0000
Message-Id: <20190810052829.6032-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222931_859333_99BC0AE1 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For different socs, the way they get and calculate the
temperature is roughly the same. So get the difference
from device compatible.

Difference point:
  1) temperature calculation formula parameters
  2) ths data register start address

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index e9c2acbaac74..f338fa25b98e 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -22,9 +22,6 @@
 
 #define MAX_SENSOR_NUM	4
 
-#define SUN50I_H6_OFFSET	-2794
-#define SUN50I_H6_SCALE		-67
-
 #define FT_TEMP_MASK				GENMASK(11, 0)
 #define TEMP_CALIB_MASK				GENMASK(11, 0)
 #define TEMP_TO_REG				672
@@ -58,6 +55,10 @@ struct tsensor {
 
 struct ths_thermal_chip {
 	int		sensor_num;
+	int		offset;
+	int		scale;
+	int		ft_deviation;
+	int		temp_data_base;
 };
 
 struct ths_device {
@@ -73,7 +74,7 @@ struct ths_device {
 static int sun8i_ths_reg2temp(struct ths_device *tmdev,
 			      int reg)
 {
-	return (reg + SUN50I_H6_OFFSET) * SUN50I_H6_SCALE;
+	return (reg + tmdev->chip->offset) * tmdev->chip->scale;
 }
 
 static int sun8i_ths_get_temp(void *data, int *temp)
@@ -82,7 +83,7 @@ static int sun8i_ths_get_temp(void *data, int *temp)
 	struct ths_device *tmdev = s->tmdev;
 	int val;
 
-	regmap_read(tmdev->regmap, SUN50I_H6_THS_TEMP_DATA +
+	regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
 		    0x4 * s->id, &val);
 
 	/* ths have no data yet */
@@ -98,7 +99,7 @@ static int sun8i_ths_get_temp(void *data, int *temp)
 	 * temperature above is also used when the sensor is calibrated. If
 	 * do this, the correct calibration formula is hard to know.
 	 */
-	*temp += SUN50I_H6_FT_DEVIATION;
+	*temp += tmdev->chip->ft_deviation;
 
 	return 0;
 }
@@ -389,6 +390,10 @@ static int sun8i_ths_remove(struct platform_device *pdev)
 
 static const struct ths_thermal_chip sun50i_h6_ths = {
 	.sensor_num = 2,
+	.offset = -2794,
+	.scale = -67,
+	.ft_deviation = SUN50I_H6_FT_DEVIATION,
+	.temp_data_base = SUN50I_H6_THS_TEMP_DATA,
 };
 
 static const struct of_device_id of_ths_match[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
