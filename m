Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75B11D8353
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcTc1aduGxacudw5LhFV8KYcPcgn6gsAaQup3MbooK8=; b=aiTITQ8eA5KCdz
	HHaFswkZ3nLaBJtKdLS0NIaOsAwtvWH19xu8B3R3/8Qn7ngvQco2V58ZBrfQcYLA/vQ2DxPHyJJq6
	NW1/uWl2pXPVNj2TPrq/yF4J5THRgE4vRP9o1hYjHQWlsAoflT1cneWUsPLjHPOph4PtU6lzzApZJ
	KXrq0B/ji8KlNBosTQLmt76hxhfXrXI43riXLI6ebbc3Ac6ZBh5gRTkmmFgXcPmmG5BKNwd98V/93
	4pPtyioUper0ON4rB/tBYhazi4QjPB6n1zZmOpLDENUMMDc4uE1J9goaV7ipItulKAEX4myRZRmPx
	mNbj1jJgoAZKYf+9Ww8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak7S-00042t-9U; Mon, 18 May 2020 18:04:06 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6D-0003F6-J0
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id b12so4523419plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TWDc2MIzLCD0J0DTo843/pEAjWpz4zi5meBGNQusvOI=;
 b=IQc+uRxEsTXifaZ91XkjEpUISl4kTqabtfZnx537qwR1Hj+snPjk1L8+ztn9N7TXgk
 yYhGi7e838d2sIM1ipdRzg8LrHHpW4hxUNdN2qQxkK0Hr+b7AsYH+Ijt4mjarpKsUIgs
 20tk3CjgQNDqrY/6+o8A2MqNBJqZMUOpEtoZWz8oG/TnsSEehwSVWj6udY+5TSyfbu+l
 9WrP46hoC07nc09mkHargPOvmuCl2JF3/nGtgrtTttWkHc1+Dlvy+dhtStpU5NmpDzCK
 TtoTWZl698zBC1jYgYndA4vb4nfoj262Up68Ut1MnIUnpmdYI1wdAhQzilfOFsy9CrA8
 fDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TWDc2MIzLCD0J0DTo843/pEAjWpz4zi5meBGNQusvOI=;
 b=pWNrcZwPhasBx27fPpI6Ix6MXz7KBdFkswM87Xr9MzHmOEIfakTFMsfEKqolB4yRaa
 1RiYO1saURnIh/PCTTzJYsM94kefH9r9WUcLoT+qvsAJGj0TZ56T2X0jB+4PB+snlxr/
 i3Bh5UP1K1GHXRZs1vVmeC1pkOCsdI66G8e0JI02XI+5mxDew85EZmKEfsMJQHYRAFOs
 iCLgEyKTwJW9QkgXvsFFI6qPHhjvznOq6bzKuK4UxwxetdRzjRJRHl0E90+F+3xd6qXw
 Vs/fPHWaSgUSiqLF13vvCGrbFOo9YnARw8h0glV+gJfp9Ca6q2psMduNAR7rxR2fo/5A
 YdyQ==
X-Gm-Message-State: AOAM532IULm/mWU063T5n1j+R85rfJwGOo8OLkO74vDCFYcWCuFwKU3v
 acU4E/oNfWu5NlMG/DYWES9ZLY2KprQ=
X-Google-Smtp-Source: ABdhPJyMdLoWO51V2HVNXVeJCaB/WIl9AlRBiwWR9TIkJWuLSv2KQsQNVikE2QxVTdeWmdJvklbp7Q==
X-Received: by 2002:a17:90b:358c:: with SMTP id
 mm12mr596616pjb.134.1589824966019; 
 Mon, 18 May 2020 11:02:46 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:45 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/23] coresight: Add return value for fixup connections
Date: Mon, 18 May 2020 12:02:21 -0600
Message-Id: <20200518180242.7916-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110249_626047_FD290624 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Handle failures in fixing up connections for a newly registered
device. This will be useful to handle cases where we fail to expose
the links via sysfs for the connections.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
