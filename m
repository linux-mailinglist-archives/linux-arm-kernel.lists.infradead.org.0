Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A69A1B80AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzMW9u8yeMSJ1EEboYjE3Hm/TuHCjY+EUlM3mla7c5A=; b=ua+3xmbTnRUW/D
	sTfB3LxnTq2LMyBsY/h/aCg2yXpa4jO5KLT42BNX7RQS3/8dmFRy5QXueiji5OuOXwnnbpRWEL2Et
	7Cmpt5z+geok3UDMGhwpxlC5Wqf4YSdBueXEARRkqoqpvfnl9d/oOxlFSkh2/zF0cOSjX5A4HnV/1
	vZD11lGNAtoNhgyCe0CE7wUTEp/tKPKgJzcgPXmh5M4bdaPyRV1ITc96YN05YbjOJDsF78rq8yuD+
	8oKmzDJTLBfylE03/55bpWBb6Tu/IIz8bT3wK2r2j/zpzbGj9ADTKn51ynbPfrrifSoYuDugBBgiz
	1TlW4a2CfBBbvSsRQDJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4vd-000766-U2; Fri, 24 Apr 2020 20:28:05 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sw-0004jF-M8
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:20 +0000
Received: by mail-pj1-x1043.google.com with SMTP id t9so4343818pjw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=exYZpvChsSlo7lAJbJWuh/pu5cSD6aiCv7Lp3iIYni8=;
 b=iN9Rmvvnqh92eC4TVhJvXp9LrfV9PydbkGYoRVJklbytnIqLGmkGSkG1lI2zxCRgRF
 5M53EDEEzllMIdgoLfs1/dVl8b3pTJfORPir4EQsdGV5FGTSVHYNP6wQ3KcdmPUgPpDH
 YJvNHFBk/YBKfcyFuLNIun9KsZvifIbnoX14xisIiPXfuVfLDlPu6+PjVy9eWJ0Pun4A
 1SmSDGzlNT2UlssN6jOGylFsnYwa8kVifpktDTIW+H/dVnq36Vp+0AuTokOk9ojoWvGi
 cLVSm+hhmnpYe3VgiFbrN7OgP+GhT8Vp3GSAE0Q0lX+SM/8VROPHvcG/UzE1Le1Sr0m6
 TPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=exYZpvChsSlo7lAJbJWuh/pu5cSD6aiCv7Lp3iIYni8=;
 b=cSLyDYk47YnEIMFSLGdufUSPhFnuobGGzocbqLlSqp5wIUDutLtdaPJDfyiljTvNdG
 i/lYrxMDDXyzIvJdZ4NiePLBMtBpE9wq1OdVAB/Ka5qtEGbRbFeRbxz0eSG5dRjZCgsf
 wiDpRM3RuANcVTLfBordn6PBL/YPTUDUACMPZIv9ds6PBpeXXuSM/i9+L+4gUWZ8IQqP
 IRsp+qRceghS+vYI3gvav2xunt1ZBByRxdBBMX5KG/VrhncUDZXdy0jT23VJGu0wUlQ5
 GvEmizgbu/97cehxyNDubIjd03SoMbz+tteCvZ4AYpL4mdOFW8LlGyW2pmiJ62qluqdS
 7n2Q==
X-Gm-Message-State: AGi0PuYun7nCZTkb6lGrUrre0MyCCYsDXKhriWp4z39LnnvpoUfj+DpJ
 a7tpI3f4C39wWLOc0R21HMiTww==
X-Google-Smtp-Source: APiQypL5AzMQXq3gOoXlH0PVqgL7PRKhGgSOEjwcpARkI3Rx98coNs2TcHAu6I+2Ek+Xn1y8hG4T1g==
X-Received: by 2002:a17:90a:1743:: with SMTP id
 3mr8488308pjm.106.1587759918032; 
 Fri, 24 Apr 2020 13:25:18 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:17 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 09/12] remoteproc: stm32: Update M4 state in
 stm32_rproc_stop()
Date: Fri, 24 Apr 2020 14:25:02 -0600
Message-Id: <20200424202505.29562-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132518_755423_4007E4A0 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the M4 co-processor state in function stm32_rproc_stop() so
that it can be used in synchronisation scenarios.

Mainly based on the work published by Arnaud Pouliquen [1].

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 404f17a97095..86d23c35d805 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -493,6 +493,18 @@ static int stm32_rproc_stop(struct rproc *rproc)
 		}
 	}
 
+	/* update coprocessor state to OFF if available */
+	if (ddata->m4_state.map) {
+		err = regmap_update_bits(ddata->m4_state.map,
+					 ddata->m4_state.reg,
+					 ddata->m4_state.mask,
+					 M4_STATE_OFF);
+		if (err) {
+			dev_err(&rproc->dev, "failed to set copro state\n");
+			return err;
+		}
+	}
+
 	return 0;
 }
 
@@ -531,6 +543,7 @@ static struct rproc_ops st_rproc_ops = {
 
 static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
 	.start		= stm32_rproc_sync_start,
+	.stop		= stm32_rproc_stop,
 };
 
 static const struct of_device_id stm32_rproc_match[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
