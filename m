Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5984B1E2010
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qp+412bigDZuAH0U+dQ9xgRlsCCdvQM1Pd8RE2gCXAI=; b=TgbZexVjLVyadXvoHpGaXUWBrp
	N4r9uIoeudYC3OkErSabXF4vaTJo1Ht0NzlAQHEN5fh/rfEsDTn46CjjQH/F7sUPjQOIDBiUuf7Qm
	7uIzHm66nIN65nvex9xUNjglGuOt+N+bWFa6ZVJxzZ2eQZTaFLqVyp5DFfTbL8C6TS57FKjTl/8XF
	3WzDaOz421PqVXrpVsKmr1quIDVI8iXXLL7vuBKwaZca52ppM1gmNQzq5q33X3Y+wZkzZrx55Bx6p
	rAKy37H/ncWHx1J/oUqMvfbkVNtni9mET7soaKHzaPBh7MT7TZR30tBV8UFfvI8f68nZ1ELZPVdHD
	oYaIosdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX7y-0002h1-HF; Tue, 26 May 2020 10:48:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX6m-0001sQ-KW
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:46:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id x13so5268079wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UdzCrND5d4vIGkAZe5IuRiv30DT38TsEw6Df0v8lcJ0=;
 b=sM0kt9NDAP8x4M0oJG9WWmlCALHA0cDi8/rQQrsdRfbo5OZtvz1thd8AWvsnMK74zM
 YyoF8xJtBucfjo7g2kVt7Y3Tfs1F1WEI5VWBtVnjTov1inZaZQvK2TxHBhzmnUAwLlfq
 spV6lZ/oeIwPLiALfHaMHwUlUGhgM77cReZrVO025hjfjiiIlecp7HFM11zkaXz15tXi
 FAidp0PJzB9PcvT5FRROeInhcAL3NgSw+Hd/aNaCjkR15qDHRv2BFGYlQ470NcXqecM8
 +lNi/Ep5hIhviEa7KZC2/7qFrpH/rr2GC8a7iGrXm9Y0OnnVK1eitCJeUh6meitJHBUE
 jsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UdzCrND5d4vIGkAZe5IuRiv30DT38TsEw6Df0v8lcJ0=;
 b=A+Dd6WjmbqwXOk7tRnffZIxRvjmOVkxJE/MiJYNmf+19O4SnZctkv4O6cuY1/cmf5R
 LCn1V3N5MPLfsFD3BqkJ5TSBKqW3LobHehN5CAPBuQgh3ncSg6TGzyJgXg49vkk+hhZ9
 9pzLfvtMkEQc+z4JJAbTYWoJGxki5VUNokS0qCiRglOcqbvnc0P+SvYTfXlJ+DXFg9JE
 095a58T0Q8V/8uJiBqjbWEcGxnduj0bw8FT6nA1WdooEOkC+nm/UErKKAl3/OEyUKnMR
 rAESJjYUR+iyaBIuWDhWmVATarQmfz9UkzKravRfegBBTvaaPfqcbSeJxK8YxbttZevQ
 H0Ug==
X-Gm-Message-State: AOAM530P0IJFBvFASZtj0vj093Br2SLfOBep4RS3T8ykFYYpMNaHhRrD
 Pj7V0vCqMmCYsGVE3UAaX9rV8paMr7c=
X-Google-Smtp-Source: ABdhPJz0YBPMbs5gRnXwNOnU+oTjS+wNAeO3eca4ejMvYN9Yxi4mLLiIgMIctffh7EG6coCxszqeCw==
X-Received: by 2002:a05:6000:1184:: with SMTP id
 g4mr4434108wrx.46.1590490015243; 
 Tue, 26 May 2020 03:46:55 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id u3sm393441wmg.38.2020.05.26.03.46.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 03:46:54 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v4 5/5] coresight: sysfs: Allow select default sink on source
 enable.
Date: Tue, 26 May 2020 11:46:42 +0100
Message-Id: <20200526104642.9526-6-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526104642.9526-1-mike.leach@linaro.org>
References: <20200526104642.9526-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034656_696105_62BD3926 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mike Leach <mike.leach@linaro.org>, acme@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When enabling a trace source using sysfs, allow the CoreSight system to
auto-select a default sink if none has been enabled by the user.

Uses the sink select algorithm that uses the default select priorities
set when sinks are registered with the system. At present this will
prefer ETR over ETB / ETF.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 7632d060e25d..bd1a52a65d00 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -965,8 +965,15 @@ int coresight_enable(struct coresight_device *csdev)
 	 */
 	sink = coresight_get_enabled_sink(false);
 	if (!sink) {
-		ret = -EINVAL;
-		goto out;
+		/* look for a default sink if nothing enabled */
+		sink = coresight_find_default_sink(csdev);
+		if (!sink) {
+			ret = -EINVAL;
+			goto out;
+		}
+		/* mark the default as enabled */
+		sink->activated = true;
+		dev_info(&sink->dev, "Enabled default sink.");
 	}
 
 	path = coresight_build_path(csdev, sink);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
