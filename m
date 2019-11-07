Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E9DF29D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3GI/54qnwam/DXiA1UzcapsA1VvybYQby7VM9VQxIqk=; b=Jm1Bu7vGbuxsFN
	nAoLCE2GPNO5c47rBvxZtsnODCF8L+rO7GxjXhAgK7acZZGPmOM1ngISvA61GYaZuMJVXOl5kUFis
	4D6hiSYEA5weSPEydoB6ydJslMjZxakmk9r+BKPMVZrNYEkJNOByyhjR+G8cwvEthfd9SeJCssK65
	2TPVt3qvRzM+y01+9ybD7zBllXXcSoGf1ovUztAyORRqWf14Eb1pycGeJxJ9KeD/BnNdBo78psj5s
	SBnU5mR6azTLJN75yH7/r1ylovivSZI/4iXmXtV3GFcJ1gc/Psc5c4ZPhiJNr5WKXEpu6nJy9ghlu
	47urX8iyxMzv/3HJgiaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdXM-0006CQ-Bs; Thu, 07 Nov 2019 08:53:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdWz-0005xY-9B
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:52:43 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E8AB2077C;
 Thu,  7 Nov 2019 08:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573116760;
 bh=43ByQ6gvlhf2y6ofhwaPxlvBGJvkeMGzp+inDYYgrfI=;
 h=Date:From:To:Cc:Subject:From;
 b=z8uYIU8wqrkyNcEFvQuzRuOr9tiCMMrrdqxbNb/qMMylJ26mbGKzc/LLTm/ROUeef
 vKuMNa+1Z5qtDIxhdz8aAmOpPCdOV65i2iW2jgrkVK9SIrqsdYs1R02wHHk3Tgyx7r
 IbOYhgAaBQzByOc+kJgwCVhU+P0cyExytWeGLYMk=
Date: Thu, 7 Nov 2019 09:52:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Patrice Chotard <patrice.chotard@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] media: c8sectpfe: no need to check return value of
 debugfs_create functions
Message-ID: <20191107085238.GA1285658@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005241_398072_E13D645F 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When calling debugfs functions, there is no need to ever check the
return value.  The function can work or not, but the code logic should
never do something different based on this.

Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-media@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 .../sti/c8sectpfe/c8sectpfe-debugfs.c         | 26 +++----------------
 1 file changed, 3 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-debugfs.c b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-debugfs.c
index 8f0ddcbeed9d..301fa10f419b 100644
--- a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-debugfs.c
+++ b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-debugfs.c
@@ -225,36 +225,16 @@ static const struct debugfs_reg32 fei_sys_regs[] = {
 
 void c8sectpfe_debugfs_init(struct c8sectpfei *fei)
 {
-	struct dentry		*root;
-	struct dentry		*file;
-
-	root = debugfs_create_dir("c8sectpfe", NULL);
-	if (!root)
-		goto err;
-
-	fei->root = root;
-
 	fei->regset =  devm_kzalloc(fei->dev, sizeof(*fei->regset), GFP_KERNEL);
 	if (!fei->regset)
-		goto err;
+		return;
 
 	fei->regset->regs = fei_sys_regs;
 	fei->regset->nregs = ARRAY_SIZE(fei_sys_regs);
 	fei->regset->base = fei->io;
 
-	file = debugfs_create_regset32("registers", S_IRUGO, root,
-				fei->regset);
-	if (!file) {
-		dev_err(fei->dev,
-			"%s not able to create 'registers' debugfs\n"
-			, __func__);
-		goto err;
-	}
-
-	return;
-
-err:
-	debugfs_remove_recursive(root);
+	fei->root = debugfs_create_dir("c8sectpfe", NULL);
+	debugfs_create_regset32("registers", S_IRUGO, fei->root, fei->regset);
 }
 
 void c8sectpfe_debugfs_exit(struct c8sectpfei *fei)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
