Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D611BC794
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 20:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rV9frYMB7mMs1igHxl60HwXVGemYhm7Akf2MVZYUWV8=; b=OJ/N3jVaLI3zTf
	aNOdvWVoAZyBnTSv7frpo2PAZgGG6pCzPkaaoIhIlRQ7IcqjnnBvVBXYcOpggoc8jv8mgnHvgo1Tt
	vJMBHNgMkcSEXn1KXfDEYEcWw06+e3FhBqunZ54NKmitCBKgU5uMetoKX+s8ogKNqLKH12tunS2nY
	2coXLWWxonhiUMsypnbHo/zXeoJ/yTrscCUdDt+90s7LZs1LnXXxXrNXiqLeZK9k5bf3ztnhFHNDe
	HpVe9reCrBqT+MkHSU2vqAqIZ3RUW1XBfyIyEG4t5QFygSrIVQgquufrMmzX2Z2UPDsP+rF4OT845
	9eFM5HFPKGsnM4dGkoWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUhJ-00066C-1K; Tue, 28 Apr 2020 18:11:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUgQ-0005cp-GK
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 18:10:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id r4so10762461pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 11:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=feeBoZmiNK+PqfmUZIUHdcZ4oBKPOjHptWecqjvhfI4=;
 b=odBlKV081b57bKb3sexaYhZ/qqcstSbg/s2iZYJthN7dEiR/vQ+YpQrlo3lkUvQWy3
 MjiNjirFDo5mutK+0rE9HWjSjOD4HkEqLHDaGUt7AE2b3OBugG1Ww3EkGpdGis00LY6Q
 gjCU62klhAJN2mXBhEgl2s/FwKD1XU8iv0xLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=feeBoZmiNK+PqfmUZIUHdcZ4oBKPOjHptWecqjvhfI4=;
 b=daSQdj3UiUTWkZ9K9j3aHbNFv+rDRqZj1JoA33JH/k3+KEm2yEAV9B0Mb+aBR67AaY
 LXYS3LHqehuLEukJcq1o9KRPkQ3rU0E0HEccrBDShFoZ+ncvryPaMC9ViCI55pMrZW0/
 URd+ctYM2cddnMfHh7ik1/vEM+atDycSWlzXePKonK8a1wIlQiXBB7Ngx8rFKEN5hmJi
 5TPFJ5k55wH/xUxHmMo9OHzXJah9M+jOIGPzQ3OEAd6Je/fPY2H7pGvSx1w2Z+voSng5
 HEBtt23rs54G6ZrMXZWDAmbPs67X/CQCc11xibUGIckSyWp6eQK8mix2s3gWIDVOFIpW
 cKag==
X-Gm-Message-State: AGi0Pub5vOlsIURBiKdYdK3Q1I4ddEGmOir1W/1AsyQKU6DT3RQjLzxL
 VbbxTHEw5uqi2CdbP5f4u/2iCw==
X-Google-Smtp-Source: APiQypIL/096cicyoZjsKpAn19BhU3sgp026+T4Ap3M/8jcviaZEa8JyagUmCZZBtGmw0suU4VD5Xg==
X-Received: by 2002:a63:3814:: with SMTP id f20mr27969431pga.283.1588097413701; 
 Tue, 28 Apr 2020 11:10:13 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h197sm16260910pfe.208.2020.04.28.11.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 11:10:13 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v2 2/2] coresight: Avoid casting void pointers
Date: Tue, 28 Apr 2020 11:10:10 -0700
Message-Id: <20200428181010.170568-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200428181010.170568-1-swboyd@chromium.org>
References: <20200428181010.170568-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_111014_544084_4DD22CE1 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joe Perches <joe@perches.com>, Mike Leach <mike.leach@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
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
Reviewed-by: Joe Perches <joe@perches.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Thanks Joe for finding my thinko!

 drivers/hwtracing/coresight/coresight-priv.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 5a36f0f50899..36c943ae94d5 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -215,9 +215,12 @@ cti_remove_assoc_from_csdev(struct coresight_device *csdev) {}
 /* extract the data value from a UCI structure given amba_id pointer. */
 static inline void *coresight_get_uci_data(const struct amba_id *id)
 {
-	if (id->data)
-		return ((struct amba_cs_uci_id *)(id->data))->data;
-	return 0;
+	struct amba_cs_uci_id *uci_id = id->data;
+
+	if (!uci_id)
+		return NULL;
+
+	return uci_id->data;
 }
 
 void coresight_release_platform_data(struct coresight_device *csdev,
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
