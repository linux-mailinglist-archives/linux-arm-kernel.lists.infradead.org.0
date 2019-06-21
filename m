Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EDE4EE31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 19:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4TFkK9QcVxFd3XuH9JarhYL+Hm2tRHyR8eF6s1kPa+k=; b=TyjUIvk1tcSOBDJ0blmhL7eMTd
	rLkUPK+8s7IIGzdJP9qTNZhAjF/4pjt4W3UgMIjZJZ6Zno3oKB0xhOn28ZPFpfFjvgpu93DBoBOZC
	zV66u4XlP+Nfhr8gpx/p57W/6GdwtgtodUCcCD1VkSKmW7qWQh9XAdcSMEYR/e/te6g6knq1UgAzm
	+7euxDMLrT/eK0qGG+a1UvrGjfs3ud3/yACRbKFVJIi3o6FQ+ujWRD69uOVUJcoanKDA5lQS1uRTJ
	NghwYy9m8f3eAA2P0L9/qx6T+uuANEWQppYcY/DMCB6fLsru70OSAfvigs+KoRJmQTL1OCKTNV3e2
	Che981CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNiJ-0000ZM-GA; Fri, 21 Jun 2019 17:52:39 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNho-0000LO-3x
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 17:52:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so3962690pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 10:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZB/QEA/K3clWkDbM4qhRU5KEkoHlA3Iglne8yOGj5AU=;
 b=iTIUWqsoU12Tvqa0aExnW7y3oEJw/5vcH4D7VO9h8yiEl9TujJtWLfTfg9skwgS67B
 yBnitIFNIbHLhW9ZnapxeQ0Agrv4836sWZ7ewk2KXg169IKqnRzZVwzYYhVZb2qbGOnL
 BytT2IWR/dizPmCFINJY5SYRoeyPzPnkjhU7/YT/QKsqHxCRQQun4+RRZWDbUwF3YjM9
 MNR6Z+T/APlg+D+/+ucFrpUeGitPlvQXgZb46R5vhOpbVFeICXtS9720YaBkWLdQrr7L
 HcfJl6tGg3mDv1HquHx7Ftp3mikeu3yawPypb5E5oGNVkw6J3bIrPldjBzlHN2budhT/
 jBTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZB/QEA/K3clWkDbM4qhRU5KEkoHlA3Iglne8yOGj5AU=;
 b=ZtW5ukrpjjkwnJDnhX0LDFyKYTf5J+aCY4Oep8lNtHsR/MWkZyN9HX6JXnJ96P6auV
 Cqi8JLvJTud47ozNe6IOOej2xY4kEwfP2nomCvochcCrjQ8gRG8v7+S8Fosw/iBKuWAM
 zVZ49hgXjTge/vvX32h6kFlYThllk2bq5gamzieodMZvlfius2BtmpCOlb7aMmQExdpW
 plyfCI9yvSUtBSX8bwz5oAgYOs3hLbCR06zO0MlouVn0XbVlvDky59s9FdDDy5GfgYfS
 BcIw4oVHcjDbQUCDt50/1R/C2hKKdenMW8x3x+QCTnu/UloHukrzaspUvB6qHgvqJUhZ
 Aj/Q==
X-Gm-Message-State: APjAAAXXXP6HZXL00ecqLPLBRRbZkyIpw5RBzUEms5Fht6S2YzymTdB6
 9Vqv0gLiD5XmZgmpifWk4pyQxG6O0nNWDw==
X-Google-Smtp-Source: APXvYqyJyBZ39uTFFbC//U31ABdP2wCeU+mwtjx2+PPLr3K0iv4dpPUFsBFj3tl2WCAnnEfWFwqIzw==
X-Received: by 2002:a63:5152:: with SMTP id r18mr19645487pgl.324.1561139527640; 
 Fri, 21 Jun 2019 10:52:07 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id f17sm3378490pgv.16.2019.06.21.10.52.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 10:52:07 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] coresight: etm3x: Smatch: Fix potential NULL pointer
 dereference
Date: Fri, 21 Jun 2019 11:52:04 -0600
Message-Id: <20190621175205.24551-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621175205.24551-1-mathieu.poirier@linaro.org>
References: <20190621175205.24551-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_105208_168396_6FFD6833 
X-CRM114-Status: GOOD (  12.01  )
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
