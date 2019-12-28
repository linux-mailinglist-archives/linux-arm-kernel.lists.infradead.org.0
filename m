Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12C212BE85
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VgO6Nd1CZFyFpnIXObL7jRyIN07Q/VkO2hSKByukB+M=; b=a6AqZgwt/C90yBqhJZV5LTdsSf
	Pb7akNTn452N5MdXiMKBGeMx76UR7QRqWUZfB3Blnqx64n6c30j6zwZl5VKlkIa6UzuZYrYfpnR9u
	Uc01BMvvZAvKVW2NyENXdJOUrlUuUiAt/0MVaMDxtSKRAmuBkogIgLBE/pXifBNjixKZ3UCHFNwYX
	Czau6wnJdKB3VSqsSTBVkskPxUb6lHBR1AOEMSk9GnW7lMo00ReoBLKiRET875mrd1xYyyJP4V9++
	WpjuiZk+gKN0nrK4I82fpJc2khwHwPPH3g9DiYQ30KKz25hOsOh8O2CCUG3AFUWg8JkvBWtfTad+6
	evUzLVPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGz6-0007EM-R8; Sat, 28 Dec 2019 18:38:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwM-000518-VM; Sat, 28 Dec 2019 18:35:56 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so16059425pgk.0;
 Sat, 28 Dec 2019 10:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P8HOUTr3eF/0dZg+if1YFcXmVFAjMiDjsMoChiGwrOo=;
 b=qBDWwT735xPG/Q9VTH7Jk7ltHqJGzS3SIxRJyL/UGKLhT7cIiteBnbPNein0+zuYE8
 G5i8IlFW2hE7Oa2TgAYWyq/BO/6LSnQx3UVC/uxt/9u4n8IPFi3wj3qTM60uObs3vPDd
 jQv4IxlP2VO+QrcbqwkFMJqyHITKONYz4jXKqOm+U11JeG/N35CiFkMurclNO0EXtPQE
 Bw21iyPcB3S8P0FC3LPvm13lLMp4aiRHWpIiGIOVR/X04PmcBJrbgvC7yrtjFe+I217L
 5zkbf8OI+YCmGViTfmzsoEIVblJ47JqV2dp9CGtOzypeTVpEdtYAEcY1CAwd2SUPF0yj
 gAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P8HOUTr3eF/0dZg+if1YFcXmVFAjMiDjsMoChiGwrOo=;
 b=dmSVLjmpLCBSfLemcYkdcNbgzl4ixst4KUGannZLTmkrGe2/DUeY93e4SjIkQ8NtrW
 koJNrPccIVjhG9qSPw33/X8z2y3GItTZg9QBBr4fxjSRFlXZpua5o7lwIstezJGgmuE0
 wpeAhGNm8QKuJTjtn48RSodwwAeiSEi4a3f0VPvzLDYtymTrHt6rpEDiKlwXGXESBD77
 WNnjpIJndCu2OlPs/RS/VQQCaXSL0sdQSswQPuyvQD1IEkzs7oLwkEYt7qPTfy5tvXnO
 1XmQ/J3gaaz0b5rssWmEFR4+nt52cGhVkc8D/0uIkQJTyurEBDhoFGTD49OnBrv5WQEl
 MiEw==
X-Gm-Message-State: APjAAAX35Uzj3OlaR7d9KpcRl4qQaOhxSMZuY/Vyh3I+0N1PDPbwQfKB
 4pWxoH6lxj49quea1IiQOZ8=
X-Google-Smtp-Source: APXvYqxea8vWEh1FOmzdiLRfJsv6AzNkX2LzmseSeWMmZhHvq8Jq9qBoRVY01nxVBzYg5sRmju+cRw==
X-Received: by 2002:a63:c40c:: with SMTP id h12mr43297443pgd.77.1577558153578; 
 Sat, 28 Dec 2019 10:35:53 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id n1sm45063313pfd.47.2019.12.28.10.35.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:53 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jassisinghbrar@gmail.com, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: [PATCH 09/13] mailbox: sti: do some cleanup
Date: Sat, 28 Dec 2019 18:35:34 +0000
Message-Id: <20191228183538.26189-9-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103555_019214_87C8F0A9 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.
'irq' and 'ret' are variables of the same type and there is no
need to use two lines.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/mailbox-sti.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/mailbox/mailbox-sti.c b/drivers/mailbox/mailbox-sti.c
index 2baf69a0b81c..2a2316dfdca0 100644
--- a/drivers/mailbox/mailbox-sti.c
+++ b/drivers/mailbox/mailbox-sti.c
@@ -408,9 +408,7 @@ static int sti_mbox_probe(struct platform_device *pdev)
 	struct sti_mbox_device *mdev;
 	struct device_node *np = pdev->dev.of_node;
 	struct mbox_chan *chans;
-	struct resource *res;
-	int irq;
-	int ret;
+	int irq, ret;
 
 	match = of_match_device(sti_mailbox_match, &pdev->dev);
 	if (!match) {
@@ -425,8 +423,7 @@ static int sti_mbox_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, mdev);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mdev->base = devm_ioremap_resource(&pdev->dev, res);
+	mdev->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mdev->base))
 		return PTR_ERR(mdev->base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
