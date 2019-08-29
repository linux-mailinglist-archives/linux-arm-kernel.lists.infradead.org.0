Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13780A2802
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KXtwdd+m5wGRBFDjFS2bHk+UQtjlJYc9qmTYeAdlhto=; b=G8OHBpLppxarFlsaKpF/JM9ebY
	UGSqaPth8prOOzA/JMXld8RbWaza319P1im5Zrmk73dDgIdiHEKYpIOSx7Dtt55gtyVmXNy19q9cX
	QHKji+IHY9w9JQrplfOIfhOGqx5s7O8R9qBCpKFu4tZ1lzARp5PTaSQbT1oKchwzMM5kodyWdFqXW
	5Xz1y/9J3lI622ZOfiOXHXRjQoXUmskBCuZTqbrXHE1/v93h5WJWi3P45qBPu8aD07l0LjffrgU1T
	Jg/E8ruv0QouF6a043nB/WsD6AcHqTIfj5nHcRpPpEiO7RB/gGEXolt2ziYFU1eps7OaSEmiusH8p
	4B6DC35A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R4K-0006lw-KJ; Thu, 29 Aug 2019 20:30:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2J-0003kY-S6
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:53 +0000
Received: by mail-pl1-x642.google.com with SMTP id y1so2108252plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lyxWH3I3xY93jZ4BZY/ubIbJwypjoTC/XYUq8klqrrE=;
 b=uwPm6+WepLLVw9NK0vv9RrcqjSJtEG75HZzxAJb/nZdiaoLMmdbAbeAkFLc9IhWyVs
 st82gr4ibHZfTFaHKUyBPp6UoseQwRVKGw9ZHo0ruYUkqzb3Rfdchij5v6hOlCdBcs5T
 pwchOPonhBlZaBuIgp2C53lbQoeX/yhZWoqJBS+kGWi71KGAB16hrPTu/7F1MJ9sQet9
 ul7zwQvGewFY9GhewCsevbSkpSexZPJoDHephat/Nf7y5hhjUKHjafDcjGr7rXZxehVF
 wgBmhPVHo9zECnEBd/rrETqHTE4x9sbPeRFDyp9m54TbeS4bpZWd+eR82S5ryvHjHDKf
 TYDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lyxWH3I3xY93jZ4BZY/ubIbJwypjoTC/XYUq8klqrrE=;
 b=E0k01pWHaePXBwOwE9fvLJVx+OckKoRV7Pe3B5Imj2Q7AKdEa1G3g7WUA2FeLH1J9I
 CKL06Ckn32JJ4sx1j7tK+iLmD8D7/BqyrgdEJWwL3E6sxynTVYjQE0lqKhWfhTj1ORD1
 T1IT2s8bXXTSFs+OBUUT13SufxaiB2gSI2VyLWd25B1GLWFJODynu+yLiBgKqDFvw61Q
 VIAn14k5n1GA6NJZhAnpHfUTxD3c2+IUqHYFoeYS0BGBkwoi4oy6sQDf/Ouh4xwk/kDJ
 F3WmRe7f9n//405J5KrQl0nAUXF4VtCFFWPsGMAgj0AFdPTsiLYHgwSrHoaGDJbnKK0s
 LjTQ==
X-Gm-Message-State: APjAAAWPr0H/RMgEoAaPslDjcXnCt90TZPKN8AU/wmGG2twcJDFf6B4r
 z5oU2veXsG6kKqRvYSMTbt5VNGEZQE4=
X-Google-Smtp-Source: APXvYqzZBZPQkCKu5r8gutDcTabY3R70X7SezfOnBcXV6eViVIkPDkWSjJJ0k0BpsxEEjOi/eIyKnQ==
X-Received: by 2002:a17:902:9895:: with SMTP id
 s21mr11789126plp.255.1567110531000; 
 Thu, 29 Aug 2019 13:28:51 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:49 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/17] coresight: Convert pr_warn to dev_warn for obsolete
 bindings
Date: Thu, 29 Aug 2019 14:28:32 -0600
Message-Id: <20190829202842.580-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132851_956453_51D460B0 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

We warn the users of obsolete bindings in the DT for coresight replicator
and funnel drivers. However we use pr_warn_once() which doesn't give a clue
about which device it is bound to. Let us use dev_warn_once() to give the
context.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-funnel.c     | 2 +-
 drivers/hwtracing/coresight/coresight-replicator.c | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

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
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index b7d6d59d56db..b29ba640eb25 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -184,7 +184,8 @@ static int replicator_probe(struct device *dev, struct resource *res)
 
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
-		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
+		dev_warn_once(dev,
+			      "Uses OBSOLETE CoreSight replicator binding\n");
 
 	desc.name = coresight_alloc_device_name(&replicator_devs, dev);
 	if (!desc.name)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
