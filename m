Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33334BFB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YAAlbDemzDo0sQptMMRx9uhi1c7oeIlWeBm9TKbIVT8=; b=eAAESiwXSiWXvRuMih3lXtj+H2
	hacz9dPUrzUr+W6cB3k1F6c8n+HznKoHYuHH5jEjZ2tunbWMqx9iU0a/skPqwIW0go47Mr2tJealA
	OrelP4XxRXHk7CK6ABk6eEZjuEu6iLBdWWq1EtOxZ84ABFZfdFlpLo0709qtfW+1RfBlNXraM8bbt
	qGhQ2Sefmpmf8lc6mGeRn3DtrrHVSFyFAPMLP3KgUWz9hTv0SbssRa/kNtucoMNz2DKcgBIO46a1i
	dpn9nBbYS5oy98J4eW47LOZ3aHd3y/VMKnc+/ILOO+Eq0Cd0b6qvLYdfjMzlcFGhVT/YUZR/HP33/
	MkvMiDLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeUL-0003SO-JO; Wed, 19 Jun 2019 17:35:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePP-0007WV-NS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so8981pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YiiXxjdGItwuAF+iuZlgiXWIyVvrN8mFr1/a4zBxeWE=;
 b=hD6CxMf4ROlRMtggcqf9YjAAo2onCZrLji5WJHTEYDm2MeFB2hL57T5sT3vuY08vVj
 /AlR6y3rW4RVxGRzMX1jrqphJ106Qu4naY4PrsX/qMyA+uYtPhhPwGCHlInuQAAowcKs
 Z3oH2rq98VH0QKOe++LWJX4w39o7VhviaJRO4EFGiwdBUQXQLgaera8ocHlAhoBf1VRj
 A40pn44t+LQcv0KtPLMPABtyt45xg1TDnNNuN3lNPYKyJetkWTdcGj3Qmk+aPtKfyOON
 oiiLY0liO4gHXJsHsLYJOXMGR1TCwwUCUZjaRPZo3ycsucsp81KEpSGs+3rTL5ERU1rl
 gutQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YiiXxjdGItwuAF+iuZlgiXWIyVvrN8mFr1/a4zBxeWE=;
 b=lFonUqnzRckpz4oWWKl4n8V4IjarG6eyLCB5Ce62kJgKgl0l6eyO9jsnwybj9AoVsX
 aSrW4FB0T/bsSIKEgpyRVkvgM5kooHFPPjBqJVqyslWJtw+LTPdoEcX3PQuQw3Rz1A+b
 S1occtvIDkBVeXVXzEBA9bySBJtz6yu5uovUknpl75OEx9mPeWjRJPvJyKQjjjfKZst7
 5PZkBngglPLWP+IOwwJMJd0T1f01rc9poyIEt7PGZR0E3Sp0QSzvGfCuFKiTSQarkwx5
 wSwDhaRyplK03mDi0irAHU9+S/OLalEldBne1qcec8vNTkNW9pdyZyyO4Y1WDJFi+bRC
 XELg==
X-Gm-Message-State: APjAAAVx00ZjbPWGPdjp0axn1xxW4eedCPZfebqGy6n0J8SslU+hCSGE
 sB2fzfxaFIpSaxVSGbXWI3lfa/mmC7v75g==
X-Google-Smtp-Source: APXvYqz9eX40+g6xlY6jeaLeH4KFf5GQFIZXzE+Wc0EB0/SxiALn6Mx4prcGoyEI62v43UijFW9EtQ==
X-Received: by 2002:a62:640c:: with SMTP id y12mr19989074pfb.166.1560965404999; 
 Wed, 19 Jun 2019 10:30:04 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:04 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 14/45] coresight: Use coresight device names for sinks in PMU
 attribute
Date: Wed, 19 Jun 2019 11:29:18 -0600
Message-Id: <20190619172949.4522-15-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103007_994773_7651CDE1 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Move to using the coresight device name instead of the parent
device name for SINK attribute for PMU.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm-perf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
index 3c6294432748..5c1ca0df5cb0 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.c
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
@@ -523,7 +523,7 @@ int etm_perf_add_symlink_sink(struct coresight_device *csdev)
 	unsigned long hash;
 	const char *name;
 	struct device *pmu_dev = etm_pmu.dev;
-	struct device *pdev = csdev->dev.parent;
+	struct device *dev = &csdev->dev;
 	struct dev_ext_attribute *ea;
 
 	if (csdev->type != CORESIGHT_DEV_TYPE_SINK &&
@@ -536,15 +536,15 @@ int etm_perf_add_symlink_sink(struct coresight_device *csdev)
 	if (!etm_perf_up)
 		return -EPROBE_DEFER;
 
-	ea = devm_kzalloc(pdev, sizeof(*ea), GFP_KERNEL);
+	ea = devm_kzalloc(dev, sizeof(*ea), GFP_KERNEL);
 	if (!ea)
 		return -ENOMEM;
 
-	name = dev_name(pdev);
+	name = dev_name(dev);
 	/* See function coresight_get_sink_by_id() to know where this is used */
 	hash = hashlen_hash(hashlen_string(NULL, name));
 
-	ea->attr.attr.name = devm_kstrdup(pdev, name, GFP_KERNEL);
+	ea->attr.attr.name = devm_kstrdup(dev, name, GFP_KERNEL);
 	if (!ea->attr.attr.name)
 		return -ENOMEM;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
