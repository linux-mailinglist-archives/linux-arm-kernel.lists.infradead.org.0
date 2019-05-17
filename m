Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C49E021DC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wO6zq6lqgx60O9BCIUCYGHhG0wR4xh3C/4h7EwBhjJM=; b=ff2HhZzU8BfgZNA9EQyoxOI02G
	OI9GbidgG3dj3BNOLQPwlXTykOkDt3f5lWSUIBjGzaEbZUZDDmU2SGQfVYzWxkV9L4KkQ5XNG4pJE
	zSBbp4ALn4TObxdTo03pcsFi6uW8BBqFtrjOYHOX8uC0pkluT9TIXdz6nf/tCzDTLxTyydlpjpoS3
	9XfHcr5oYwx6GtnmcxeW3LXziR3NQorLbA9KFguA8Xac8l+fjNdO9ibrEKTLgMdtTySYhSfJ/I+Rs
	sr6TTc5bhM+cqTS43+yNCYGtsCjehC23Z+t3QZ+1DJwgzSHQQbeQ2ZcMK8szDHOueC9vXc7G/RWh7
	rrE9mGRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhuO-0006er-A1; Fri, 17 May 2019 18:48:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhu3-0006Xs-4c
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:48:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3EFB161926; Fri, 17 May 2019 18:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118902;
 bh=szynDbiQZiC2P3ZZa2ZE5dH0th3Xmp6lVJejuhOsIns=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kotxC/gVpeWN8ZXVIuWXQt/mHqfwd/yP0BNPfZEaquVsSOQcuiuh5SaTEsjs5L7Th
 GIJYJH/bOTHC0pxhLcenw/yZ32dbBwofroI+CBiafdzlRB04jWrcc/VCLkLuFl6v5a
 nNgx+VzhpuwbvZAOb0xvdwHuwZMHJ+Kk9NES1eyY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from isaacm-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: isaacm@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6534E618EA;
 Fri, 17 May 2019 18:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118898;
 bh=szynDbiQZiC2P3ZZa2ZE5dH0th3Xmp6lVJejuhOsIns=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OWCRqzldpIG0aetEHRflxj1Jken3IgDr27PBGDkFBQJ2CVV5W+gIFaPRV8NhSrr0K
 MSlxvDKDo5FtdvUKPoj5MU2LPuphGmSw+PEg6rWhfnt8kpf8AWyJ3oxf9RJH87zlgl
 yV5F8UY1eS6J8DlofloLUzyyZkt9Ai2AuA2SZ7iY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6534E618EA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=isaacm@codeaurora.org
From: "Isaac J. Manjarres" <isaacm@codeaurora.org>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC/PATCH 1/4] of: Export of_phandle_iterator_args() to modules
Date: Fri, 17 May 2019 11:47:34 -0700
Message-Id: <1558118857-16912-2-git-send-email-isaacm@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
References: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114823_549231_CD2158F9 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Isaac J. Manjarres" <isaacm@codeaurora.org>, kernel-team@android.com,
 robin.murphy@arm.com, joro@8bytes.org, will.deacon@arm.com,
 lmark@codeaurora.org, robh+dt@kernel.org, bhelgaas@google.com,
 frowand.list@gmail.com, pratikp@codeaurora.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kernel modules may want to use of_phandle_iterator_args(),
so export it.

Signed-off-by: Isaac J. Manjarres <isaacm@codeaurora.org>
---
 drivers/of/base.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 20e0e7e..8b9c597 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1388,6 +1388,7 @@ int of_phandle_iterator_args(struct of_phandle_iterator *it,
 
 	return count;
 }
+EXPORT_SYMBOL_GPL(of_phandle_iterator_args);
 
 static int __of_parse_phandle_with_args(const struct device_node *np,
 					const char *list_name,
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
