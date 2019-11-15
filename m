Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B1CFE81B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aPGbyVELrWPq+XQC2aBrcOXC6qC4YCIxdlWj6bl/1xQ=; b=NbpZYlmqBBreryEDwLrGAduno3
	rVQBavc6WhxOwfxn+96WOYW4vB2vx9XLHXQL7hfrMtEZxDSDdMY9d43U/W+srgEB/Bx2S2cAQt3KQ
	82BMMMXda14qRD9yRQW5N70XcDGGhgc3U6EZ2Y9nO0rVCMzjOHBY98IQVnKWRO/7PXfpdeYLW/DE5
	UXEQCblz8mtqj41x0TWpVp9spvfXs/MYy5aHDCxa9qWwT5cOYnTE93EgHWTXWdqCtXhj1VVTBx6Z2
	vKMPps4tt/tpsegMoB35latkX1RNIyeoaa2Qmnr792fUkuitc6f6b1Wpc+M4cc4JvE3rV5bGAfyQP
	OA9XckHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkDu-0002qQ-Mo; Fri, 15 Nov 2019 22:37:50 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAM-0007FU-Oh
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id c184so7345038pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RCAvV+63fHypoFXOnsyRxH4xHTzRyP2HC/taWojKmLE=;
 b=cMafIXdS6g1uj9flwmN+t7PFzSGyqKH/b0cq+G1THxzoFk+UYaUMhkK+sCXvoR+FRO
 T/JwOcWSRAaDWyQpMyfm6t8Zb6xoOLE3pEo2VEaHnfKiwlYUUFO3RDSGQagkVZ+iwFjP
 wmmcuLiR+iKDMK2bzVS9A3BLyV6YTliwZCITCbOSSg1eQn5ZOIEhEWr/kh5vqAomZ4ZQ
 cgRA8eugzOEYPUvEM8fNYj8/Yg/ARhoLFq31/vgr7hZNUdFh2ItkshREq+pM+lKJazBg
 bqbGPI4XSYbM8QdMhxpjnWpQ3YJz8+9wR7dpzxgu9Pvr/+j05k3lwfNTVW/WugA3V86p
 o+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RCAvV+63fHypoFXOnsyRxH4xHTzRyP2HC/taWojKmLE=;
 b=W8aQa4V5omjic2lzuJ3RVeOT1ivkD15tOTpSf04zLl9SkPuM9OKNIfasaoFIg0Isp7
 a/gw+DbAgLV0vXWs+qD5WxfshqCF+lv89i9QyAGh3CDs9vM7gTrNrR2QI45XAwqx2OKZ
 aYAZx9swRk+eF9wCNn7lv1ZojGZz8+jTzX//IcXrs/Nak3zGweFgcLaa+HgHskvju6uV
 114EmCFrBDIOjn+D99xm9pfLapOu39fqtrkOnPxyuA/qn2prUoE5XTuvo2fx/8Kkwpve
 um2hPgjj1FoVHoDXitKr6WnPzzAy4sBzKZbGNrkn2gQvHDacXX+Xl3ePljXyUkyIX+sN
 zPwA==
X-Gm-Message-State: APjAAAVnf75gJSEt/1Vv5rtWeYnagpZMRA0MsR3o4GH89y3DKH3jKlAf
 H8bI8YiMK+zU2/qc9YXUAVJaTg==
X-Google-Smtp-Source: APXvYqw4qvK8le8SxLbnkh5RF54RDhXA5UUgg6LQQZAv/fDVCg5l5miSaDJNYjoAmSiE4kYzPg4uSQ==
X-Received: by 2002:a62:1914:: with SMTP id 20mr19374168pfz.68.1573857249524; 
 Fri, 15 Nov 2019 14:34:09 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:09 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 14/20] pinctrl: stm32: fix memory leak issue
Date: Fri, 15 Nov 2019 15:33:50 -0700
Message-Id: <20191115223356.27675-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143410_860787_B852F240 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stable <stable@vger.kernel.org> # 4.19+
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
