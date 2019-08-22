Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1FF9A298
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 00:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qIrtPR0nwGB0oh3wL3BhOimUphSaKnF7Z72PuY63rIw=; b=Ikldv2uVGyj1XVhz+FIIn25Wmr
	Ku9xbQGu8arGrOGkU1dUqAugt/IABd/QOjY6fS4sSn5bW/MHOpu9WT+ImLLKMzaA5vX/pH21A10X/
	F80zhyCVVnb5Y4BZxhkUiR/J03nOAIgbpW6FXBa15I2lmIpbwmCPesQ9R/ycbOKMddDx0dFgZJNBq
	D6vK6kI9qV3LJ+/TVXQST1WcLCr99Hu3kW5Ewv+s/2uNIseurSJJ0bFqsIWICNePK2gvJskm0gPyj
	sSTbojUOKwaFH9fhMzJx1yjnhjLRwrJ7B03Ez45cQNwsAZ210QTf14cnPSvB8cJbDxBDBSYi7FZLG
	rgWOWT9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vGq-0001Ov-G8; Thu, 22 Aug 2019 22:09:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vGh-0001Ni-V1
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 22:09:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id i30so4890122pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 15:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vEgIQCU90XTwHLlVQoE1B9Sv6mWqmfOra2UuJPbbnMA=;
 b=s0bI2oyU4D4LGRqL3L4oWxTMWxl1Xmj1zX5FLuRWYQ+O4zKd809t3z2LEBZzszmiJJ
 4oCrt0Y1pQDKb1bnNGqx9tNBS6S/clAr0wLlvwJNEY8NTwRQJIx8gW+ddJE3ScdKrdx7
 sQna52Gf37nwK9fxIGoaPLwBcINutlBU5Tx5b++jEO3hAGGHZwY+0CLFMHOnMhZJtFDn
 uN0xdQIm4twMIiobXvVK18SCUVK+tPnYTaYizjwEX24d9yMqJmyoZXBL1hckRqL3fFhs
 /UTdFhhpO200S2uKFfx4RmC/6FTaezLo9sPqoJO63dyb72W0LgGxnJ8JKJc5Not9ITPS
 8LgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vEgIQCU90XTwHLlVQoE1B9Sv6mWqmfOra2UuJPbbnMA=;
 b=b20pGcCX6lLoABv985OGJgVEiA5dilYrS7Vgx9mFq80tgffKMWVAlknsYU2GLr4f98
 K1TdpIOjiSyt1wMj7V7CnQ66Bra1t30BAY7DpU/9pFN/Lko8zxKNFRkVbZkv1iAZAM9F
 7am4r3bkQIi5+si0ZEBOFQh+gSN11B1bapHbJJ/MVjBujllQnoSQ1qs8U+ANcijQTNtr
 4cLn+WUULfdDHhbhUvvlA0LL1Cbki9GaQ949bdMJzafoTz7D4+el2iUuJCNQyQy6ZqIa
 eFEj6vvNE3RPo7tbolDbANOgTPAEyKDB8SKBbyqqU3DNPJYh3Cvq90Rt1KBA10DwPhi2
 TpOQ==
X-Gm-Message-State: APjAAAXCw9953P/q6uMLEJu2abMBQ6+SavnYrZ9ju2z4Tdloj3SDVrlG
 FqqgSD2jI83WtMArv1ExcFfXBPzlynQ=
X-Google-Smtp-Source: APXvYqyxZDB7o+zf0OrkF1TQSDCbWMGz7mhgZUglKfI/is8tYAHTvH17iLyrw6kY+NDYcFXyU8uu1A==
X-Received: by 2002:a63:9318:: with SMTP id b24mr1177376pge.31.1566511758623; 
 Thu, 22 Aug 2019 15:09:18 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s7sm377432pfb.138.2019.08.22.15.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 15:09:18 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: yabinc@google.com,
	suzuki.poulose@arm.com,
	leo.yan@linaro.org
Subject: [PATCH 1/2] coresight: tmc: Make memory width mask computation into a
 function
Date: Thu, 22 Aug 2019 16:09:14 -0600
Message-Id: <20190822220915.8876-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822220915.8876-1-mathieu.poirier@linaro.org>
References: <20190822220915.8876-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_150920_013124_65FDE35C 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@arm.com, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the computation of a memory ask representing the width of the memory
bus into a function so that it can be re-used by the ETR driver.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-tmc-etf.c   | 23 ++-------------
 drivers/hwtracing/coresight/coresight-tmc.c   | 28 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  1 +
 3 files changed, 31 insertions(+), 21 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 23b7ff00af5c..807416b75ecc 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -479,30 +479,11 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
 	 * traces.
 	 */
 	if (!buf->snapshot && to_read > handle->size) {
-		u32 mask = 0;
-
-		/*
-		 * The value written to RRP must be byte-address aligned to
-		 * the width of the trace memory databus _and_ to a frame
-		 * boundary (16 byte), whichever is the biggest. For example,
-		 * for 32-bit, 64-bit and 128-bit wide trace memory, the four
-		 * LSBs must be 0s. For 256-bit wide trace memory, the five
-		 * LSBs must be 0s.
-		 */
-		switch (drvdata->memwidth) {
-		case TMC_MEM_INTF_WIDTH_32BITS:
-		case TMC_MEM_INTF_WIDTH_64BITS:
-		case TMC_MEM_INTF_WIDTH_128BITS:
-			mask = GENMASK(31, 4);
-			break;
-		case TMC_MEM_INTF_WIDTH_256BITS:
-			mask = GENMASK(31, 5);
-			break;
-		}
+		u32 mask = tmc_get_memwidth_mask(drvdata);
 
 		/*
 		 * Make sure the new size is aligned in accordance with the
-		 * requirement explained above.
+		 * requirement explained in function tmc_get_memwidth_mask().
 		 */
 		to_read = handle->size & mask;
 		/* Move the RAM read pointer up */
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 3055bf8e2236..1cf82fa58289 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -70,6 +70,34 @@ void tmc_disable_hw(struct tmc_drvdata *drvdata)
 	writel_relaxed(0x0, drvdata->base + TMC_CTL);
 }
 
+u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata)
+{
+	u32 mask = 0;
+
+	/*
+	 * When moving RRP or an offset address forward, the new values must
+	 * be byte-address aligned to the width of the trace memory databus
+	 * _and_ to a frame boundary (16 byte), whichever is the biggest. For
+	 * example, for 32-bit, 64-bit and 128-bit wide trace memory, the four
+	 * LSBs must be 0s. For 256-bit wide trace memory, the five LSBs must
+	 * be 0s.
+	 */
+	switch (drvdata->memwidth) {
+	case TMC_MEM_INTF_WIDTH_32BITS:
+	/* fallthrough */
+	case TMC_MEM_INTF_WIDTH_64BITS:
+	/* fallthrough */
+	case TMC_MEM_INTF_WIDTH_128BITS:
+		mask = GENMASK(31, 4);
+		break;
+	case TMC_MEM_INTF_WIDTH_256BITS:
+		mask = GENMASK(31, 5);
+		break;
+	}
+
+	return mask;
+}
+
 static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 9dbcdf453e22..71de978575f3 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -255,6 +255,7 @@ void tmc_wait_for_tmcready(struct tmc_drvdata *drvdata);
 void tmc_flush_and_stop(struct tmc_drvdata *drvdata);
 void tmc_enable_hw(struct tmc_drvdata *drvdata);
 void tmc_disable_hw(struct tmc_drvdata *drvdata);
+u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata);
 
 /* ETB/ETF functions */
 int tmc_read_prepare_etb(struct tmc_drvdata *drvdata);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
