Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60A113F06B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:22:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNCIa9nBYsga/0mVwdnRfRVvwryCdy7Alz0lowSiTlA=; b=j3Gpj9/BFs4T+/
	Z5i/YPSZha5USSOesvAo6voDAMr9hw/nMWtxisMugd2oupqaobY3A7IPvnhaIxH3QvLbFHdQB6p7c
	E1hWZ2/31pLS31CbagFnaFMyTxlq0auH3EQQ4I2BsNDmC00j4uw1SxfP3GUMKALtspXhFrksIi4Pr
	rOSl2VjEPLNQY7bqZLw0vQjdg91pOqVnvpJnI6U0tk/aMIabaMva9wBxzG0Ex8PtX7gyfZ98TcYT6
	dNHyFCACEH+iUQgUOZwt6OkTsF94B273FkmnIqE7nAl702gGEKREV6TeZl8Xykb6MbkulVcn/wayQ
	kUGGqzMBAMfD/J/s4+xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9mD-0006Kk-DX; Thu, 16 Jan 2020 18:21:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is969-0007M7-Ml
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:38:49 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD8DC246E1;
 Thu, 16 Jan 2020 17:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196305;
 bh=ZqBmkNKNIAGdrCvpviL0rMZ9lGAJ38uw6Vtvogqa+MA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eT0Hhc1FUQFF+UKAqfl3zOC4dXhhn4Gmlz2C55dbK005x/JrJiZbBPuHj/Vef61yt
 2ikqrNRQUOObtL247Y5sYk8eh42bWZ6tTLNEt2gWWkrfdIJmZsSOY5oMfKmVd/1HGB
 225hc/z8e5DzBWyZ5G0E2FctOXtykMsKn/pwjw9A=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 114/251] ARM: pxa: ssp: Fix "WARNING: invalid free
 of devm_ allocated data"
Date: Thu, 16 Jan 2020 12:34:23 -0500
Message-Id: <20200116173641.22137-74-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093825_962447_486A48E7 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 YueHaibing <yuehaibing@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>

[ Upstream commit 9ee8578d953023cc57e7e736ae48502c707c0210 ]

Since commit 1c459de1e645 ("ARM: pxa: ssp: use devm_ functions")
kfree, iounmap, clk_put etc are not needed anymore in remove path.

Fixes: 1c459de1e645 ("ARM: pxa: ssp: use devm_ functions")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
[ commit message spelling fix ]
Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/plat-pxa/ssp.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/plat-pxa/ssp.c b/arch/arm/plat-pxa/ssp.c
index b92673efffff..97bd43c16cd8 100644
--- a/arch/arm/plat-pxa/ssp.c
+++ b/arch/arm/plat-pxa/ssp.c
@@ -230,18 +230,12 @@ static int pxa_ssp_probe(struct platform_device *pdev)
 
 static int pxa_ssp_remove(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct ssp_device *ssp;
 
 	ssp = platform_get_drvdata(pdev);
 	if (ssp == NULL)
 		return -ENODEV;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	release_mem_region(res->start, resource_size(res));
-
-	clk_put(ssp->clk);
-
 	mutex_lock(&ssp_lock);
 	list_del(&ssp->node);
 	mutex_unlock(&ssp_lock);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
