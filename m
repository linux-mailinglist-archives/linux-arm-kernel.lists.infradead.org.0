Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F99750FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6gHlt6b3NEmse1cZLvqqSDKElt9CfkoiFjEz1FszwQM=; b=cPuDfcRgR5qPqw
	8Oz46kq7JqYOfI58535lq4+o2b9KjUAhyV4KchVy30CyX9i++tl6whN22LefOmH0jnrV6cWSvEFeF
	18eYQV638TAadBPQltZObnFtltDdrekVfNpGgw0lZJLfMAsK3IFLEJeN0KIcOM4LcocpBt0/LW9nA
	FfFVkgsqDHcqMDlZTgsWWa6VdqxOV2/V41yin3eUNx/e8fq7W1ynz24sXXCVSFI6JPDr8cUwR+24H
	1aEryStLS1qd6bUFXus1Nj4K+RC59nU9blBDMaoPyiTfbR1sQma5OD7FyQxC3o2m47cUHGg2ERMoz
	8Rx8B5z0tPYqSM1Rd+7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqegX-0002r5-Ag; Thu, 25 Jul 2019 14:25:33 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqefj-0002ac-LS
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:24:46 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C3ECBCDEFA99158479AC;
 Thu, 25 Jul 2019 22:24:33 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 25 Jul 2019
 22:24:23 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linus.walleij@linaro.org>, <narmstrong@baylibre.com>
Subject: [PATCH] pinctrl: oxnas: remove set but not used variable 'arg'
Date: Thu, 25 Jul 2019 22:24:19 +0800
Message-ID: <20190725142419.29892-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_072443_972941_8E094B00 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, linux-oxnas@groups.io,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/pinctrl/pinctrl-oxnas.c: In function oxnas_ox810se_pinconf_set:
drivers/pinctrl/pinctrl-oxnas.c:905:6: warning: variable arg set but not used [-Wunused-but-set-variable]
drivers/pinctrl/pinctrl-oxnas.c: In function oxnas_ox820_pinconf_set:
drivers/pinctrl/pinctrl-oxnas.c:944:6: warning: variable arg set but not used [-Wunused-but-set-variable]

It is never used since commit 4b0c0c25fa79 ("pinctrl:
oxnas: Add support for OX820"), so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/pinctrl/pinctrl-oxnas.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-oxnas.c b/drivers/pinctrl/pinctrl-oxnas.c
index b4edbe0..fa81a09 100644
--- a/drivers/pinctrl/pinctrl-oxnas.c
+++ b/drivers/pinctrl/pinctrl-oxnas.c
@@ -902,7 +902,6 @@ static int oxnas_ox810se_pinconf_set(struct pinctrl_dev *pctldev,
 	struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 	struct oxnas_gpio_bank *bank = pctl_to_bank(pctl, pin);
 	unsigned int param;
-	u32 arg;
 	unsigned int i;
 	u32 offset = pin - bank->gpio_chip.base;
 	u32 mask = BIT(offset);
@@ -912,7 +911,6 @@ static int oxnas_ox810se_pinconf_set(struct pinctrl_dev *pctldev,
 
 	for (i = 0; i < num_configs; i++) {
 		param = pinconf_to_config_param(configs[i]);
-		arg = pinconf_to_config_argument(configs[i]);
 
 		switch (param) {
 		case PIN_CONFIG_BIAS_PULL_UP:
@@ -941,7 +939,6 @@ static int oxnas_ox820_pinconf_set(struct pinctrl_dev *pctldev,
 	struct oxnas_gpio_bank *bank = pctl_to_bank(pctl, pin);
 	unsigned int bank_offset = (bank->id ? PINMUX_820_BANK_OFFSET : 0);
 	unsigned int param;
-	u32 arg;
 	unsigned int i;
 	u32 offset = pin - bank->gpio_chip.base;
 	u32 mask = BIT(offset);
@@ -951,7 +948,6 @@ static int oxnas_ox820_pinconf_set(struct pinctrl_dev *pctldev,
 
 	for (i = 0; i < num_configs; i++) {
 		param = pinconf_to_config_param(configs[i]);
-		arg = pinconf_to_config_argument(configs[i]);
 
 		switch (param) {
 		case PIN_CONFIG_BIAS_PULL_UP:
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
