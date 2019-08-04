Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF48B80B87
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 17:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WtQ55UcnnXFM92OeJ7qAXrHnflZKzp3HhEnbmKE5X5k=; b=P8FjWmNKcq4x9O
	7k1eT11QHLBFXXJ2Df6lRNTdhNpKalqHtenjpiF2SF6bdWO9JuIbP1fp36wl4+/1Gcl6WNVdOpv9B
	gpdR0Go82jFTGJVkXD/ex7e4HxSOGW+tP4AJKXcrlSpw6WaVEVflqO1Es+zzsuSI4aetltpwoRPnJ
	VuAGkSeY7N3LtIoUXlsoR/daViwqI69lEIzaCK+aHmDE8020gz+hrSi1WZaNmyv8CTPSbhTIqn7Z5
	4CtON+7Hu5gucE+oFK2zQXlIGwVcP4mugBmZtZrolO4cuDAxtkzYvO74EIPARk88yYinS+GIwDgBn
	2nunattyNX8WoZkjaqSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huIlu-0004O2-AD; Sun, 04 Aug 2019 15:50:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huIln-0003Vs-Au
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 15:50:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so38401555pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 08:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Up2AVb1THuCCcUlmyjeQre9xUUi6KWpV7OEb7NJrgyc=;
 b=SzG8UoTSuLA63JBor9J7wsREKp2cwezocTwALqqILDU2z48mVEsREo7/fO6jPBLda4
 42O4eBK+xdtoRoVcdryQZExM4BBSRQBhdkSUDxbVrMdMJSgyxAXi+AxBnt/jwd/UUfBe
 2EzdxMlFampaB9XuM0rQ2B9tKKp+8UydzKuh+30bxLYF+zrAZvzrzea6kYqzyTfJZdZh
 h4HLEmYkgDQJU2kkxt2AmDtZYrydSfeeb9pvPNLifT/hFVTFWKb5Tnt36eTDbC3UnegW
 9u2lA7GAgWOQ/TYYu3znQfjrpWOvp3523PT7m6S51K1nZJppTr7sQA3FM9nEglEaEl/i
 FT7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Up2AVb1THuCCcUlmyjeQre9xUUi6KWpV7OEb7NJrgyc=;
 b=d2Aq7zjNfl+Qd9f+PUve5iCxS+06oPBZkUmlimLbPu8IGUgBvYMO9omgeqzWkXcP7A
 9Vl3pRSYifr8FTxfn59r1wIt6RN+exwluXpqY69+FGshKBEpnB43qDBkHdFZiKXN97dy
 TD7NHXih8jDF6S8OFP2rEI8obyAODGw4UXAd6qH6Dvx3J3NHumo1Uu8lRwoWBWHYWsZq
 eF11JSejVqiEB9BhKJoTTO/qEidE3vBlAgJHrauWwDjdoAfYC3UaAiYdDG5fN7uIHRz5
 bw2OZQFCWNONCuSSsc3V++NXnSSgZ4NQekWkFsp+BGwFTTJbZOGJkJUWb12BJCXztr2C
 XNZA==
X-Gm-Message-State: APjAAAVSIGejdjbHZ7Rnaxdv5LLAa1PVXG1unkYm2EoVtZCsGWb6+7mk
 OMoeZJCL+6IwYQ4ta67KVBM=
X-Google-Smtp-Source: APXvYqwAq1UBXazMt4AzbvcxllJZz/tfMNFpbB26TP2eQPqHkzGQZ+XGow2WWQpZznUtZLwXGJ+ZFA==
X-Received: by 2002:a17:90a:2163:: with SMTP id
 a90mr13384385pje.3.1564933800698; 
 Sun, 04 Aug 2019 08:50:00 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id 85sm86623561pfv.130.2019.08.04.08.49.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 08:50:00 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: vireshk@kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org
Subject: [PATCH] pinctrl: spear: spear: Add of_node_put() before return
Date: Sun,  4 Aug 2019 21:19:48 +0530
Message-Id: <20190804154948.4584-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_085003_384526_CA90F410 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.163.105.8 listed in dnsbl.sorbs.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a return from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the return in
two places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/pinctrl/spear/pinctrl-spear.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/spear/pinctrl-spear.c b/drivers/pinctrl/spear/pinctrl-spear.c
index c4f850345dc4..7ec19c73f870 100644
--- a/drivers/pinctrl/spear/pinctrl-spear.c
+++ b/drivers/pinctrl/spear/pinctrl-spear.c
@@ -157,12 +157,16 @@ static int spear_pinctrl_dt_node_to_map(struct pinctrl_dev *pctldev,
 	/* calculate number of maps required */
 	for_each_child_of_node(np_config, np) {
 		ret = of_property_read_string(np, "st,function", &function);
-		if (ret < 0)
+		if (ret < 0) {
+			of_node_put(np);
 			return ret;
+		}
 
 		ret = of_property_count_strings(np, "st,pins");
-		if (ret < 0)
+		if (ret < 0) {
+			of_node_put(np);
 			return ret;
+		}
 
 		count += ret;
 	}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
