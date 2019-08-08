Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F69086A71
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=brQjNdIS1CP5RgoC6tQNXfMDwnnHL5U2dW4Kr/nM5GU=; b=nsgJ0CtTqNMK/G
	BdzP1/t5ndMNBeRvfvYDqx/eJ/PnNjugSUt2GvglUtQbOhzMShIgD8Tbu/jjeOoC9b8gUk+E2qhAM
	tJ4tB9iNIJpYgnhNIrsXl+wUSCBGP4Y0NPwd9K+YPDCt8vlUmSPoe5YNi/iT4E6avm9mR1Q3M1hZ5
	diOZNUSDRPhkH9aX9S5TSmIR8qp4gWL2flCJgxLYwP3IpAsRQtw+bpEuQ7xTQDJufuFf1IL+Wvwi+
	Pb0ZJ7FLAbCx82EHPNHOFy0vuqNFDbnPwc31A9Sj2DXJziF7TDr2biBAJB83XdLQ7Yhq0H4cYMkfL
	D62Dbs8+A8eHFCnwTIUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnuw-0001Lb-EU; Thu, 08 Aug 2019 19:17:42 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvnuo-0001GX-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 19:17:35 +0000
Received: by mail-qk1-x74a.google.com with SMTP id c79so83645274qkg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 12:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=n1rPGE45Vv9PYSBQo+gbqrqUGU7GHu12P6zmiT4Upy8=;
 b=BetvwZcgg5rNPJoqNeBgcvBGbhDS13ZMG1CCVJ7AZati0UfVO4XB58q1n82c37gTkd
 9G5d+yrEmKkbJ3aewSVlZDSmbT0l4AMxbQ1t1qyFh3qQi15vgA9JD0ah3zYbvkvmbhN5
 /xSBubMffiViT7Wq0nqlrCgcwO9Y7G8ZBb06kxz8ams8CEtLZz+ivBzJPl/whqLSCOR7
 tsg34prHitTZZbYOQdA+cJ//Heyt4UN5AJ9M8zFtnvwKgjQbAce/hMawmytuvp+71Byh
 QqTAS9RLJkYkZYWThJGRKP1lioh5PoF2QcTlshSMtXMTeb+3krcwhRcPGokwp98LwxG5
 x7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=n1rPGE45Vv9PYSBQo+gbqrqUGU7GHu12P6zmiT4Upy8=;
 b=kxNkVKfhfKhNfekKPOCGBODxcDku+qDhoD1KKgI+c5rZiJnYY4OKWINSYyn9T3Xeza
 y99c7VofLfS9TdHjIwZMrL5J+zvkuPIYSn9ydXdLSJjHEW9j2wV04q1Yjht1HWURaNIN
 iy1kh1aAwafRfPNGGXDHxlDeDoIDCyVoTo29G1xN8KsE9sHBfTRzaOMwigGfZGEPMbSU
 Lu7tPe6K7OB5zERwZbtNGaMzznZ2YKqKvF/kJaR1I3aTriEHMvKCcii9aLmj6W7/C07w
 EfXAyaWOZjhKTf+Ms8lyrHJp6eBwK8CVk/Ge+b5oMnZJmptat4C4RtKhWhq119g8F8sZ
 ub6Q==
X-Gm-Message-State: APjAAAWQGqVx0su8BQ3EielvCOZsSzMhE4B5WJWnzxtsxJ5E0sbcKXg8
 3mJ5eojqJQ9qS2kPaTzw5B+s994A/Q==
X-Google-Smtp-Source: APXvYqxlMMdwKW0gDRzyHxtAqpr9SUDwCZ62ezy0CtTcCaxDe5YgFegRMAjnXHjWXfcEWwepVmelhECkQw4=
X-Received: by 2002:aed:3b30:: with SMTP id p45mr7076254qte.84.1565291850598; 
 Thu, 08 Aug 2019 12:17:30 -0700 (PDT)
Date: Thu,  8 Aug 2019 12:17:26 -0700
Message-Id: <20190808191726.65806-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH] coresight: Serialize enabling/disabling a link device.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_121734_278285_AD7D4BAF 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When tracing etm data of multiple threads on multiple cpus through perf
interface, some link devices are shared between paths of different cpus.
It creates race conditions when different cpus wants to enable/disable
the same link device at the same time.

Example 1:
Two cpus want to enable different ports of a coresight funnel, thus
calling the funnel enable operation at the same time. But the funnel
enable operation isn't reentrantable.

Example 2:
For an enabled coresight dynamic replicator with refcnt=1, one cpu wants
to disable it, while another cpu wants to enable it. Ideally we still have
an enabled replicator with refcnt=1 at the end. But in reality the result
is uncertain.

Since coresight devices claim themselves when enabled for self-hosted
usage, the race conditions above usually make the link devices not usable
after many cycles.

To fix the race conditions, this patch adds a spinlock to serialize
enabling/disabling a link device.

Signed-off-by: Yabin Cui <yabinc@google.com>
---
 drivers/hwtracing/coresight/coresight.c | 8 ++++++++
 include/linux/coresight.h               | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 55db77f6410b..90f97f4f99b2 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -256,6 +256,7 @@ static int coresight_enable_link(struct coresight_device *csdev,
 	int ret;
 	int link_subtype;
 	int refport, inport, outport;
+	unsigned long flags;
 
 	if (!parent || !child)
 		return -EINVAL;
@@ -274,15 +275,18 @@ static int coresight_enable_link(struct coresight_device *csdev,
 	if (refport < 0)
 		return refport;
 
+	spin_lock_irqsave(&csdev->spinlock, flags);
 	if (atomic_inc_return(&csdev->refcnt[refport]) == 1) {
 		if (link_ops(csdev)->enable) {
 			ret = link_ops(csdev)->enable(csdev, inport, outport);
 			if (ret) {
 				atomic_dec(&csdev->refcnt[refport]);
+				spin_unlock_irqrestore(&csdev->spinlock, flags);
 				return ret;
 			}
 		}
 	}
+	spin_unlock_irqrestore(&csdev->spinlock, flags);
 
 	csdev->enable = true;
 
@@ -296,6 +300,7 @@ static void coresight_disable_link(struct coresight_device *csdev,
 	int i, nr_conns;
 	int link_subtype;
 	int refport, inport, outport;
+	unsigned long flags;
 
 	if (!parent || !child)
 		return;
@@ -315,10 +320,12 @@ static void coresight_disable_link(struct coresight_device *csdev,
 		nr_conns = 1;
 	}
 
+	spin_lock_irqsave(&csdev->spinlock, flags);
 	if (atomic_dec_return(&csdev->refcnt[refport]) == 0) {
 		if (link_ops(csdev)->disable)
 			link_ops(csdev)->disable(csdev, inport, outport);
 	}
+	spin_unlock_irqrestore(&csdev->spinlock, flags);
 
 	for (i = 0; i < nr_conns; i++)
 		if (atomic_read(&csdev->refcnt[i]) != 0)
@@ -1225,6 +1232,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 	csdev->subtype = desc->subtype;
 	csdev->ops = desc->ops;
 	csdev->orphan = false;
+	spin_lock_init(&csdev->spinlock);
 
 	csdev->dev.type = &coresight_dev_type[desc->type];
 	csdev->dev.groups = desc->groups;
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index a2b68823717b..dd28d9ab841d 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -9,6 +9,7 @@
 #include <linux/device.h>
 #include <linux/perf_event.h>
 #include <linux/sched.h>
+#include <linux/spinlock.h>
 
 /* Peripheral id registers (0xFD0-0xFEC) */
 #define CORESIGHT_PERIPHIDR4	0xfd0
@@ -153,6 +154,7 @@ struct coresight_connection {
  *		activated but not yet enabled.  Enabling for a _sink_
  *		appens when a source has been selected for that it.
  * @ea:		Device attribute for sink representation under PMU directory.
+ * @spinlock:	Serialize enabling/disabling this device.
  */
 struct coresight_device {
 	struct coresight_platform_data *pdata;
@@ -166,6 +168,7 @@ struct coresight_device {
 	/* sink specific fields */
 	bool activated;	/* true only if a sink is part of a path */
 	struct dev_ext_attribute *ea;
+	spinlock_t spinlock;
 };
 
 /*
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
