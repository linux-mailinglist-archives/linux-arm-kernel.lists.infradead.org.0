Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8911E200C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fMM/U7+USSzfSIeOg/nP7J+Re6kSfoRzHI8mx1ukJ3k=; b=C4+LLMOPF72GHkjLFQD4AHRGEb
	2JZ9Km84RIx3HYHb4mwll/vz7Tj47Zc9H0b5C6tgjJJvBwRBvGlfrZPhtv51IfY+YgsIzW6SmSIvV
	kzkE5VqnhcaJzW/cRy+hCVekT34/u9a2pP3KfL0gqt4/1Wj75sY8LLddCRtDS5mGrYceyyrrbM937
	scfqm2lrqTGHj+dn0OPWijFticAR++iZ4tyItX7uHxcijXDRWh9TYyIGmW546XdZ82GOUu8GM6i76
	I0urcniLWIjKcpYUOv4eD2RjH3Ia61QY3wzSGmE3a+SILl06HgIpQFyezggwNJ7LK+qFIQyVrTmoC
	jXwauSXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX7g-0002UW-EV; Tue, 26 May 2020 10:47:52 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX6k-0001ql-M7
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:46:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id r9so2667709wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=S8tDeesSr+uuVmJ6yQJIHMVfeP/kah2VmSj3nFDadlk=;
 b=p6eLXYON/6T/sWFV6XdTTwUZloqGHo3rQp6AewYv3gOWABlVG70uvn6antmf2MhoY7
 8BeTdcD7CovXskWGKbBpdkaLbY5v5Zth2HLf8tVWR8P1+p6g9o+OizF0qJq7SVJri5tE
 ff1UEVL6p0oFYeI3YYCgKLMVy9Zx9iIhT9vgjcu/U3M4sOc0wXmmSa2Pc0YNmXiMNA9g
 zeQzZV7pncjRHhQ2o6/7lxbCkS9qGgu3dOxpiSgZwzbUVrz3APn/qvumVibaOFvxfe1f
 XLVc/zx5y+yXYPaEyRlWaih0pegX5AZxd3cgLDVUv0Ch/7TMncYzTa+RuJr2+7TX1nEv
 6USQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=S8tDeesSr+uuVmJ6yQJIHMVfeP/kah2VmSj3nFDadlk=;
 b=GcYuWpASgwLKekkoaEqhG+XMkaAK8oJ24sv1p3uwP/KaGptLGF8Mo4CAnM781ILpE8
 Pt8mYlysZ9CUQjNGGwDEbFS/ZM9A/WtTuLBpYf131TsLN3WFz4StEM2rREMaZQvBJ8vk
 NqwEfz9XmIt5ELyMuzbBmnaKm8EQ1qD/iVm9hcl61NqMd+Jb82z+1FIhUpIrll3eDrzG
 O0Mcq51Mxg2SxlN2bQ3CDZb98Eo2ET+T46tL4Yqn/1tARAfhqRVfYLCrzuIdSaQabF8s
 LkA21zSpg61aXf38dDebKx7hevEmXjpC8PGwsWgO6agIkjeCvjwypXSKzp6OBpdQyg8K
 GIDQ==
X-Gm-Message-State: AOAM531XfK28dLtwe4zM6eJQAAS+pxzeEpPwzMQi60wbvz73sT/hyA7q
 cMuVyTtJNs9Ho3BYdD0qC83882I07gc=
X-Google-Smtp-Source: ABdhPJwv1MGOoITv+7ofKKiuJwTneVDafichxemKQ+GxjRMrx3/socYW0ZDFnBy1ffs/3IbUWys/Qg==
X-Received: by 2002:a05:600c:2183:: with SMTP id e3mr889969wme.0.1590490012802; 
 Tue, 26 May 2020 03:46:52 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id u3sm393441wmg.38.2020.05.26.03.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 03:46:51 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v4 3/5] coresight: tmc: Update sink types for default
 selection.
Date: Tue, 26 May 2020 11:46:40 +0100
Message-Id: <20200526104642.9526-4-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526104642.9526-1-mike.leach@linaro.org>
References: <20200526104642.9526-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034654_725148_35552BD4 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

An additional sink subtype is added to differentiate ETB/ETF buffer
sinks and ETR type system memory sinks.

This allows the prioritised selection of default sinks.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 39fba1d16e6e..0d2eb7e0e1bb 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -484,7 +484,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 		break;
 	case TMC_CONFIG_TYPE_ETR:
 		desc.type = CORESIGHT_DEV_TYPE_SINK;
-		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
+		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_SYSMEM;
 		desc.ops = &tmc_etr_cs_ops;
 		ret = tmc_etr_setup_caps(dev, devid,
 					 coresight_get_uci_data(id));
@@ -496,6 +496,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 		break;
 	case TMC_CONFIG_TYPE_ETF:
 		desc.type = CORESIGHT_DEV_TYPE_LINKSINK;
+		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
 		desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_FIFO;
 		desc.ops = &tmc_etf_cs_ops;
 		dev_list = &etf_devs;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
