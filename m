Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C585BF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gOuBmiFkOzDn7WO5yQWwLnVNn/rQjrgVt9tKWhFdmXA=; b=Zex6FMpepA4UY8
	SX7+94Pxw1u7lUtsn5CLA9txdTZK3niDaETCaitJkVL43AHngigZE3tjygAkkzQizRDj3MIwMKEhI
	0gJCrnU5VpPw7J4CfLNIh67sjJ0qMgbrNjunni4i4c3viA2dQSCU9+jvdRv5Q6e1X4T0dxTuz/UE5
	Ob3ux/HfaGsBMN7rGtQQIlfi0F8bpwowsTf2xHCzjkwWF8+DIWc18c37AK72dZ+2GPzQSPlAZeGv4
	JFIfBVATkfARIHKsv/KrQG0dr4eICo/xT2gRj1JDP7HGUaWIy5ideYuKJ7yrMC47/cry/wHc3n7wv
	npCSva20HwA7WrIhItDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvd9I-0000es-Kp; Thu, 08 Aug 2019 07:47:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvd94-0000eO-M6
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:47:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id m12so4567615plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 00:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2rESte5/57okCowz10RtqHSCa/mKipnoo2DWd+udp9Q=;
 b=sRDhhJpt+/SXsSfg3oUjpHPQcYF6DZUMlgwXkoGoEJxhfxulV6+nhQ+JVKm2CJcyxn
 mLh31PM9g4jiOc88jqEPfr2hZR6KyIKtDJMEsC3meMTNt9tLWENdM7V0yjMTPpi1GMt/
 J6/FEbqmZqMJKeuOytpLmZ9B9hIyJSYBGOKrvxI8vO4k+6t/FYTs5Z2n9YoytI0vcwgQ
 k96Z8aiSDy+W8lqe9yKpnJ8PyaiGSvPVGFUoMyiyevWlZkJO5T0FMs/Eh1dZAB6Mzqir
 SHSWW01PMimuLSC3nWRkCA6k32a0iYXWwDEgKe9pHymrKakiQJsp0iiTw2i8mlwaws2n
 zstg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2rESte5/57okCowz10RtqHSCa/mKipnoo2DWd+udp9Q=;
 b=G8cnZzB8D8QutgNoFY4x1f5MrLi5kat9OQs2+wh9Y6PY+swQTPZDGK0qdk5rx7p0yy
 0lFPGf48XMo+IV/jsMH68CZAQrZi0xa59nQJ8xv9Wi40SMapBp7Q4KAMwyZXvOaRoYDi
 Sq6DoQu1gYllNSOs+/WyEui0a5IsoIzlE+mCUckGn84Zu+H+7PIjBB6VL4rOKsciwuF4
 YMNCN8nqo+wejDo0tbndWbz+4eNwo/5pu3wysCiIug6ffVAhY/Y7lPrDQGhwPzB9936A
 gtWi8ntTAI1nYdLkHWQde/r0IrWShzDFPSiu5Y+OTyNjc7DKJmdqzBdulP7GjaxNbad7
 ZFOw==
X-Gm-Message-State: APjAAAUCZBY/IGeeOoesZLJCr7j+AtMfKb0uRQ2DYIaYcoS1gqdEuKZO
 OAEbJBkcl+Bu1ZLxXNzn4Wp3T5cEcPk=
X-Google-Smtp-Source: APXvYqzqPfZHIApuMh5OHeyfe24xH8jfgbus4OqX9KWnaF77FBz58qGVCMciafF9d9o+0Z7yvZ2dJg==
X-Received: by 2002:a17:902:5a2:: with SMTP id
 f31mr12011172plf.72.1565250453700; 
 Thu, 08 Aug 2019 00:47:33 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id i14sm147454599pfk.0.2019.08.08.00.47.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 00:47:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-imx@nxp.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] pinctrl: freescale: imx: Add of_node_put() before return
Date: Thu,  8 Aug 2019 13:17:20 +0530
Message-Id: <20190808074720.15754-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_004734_754859_5915C6A6 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node() puts the previous node;
however, in the case of a return from the middle of the loop, there is no
put, thus causing a memory leak. Hence put of_node_put() statements as
required before two mid-loop return statements.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/pinctrl/freescale/pinctrl-imx.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/freescale/pinctrl-imx.c b/drivers/pinctrl/freescale/pinctrl-imx.c
index 83ff9532bae6..9f42036c5fbb 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx.c
@@ -672,8 +672,10 @@ static int imx_pinctrl_parse_functions(struct device_node *np,
 
 		grp = devm_kzalloc(ipctl->dev, sizeof(struct group_desc),
 				   GFP_KERNEL);
-		if (!grp)
+		if (!grp) {
+			of_node_put(child);
 			return -ENOMEM;
+		}
 
 		mutex_lock(&ipctl->mutex);
 		radix_tree_insert(&pctl->pin_group_tree,
@@ -697,12 +699,17 @@ static bool imx_pinctrl_dt_is_flat_functions(struct device_node *np)
 	struct device_node *pinctrl_np;
 
 	for_each_child_of_node(np, function_np) {
-		if (of_property_read_bool(function_np, "fsl,pins"))
+		if (of_property_read_bool(function_np, "fsl,pins")) {
+			of_node_put(function_np);
 			return true;
+		}
 
 		for_each_child_of_node(function_np, pinctrl_np) {
-			if (of_property_read_bool(pinctrl_np, "fsl,pins"))
+			if (of_property_read_bool(pinctrl_np, "fsl,pins")) {
+				of_node_put(pinctrl_np);
+				of_node_put(function_np);
 				return false;
+			}
 		}
 	}
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
