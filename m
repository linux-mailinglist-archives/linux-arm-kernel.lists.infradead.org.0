Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82A91BC57E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4F+WxYCGnsF0/pzYwFR/0KYGOQvDIQC7wu/TTw5E09E=; b=Uv0mkFWyAWOz2c
	dZsb1OMSFpxmbNay0Bemp/4XK1OMB3EVlrYt5GPn5XILPmPDlbsj9kXIremHXphCBHYx1C7LttxUM
	Y08n7tAPigK5TVrxv7FufVYfJ21b6hLBXoxHvnnPNc85b7PzJnrWXp7KQdmJXZGpJgB7NRt17nlD/
	tgq0wT5LPS0uZoSYDet2Mty9/SGcALUFyNK0lYOaiQ39PNRAYrvWalb6GAh/l+h7qArDpghD/zbyO
	mHFwJgoGPZ7429X1aoBvNqlZFdVNOceQFQWYvzOhcdZxwl0rPTjuJRXSOh122H6ql5ZAqy0Dp8aby
	bHRgN+uB2+MeyAmcrJGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTJE-0003ei-O3; Tue, 28 Apr 2020 16:42:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTJ4-0003dC-Jv
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:42:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id t14so25428850wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qRo9LWbuou3yJZOIzHh11HBE37Wj9pVnE6w0Sos6lqI=;
 b=nJ7X9rHGbqzZIvtWJKjlCCPW+lT1YtHO+ynJD2B2EPajWD87a1ZnleRB+6nOPMLT57
 f/yUl3yZVMm2CGJRWx9Ra+7Gq6EvIUgkPMQMthdzer26UCM6554zCGxBv8i5D84WE4JG
 L8YHBRMhJawEEU4js5QW5rvmS7399lDciOETHnJRf8ATXGeOM/b0Ji3rPdCy4gQ7FidA
 DXHq5kY6M2bKap1YNpKopG2xpHoVBWEcN5WKNxrwjjNaVdNwBIPBrSqYomV5TDuECM8W
 SJr42LJCK6gXrjpRsIzkDnv1xRd5a1ZtajlXRFbv8NXwGWTbiYyV75mU0XBobGDal3j2
 6CFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=qRo9LWbuou3yJZOIzHh11HBE37Wj9pVnE6w0Sos6lqI=;
 b=s0L+FQI7n8bicJYhUb0vCGQX3Fzfz3DyxldOhRu8U+KDB58JPtnOA3+nxrNhmJMcOr
 /wCD2nzLwiIz/lazwumZnqcU+VS+uegEffUtB6RxZjuGgyoYltS1dVivk24FNqfTXm25
 9EWfJjG9TqlEBYsU5Pp523orF31AwndgrFP+dOeq1NHTX6keCfeFYlYp71kFv27WNA4/
 0CHpPSAkKYmabvyDKGRxdBDO5p7PPp1Y+Z/n1r2mbNz4kYwPOZYXEOoymU4jy9pjOs5d
 bkTmlvnQcA5TrdQeEQkloTunakiEtkwRW3xqDFNAcFrGjxZ2HgQ+KmrCxsWsE9ydrCPx
 HkDw==
X-Gm-Message-State: AGi0Pua8sFRpTLag52gJ6pIpCrkR3W2ot+30l8onp54DJxSq8Uxlk887
 EMNOm5htoKSmrbaA2JfsvnA=
X-Google-Smtp-Source: APiQypJer/N7KP+o+gVoSro1HbuyKQWeY1aRmnHVGT3Ex0udIyz0jTQVI0nf81Iy+vPLOVJsybLaYQ==
X-Received: by 2002:adf:fe45:: with SMTP id m5mr36497044wrs.124.1588092120747; 
 Tue, 28 Apr 2020 09:42:00 -0700 (PDT)
Received: from localhost (89-104-3-59.customer.bnet.at. [89.104.3.59])
 by smtp.gmail.com with ESMTPSA id i6sm28271829wrc.82.2020.04.28.09.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 09:41:59 -0700 (PDT)
From: Peter Vasil <peter.vasil@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] pwm: sun4i: direct clock output support for Allwinner A64
Date: Tue, 28 Apr 2020 18:41:50 +0200
Message-Id: <20200428164150.366966-1-peter.vasil@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094202_654661_1871C4EE 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peter.vasil[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nightwolf@relghuar.net, peter.vasil@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner A64 is capable of a direct clock output on PWM (see A64
User Manual chapter 3.10). Add support for this in the sun4i PWM
driver.

Signed-off-by: Peter Vasil <peter.vasil@gmail.com>
---
 drivers/pwm/pwm-sun4i.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 5c677c563349..18fbbe3277d0 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -352,6 +352,12 @@ static const struct sun4i_pwm_data sun4i_pwm_single_bypass = {
 	.npwm = 1,
 };
 
+static const struct sun4i_pwm_data sun50i_a64_pwm_data = {
+	.has_prescaler_bypass = true,
+	.has_direct_mod_clk_output = true,
+	.npwm = 1,
+};
+
 static const struct sun4i_pwm_data sun50i_h6_pwm_data = {
 	.has_prescaler_bypass = true,
 	.has_direct_mod_clk_output = true,
@@ -374,6 +380,9 @@ static const struct of_device_id sun4i_pwm_dt_ids[] = {
 	}, {
 		.compatible = "allwinner,sun8i-h3-pwm",
 		.data = &sun4i_pwm_single_bypass,
+	}, {
+		.compatible = "allwinner,sun50i-a64-pwm",
+		.data = &sun50i_a64_pwm_data,
 	}, {
 		.compatible = "allwinner,sun50i-h6-pwm",
 		.data = &sun50i_h6_pwm_data,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
