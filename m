Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB2C4793
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 08:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPiFLO2nK6ZFPsbBStJC5W4cPXUuPF3FzoQe5sRxmdA=; b=f8w/xkicfSIccg
	VI0cFb6pFZSadtFiOyzdBfFJQyrWqhmODcEtXP0jDvZ+b61WVVfzBTPWljrbJSTmlzrs/L9v5gz4Z
	jZ0V6AOPeO/0eYmcX8T5xEXsLzj+54xy3Mk2rwUJAsQ479nX4QhhvH41VpC6YHnhKhdP6xzZZSmX3
	ZA4KeTN/Z2F+rQp/lfAGZGmrMfM8wjXWAu2W9YVbBZsm+A6rQpUTMu0dUb47GK1Kne4mKchx9Wt1/
	6t53PfXGZe6MmpKyoDu2CSUG9jT8JuPFrB8bg1rknR9JmJ9x5MBDnp1rYkHkiepBJhPs4XDGwFx49
	qz+TzBsV7ll1WX2TCqTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXt5-0000GK-4V; Wed, 02 Oct 2019 06:13:23 +0000
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXsP-0008Il-WD
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 06:12:50 +0000
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id x925uGgu005678;
 Wed, 2 Oct 2019 13:56:16 +0800 (GMT-8)
 (envelope-from chiawei_wang@aspeedtech.com)
Received: from localhost.localdomain (192.168.100.253) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Wed, 2 Oct
 2019 14:12:13 +0800
From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
To: <jae.hyun.yoo@linux.intel.com>
Subject: [PATCH 1/2] peci: aspeed: Add AST2600 compatible string
Date: Wed, 2 Oct 2019 14:11:59 +0800
Message-ID: <20191002061200.29888-2-chiawei_wang@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.100.253]
X-ClientProxiedBy: TWMBX01.aspeed.com (192.168.0.23) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com x925uGgu005678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_231242_296300_C0292E9A 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.20.114.71 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 jason.m.bills@linux.intel.com, chiawei_wang@aspeedtech.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 SoC contains the same register set as AST25xx.

Signed-off-by: Chia-Wei, Wang <chiawei_wang@aspeedtech.com>
---
 drivers/peci/peci-aspeed.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/peci/peci-aspeed.c b/drivers/peci/peci-aspeed.c
index 51cb2563ceb6..4eed119dc83b 100644
--- a/drivers/peci/peci-aspeed.c
+++ b/drivers/peci/peci-aspeed.c
@@ -485,6 +485,7 @@ static int aspeed_peci_remove(struct platform_device *pdev)
 static const struct of_device_id aspeed_peci_of_table[] = {
 	{ .compatible = "aspeed,ast2400-peci", },
 	{ .compatible = "aspeed,ast2500-peci", },
+	{ .compatible = "aspeed,ast2600-peci", },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, aspeed_peci_of_table);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
