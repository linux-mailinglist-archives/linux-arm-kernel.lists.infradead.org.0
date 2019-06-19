Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81AF4C001
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AF2rde6Soo3Dp9Y936Shh+Z79tXGwMf5PNBTwWvruag=; b=d3KdBsW05m5u40DoD09e1yjSY0
	Pa+3kMVSc7NNZbRIYw67BD5P3MrbhXpUf1fTJkr/kFwgN0ctElhzwBfO8klgaft9/3HDslr8VOC0E
	HNM2AncDI3FXtj0cGcPGEGkps13AypxkISzVLEsl7rJvFajZ8OLWkS7X39/Mg89WKfrKXUUFl54kD
	6nAI5KHxU8xkDpXMOaZ+nbi4CCIvyVb1ViXIckWr/vy+gVxuxs4Xl9FARYWTmKF+K3v4F5/SnHoUn
	DrqWl0PLmmRG4Hd9tMjdIC+XY95IDQrhj1uhiRw2EwLgFYNaBwQBxWK2l9gOjaMpa5HPHiTAghwQh
	qTYQfrTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdebb-00064t-VX; Wed, 19 Jun 2019 17:42:43 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePm-0000DN-Fu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so22486pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gXxfLSHgLZGmqkWHxSJZdsVy2kycSL/GwJEpQt6NxwI=;
 b=MYWAOF89UTDdjQWWWohBssrYKQrXNaTQb56i7BbF5LGx26L4oGZgb5gkAY1Hw9DMiK
 oaPtHV6LRFCJmkH7LqAOOEx1hn2yN61ihVlvb6rn72tcqxhkPDNBgMARPCUbAB3gbg0m
 0Ya911l5a4N9IWPeROvLWi3XQZKtH/omvrvn5nLDSXDnVriBPqn18WPhhJCpEhAAUpbz
 6urvzQscOHWEVRBAXvtEOI/Fn+lAdIEePaVgkW8btvhp0EKGk3ng3l1vqJ4yfPV7SAw2
 bVs7qTE4GNFAMRuOWFwcQaWcdJGaHRq24fCp+1w7w5l769AwhlSevrFTTsFA2FS5Erpm
 GcGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gXxfLSHgLZGmqkWHxSJZdsVy2kycSL/GwJEpQt6NxwI=;
 b=GVu1MqfYSvG8JNvm6C4AFP0BDWzPPk+64E5P4Tla/eT7prHO2L3BHh2gPViReAo0ib
 bBt4V5PJdWQDfhpbz76w0qu1e1uY1yg1M66M4pfndxyMqDs8ifIM6xucxdJVuqSOqmiu
 edoD6krhxj66jVebkU5q9PlH+hHaV2xS3DPi6shSEv6tI4/V3tQM7KfAUuawCVCK3dDT
 PShY9AWJ/DzMdI/db77rrAHnoB/I3TkMEmtOsO01SjUu68B9DHPC4+Yidf2SVX9ladBZ
 QMcFam1JyX+nfPm7M8ZpTouF90HbxYULIJiS3oKPaAe3vr1xYRQdHg1BDAe6Y6O138Rx
 UWjQ==
X-Gm-Message-State: APjAAAWU1srjDWqeLbY36xkAiDX8kio6fLwXEta11ZjDCDOJfbomOt87
 kurm1S2Biszt+dJl39CIdO/Zhg==
X-Google-Smtp-Source: APXvYqwt1SLpyPw/jXGyV2ykafaf4cucnch+RU+wUoI8YNfR5SEFznigUAD9eCXftf3ef72n6KauAg==
X-Received: by 2002:aa7:8e46:: with SMTP id d6mr126457815pfr.91.1560965429219; 
 Wed, 19 Jun 2019 10:30:29 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:28 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 41/45] coresight: Potential uninitialized variable in probe()
Date: Wed, 19 Jun 2019 11:29:45 -0600
Message-Id: <20190619172949.4522-42-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103030_584444_66CBFE8A 
X-CRM114-Status: GOOD (  12.08  )
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

From: Dan Carpenter <dan.carpenter@oracle.com>

The "drvdata->atclk" clock is optional, but if it gets set to an error
pointer then we're accidentally return an uninitialized variable instead
of success.

Fixes: 78e6427b4e7b ("coresight: funnel: Support static funnel")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 5867fcb4503b..fa97cb9ab4f9 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -244,6 +244,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	}
 
 	pm_runtime_put(dev);
+	ret = 0;
 
 out_disable_clk:
 	if (ret && !IS_ERR_OR_NULL(drvdata->atclk))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
