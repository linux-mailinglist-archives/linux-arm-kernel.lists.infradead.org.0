Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A0410CD4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=74VyuRAKHcKXPL3R+2NIAb41rLSDdi7rAMWfccJlsgI=; b=CXFHrmBY8thVEHpzFpUa9jJbpf
	TPUShF/PBgyzK86jlxT5EkVqA5cpGQQMjvUrXedLBSr9NpkfCr1L3eQOIrOc+fKmgq3FJAiOWZsrU
	t9cRrS5/ZRy7KbkYe8svSQ3KylHlafVmXQ73Qf1xs5CfcbCWfowIB6QOOu8k/2eEDu3hsmO6sk4a/
	xype9/6rPWH9t9G2ixKnqPl0xK0FWtYhcCxNaUiBVnEGS5ztnWcHsU5uTrJLFMDu+LRV7vjEIYyMe
	jn23dWd9SlJqnUS38KF6J0DS4xEHjdB7DtDQEeJeKsYZC16a9H/+vvgdS9DDGHcH69QUKM8YMYcq8
	ZB6EmFpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN32-0007Ea-So; Thu, 28 Nov 2019 16:53:44 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzg-0004eo-6l
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id p24so13384723pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nEtPBscm61+nPEVWvbJjdtfKlHF1+Tw29QLFNNlqSXc=;
 b=Jq5l6POXhKBLihg38Usaui6t0nqV5sQvbWbI6rSgNIYk6n8WGDMMVkP1LG1/2x4qCG
 UCyeQoB/AbodwEeK9haGNGeVGO8BzgnQuR/VI/1+k7mg0XhxfCHBQ2Jew9pOj0wEvAwy
 2WnWtwe73c5FU0NnojZiurA8804vygmxVRyse2+b5ZsZ7WpuLU2PEcTZyZGnx12XnU6r
 Cmmwe5RWxdl12kf8dT8BkmTrdBhlYSRqHUThpLcxcOwXlRELSCzdl/hd9EzIozpCZQzy
 eRYJ+rCcOw9gzunEYkOpG2M7cv3cPrz3S8v7jfLhGslUmsAe6+SS9DEnP4dTHmNwFXTb
 sW7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nEtPBscm61+nPEVWvbJjdtfKlHF1+Tw29QLFNNlqSXc=;
 b=rcEhEQ6B+rZkAPFoDbBZ++XUS7Qs00V4FvI8IqtGVC/HhJKuO1QLS7NW6vBZyTAJ7A
 7k9dUFSEh6IqEuujIy/Zj4qHcMmwLpxWjgIVCTRv/ezTiooerkG7wr2Rb5ZhOO/nlIsW
 zRvkyj/QIa9TJfrXuo8td2IzwNe5Fn6t7EVJIGxxZSi8bu3ZhPMdR1Pj9Wh/Jl6lnA1n
 /eavxd2Y26ef4qBg8m0Es1OOgXvdwRjIT0GiYI3uWUVt/jZpnSIFEuybMT42kntaOkZ0
 tRoenlSkZFz9JFFyDm6kIL8VFtQDy5QxQga6zijY7PR5tpAp0jOsW7qqoxNu6nswVfwI
 4MuA==
X-Gm-Message-State: APjAAAW7C/1sqyz+LyQVu5hBcs+xq5llCqOvSSrdVBXfXqg2hMIKzNBY
 FCcu7Ov7JVcAqMMNVT6syd5p7A==
X-Google-Smtp-Source: APXvYqwNdeqTwkb0h/ndd1EIs2BFrMN77BDNUueQ03UK/DdSGN5qX3NDPdyxhT5N5ic6H78Oc/vxeQ==
X-Received: by 2002:a63:5017:: with SMTP id e23mr12224287pgb.32.1574959815274; 
 Thu, 28 Nov 2019 08:50:15 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:14 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 12/17] pinctrl: stm32: fix memory leak issue
Date: Thu, 28 Nov 2019 09:49:57 -0700
Message-Id: <20191128165002.6234-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085016_326654_94605316 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Torgue <alexandre.torgue@st.com>

commit cd8c9b5a49576bf28990237715bc2cb2210ac80a upstream

configs is allocated by pinconf_generic_parse_dt_config(),
pinctrl_utils_add_map_configs() duplicates configs so it can and has to
be freed to prevent memory leaks.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/pinctrl/stm32/pinctrl-stm32.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
index a9bec6e6fdd1..14dfbbd6c1c3 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
@@ -410,7 +410,7 @@ static int stm32_pctrl_dt_subnode_to_map(struct pinctrl_dev *pctldev,
 	unsigned int num_configs;
 	bool has_config = 0;
 	unsigned reserve = 0;
-	int num_pins, num_funcs, maps_per_pin, i, err;
+	int num_pins, num_funcs, maps_per_pin, i, err = 0;
 
 	pctl = pinctrl_dev_get_drvdata(pctldev);
 
@@ -437,41 +437,45 @@ static int stm32_pctrl_dt_subnode_to_map(struct pinctrl_dev *pctldev,
 	if (has_config && num_pins >= 1)
 		maps_per_pin++;
 
-	if (!num_pins || !maps_per_pin)
-		return -EINVAL;
+	if (!num_pins || !maps_per_pin) {
+		err = -EINVAL;
+		goto exit;
+	}
 
 	reserve = num_pins * maps_per_pin;
 
 	err = pinctrl_utils_reserve_map(pctldev, map,
 			reserved_maps, num_maps, reserve);
 	if (err)
-		return err;
+		goto exit;
 
 	for (i = 0; i < num_pins; i++) {
 		err = of_property_read_u32_index(node, "pinmux",
 				i, &pinfunc);
 		if (err)
-			return err;
+			goto exit;
 
 		pin = STM32_GET_PIN_NO(pinfunc);
 		func = STM32_GET_PIN_FUNC(pinfunc);
 
 		if (!stm32_pctrl_is_function_valid(pctl, pin, func)) {
 			dev_err(pctl->dev, "invalid function.\n");
-			return -EINVAL;
+			err = -EINVAL;
+			goto exit;
 		}
 
 		grp = stm32_pctrl_find_group_by_pin(pctl, pin);
 		if (!grp) {
 			dev_err(pctl->dev, "unable to match pin %d to group\n",
 					pin);
-			return -EINVAL;
+			err = -EINVAL;
+			goto exit;
 		}
 
 		err = stm32_pctrl_dt_node_to_map_func(pctl, pin, func, grp, map,
 				reserved_maps, num_maps);
 		if (err)
-			return err;
+			goto exit;
 
 		if (has_config) {
 			err = pinctrl_utils_add_map_configs(pctldev, map,
@@ -479,11 +483,13 @@ static int stm32_pctrl_dt_subnode_to_map(struct pinctrl_dev *pctldev,
 					configs, num_configs,
 					PIN_MAP_TYPE_CONFIGS_GROUP);
 			if (err)
-				return err;
+				goto exit;
 		}
 	}
 
-	return 0;
+exit:
+	kfree(configs);
+	return err;
 }
 
 static int stm32_pctrl_dt_node_to_map(struct pinctrl_dev *pctldev,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
