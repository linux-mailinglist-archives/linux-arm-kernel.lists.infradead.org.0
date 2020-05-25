Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C301E0A21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JvlCNhejrEyelscYP15g8475tf8urnZbmA6q9UVQR+8=; b=QJ9w39ipccvVlV
	omBupErIzpDYKjxZHpXXSj9KYD7iC3DOD3uNKtB5ROgD84XYObRND8ZqFs79QfZ9fGJ6jMhsA2ONb
	9LK6wXt6w+D2QVtBTW8Tdkuy3CsLfWj6LU0E7gmvu0k0Lck8qsVWSFu7SEmCSkZUAzKFL5/dv8aw1
	7kloa+pfF1VIqwIDq468ykCUS2d4M2YiRMm6RT05VNmajt5+fAMdhLlwfI/JBqbMQT25Bs9evhxCO
	CkuCYfVIf21LayNnRsY1AtbWcbbt1HZZrLX4kVSkiccXFKVRGxZFL6igHY8shhtQjblFCpQYAXIk0
	TeOaUm61JgEMllZh0NJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9Gp-0000be-0K; Mon, 25 May 2020 09:19:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9Ds-00071w-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:16:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id z13so10299254ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 02:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ohEJwhoqSwZ76s6YgACOOHyVU8iazLwMXXUTCVY9Yu8=;
 b=quNFZC8NDA5oaB6UM9SKg2UILfRuOrVeNF0W5cgFZBSHZCLv3KdoNZHSOjvQW2Ebv8
 5QG/RdByzTk0usDPlVN6Em3PvUILKbbJLcIcMfCKKiH0eKL7gky+WSmEo/vYSJnA/1uw
 MdZv9m+A04sp+hNQNpZskmE/SUXmkVG7mJX7eSi81BU88IrJL41tKVPm4RtDku1c6rXG
 FWm3kf8SW/64UrSXp79Sc1X557ACrh1WRmVC0HbLCaJQPzy7MGjFDySdtwKaRU7EJSNc
 goHb3RwF9PI7MtCpo17RBRy1wQ42DiAzpmLboRrE7B8f4+doK7NToHyR8l3s2Pa658yF
 jxFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ohEJwhoqSwZ76s6YgACOOHyVU8iazLwMXXUTCVY9Yu8=;
 b=octibyeUk6qpuJA71jZkyUsajkWo2IHhFZ2MNQRTih44oTvtI+GkuUey0s/hNuxPLP
 vyjYkFAjn3chRFrggnMXGKBDYmNrqHTGYOYI8pFkgerJnBwkStw9q5tZyaoT4kLNUzI+
 eaw8vYLI/p5RP7Nqdw+j10LtBRI8LiOmdjw+zhL8WgJYQ3ptDEJhheVTX/yUo452xqgj
 nPm3UA+htR2MaBuYqzpVIerYTWKOT21oA+3Ala/VJzSoOFQB9myhXZcGVpPI//6gl+HP
 xfz6Fi2uSds90KwWblryt3BJiszikBha9w6PY9UNkQnSqdFNmCT31NivLV45jflYjUhH
 uWCw==
X-Gm-Message-State: AOAM531hFCJFCRkX/bPEnlK3MyIplwtL0mzxSC/zuY1zShWZHzV3r38g
 f0zaQk2b/oXRP6Fh2R85PXzGznpMcKQ=
X-Google-Smtp-Source: ABdhPJyKPynsW+auiuviSIK2CbOKzmm5iV5WSMfZPFAjiaxfCjE7pejLzaeunA8woUd0pURHn1KDrg==
X-Received: by 2002:a2e:a318:: with SMTP id l24mr12276427lje.45.1590398199304; 
 Mon, 25 May 2020 02:16:39 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id c20sm3998328lfb.33.2020.05.25.02.16.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 02:16:38 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] bus: arm-integrator-lm: Fix return value check in
 integrator_ap_lm_probe()
Date: Mon, 25 May 2020 11:16:34 +0200
Message-Id: <20200525091634.8274-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021641_014698_25B50541 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hulk Robot <hulkci@huawei.com>, Linus Walleij <linus.walleij@linaro.org>,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Yongjun <weiyongjun1@huawei.com>

In case of error, the function of_find_matching_node() returns NULL
pointer not ERR_PTR(). The IS_ERR() test in the return value check
should be replaced with NULL test.

Fixes: ccea5e8a5918 ("bus: Add driver for Integrator/AP logic modules")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Link: https://lore.kernel.org/r/20200520032150.165388-1-weiyongjun1@huawei.com
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Hi SoC guys, please apply this patch directly for v5.8
wherever the other Versatile stuff was applied, thanks!
---
 drivers/bus/arm-integrator-lm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/arm-integrator-lm.c b/drivers/bus/arm-integrator-lm.c
index 669ea7e1f92e..845b6c43fef8 100644
--- a/drivers/bus/arm-integrator-lm.c
+++ b/drivers/bus/arm-integrator-lm.c
@@ -78,10 +78,10 @@ static int integrator_ap_lm_probe(struct platform_device *pdev)
 
 	/* Look up the system controller */
 	syscon = of_find_matching_node(NULL, integrator_ap_syscon_match);
-	if (IS_ERR(syscon)) {
+	if (!syscon) {
 		dev_err(dev,
 			"could not find Integrator/AP system controller\n");
-		return PTR_ERR(syscon);
+		return -ENODEV;
 	}
 	map = syscon_node_to_regmap(syscon);
 	if (IS_ERR(map)) {
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
