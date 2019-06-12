Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7673C42594
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shEUIvrzuXetpWmwvT+9BzlY3Ocdtp7G7+TxlQ6TTXA=; b=W6q2ApZRnv2kPZ
	TbIB0josItlt7OekIF4GaOrZcwyFMvuE5wSsuFo7SVfgp6wQPahv9aJh0hA+YB5S1HdyGngGo3JXo
	fjIHnkxlVbmgBr1CynGT50RZr4JxO3E9Ic5xRhsyxq60nQ58Gqn2Ld06L+dddh+oQSLiDunhJvUHA
	BWrc+DdXAQz+h5TemVhIJr4PghH+SjxFXdMLqHEzs8LDrL8LcjdoNJEIKE/VWJYA0quEdVPjdTsgp
	32KVeK8M2OJQWCsPjwf5cWWybXhN8szSp58fZiSw1qnNNuKuOx346lbgV/sdGOVB/N9U/tGCSSUEj
	WeXBf6CujFet2dnk+IEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2Ke-0007Qq-PC; Wed, 12 Jun 2019 12:26:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2KT-0007Pf-RR
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:26:15 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DC1220874;
 Wed, 12 Jun 2019 12:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560342372;
 bh=iniz35gqj7tTuYVqxCIYwTN/MkFFwRWSu9rRvy9EH2E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JFYUsRAWcnKQGMGBykNaoz2re/szbNRV88+h4atxRPofnC4m6fc0sB/8beHjFTfZ+
 FAJ2k/Xx1uz5Sz2/+b2O/QAsEB/oUJHb2hgzny9o+zUArvNj8tsvzYj8FH1nWDaN6i
 WL8tS1nEz9HPbZgOlNhfh+2peOfM806lvU8bEyH0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 3/6] dma: coh901318: no need to cast away call to
 debugfs_create_file()
Date: Wed, 12 Jun 2019 14:25:54 +0200
Message-Id: <20190612122557.24158-3-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612122557.24158-1-gregkh@linuxfoundation.org>
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_052613_907392_07D493C1 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dmaengine@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No need to check the return value of debugfs_create_file(), so no need
to provide a fake "cast away" of the return value either.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: dmaengine@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/dma/coh901318.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/coh901318.c b/drivers/dma/coh901318.c
index 547786ac342b..e51d836afcc7 100644
--- a/drivers/dma/coh901318.c
+++ b/drivers/dma/coh901318.c
@@ -1378,10 +1378,8 @@ static int __init init_coh901318_debugfs(void)
 
 	dma_dentry = debugfs_create_dir("dma", NULL);
 
-	(void) debugfs_create_file("status",
-				   S_IFREG | S_IRUGO,
-				   dma_dentry, NULL,
-				   &coh901318_debugfs_status_operations);
+	debugfs_create_file("status", S_IFREG | S_IRUGO, dma_dentry, NULL,
+			    &coh901318_debugfs_status_operations);
 	return 0;
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
