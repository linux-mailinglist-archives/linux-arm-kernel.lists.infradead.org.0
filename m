Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB791FBBF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MtOvJLwM0kzIxYZUOT/HVZ1YiBHWAdjnOl3mxe5tYg0=; b=BtSCDAjhRclySC8eGo9ihm9OHv
	sapUA6Q5P8Au7BIw1Xw2mP9Z/XkbPg87RrrRNqu4S7dbplEaVWPnHDxXfIU9sRQ7JQ4h3qef06ysP
	YMIasbV7w4xd89UzxZEUq3c2dqJJ8hffQCjo99IRIKesHA8rZNpgsBuIgqvki4C0LXXExpc3M5nDi
	bp41sjlAYrzJWL9pZl9Okx1JMzfGtCVfz5PIYxciYEWR6hR9KIMtNUt4RVrU9DH8fZeBrasltno/Q
	rUeHjV6rKaVjLgXWoSJX8x101f72+trzXbwRk3ULk7CtTT3XgMl0KuVulOcLa/dhLWzH1Q1DeK3eV
	lXquXZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEe0-0000NT-N4; Tue, 16 Jun 2020 16:41:04 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEdB-0008JK-11
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:40:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id q25so3810311wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aqErEkGc0G89wKtmIHGbgBfE4aZbj87KIVLTsmxB2XY=;
 b=UYpcHQH/yKkhdBn9ulPpq77f+Agl0AsbvPJ30d343fb0xZWL5dSqnT6bJyahJrFYTB
 ApDTcq1Yu8TzkiBQyOsPROiIFfnChdNzLKpFfQEZ83JDaFBgagzmzoDZ7a2gaQTz99rn
 KoKwEfttLLSQ+ZX5pFCuI0YNoy/H9Ii543Yesck5edN+BglTc5tA5MaCuPzcNTzQyL9P
 LuENtduUyj5liKDExdOG8So9DIfrWk3GZyLFfFahBgifxxElow1Id9M8tYXM0AhMTZX2
 jIw//r8x8ASflsOZmo2bWYH7LD/SygrpMb9ni+uOME/o3Tv444GpBCRZZvbg5UMitBsW
 ZxBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aqErEkGc0G89wKtmIHGbgBfE4aZbj87KIVLTsmxB2XY=;
 b=s69pTMmVknqf3WG9+imbtJ6+F6WjblCg66J/XQP7uEmyD9f+HYZ3mDsxUXoRc+IT+p
 jVfU9q7uXyExUYNFHM+M3by6raEBj6WDu83zFmZZ/VRGvnj43ycxrPlqncfhjNwgukKo
 3HsKZ089PLsoawpOn9Qb72bLtLT2MEln0Ath9VKZzfaIDS9O9JR5FjGZr2DEjxdBdM0L
 3dXXIXwNvGTQjHH8Q1170bbXL0J29Gkn6ADZKt67WjiXYlsQ0laREj8Tj2Trb3xu3Le4
 4Haa59mL8szrTnDi/yHruu2GjAln0Kl1NhMeBh5MTXNyz8EHLkWNOdEjZCc+u0x/NbLc
 rJug==
X-Gm-Message-State: AOAM531cUSytsYvsD07qo8ZixxVjb53aMqkn0rcXLmydvxitP5syitIu
 YkodLrbUFaZyZZowReJKugsIcxFlLN0=
X-Google-Smtp-Source: ABdhPJwdx3JS+7B8OiPrbMZzyeHAkleLtl8T1QaUpWQuvObRxe6fB4GLU5k0nnNG3CxPtBufYPAAqQ==
X-Received: by 2002:a1c:bbd6:: with SMTP id l205mr4253963wmf.147.1592325611191; 
 Tue, 16 Jun 2020 09:40:11 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:dc9e:c297:59e5:dbd9])
 by smtp.gmail.com with ESMTPSA id g82sm4843866wmf.1.2020.06.16.09.40.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 09:40:10 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
Subject: [PATCH v5 2/5] coresight: tmc: Update sink types for default
 selection.
Date: Tue, 16 Jun 2020 17:40:03 +0100
Message-Id: <20200616164006.15309-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616164006.15309-1-mike.leach@linaro.org>
References: <20200616164006.15309-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094013_065061_E2306CB6 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: corbet@lwn.net, Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An additional sink subtype is added to differentiate ETB/ETF buffer
sinks and ETR type system memory sinks.

This allows the prioritised selection of default sinks.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 39fba1d16e6e..0d2eb7e0e1bb 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -484,7 +484,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 		break;
 	case TMC_CONFIG_TYPE_ETR:
 		desc.type = CORESIGHT_DEV_TYPE_SINK;
-		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
+		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_SYSMEM;
 		desc.ops = &tmc_etr_cs_ops;
 		ret = tmc_etr_setup_caps(dev, devid,
 					 coresight_get_uci_data(id));
@@ -496,6 +496,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 		break;
 	case TMC_CONFIG_TYPE_ETF:
 		desc.type = CORESIGHT_DEV_TYPE_LINKSINK;
+		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
 		desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_FIFO;
 		desc.ops = &tmc_etf_cs_ops;
 		dev_list = &etf_devs;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
