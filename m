Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4CF1D8377
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uUMaD2XN0JgIo/EIIEIG9gXYM48iaAnZOQtpth02yU=; b=seQVYkUJcNK3AF
	b9+4irRmuvpeyuV2iXtLW/YEp7e8rCNmLRq2ehghMLMNHeRUa51mSodbmxdYv6f0/GmWIeIQSL6ZW
	NBBzBRTpOLcqhfUqshI8vLRJjajz0JxY6+G7phlXq9yGfPfPLrM5US5GguTRnup+QjGQaMOxNAswF
	0ZHqC8AjDxW82mA2ciQh6tVIRnx986vCrkTWFMXzdVui90YY3FGA56G3ZX8yLS1ZprDXvNKP9XUUo
	evvy4eVI8BJkGXoQanqJShhOeLroXC6nbHD3hdOM9L3AEFnR4iXtf6S6hcVJ22bgMnYSNCt2Uj/70
	590no6GpKZofy8ykX8mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak8c-0004oD-QP; Mon, 18 May 2020 18:05:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6H-0003JQ-Eu
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so5180599pfk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TyOfEyc1p8YX3PmwOzWO2A6hoI9O98cRfCI+e8b4hIA=;
 b=Z9WDlXCB9+wMZqt3HYnxXTG46rSJL2qt3M7eatb2UX36OTObY1A6EgFhZfyNoY4wJf
 iP/Sa5g0uHF0+sjoKoBOelDlEB/FFZ6NOxOyV/DLGpvsAcv6JQ+xmnYz/iFD1tiAFvAU
 fd8FFNg9eY+A5PXAGc0MlCMATCp832KVPJ24D4ehketjc09x96hM1qtkKZIV5M/DLmzy
 Gy4jV/wXW9ZRNnPiBmuNwqFcw+7a/RMryXt+uBNTcewB60wRMG1Aq9J1lZt92H7N6Qqh
 yFuypdQdarzKBW2wZQZD2C05LfOaeR9Xe6GWVPTBB8PU5oITEOfy+cGp98Xs2W/yqXy/
 bm/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TyOfEyc1p8YX3PmwOzWO2A6hoI9O98cRfCI+e8b4hIA=;
 b=iprBVCyUewievbLtxac0Ln+y/4Id9M0K7bGMWuj4xpuBeCSClYRpiTz4qpEiZhRqET
 CWc5YC9ysuyVyKhUj66SnDj8eFc9UQ4bnrk/Chd3RMhNtSqlAOuoqQEXIcJd+w9B5RRy
 azHyiFgyr1vCYWEcj5aZGOuvwyfzWkCAj4fGaiv7eNWhmeolO91xvsCHOK+cOEUPnURx
 utSJWuT8YGs3sGwDKre6DRaM5wHNcRa9cUwS7nd6XC7KGwTKCGcwm0TI8P4oadUx5EYU
 JWEVwGMShT1YDbUjuGHuljwQ25YzHHN2Vrb/wCyb8Ejsj5geydaIBhyhy9rTTNOUYCAN
 n8MQ==
X-Gm-Message-State: AOAM532gZDbzXiTh2tnFFUJPl9V/n8zN1By1kSf9p/lp+Ybagz4QrjHK
 N9REsgCTC0AHGqH3/GphA0icyY0X2/Q=
X-Google-Smtp-Source: ABdhPJzkoRui4pceYAEXUOW33V1Cn3Jf4RMM/FaT1ctdAyL8uL/6vco/xWEUwz3hloVZhsgchxndpw==
X-Received: by 2002:a63:a363:: with SMTP id v35mr14756782pgn.95.1589824972370; 
 Mon, 18 May 2020 11:02:52 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:52 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/23] coresight: etm4x: Add support for Qualcomm SC7180 SoC
Date: Mon, 18 May 2020 12:02:27 -0600
Message-Id: <20200518180242.7916-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110253_588024_9C98F3EB 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Add ETM UCI IDs for Qualcomm SC7180 SoC. It has 2
big CPU cores based on Cortex-A76 and 6 LITTLE CPU
cores based on Cortex-A55.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Tested-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index a90d757f7043..4fb4874981e1 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1556,6 +1556,8 @@ static const struct amba_id etm4_ids[] = {
 	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
 	CS_AMBA_ID(0x000bb802),			/* Qualcomm Kryo 385 Cortex-A55 */
 	CS_AMBA_ID(0x000bb803),			/* Qualcomm Kryo 385 Cortex-A75 */
+	CS_AMBA_UCI_ID(0x000bb805, uci_id_etm4),/* Qualcomm Kryo 4XX Cortex-A55 */
+	CS_AMBA_UCI_ID(0x000bb804, uci_id_etm4),/* Qualcomm Kryo 4XX Cortex-A76 */
 	CS_AMBA_UCI_ID(0x000cc0af, uci_id_etm4),/* Marvell ThunderX2 */
 	{},
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
