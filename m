Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACB4A27F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lfsc4KRuWJJkc2pbdxQihcNZMzEipUjTUvb0vZZsij4=; b=oOtyzT6WuoBQshb3UTnv10XTn+
	SAb1m/QogEe0dU/VNdsnYDst8al7rhoTLcO/V3pozV2KK5A4MJqOHHhl3TCynsjEONGy04HrrWazA
	JkyI38odTBqiMnUHNFYTMa7r72/QukvpxWgZ4MSYOCKQTYEQrO0318OiPOZYVJ+zN2y3MtClq+qHv
	MyEEwKj+u8xtcVOXVAtlU7Lge/BnOp+iEjGICQhMG5mYO7fKiDCiNqpZHTCsq0a2+Ik621XhWlijv
	4EQpgIgbIclPN3yxCp4VGxxf3uvEc2CcQqZUImn3VVta/mZT67M6P4IlFf0j0GO6sU6fKFrTTom6v
	yjn1+7eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R3E-0004WS-2g; Thu, 29 Aug 2019 20:29:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2E-0003fQ-9O
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id o70so2860780pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=skNhpMN2Ucyc8n+P/pDVGmxDvDSjMfWlnQrtB94MVOc=;
 b=Zs9NkvKjqvXWUQycjTsRVSLN5kmzYtNtIdjldjvIGydRXG+9CcooiZEspNkSkEix3L
 VMJXa2f6dq3rn8ybVRRWX/Gsm+gyQlQqZllQCoju3BgW+oLjeTWC/9233Nk3D6iYeyKb
 xms2Fhb5HDJl+Fhic/yIaUlUc6IzsNfSErFT4tlEKgPpsxcNmMNIoNcSmUTfNwnnQYwk
 tHeyMwdlchQJz1HzipuX5MEGQfbBpSRQBOH/onfOSOavasR+OaO0Dm/1DfbSwJofgPqE
 jKzvm639umEEiUhCENYPoiYsvZsWKYj2T6NxWMY8B87s2WWN3VIX1tSYJlWX87I3vxAm
 c7GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=skNhpMN2Ucyc8n+P/pDVGmxDvDSjMfWlnQrtB94MVOc=;
 b=owepJrH7Yx4DHcC8CcBe8JAXT7LLin03R4EVWJ0FIGaIl5tJJhkIJy/SE7rbWeRGYh
 Dz4JCcUBkCPdW8+obxrXYK8E9lVXx17uFNRY1hGNryguDQB8jq1cqV/lrns0m+qi1tP6
 vVOfWiSnEaHvflypfalH9POP/AwN3+OED3OnmNxWwm+H/yZ3DWunOeaNfhEnY4efOWui
 e1fCbAx7K6Z4Pblgb6CQs0Ba4GJoqGIZppbdyNnHwzAFU5VjKO5dxeypv88u2AR3vfcl
 0e4evxsFqX+xMHdvcaA70LPZrY5nXHyMxr94IjBGejj7fvc1528ml4cxm79GmcihZtGx
 j2lA==
X-Gm-Message-State: APjAAAVZMu1g5oEWi8Uc9qXFiZKmfS/a8cUC0W7Psz/d1loJSoT2wAkZ
 tDiXnLg+TlLZJYi4bAHSBj7dAQ==
X-Google-Smtp-Source: APXvYqy52EQIwKyqb3VpOjagNGkjySwgvctcRQlgNIERdJOABJLEp+VBJCb4utA4URN42Pe3XcIulQ==
X-Received: by 2002:a17:90a:326e:: with SMTP id
 k101mr12452804pjb.15.1567110525807; 
 Thu, 29 Aug 2019 13:28:45 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:45 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/17] coresight: cpu-debug: Add support for Qualcomm Kryo
Date: Thu, 29 Aug 2019 14:28:28 -0600
Message-Id: <20190829202842.580-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132846_328124_8FA09066 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Add support for coresight CPU debug module on Qualcomm
Kryo CPUs. This patch adds the UCI entries for Kryo CPUs
found on MSM8996 which shares the same PIDs as ETMs.

Without this, below error is observed on MSM8996:

[    5.429867] OF: graph: no port node found in /soc/debug@3810000
[    5.429938] coresight-etm4x: probe of 3810000.debug failed with error -22
[    5.435415] coresight-cpu-debug 3810000.debug: Coresight debug-CPU0 initialized
[    5.446474] OF: graph: no port node found in /soc/debug@3910000
[    5.448927] coresight-etm4x: probe of 3910000.debug failed with error -22
[    5.454681] coresight-cpu-debug 3910000.debug: Coresight debug-CPU1 initialized
[    5.487765] OF: graph: no port node found in /soc/debug@3a10000
[    5.488007] coresight-etm4x: probe of 3a10000.debug failed with error -22
[    5.493024] coresight-cpu-debug 3a10000.debug: Coresight debug-CPU2 initialized
[    5.501802] OF: graph: no port node found in /soc/debug@3b10000
[    5.512901] coresight-etm4x: probe of 3b10000.debug failed with error -22
[    5.513192] coresight-cpu-debug 3b10000.debug: Coresight debug-CPU3 initialized

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-cpu-debug.c | 33 +++++++++----------
 drivers/hwtracing/coresight/coresight-priv.h  | 10 +++---
 2 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
index 2463aa7ab4f6..96544b348c27 100644
--- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
+++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
@@ -646,24 +646,23 @@ static int debug_remove(struct amba_device *adev)
 	return 0;
 }
 
+static const struct amba_cs_uci_id uci_id_debug[] = {
+	{
+		/*  CPU Debug UCI data */
+		.devarch	= 0x47706a15,
+		.devarch_mask	= 0xfff0ffff,
+		.devtype	= 0x00000015,
+	}
+};
+
 static const struct amba_id debug_ids[] = {
-	{       /* Debug for Cortex-A53 */
-		.id	= 0x000bbd03,
-		.mask	= 0x000fffff,
-	},
-	{       /* Debug for Cortex-A57 */
-		.id	= 0x000bbd07,
-		.mask	= 0x000fffff,
-	},
-	{       /* Debug for Cortex-A72 */
-		.id	= 0x000bbd08,
-		.mask	= 0x000fffff,
-	},
-	{       /* Debug for Cortex-A73 */
-		.id	= 0x000bbd09,
-		.mask	= 0x000fffff,
-	},
-	{ 0, 0 },
+	CS_AMBA_ID(0x000bbd03),				/* Cortex-A53 */
+	CS_AMBA_ID(0x000bbd07),				/* Cortex-A57 */
+	CS_AMBA_ID(0x000bbd08),				/* Cortex-A72 */
+	CS_AMBA_ID(0x000bbd09),				/* Cortex-A73 */
+	CS_AMBA_UCI_ID(0x000f0205, uci_id_debug),	/* Qualcomm Kryo */
+	CS_AMBA_UCI_ID(0x000f0211, uci_id_debug),	/* Qualcomm Kryo */
+	{},
 };
 
 static struct amba_driver debug_driver = {
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 7d401790dd7e..41ae5863104d 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -185,11 +185,11 @@ static inline int etm_writel_cp14(u32 off, u32 val) { return 0; }
 	}
 
 /* coresight AMBA ID, full UCI structure: id table entry. */
-#define CS_AMBA_UCI_ID(pid, uci_ptr)	\
-	{				\
-		.id	= pid,		\
-		.mask	= 0x000fffff,	\
-		.data	= uci_ptr	\
+#define CS_AMBA_UCI_ID(pid, uci_ptr)		\
+	{					\
+		.id	= pid,			\
+		.mask	= 0x000fffff,		\
+		.data	= (void *)uci_ptr	\
 	}
 
 /* extract the data value from a UCI structure given amba_id pointer. */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
