Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C09B4C009
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4TFkK9QcVxFd3XuH9JarhYL+Hm2tRHyR8eF6s1kPa+k=; b=IeQGdHYqDWIKFCKhSk+ezZtj7F
	LdRp1o1dXbtxrrxKgY2uFzJM4ac+8aoSJ4tqf89/7vlm6A2JQypGX8kbWInS7/L+/IJMzTDyLkrS0
	uO6Q5jl+kPLOzAeaMi4k0TXsm3462nCoM36xjH3DNP0tHj9H2Nbp89rZM912xSweFeecahBkL2Xt5
	WwJCS3BjBY3tfq2Qu6B0a8Y8K8hn8drLL6E/TIMnYuYqs0sbzSbNNuEW0BaU4R+SQxLkUOa8X+SOk
	QuJTssdffuMVZl7wRYZuvqXOnquMK41csw5xWiOQPhsCMK1a42ik/SV9UJQHFGlD9lXaC417leYpZ
	zKlTgf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdecp-0007OA-I8; Wed, 19 Jun 2019 17:43:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePn-0000Dz-Q7
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id j2so3650pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZB/QEA/K3clWkDbM4qhRU5KEkoHlA3Iglne8yOGj5AU=;
 b=QcODEJ84zMKBUPy7MU9JLoqZbWUGOZnN/aJ6C6bKq0TSnJXXbjdAfcRiaj+CgjMcK5
 RmUsBa+qNayYqQzhL3wqqOKGwIF5tL97njrwOxs+et37l5v0sLnII2QysImpntV9bpyv
 s9RIXOQwADaF7ssw7IeRsOqZ06W97ZEhxJWUGPKilMuWbFRC4Pw+VfJvxpi+7VKxD9wi
 5kcUiwajuOycemYtBq2aMXZxRKuImj5NxKFNsPqh5Y7y434m3Yaxi4fsjllluTXrLbax
 WTg/iybifnKP5gVaXLOtEoZEZ+T4+KqI1T4a7CLqyqs168BYJNOXNpmv4i2rKSAOicRx
 GJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZB/QEA/K3clWkDbM4qhRU5KEkoHlA3Iglne8yOGj5AU=;
 b=s7nz+jmFXmQmy25sRnb/Ip6J37ewpT5aTFZahL8E/RmnXAyG5B7hBVlDs2r5Cl5Gr4
 uVTFUH8gdkUxXcwyEHfjrbISAPaWwlBmyK8JCpAaLQNQdSMwwlzbOhwiBKwcm1Eex+VJ
 G9IvqgjDfHQPJGDlZjAfE8kRVAkQ8QzahNpslRsiL50TEDWOZM8QUqvjZ2shLZoLHU6U
 TEQjuEJHQj0xrTz5t+qn6RBelTC3OQ2+Fon4giuP1DOup9opk7mbs7DuKZ/KTh5VJh73
 nir8KbCMFeBD1VoIgHq3IWFFpZuL6P7dAk7y0W2pyNwVU65NHMxS3jTsIN62y43iypFS
 NKUg==
X-Gm-Message-State: APjAAAU9dVrmz4Fm0tRTc68t4Qc5fACMcV8jYCv0J/jgNsDUpE1e3fMQ
 y6rOaZJzXHczq7cIgcU77oZb6Q==
X-Google-Smtp-Source: APXvYqxyQ5hbhuTMzw/xgUs1RsAXMnyGGtqRAYCz9fMRvk6IpUj82HnnNjXztaud2FeBHZSSYCYAkw==
X-Received: by 2002:a62:1b0c:: with SMTP id
 b12mr123160088pfb.230.1560965430143; 
 Wed, 19 Jun 2019 10:30:30 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:29 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 42/45] coresight: etm3x: Smatch: Fix potential NULL pointer
 dereference
Date: Wed, 19 Jun 2019 11:29:46 -0600
Message-Id: <20190619172949.4522-43-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103031_904073_57132968 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Based on the following report from  Smatch tool, make sure we have a
valid drvdata before we dereference it to find the real dev.

The patch 21d26b905c05: "coresight: etm: Clean up device specific
data" from May 22, 2019, leads to the following Smatch complaint:

    ./drivers/hwtracing/coresight/coresight-etm3x.c:460 etm_get_trace_id()
    warn: variable dereferenced before check 'drvdata' (see line 458)

./drivers/hwtracing/coresight/coresight-etm3x.c
   457		int trace_id = -1;
   458		struct device *etm_dev = drvdata->csdev->dev.parent;
                                         ^^^^^^^^^
New dereference

   459
   460		if (!drvdata)
                    ^^^^^^^^
Checked too late.  Delete the check?

   461			goto out;
   462

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm3x.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index bed729140718..225c2982e4fe 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -455,11 +455,12 @@ int etm_get_trace_id(struct etm_drvdata *drvdata)
 {
 	unsigned long flags;
 	int trace_id = -1;
-	struct device *etm_dev = drvdata->csdev->dev.parent;
+	struct device *etm_dev;
 
 	if (!drvdata)
 		goto out;
 
+	etm_dev = drvdata->csdev->dev.parent;
 	if (!local_read(&drvdata->mode))
 		return drvdata->traceid;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
