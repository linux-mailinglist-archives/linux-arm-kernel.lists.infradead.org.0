Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB2814E86E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 06:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSKDSbiHGJIz4DimNaAfrEnKntnZmG1QXe5/JTOzXp0=; b=gkJ3GzLrSdMAMf
	fSS92yWOoBgMWh+HN9Lwg8Pfsbpn42IJnHOMK3cxH1vLydtBWUeovMjTfR9+LiL502h5F45UnzT5P
	XL+qww7Jw+2LgXKxa6frzuldT9ZKnSNN/v4DlOLsfaVEFON+KGuhUJbG62W4Ie+7kjUyrpYSFftXY
	vTu3Ub9a9lwTzEr8JRrqxjpmum8s532jyB/88TkaadRGTSgvzir0M/xRVIv8E8Zyd6gARZjyYT0yz
	sRPzcpUK/zAHgdZ4OeNSfeU1dQjD20uJ1Yrrrp6ZnQQoWKZipTL59uQhq2OO59ULTjdZ46pimq3Wp
	YtOQglf0+MW34a9l8CaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixOri-0001KU-7H; Fri, 31 Jan 2020 05:29:14 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixOqx-0000sZ-Fk
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 05:28:29 +0000
Received: by mail-pj1-x1042.google.com with SMTP id dw13so2323067pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 21:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5O9dRwTmAfTdhR0RTimUtT1UQf2+T/KS73D+N+uxWxw=;
 b=w2hVTTa9jV41L9X8+VI9lgCG0sikVjC0VKQQhwZ45dJYTylRt1/bpb3Nn4MK8k1AuC
 lPF/7cBMG+d5Tg9APK4s1ooCILZdOtp5FEroxAyGalEcAICcKa8r6wZO2DWyhQa93lHx
 oF72ZGrpOpSbxrl8wYhq80uDxbDqjaEdxmrlX3XpSQu5JnhnsiAI+jM4GO//DStj6iOx
 Q/lyusherTK1Z80dgkNGgptdj4SufDpNTkmtoHaHnXCDJTyqs4rqfFja7fAv4bZVvF/6
 t7unsdJNEc57m5cQDFBuCMe+8Y9SUrtqIYI8eNFddXntxL5Ll1gB5WEAorHdXfQLRP2x
 Nl6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5O9dRwTmAfTdhR0RTimUtT1UQf2+T/KS73D+N+uxWxw=;
 b=FIEfc7EMfmRDV0s2A6meaSVpt82LIL3trOd3X2QXAbEAWTwfRV+UzTviQj+qujeZoK
 8QdmNRFYNbUgoQGdGu1yd1Cq1Vyz40WeT0e7cjCX0MqTsB9hdrwAwLA6TPpEx9QzGzX+
 5/eeP4EN17WN80lAMUcLwiFQf1HMmIz51oyYfF5T+9OyPCStijEgrKOY38sXq665WSQj
 EARAVSH8H+tTfZ20Vyv+NLAyRlIhw4jQQ+NyeEf1vkMhYYDlmTRvn/Qpqq4LR/P+mYyk
 eGUdejd451pENpLNcVE+84MHlH3v0pkJCBPjuk2auTD21MBh8b7OWdvgJxBdQFuygg0B
 t7EQ==
X-Gm-Message-State: APjAAAVNJqHYzcgiROBp2Dpjombqhvy6LoshQCK9eR4rL+hS31m4gHSD
 I70gQiX3q3sAPeYWnbVEJI4h2g==
X-Google-Smtp-Source: APXvYqxKJQkEsMprpBon3acfXN0/i9RqjCadeEkPMtXCEMGBgxYe7Qp0IMV/cARWwYTIPIDAh7lioA==
X-Received: by 2002:a17:90a:9f83:: with SMTP id
 o3mr10309975pjp.95.1580448502479; 
 Thu, 30 Jan 2020 21:28:22 -0800 (PST)
Received: from localhost ([122.172.141.204])
 by smtp.gmail.com with ESMTPSA id b12sm8762269pfr.26.2020.01.30.21.28.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jan 2020 21:28:21 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: arnd@arndb.de,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH V6 1/3] firmware: arm_scmi: Update doc style comments
Date: Fri, 31 Jan 2020 10:58:11 +0530
Message-Id: <1bff7c0d1ad2c8b6eeff9660421f414f8c612eb2.1580448239.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1580448239.git.viresh.kumar@linaro.org>
References: <cover.1580448239.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_212827_572473_2DC77DFC 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.172.141.204 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peng.fan@nxp.com, Viresh Kumar <viresh.kumar@linaro.org>,
 jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 peter.hilber@opensynergy.com, linux-arm-kernel@lists.infradead.org,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix minor formatting issues with the doc style comments.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/arm_scmi/common.h | 4 ++--
 drivers/firmware/arm_scmi/driver.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index df35358ff324..227934871929 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -33,8 +33,8 @@ enum scmi_common_cmd {
 /**
  * struct scmi_msg_resp_prot_version - Response for a message
  *
- * @major_version: Major version of the ABI that firmware supports
  * @minor_version: Minor version of the ABI that firmware supports
+ * @major_version: Major version of the ABI that firmware supports
  *
  * In general, ABI version changes follow the rule that minor version increments
  * are backward compatible. Major revision changes in ABI may not be
@@ -88,7 +88,7 @@ struct scmi_msg {
  *	message. If request-ACK protocol is used, we can reuse the same
  *	buffer for the rx path as we use for the tx path.
  * @done: command message transmit completion event
- * @async: pointer to delayed response message received event completion
+ * @async_done: pointer to delayed response message received event completion
  */
 struct scmi_xfer {
 	int transfer_id;
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 2c96f6b5a7d8..978eafb53471 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -119,9 +119,9 @@ struct scmi_chan_info {
  *
  * @dev: Device pointer
  * @desc: SoC description for this instance
- * @handle: Instance of SCMI handle to send to clients
  * @version: SCMI revision information containing protocol version,
  *	implementation version and (sub-)vendor identification.
+ * @handle: Instance of SCMI handle to send to clients
  * @tx_minfo: Universal Transmit Message management info
  * @tx_idr: IDR object to map protocol id to Tx channel info pointer
  * @rx_idr: IDR object to map protocol id to Rx channel info pointer
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
