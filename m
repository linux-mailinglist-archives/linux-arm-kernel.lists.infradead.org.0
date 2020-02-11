Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AB6158D1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hhyxQdQTOvn+Fqxphst/gTI0CwTlBPl01Vf6Z0ksgDM=; b=cfPF4xyuEq9R+a+VytrEpMcW27
	H9HV2YvieJ6XqPSDCQ+sP45BGkrfp9hiKMQAp6txnS/imEpH5Hn3uAEVdjo5uQONDU59bEVya5ESI
	mylgG8aKooTNhV9lEn3OqAet+0kFQjdFQ8buEXZy9EzuahwO1tw7N6aCZoazl2V9SNIUTS4IQGk7O
	nVyn104F+qbBsvm5AujWIQc0tnYas9cmQN9m/3pPQjaxzh75EZv+i3FzlvYQgohJLWVAtJBh+gqCX
	k9l88CG2jfmIsRa5r7kj/7u1hiV6QODfMNeC6NCdnO/dBT9L7fq8BbzYq0EKRlPdxHYOrQp45RaeU
	y/kHI6cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TFm-0001h6-SW; Tue, 11 Feb 2020 10:58:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TFD-0001Ib-U3
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:58:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so11765785wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 02:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mcjy2CEkG4vUV/6rKn0LaYo72M9aNFWzBHIkohtYboo=;
 b=Ti4NKkbkjAgYVP72llVKREnT/9iq3do5dLrmCumt+TOI+SGt9hfEaAZgn5Ew0AzAwV
 gwzbzeOhbor1ivtJLviXBrZ5vfC3P6SiwVn/0gf4JWCZDygh69+AJgmGT7B/DvqDc7Dn
 VpoDFz6rMuSFFpeQxm6aH+BSAiLyUp1e91X1Huiw6f3RUp2RHfjzDBfDlnrvBBrKqiya
 4cDXzmbSGe9Ohed78ODEM+2ZivdqetXAHsuvVLJs12MAA7FF58MUPzmsLT7K+lBr9lYn
 z45dm/tNFKi1gaMsNBCHs7oIXpY5jWVSm2TJ9d2BAjhKyMuo0HFkWEy5f6G1zWssc1G9
 0B0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mcjy2CEkG4vUV/6rKn0LaYo72M9aNFWzBHIkohtYboo=;
 b=fXtRwi0jOmB4E8OQnKku0i/E4QsGvoTD8mOsqYNkH6A2Tpd8CbJRXgWKrTozZbGnS1
 CFGq0b5XCCZxQPbzE4iWqzx8bkIk+WLqHog3xbmHRhHrVv1z/ODrEMPCTjV+sDkTnzGp
 mXAJatKCQDOfwJ7+M+PsfqWkrI6kaQYGJPNUukJfv/xXbUt/7/YOYse5soifhaimqjhR
 z4bxH8tDR2M3WhpZvIYqhHUbAF11km3w8/LeEA6rEb1l1rchAZ/XF3+BstaNHUMMdhuR
 sB2f1GqpFNL4s0TBrpW0wNpO+2L0+d/dRvcdhlQoifSTDIrL8IWqXLQc+lrQ0lE1dTd5
 Vvaw==
X-Gm-Message-State: APjAAAXYKhEQxZb7SLk1rNSSxBoDVV1/73MiZHwuLJcnH2wu2M4a8WjU
 JPPtpr+tm8XfQhnp2frDvg4NORgjYGQ=
X-Google-Smtp-Source: APXvYqzot50fmcFXwimsQuijTt/kJOpNnHi0OoneA0dxGEX6mY5s1phjJSPIWu0s4zJMIXEsqz3BAw==
X-Received: by 2002:a5d:6646:: with SMTP id f6mr8543403wrw.276.1581418698013; 
 Tue, 11 Feb 2020 02:58:18 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id g21sm3171291wmh.17.2020.02.11.02.58.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 02:58:17 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v4 2/6] coresight: add return value for fixup connections
Date: Tue, 11 Feb 2020 10:58:04 +0000
Message-Id: <20200211105808.27884-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211105808.27884-1-mike.leach@linaro.org>
References: <20200211105808.27884-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_025819_967611_AF6E2EA3 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mike Leach <mike.leach@linaro.org>, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Handle failures in fixing up connections for a newly registered
device. This will be useful to handle cases where we fail to expose
the links via sysfs for the connections.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 10e756410d3c..07f66a3968f1 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1073,18 +1073,14 @@ static int coresight_orphan_match(struct device *dev, void *data)
 	return 0;
 }
 
-static void coresight_fixup_orphan_conns(struct coresight_device *csdev)
+static int coresight_fixup_orphan_conns(struct coresight_device *csdev)
 {
-	/*
-	 * No need to check for a return value as orphan connection(s)
-	 * are hooked-up with each newly added component.
-	 */
-	bus_for_each_dev(&coresight_bustype, NULL,
+	return bus_for_each_dev(&coresight_bustype, NULL,
 			 csdev, coresight_orphan_match);
 }
 
 
-static void coresight_fixup_device_conns(struct coresight_device *csdev)
+static int coresight_fixup_device_conns(struct coresight_device *csdev)
 {
 	int i;
 
@@ -1096,6 +1092,8 @@ static void coresight_fixup_device_conns(struct coresight_device *csdev)
 		if (!conn->child_dev)
 			csdev->orphan = true;
 	}
+
+	return 0;
 }
 
 static int coresight_remove_match(struct device *dev, void *data)
@@ -1305,11 +1303,17 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 
 	mutex_lock(&coresight_mutex);
 
-	coresight_fixup_device_conns(csdev);
-	coresight_fixup_orphan_conns(csdev);
-	cti_add_assoc_to_csdev(csdev);
+	ret = coresight_fixup_device_conns(csdev);
+	if (!ret)
+		ret = coresight_fixup_orphan_conns(csdev);
+	if (!ret)
+		cti_add_assoc_to_csdev(csdev);
 
 	mutex_unlock(&coresight_mutex);
+	if (ret) {
+		coresight_unregister(csdev);
+		return ERR_PTR(ret);
+	}
 
 	return csdev;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
