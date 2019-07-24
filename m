Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A1E72DF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AoRdRwQWWOYVphWpan7SKCze+9XfylpAqO8jH3Mmgk=; b=BmnD03FtKA+Oo/
	2AddRt4yrXX+4AFcCSq/QDSsdbT4zN5XHdyAivWOpQCBrvg6lcPPJCQw0+DSjKiKgzozwD8sG4tNt
	uNKaei1kBGZ7UfvYEyoLftxR4QFDLHkl+DG+6d7ZsSpV3YtlBE4/UiDzlljxFIO/ACIYWe+gPRkZa
	VZmv9+LvTW6r+goP6twNuuU6bcVlMwo7+lfl/J+n3OXESmcn71A05HsaBx+ybqdNqRpZ7Y0WpQFDI
	uQGuZ3RMVsA1c7899k3LJjmbfptmwboWmG+ACRGe2POnmQ9LUwNR0OQAyPEBmE8yoPxiSmXFi62c9
	r4eKrF6OHaSV3080BEqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFgo-0005oR-MK; Wed, 24 Jul 2019 11:44:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFg9-0005LA-JP
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:43:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32220152D;
 Wed, 24 Jul 2019 04:43:29 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 76FCD3F71A;
 Wed, 24 Jul 2019 04:43:28 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] coresight: funnel: Convert pr_warn to dev_warn for
 obsolete bindings
Date: Wed, 24 Jul 2019 12:43:09 +0100
Message-Id: <20190724114312.1024-3-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724114312.1024-1-suzuki.poulose@arm.com>
References: <20190724114312.1024-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044329_679991_0A877260 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, mathieu.poirier@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We warn the users of obsolete bindings in the DT for coresight funnel.
However we use pr_warn_once() which doesn't give a clue about which device
it is bound to. Let us use dev_warn_once() to give the context.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index fa97cb9ab4f9..84ca30f4e5ec 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -192,7 +192,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
 
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
-		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
+		dev_warn_once(dev, "Uses OBSOLETE CoreSight funnel binding\n");
 
 	desc.name = coresight_alloc_device_name(&funnel_devs, dev);
 	if (!desc.name)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
