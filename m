Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090584BFC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qRbnFXV911tuggLtPzbjmL5H3h685KVc9GS6drB0BwA=; b=mkOY8vNquuMJLiFTLTBeVUJECk
	gAKWW9+7AC/mKB7tjmdUPw26tJQp4wtxa36grb2ZsqQI7ruYpxZjhmbwIZka7Cqd7tIqecFkuI64M
	rv+TaoA+oNdtIADiBG+9dU+CiHgB+JqpNVFPa+j/X+EW/bwmwwaVrb20oRW0wWeysswY6UeUJbcfn
	dtzDFvgqRpnmEnmjxxBSUT8MVX+eYYG9aNLNCi8R7T554vyx32QHK3nbsbdPdX1h2aJZs8Ni6QVCN
	f9oDfMH1AunTnfiUIEcmvBTV6XriTQIZhFWkvTvKzrMOutnG6TgiFggnK/I2GxtAwMWWcx7osqYA6
	HkAtX/tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeVG-0005Rz-Uw; Wed, 19 Jun 2019 17:36:11 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePT-0007m2-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id s27so58150pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9b6Q0Ru1HZhRXustwN/lJPIpnVo+U7gJWcg7O4lhWOs=;
 b=EzvVa1Y2jOY6B8Ne9LsWCSPhDU3edmzwu/ilOtOd2VUMVacqtxANJlY9qhmDETgq5A
 45C91G2+tarHMp28Y9naO4mUs12RlD8e38C8jBzM1VUtEI6uTjV20YXl/WgBzKsX1iuz
 QFB4HKQcAbb3qDgQlwIMJ7imPsnhMq/udLCkOvwJf4vnVYWj+eBIwVJ5Jy2GpvMPr4OD
 ntp7oq0odIRAzL9YTTibvrIhQNXsd2MFw3B0xOS9YbrELuziB/1XpSlDDmerJ1ILGF5F
 rBNIMZYdhe6J0llTwLowGrE+RwoGiFHsdNCodxtwq+dUt4cJ3x8cu8b3ezUbCWBiE8o4
 Vu1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9b6Q0Ru1HZhRXustwN/lJPIpnVo+U7gJWcg7O4lhWOs=;
 b=hhllj0fHm/jRQ3b/MeAVAR8eK3jcz/oAJMLXAAMls3Ll7JUZcMatAxJYvXlA1YkwsB
 kY2uKKM+t7fmsvIoz90swHjnUULbv/wRvwJAgYPwKr8y8MOWizYtKdQfmUyyCHCnAMlC
 ZzgAaMx5xGxTCG133vlr6f+6Wo8p3BdV9tVCQaXaBzXIzeoMJNRqsp2pgCyvCxlHFycW
 7eKXjfrGKKR4KwDeQxdUBDQ85WUMIu/IZpYlUmUdGOgwdaTj44xFkOOicpiwppLnTL+i
 AwSrDoDLTpwEuk1SNGh2t9+Re+w8S5hEg9TuyKffbHfxifu8aPpVh4tFnO0x8l+rHTOK
 cdYg==
X-Gm-Message-State: APjAAAUrooH4azazH3hLZUEtlzzhU4S1ZLI5Lid1qTqZoMP3ZSveahOB
 C25mK5u2tbvafgXWEpuBzBbYdyI6quQ0WA==
X-Google-Smtp-Source: APXvYqwIJQ+L5h7S9lDShhxn52QbUDJc3rMIhn6Col9OFefLVvxxo84fKQTB7ZOXAaVeWcXJ/nwwaA==
X-Received: by 2002:a63:4d50:: with SMTP id n16mr8852821pgl.146.1560965407610; 
 Wed, 19 Jun 2019 10:30:07 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:07 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 17/45] coresight: stm: Rearrange probing the stimulus area
Date: Wed, 19 Jun 2019 11:29:21 -0600
Message-Id: <20190619172949.4522-18-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103011_740402_92ED73F3 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

As we are about to refactor the platform specific handling
re-arrange some of the DT specific property handling.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-stm.c | 23 +++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index 8f504849b782..3992a35e34e4 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -683,14 +683,15 @@ static const struct attribute_group *coresight_stm_groups[] = {
 	NULL,
 };
 
-static int stm_get_resource_byname(struct device_node *np,
-				   char *ch_base, struct resource *res)
+#ifdef CONFIG_OF
+static int of_stm_get_stimulus_area(struct device *dev, struct resource *res)
 {
 	const char *name = NULL;
 	int index = 0, found = 0;
+	struct device_node *np = dev->of_node;
 
 	while (!of_property_read_string_index(np, "reg-names", index, &name)) {
-		if (strcmp(ch_base, name)) {
+		if (strcmp("stm-stimulus-base", name)) {
 			index++;
 			continue;
 		}
@@ -705,6 +706,20 @@ static int stm_get_resource_byname(struct device_node *np,
 
 	return of_address_to_resource(np, index, res);
 }
+#else
+static inline int of_stm_get_stimulus_area(struct device *dev,
+					   struct resource *res)
+{
+	return -ENOENT;
+}
+#endif
+
+static int stm_get_stimulus_area(struct device *dev, struct resource *res)
+{
+	if (is_of_node(dev_fwnode(dev)))
+		return of_stm_get_stimulus_area(dev, res);
+	return -ENOENT;
+}
 
 static u32 stm_fundamental_data_size(struct stm_drvdata *drvdata)
 {
@@ -819,7 +834,7 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 		return PTR_ERR(base);
 	drvdata->base = base;
 
-	ret = stm_get_resource_byname(np, "stm-stimulus-base", &ch_res);
+	ret = stm_get_stimulus_area(dev, &ch_res);
 	if (ret)
 		return ret;
 	drvdata->chs.phys = ch_res.start;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
