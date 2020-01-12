Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 222B813872C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 18:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YYuidMto3yrx0jJVrel9HYkkSlDadK+mQujqeBkJubE=; b=b921nlbdsOJVOF
	6ZYWR60bfS5kxCMDMncuibKGk0ZJgzgE//TKWV1TiI4jkGi0NY0UjsuuzNuQ1HrfmLpdHFC5ierMm
	0e0vT+tZGETjyVvUNAF9fsTR/727nR3WqZ55Sp7Prdkbt8XLAYEuQ4LzxtsAvDhYtSa0/pgmvqgVZ
	MKNzf80Qb9oiblp8FQPYvq937bMqunj42yc/s1V1xQmPhMnqxBRQ+fh+v56ByBqDBrR5/JEpJxPzZ
	8DQo0VhLuBP0HY29taup5zN14Ivd2AUHyfxbCdQbXMeBvv6VPAxL+G1i8scj7MQLWaJib1DT+jtf2
	AJR7nDdCXYRqF3I9n5fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqgnr-0004Ck-4q; Sun, 12 Jan 2020 17:13:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqgnj-0004Bj-Jx
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 17:13:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id z16so3719003pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 09:13:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=5tkpOty7Kcf+owtmT5rJiVn1mp+mm6nEXaLj/KELc+E=;
 b=s4qL3hA5ExwgUDIEKIczvpQfJixy3CL+qa+2tn945x63QiXL7pnfENtLJR7Md2q7bi
 yaOwoK0OLmkSMfx4yat9MSuYoppwA1HjobiSiTyyo3ultSwnBG8RP8O8RU9bdPmHGUsd
 lO9ZWZ6xQsXg6xjZJBI7Z3fxdQxbHAaWMYSvPb+nBExwH1Iyt5ZuHt/PJk2EqBXjZtsH
 /AyI/YuIjEKZpYq5eL0wcgHGTEBlZFyvUcJGWDQKQQ5OomhRMEjUZ0pl52o3wdhSB/yz
 zxcExwqo9UMaUHTQ8Oiw2LCsnT80oEpWs2WnrS9if0oSVzPt69aJA6yhPYHpClQfgn6s
 8TlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=5tkpOty7Kcf+owtmT5rJiVn1mp+mm6nEXaLj/KELc+E=;
 b=DJhBopU64r8jfN0KNaYomoNwBTuBRLsOOuPiSEagET2PhNYXIWKZ+FiWfHQr8bp2Jh
 95HeqCzUKs14BnnGliHcWqjfo5jro95aM/LwXzYzOVx9vHQvhtIWFAwpNTNNEMOEucIh
 Ow7yaAfzHGi3ln7suTZ1mr3TUJ19HhGHnHd0Y0OTN30VtxO+BnRrnafI5dhqkf5zTLmx
 laEUr8m0b+SqpXgQC9vZfRycLf879LOASOe17vKiYbSTiYQSAIGpyGtC8ZP99uMzkOid
 +SgLh3IN+H5lobpgIixXHCK0ARM7r538ZsIE+h5rcBxNbiGY1WPXR27vJM0ceAuwlBpH
 MO8Q==
X-Gm-Message-State: APjAAAUs4Vvzg7kbuiSlYZ2+HQYvKuvOxWbAFJIyOREzVwYHmZIaTyI6
 TgVDSqRzw6pNKckC55ZcIQw=
X-Google-Smtp-Source: APXvYqwXQyPBbsQvZdE3cVme0/0ISaLS049ySFwXhAoEuHbV4j0l0wD8lmi61p1T2l4e2ayVL9tGaw==
X-Received: by 2002:a62:1552:: with SMTP id 79mr15677180pfv.156.1578849201813; 
 Sun, 12 Jan 2020 09:13:21 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id ep12sm10125706pjb.7.2020.01.12.09.13.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 Jan 2020 09:13:21 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: anarsoul@gmail.com, tiny.windzz@gmail.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com, mripard@kernel.org,
 wens@csie.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] thermal: sun8i: fix using plain integer as NULL pointer in
 sun8i_ths_resource_init
Date: Sun, 12 Jan 2020 17:13:18 +0000
Message-Id: <20200112171318.23025-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_091323_685173_F2B2CC6B 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To fix:

drivers/thermal/sun8i_thermal.c:341:60: sparse: sparse: Using plain
integer as NULL pointer

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index c5661d7c3e20..4bcde9491edb 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -338,7 +338,7 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 		return PTR_ERR(tmdev->regmap);
 
 	if (tmdev->chip->has_bus_clk_reset) {
-		tmdev->reset = devm_reset_control_get(dev, 0);
+		tmdev->reset = devm_reset_control_get(dev, NULL);
 		if (IS_ERR(tmdev->reset))
 			return PTR_ERR(tmdev->reset);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
