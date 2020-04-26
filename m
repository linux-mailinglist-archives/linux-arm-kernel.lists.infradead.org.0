Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824EF1B934B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGn62zkafy95Wl9z7yz48WxMq2VZUrO01ZELJCBy1m0=; b=LVZnSEs3Wxz956
	W59V/xWynIUHqeYSzpV+cQQVsaEf5IcB7yPS7ditCO9lajDZgghdgY3pchtnrnsJ/E4BtrUM1RrLW
	hJsXJV5HveuNybKmfQYbAW2B9HROxV3iG9hStTluCvWfuWwRUphoMWug7GpPFX3QhUuYbS3k9S4f5
	bg1mJLPFaJebpkXGdD4M887/Wb06/QRZUVDi08Nrx3WjGA5cZHqoN8GWyHlpZmlimtDSGvAQA/zLC
	dYEAGaF0thpoG+IXVLhEaxlZ66Io/0wEiYZWb7vXT4WXi2C+ssnCdx2tcUsP5peawfwfC/cpXLA1P
	7zdawUH/KkKVIgS8huNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmVH-0007EY-DS; Sun, 26 Apr 2020 18:59:47 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmTj-000626-Vj
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:58:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id x77so7717362pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=78YVO845GHtM9k/EV5ps+BQFILd3wygw5mUyH2gxrzc=;
 b=J6yKsPTdcbwo6aeshqFM2fAYsDMjgIQoQY8MwtukCyc4TyT2VnzLqAzlU/0CsbKoW0
 jtWf8aRzBoPBaJZJBm1Lg+ZwGPOLaTZucHMHdK9h0RYCvOGpspXp0ASBXuEkVePJptFa
 iDwfjCbDMnNVvSzMf9JR3S9E1iv5lWAGje84A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=78YVO845GHtM9k/EV5ps+BQFILd3wygw5mUyH2gxrzc=;
 b=fdQ8eEVIMhkjs5l+fL6Cax7S7t4hB0UzEraugGIkWz6GGjUoHecFeQhz1fqpHg89ke
 DHMobk6hSgoDelzB7kw5CmlCVTJ7nGT8ZG4OmOyRE4KJNu/qloqDBFW5iW6UuVTqLrzQ
 p8LM5ZP6YCaPk8gutq6MM98Lp9OFX/0i48mPY0ruST/NIhsAoa2aREHAnsAl8pWkCN/1
 4B3PpWZjt21c0XSqZKtbs6bo/KMKtKrYh5DVaSafAR58hIPgCztAlrhzU/MZm0yAq3lP
 ncYxdAdzXkKhyRduzUzaC/wo2QyaoIztAMvCr0CW0l/iXLKZd9SjvbGqCj/H7F/qGtfI
 o/VA==
X-Gm-Message-State: AGi0Pub9cgWJJHDurboLlzH7nwF4tNZTq48G+JDmGIg+PIzMCXM4x73w
 C1KIuuOyV6a/Wov2lSAqK/c/ew==
X-Google-Smtp-Source: APiQypLIflSfGaQ/fc5lB1P41nB7JmBS+mGiXUpgYwets4rk7M766rmw/tGYvSbMSRiW/JEWTQ+P2w==
X-Received: by 2002:a63:cf10:: with SMTP id j16mr19176908pgg.201.1587927491023; 
 Sun, 26 Apr 2020 11:58:11 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h27sm9425153pgb.90.2020.04.26.11.58.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 11:58:10 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 5/5] coresight: Avoid casting void pointers
Date: Sun, 26 Apr 2020 11:58:05 -0700
Message-Id: <20200426185805.14923-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200426185805.14923-1-swboyd@chromium.org>
References: <20200426185805.14923-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_115812_067720_58724295 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't need to cast void pointers, such as the amba_id data. Assign to
a local variable to make the code prettier and also return NULL instead
of 0 to make sparse happy.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/hwtracing/coresight/coresight-priv.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 890f9a5c97c6..09ca9d824cee 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -206,9 +206,12 @@ cti_remove_assoc_from_csdev(struct coresight_device *csdev) {}
 /* extract the data value from a UCI structure given amba_id pointer. */
 static inline void *coresight_get_uci_data(const struct amba_id *id)
 {
-	if (id->data)
-		return ((struct amba_cs_uci_id *)(id->data))->data;
-	return 0;
+	struct amba_cs_uci_id *uci_id = id->data;
+
+	if (uci_id)
+		return id->data;
+
+	return NULL;
 }
 
 void coresight_release_platform_data(struct coresight_platform_data *pdata);
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
