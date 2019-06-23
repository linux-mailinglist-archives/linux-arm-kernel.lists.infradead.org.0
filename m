Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8BA4FCFA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=362ghglf1NS2nHOHwHbZwVLkW69TT3RbYXxaNK2WwcM=; b=cpvXGU5nB7NQnSR20aHLcsAjSE
	LIvqyRSePpDYlT1GixvGrZs3s1WMgW8gXbqMHi6YaDIO/NLzkMrWtbGh5EHeoVHwI7Gc9hCrZwedR
	yQ5du1iwhyZzEQyptpne6hjcQXBxKau0k4sM47uYpeYdB70b/vtLvGo0VnVcUFj2R+YqaH8FlXZKs
	DCRzG9opxpm5oQVB7HpihEk1eC9vseoWOyyYaMF4l3jvGh3p8HGhbpcynRPRojKZ109Fwnh1f7Je+
	pklyKWzYiBsN1N0NWBHtVvw0wmMlJ3G5rNq46H408VADT3LHyZTCL5+GODS+GnF48YH9kyMYHQylK
	9E1OTO5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5bQ-0003rN-HH; Sun, 23 Jun 2019 16:44:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZN-0002b7-Lh
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id s27so5795350pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9UNcpWLQ0SBIIcBRxbN1qX4s3ChEMbjvtnWO+dtNEsA=;
 b=q7GZ/jpCAu9MK3iPRrcZ9ANkg2i3u6OpwBfpBxftNrbB7qb5Ql/dv/7UGy8QXCCGpy
 GiGyjFSWSWxOwbxw3caI4V/cmdLbmXW63FudgJkGpzzRJsXBhSZ1oIcSv5VoS0sgYpmT
 wKshYQ+CHPlieOztlOpzZaI86gqTUced4iJPd7tSBo/mzcRsYUdjvXC2dB8u8KVi7a7o
 Ad48cjNJiPK/Q5LWyupyPXWmQ32wJAU3q8xCbrm4bSi+5gJJdf6+g+Or/gdUlua2/v82
 yAmGhMZ0tWH3/3vnG0wz4DebTviCokra90Eq2UiRVcArotY86r1DhHK+Sogw5UxpNXEM
 bv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9UNcpWLQ0SBIIcBRxbN1qX4s3ChEMbjvtnWO+dtNEsA=;
 b=BT4chqiuqP1bHjuBqS1rAc+vwdaUEtPdlbU0AIf4ZNdGUyQ+RbU19OayKgTmb1qW85
 C2nFnytcWhwUG023HrO1V9T84gjkNKGVzatmLrY0o43vVTuBRLUogYUaj5lJrYYLCq8s
 /4Z6yk5fMGLyiYZtkxWYB22VL+w5DRMUZc+jMyG+k1daVksAvJcmEW4DqDUGi4YLNXe9
 /4OKWp1ro1052WJDAz2X12gLuorqp4FYNz2hG49bsSMpQm4B7G93v1EY9XYwRLSz1YRb
 lSQcoKVIIBgwMke77moERR7pmHxUZtM2YIQ0vxV4NB0QkUgCW24cQhZufdYJe6GuG4HQ
 5dRA==
X-Gm-Message-State: APjAAAWCWn5I3HU1SjMTJJeIhUCy1JJfiQqDJY3gTrUx020F/GprCPff
 k0m1DsX0pNE7CmQWu2S5x+0=
X-Google-Smtp-Source: APXvYqy7Clm/F/UW+Jya2jGhzAWsBCgiuAG/VXNp/xiWo2mAetLliQqzE0GZg6EIu+TjhZV50wTfIg==
X-Received: by 2002:a17:90a:bb01:: with SMTP id
 u1mr19254865pjr.92.1561308141132; 
 Sun, 23 Jun 2019 09:42:21 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id z186sm9183351pfz.7.2019.06.23.09.42.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:20 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 05/11] thermal: sun8i: rework for sun8i_ths_get_temp()
Date: Sun, 23 Jun 2019 12:42:00 -0400
Message-Id: <20190623164206.7467-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094221_843600_08B5CD56 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index c37e1c51a543..e473a5651436 100644
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
@@ -395,6 +396,10 @@ static int sun8i_ths_remove(struct platform_device *pdev)
 
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
