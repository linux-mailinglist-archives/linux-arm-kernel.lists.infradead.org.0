Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543C8BFB6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 00:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=auqSqH11o9prWXnhxwn8W3hbU3iBDSYxzOsjf+Z9lZw=; b=SDm
	4a6Dn9xq9t3SV/A+N1JlG6fvWDW3ZEtlIon2S7RggDoc3n8r0z4s/p/fZWERuS9oyEcKXMBDp53Pp
	w/njlgXdYlwFtZCrgUu5Prwomc7BbNBeszX3BZVLLKc8AcLNNh0BMDI6gVdye3lgVsd21tmaCEHcG
	xnRMboDCkn5QWEA7goK4RGwEsqBs3yLqmDZUO2+SDKl6hXot9tAIMjEPb1zYiQbzFqvEGeZbPsDtP
	n7wtkI54y1ey+OV7VDs1bpRwZzJ2srFc/zUuefg1ZLhHT0V5xYYhg3SXF4wTkHthYgvMwX60sKiXT
	Ws4coEdFJlHqE7lN2DJyoly0/36HcJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDcYw-0003GG-EX; Thu, 26 Sep 2019 22:48:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDcYh-0003FS-MZ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 22:48:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D6F2A602CC; Thu, 26 Sep 2019 22:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569538102;
 bh=g3A8dwd0zmZ7Slh7dbZkQRsQqjR2/quJV4fThwUAG1E=;
 h=From:To:Cc:Subject:Date:From;
 b=e+HGGBCBDggjT9Mfko2DHSpSSmoa1eB3BGF6q7CaSUiZi+ADcK67SG5YfrB1powy9
 6D4Ka6EizAgaa6CorP7wJza2JDbZrdN5mtTerZb8aEzYJY4Hdwyq/VYJcaQ3b/KNZj
 msXY3HKnQxCnlIitUga+7Ml0Pn+fVMnGrxRif0xg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from cgoldswo-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: cgoldswo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EB297602CC;
 Thu, 26 Sep 2019 22:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569538100;
 bh=g3A8dwd0zmZ7Slh7dbZkQRsQqjR2/quJV4fThwUAG1E=;
 h=From:To:Cc:Subject:Date:From;
 b=GT/WkbGHtUFFaDmFFpQmgp8CpFnzZuVFRZgJlAUX+oQ1nnaqaMMQmVuXdumuTcPj8
 lyFeATj2IjJ8V8wpCX3xy76P3TOKjpf2vIg6OPP3hGYC4pNAbZQPggI669cbNq4eHW
 l2q/3R+aBG0oCXE7dtfBj7ux9UFapx0FA6hA0Hyw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EB297602CC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=cgoldswo@codeaurora.org
From: Chris Goldsworthy <cgoldswo@codeaurora.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] of: reserved_mem: add missing of_node_put() for proper
 ref-counting
Date: Thu, 26 Sep 2019 15:48:12 -0700
Message-Id: <1569538092-16913-1-git-send-email-cgoldswo@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_154823_768317_28989AAC 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 stable@vger.kernel.org, Chris Goldsworthy <cgoldswo@codeaurora.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit d698a388146c ("of: reserved-memory: ignore disabled memory-region
nodes") added an early return in of_reserved_mem_device_init_by_idx(), but
didn't call of_node_put() on a device_node whose ref-count was incremented
in the call to of_parse_phandle() preceding the early exit.

Fixes: d698a388146c ("of: reserved-memory: ignore disabled memory-region nodes")
Signed-off-by: Chris Goldsworthy <cgoldswo@codeaurora.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/of/of_reserved_mem.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 7989703..6bd610e 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -324,8 +324,10 @@ int of_reserved_mem_device_init_by_idx(struct device *dev,
 	if (!target)
 		return -ENODEV;
 
-	if (!of_device_is_available(target))
+	if (!of_device_is_available(target)) {
+		of_node_put(target);
 		return 0;
+	}
 
 	rmem = __find_rmem(target);
 	of_node_put(target);
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
