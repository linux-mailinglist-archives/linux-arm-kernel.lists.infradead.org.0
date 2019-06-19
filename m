Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BCD4C202
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4TFkK9QcVxFd3XuH9JarhYL+Hm2tRHyR8eF6s1kPa+k=; b=JCDOBKjVOJYUsI651JJ3MNwGAW
	6d8ytb/nkO9s3Rkq6CD5YhIkWHRkPXmx5+xvSmkDhsteDWp1EWW1dDVn5hKLvWYqITOY7xSEIeMFq
	Qbl6fJioFVO0tnFx0FWldShxJouTsO72vH/5z95UMb/5c7NBNTdx4Oeq+C5VdsdjJtJgj2hcPmXR9
	W3+eq8Gfg/b9WETFhiaBq5addO+NmmX2QoEsu4mVr6UQENkzloUVo6Mx6mad3BUlmvT2m2rqHTmdi
	Rt63dnUWzK8oXsaM0qele9sqr0/djNsqbkMWSIuPSKND+FwfTgHk0SW6kEgd14aSZxJsvF5aCsFvC
	rQyGTZRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgn8-00080N-2e; Wed, 19 Jun 2019 20:02:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeQ-0006hm-66
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so199323pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZB/QEA/K3clWkDbM4qhRU5KEkoHlA3Iglne8yOGj5AU=;
 b=oxz8QNlNYpu14xP9SeCJNn/S/raL5b10AEjEFQ6To6DHmMBPrqxHndGOEkmQTtTNwt
 vUR0b4ZZ/gNdCUY9JP7CPwWbA/hjGCANWVExDbwezN2B6FEinBzFcvvgUA2AA84bIvVe
 VJ2G6L2Nn3aVPYgDexi2wEPOAMv9EHTAiBs+zDYmzdaO1rd+E+M8fSOIZ7A8xqRA8YqI
 YcY4ToTMoPVN+ej1tnoMJ+17Y/5GNAFbClrCWeij2V9rNrAglCxlSZtFhtOHW5mI36GX
 oaEx9iQreoUroEFQV6vHEPALHj9d/EXUueq84RtXLfoWjxWYQBBV4066hStpcNhQojLX
 +Deg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZB/QEA/K3clWkDbM4qhRU5KEkoHlA3Iglne8yOGj5AU=;
 b=SQWddODMFdX8HV2ocA2Lc4TF+Bd1ogvOlqhdf4uYZTMsIprDJITN7z+OYddHUJX4+R
 9UNbVXbJxdXH/H45hfr0NkU8FLZBxfTkpbSoe6gM90anUTsLmFjSYFQ30X8i/FGCFl07
 KZ39nqm0NYjT6+xBdsyES8fyvEBegnL9/6pDLJnXzv7i2IAxTuw6+vrO3bj+PfTAunfS
 Yu1xaVZZz2E83McbG+J99NGv85vXeD8U6gkW4qvDspC4ZPgJ3lUaGbvdg0HoK33Y+Sd6
 tuIBMsAddI+ved7DFprrVAGoXNPwkVhQcstAYnn+3poD0oIdNyUJy8qaBNUSJlpp00hH
 WCFg==
X-Gm-Message-State: APjAAAWzfw/zNSFs43A17qhJVGjzXWLZvO/4UzuhBjPv2+cQsS2+guvo
 IgJsKHdm+Kn4/1vJbUdhJfI2ucq45hrPFg==
X-Google-Smtp-Source: APXvYqyQl/rSTWw+sEz+Dr4fSV5h01XvuVJZXuMzFVzg5eyxn1h7DimTkvRMWgJ5G1VQgXe+5h1tsA==
X-Received: by 2002:a17:90a:d814:: with SMTP id
 a20mr13059065pjv.48.1560974024684; 
 Wed, 19 Jun 2019 12:53:44 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:44 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 25/28] coresight: etm3x: Smatch: Fix potential NULL pointer
 dereference
Date: Wed, 19 Jun 2019 13:53:15 -0600
Message-Id: <20190619195318.19254-26-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125346_374432_97C3FE2A 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
