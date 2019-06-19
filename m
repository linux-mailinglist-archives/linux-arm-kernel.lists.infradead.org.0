Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130EE4BFBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3Wkk8Wg5kf5yJfh1Zg1QlQ1ayy7G1klS4bc8scvnBHI=; b=D6ZRyf0ZkxxzBehw+elT4dRi4N
	zHiTpklotfmyYG9DyECkHmwc26/qDD66HMhHCWVRlS/1L/YvEwt7QYO4VqeqaoNrQICnJ9+lRHNVw
	KvmAf7PSlthdfe7z/bR0YrbcUUAA1ZNMhYYi8mgM6IBnU93SsPhvqXAzsSNbNCmbsMAa+x46pKFe+
	SC+h4gfvYFOadgzQKN1b+Mer6qtODevMplhfhQ4M6GxzGCbwi3lIGM2kY3zmkfF9tuTsTtqkgwzQB
	D8YCgEFWqBFLwUw4zQIrHKNya+c7DLi+NC1V1C7xjAjMXRiuarVj3/1UL978w2YM3+GLHS1BeJlNV
	ADXB74lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeUx-0005Bz-Rj; Wed, 19 Jun 2019 17:35:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePT-0007yh-Py
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:17 +0000
Received: by mail-pf1-x441.google.com with SMTP id c85so18513pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FnDr//WBMjqUCzmJ1siLDIF1sonMXILv1ogujL+lmt0=;
 b=idUSOBxDV2dQTLvpv1Ojh3SttaPO5sD4jB3cRXvFNrp08eUJ5Xtcz9Vrl+gtlk/YYW
 rai+SUShwUpC7qJc6V067XN8LJvzRyJ2lib4wBqKvpJKTLcn2i4suMyMpOUNOJXrj9CE
 cw5ZwbxdpRJNp3Cq4WVAfBqwFOntg8SVnz/H6c8XUNOQLvCK/6201FQzquWiEA0ChJYE
 PONxpKgQEHRSbVlyN0TqrMuTSpkW4BWkaw3YNCdhsS5vMgmV2gVW0+u6sVPlS3O7gaUd
 E/MpX4CchxISQDae5LvKFHFZT2wkobaz16qKTU6k6rQjlGmzFIYA8vG9gdmlp49F4QhC
 BVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FnDr//WBMjqUCzmJ1siLDIF1sonMXILv1ogujL+lmt0=;
 b=nBpdPQ+0VuZbLMcPpI7DFhv5ygovPBtAhoiWgI2gVd2Se9ool/O7y0wJ3LecfSoDuD
 4HImJDlGpB3xR2zxc8Z2XNyYtnP3vY2AKrhdKL3ouwnSqztQEqpa4H4RRcrzCh7h8NQ6
 NJRGPC6GHVt4GOIs8Gtst0Zb+KEur8EVUB4L8RffKkgERMNM/XWube30MsOUiC3Ki8Lu
 fv9c8o1LIOQmA9NtIVLK/T50ng4D1WkfmgOwo9jN/Xxa5j877hsTp8o0xQM3nsQ7T6NH
 QGu7Kn+QxrimvHqMj/5nJb+fGiW5XwUGORLdLxdx0nG/s1Gzd6eS/CyWJL8TcRIti2mP
 JrIA==
X-Gm-Message-State: APjAAAUSg+wbNEdpDS8h0QDRwkly+SoTqwDbXjttG26ZR52FI3CRDUMd
 PG8GxY3AbKdO/wQR/kPX3LxeZg==
X-Google-Smtp-Source: APXvYqyNe+QUzZaE5AJOmbOnR3kg+SIPBPo5Wxo8m5w1g9cjVOEpazy3QomISvuejMesuKRHs7VCUw==
X-Received: by 2002:a62:14c4:: with SMTP id 187mr52834108pfu.241.1560965410009; 
 Wed, 19 Jun 2019 10:30:10 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:09 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 20/45] coresight: Make sure device uses DT for obsolete
 compatible check
Date: Wed, 19 Jun 2019 11:29:24 -0600
Message-Id: <20190619172949.4522-21-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103012_177730_4D175595 
X-CRM114-Status: GOOD (  13.20  )
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

As we prepare to add support for ACPI bindings, let us make sure we do
the compatible check only if we are sure we are dealing with a DT based
system.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-funnel.c     | 3 ++-
 drivers/hwtracing/coresight/coresight-replicator.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 6236a847bb0b..3423042e7a52 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -196,7 +196,8 @@ static int funnel_probe(struct device *dev, struct resource *res)
 		dev->platform_data = pdata;
 	}
 
-	if (of_device_is_compatible(np, "arm,coresight-funnel"))
+	if (is_of_node(dev_fwnode(dev)) &&
+	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
 		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index ee6ad34061a5..7e0514557920 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -187,7 +187,8 @@ static int replicator_probe(struct device *dev, struct resource *res)
 		dev->platform_data = pdata;
 	}
 
-	if (of_device_is_compatible(np, "arm,coresight-replicator"))
+	if (is_of_node(dev_fwnode(dev)) &&
+	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
 		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
