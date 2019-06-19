Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE9B4C1F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AF2rde6Soo3Dp9Y936Shh+Z79tXGwMf5PNBTwWvruag=; b=mKusdol5F1aHCU6WtB1p3/xUWx
	s3oDFOwlsvy7QkyVAduJf06VfFuDrMkqY14vB87igiX+ArpgcwssK1Wlv9pf+fpXxzONV5j5/n2Gn
	0kNZ8mAF0Rax52q91ifcs6C7c8MEJ+Zaarc1WircLX5N24W2wbd6eyfvxYtq21FpxFyc3YOIJiCwJ
	KceSdoi8ftydpr3t2egQHyn1tbM5f9GDRyPPa8vtfh1mi/tdeVMbKbf+vNFE9uzzrNHh7a4SJcODs
	cmEEX+fXubQ4kMwU0Q7MiWPn7l/fsAkc5ygTuLvVLMF4bNFjTG7pO7KQtaeUD03iayJIW3Jw4Mi0x
	ARDy/15g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdglr-0006oj-Bq; Wed, 19 Jun 2019 20:01:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeO-0006gg-RY
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so237563pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gXxfLSHgLZGmqkWHxSJZdsVy2kycSL/GwJEpQt6NxwI=;
 b=BE6q+zq7W9YCQV4bIxZaZC4SIPCeFlkmSHKrRLQFQivCglkMTdRMJO47pPhJfc1MRp
 To1hwcc+BLeb0E+jHlCN/yxESj55qtjK+bbYF5r33QwTQYoFVPhfj11a3lYwKKejNI6e
 9yWwZU7Q8tTC2PWgBGQCckpIB5a2VyeEDTGVuwAUJH1enI9INaifZ5O8IAtb0xAsXfwj
 u9HkA3dh6HvACsQHRgn7dJGuCaqMi7594jB1LdJMdP3tzcAh7rTeg1lDYVvW3CwCHNBF
 I6AoBGIZc308w91RMEq9EfkqOMzWZJL2KbELfJE97Tj4q15yg28KZxakmv5s44grEqnf
 NX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gXxfLSHgLZGmqkWHxSJZdsVy2kycSL/GwJEpQt6NxwI=;
 b=L6q+tfHtNGjjSIqMFIVL9ou+1MJLu16SVyyOw0KSdLwH8a5mnjbJzpUdTctZXZLIXc
 6F7HYtfclyswAqf8TWuQQdPitP8stK3APMbaDMFvs+ryFggPdBvwEAtK5ltmUpfzaKjf
 jUlGke9jZt6RMctTzLMfuIncL07+5cM2p1QVXryADcWMwFNTU88TVeYLWHFvD1s0SifK
 BZmAU1U/1vNjUPCC3HM06MDSkzJPyOkj8CsTyAPDhpvhiLDjSUwinNojNOlizD4oLtGC
 UkDhAetsOotn6IzP1DhsDnu14rWTjKCgU0AGVx3jhB6daJuL8bGpNvtXtwiG46jqa0fI
 14YA==
X-Gm-Message-State: APjAAAXTImmz81LAi+/pFus4Oqd3dbQUHwlRsCJ4qQbQyGrEj12XH/CL
 shGjvKwYN2ypYpy/EbIO3CDBlA==
X-Google-Smtp-Source: APXvYqxHNKZt8vSfKkKHc2OAKvHAxBAwi+1M7WWaszz8fYVUv4fOX81jC+lL/Pz1O0Uo473IunsQIA==
X-Received: by 2002:a17:90a:bb8b:: with SMTP id
 v11mr12744868pjr.64.1560974023707; 
 Wed, 19 Jun 2019 12:53:43 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:43 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 24/28] coresight: Potential uninitialized variable in probe()
Date: Wed, 19 Jun 2019 13:53:14 -0600
Message-Id: <20190619195318.19254-25-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125345_026120_0C24DA80 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
