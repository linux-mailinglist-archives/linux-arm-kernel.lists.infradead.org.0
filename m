Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D483120A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ziu4ACFGusA7Fr5rSK6ZRUlTFvfgxTslMrgrubDEg4o=; b=LXS9X3YMTMASdIRtgaikZmKQbP
	snJrSb/1tq2eZnVPwOBehmbF3Usy10LeMj528hetJuWtJ15+bkvh+niPU29ZVHxSifyoQOwqECUFc
	44zljXbNX6Bg+bhWHMLB2QgMfoDj9houZ6Tf6rEP5U0j+RpiYCsrbD4/ApA2UIMoNLnQo1dQrWq0e
	HELap5H4fVV0sptkLxjKEI6JkKafb0P1R7Qb+TO5jJsFKljOTRSWSL7vX3c4clt2WF+l8/CUJUZSq
	aWuxRt0Z/MebbRgxRbEIEpZ8DTJPOzOrtzxFO63qbx6vBjsqcb46QikX5IRWWFCOmQ6roYGhNy3Am
	vHwMwgUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEyi-0003f5-Bp; Thu, 02 May 2019 16:54:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEyI-0003I5-D2
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:54:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id e24so1399379pfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 09:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vRavtCuEgDmIK+L0LjCzpchEvsYFUuSGMHsKbPl1OXo=;
 b=p1iuQ8jp93efREIh6tYMi7eudLPjh6BqGeUJEt+25legIa8wXytBuW36/RYS3b9GRD
 zhPlnLD9gMJp4+rT1NG5f9R7MUbqdBxDKnkIXc/nYmYox4ISoh9TrNuLHPtoH+9CwvYT
 ysz8ess489SK5iVoYQViyDaSkP5qFfOkTqolR+qOUit3Z2XakRcEFTJPGT6FPJFOC0Rc
 g2eDFre6sXVSAvBL7dFH1aesDippUpYcqi6PBM4umc8pEHTI82Zxm8O0TO9JCwPK3n4u
 wP8GJzCCarOZWhrzPbwBTNcgjqM8b+bQs8q8EHs9nvrQPOG2VmRiqru+PsGr7vYrNVeR
 Aw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vRavtCuEgDmIK+L0LjCzpchEvsYFUuSGMHsKbPl1OXo=;
 b=JwW2lbgm/wdu2yx/7kjRF65n0Ks74ftWD6hCfwXFWUGYzA7lzDHPgzE9oH4302MbzZ
 X77urZShDPbjVJi0TEch/1KC3dVfL5qogi2WlZTiq5KVMTg63H9ZWGMoh+vv5seFtZu4
 nI71rzpfARddXnL4BbLwla+USrjSHT8LMieR1wQIzSuPgvLTlYXT6Fr2L2Y4TaefJiKv
 ux/B8kEPH+TLdkswa7GN1EKWpT+hCjAz8ofGO2yHJpuWR97h0zIhK7dC18OsjtqjQV+1
 xfNv3azVPpWcvkAHaqWkY4HuVzA7wvl6IwRH0YOszNg3x6zxTMO1MX9SSC+48sswx+lD
 W92A==
X-Gm-Message-State: APjAAAXej7bVYCY07aj91+0pkuUUtjaNv5cAE8rzhYeIdj/M0icX12I6
 453bn8k5EbmfIS7O4EeT0ebE6w==
X-Google-Smtp-Source: APXvYqzuEa4AvvzUuF+vRnu4cN2uHh5br+nlbOPlgO29fCu9f+FQqF4a72vx9pr8GZSfiJCLoTg6ag==
X-Received: by 2002:a63:ef46:: with SMTP id c6mr5003771pgk.392.1556816049674; 
 Thu, 02 May 2019 09:54:09 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j2sm69949pff.77.2019.05.02.09.54.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 09:54:08 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] coresight: replicator: Add new device id for static
 replicator
Date: Thu,  2 May 2019 10:54:03 -0600
Message-Id: <20190502165405.31573-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190502165405.31573-1-mathieu.poirier@linaro.org>
References: <20190502165405.31573-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_095410_502111_010C9376 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

This patch adds a device id for the new static replicator compatible
string; it changes the driver name from "coresight-replicator" to
"coresight-static-replicator" as well.

This patch also gives warning when use the replicator obsolete DT
binding.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-replicator.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index 4e0da85efd2d..8c9ce74498e1 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -189,6 +189,9 @@ static int replicator_probe(struct device *dev, struct resource *res)
 		dev->platform_data = pdata;
 	}
 
+	if (of_device_is_compatible(np, "arm,coresight-replicator"))
+		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
+
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
@@ -285,13 +288,14 @@ static const struct dev_pm_ops replicator_dev_pm_ops = {
 
 static const struct of_device_id static_replicator_match[] = {
 	{.compatible = "arm,coresight-replicator"},
+	{.compatible = "arm,coresight-static-replicator"},
 	{}
 };
 
 static struct platform_driver static_replicator_driver = {
 	.probe          = static_replicator_probe,
 	.driver         = {
-		.name   = "coresight-replicator",
+		.name   = "coresight-static-replicator",
 		.of_match_table = static_replicator_match,
 		.pm	= &replicator_dev_pm_ops,
 		.suppress_bind_attrs = true,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
