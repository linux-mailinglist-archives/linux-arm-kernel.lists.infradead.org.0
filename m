Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A875C5BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 00:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WmnebABDuRhWM/z9WcHiFPF52Bsz3ulsgZDxlcD3vNc=; b=kUnuxPEZDWWjhY
	XKw0iuDC5XZTawxKutOKpFFJBUYVwNUKfIfoRyvfRwVYSTYjYAnTa7vsdqhzg2je8nzhSi7ABjOYF
	Wtj7dufwilgl5mPw4rfXLJWiojbDNvzjbbV5e9zkDc5uwffADBS2ePAXNJv9hm7dRI8YYbQO4XHsm
	ykWE/2WsU5vfsiRnVQyISybTvH4g7eoMDNyVCfFFxMkJrUd05VL6OmaOl2HPdo60VoKe2TqyFPxce
	8qOC+XNJ0OZgG8k1d/nL9tz1s3QDznL4BlpVf8j0eP6fy5TJh/+4ciEylMsnolr1vGUDel3pc4c4r
	/4q1177gb45YrIO8EmPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi50r-0000kW-3F; Mon, 01 Jul 2019 22:43:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi50c-0000jx-Mu
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 22:42:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so15519452wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 15:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TG7WWB3lc3BPx5FG8dO3TIxLT0YfJ51715wfOfLXzjQ=;
 b=T5Wxgwrms3KLGReGHlwzTm5Mul15wvFJJSk0VFFNa+Q6//0DYJiyakj5yjRNrq+W7B
 /GDpBBqrYBK8CYcCQ5oESw7BdCxDIkEs4buUoiJnDm2MRcFzLaqQktaxTCkrWhU0xgsq
 h2yUShZcPyYtQPZ+edVbFohhIp708yduOWe0eoQpVgKROAgRK8vCQv/V7zh6MD7GzqZH
 3QmudLqgVRQDR7Ux1GfqTJGWPtqDbOf91QQwUZ0BYn0GMxdPLKEQr0ZseVy5CObg6j4D
 EfkoUmjv6odiZwLzVj9GrZYbh56ptUTTL2x20RVwtT3M/REDzbebpaR2kvJIsoLTj48E
 ZvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TG7WWB3lc3BPx5FG8dO3TIxLT0YfJ51715wfOfLXzjQ=;
 b=kpEpzWj8XfS+kwXAIj40AATwDmdrgylubgxhVRTjJiYzacPKqxtcizPhq8iKTtc3+o
 UojwNHIR2JUj0Y5vHLy8x3PcIbVuuuvH72f68DaMUBZUDwFvKJQMzl+JPwlipJY/Lq/l
 qp9qTn6W5uY7SHoHLENQFTQZYqLa5tv7GXzRz4xCalQMmFX0kr57S00LOVtBSiVnKQK1
 EG7TZmkDCgL680IMvjEk/rbgOLnHvyt5Y7ERcU/9DWmLwNrXrmusl9PSUUcRKKQMdyiM
 sXTto0/sXc1BVNUv/A3lKly08pfyHEwCFBMo1GBCi6YhWzn3eDcIvIRbf94uN7obZ+q3
 aaLA==
X-Gm-Message-State: APjAAAWnM8tjDAGg5TZ/smtYdc7QKCS8QXDaH1H2f3af6kT/zlyv4Je3
 5jqUw31RF4Nm0Mqy8R5TT0U=
X-Google-Smtp-Source: APXvYqxqieuIsfPGN7KpgIU60C0J3+zTqMhptvL/dVoBjEqwAqMxYmd+wA9rGlO4+B//2gj75LEEmA==
X-Received: by 2002:a5d:5008:: with SMTP id e8mr588448wrt.147.1562020968754;
 Mon, 01 Jul 2019 15:42:48 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133FCEE00B45C38AFF5505594.dip0.t-ipconnect.de.
 [2003:f1:33fc:ee00:b45c:38af:f550:5594])
 by smtp.googlemail.com with ESMTPSA id v5sm13201632wre.50.2019.07.01.15.42.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 15:42:48 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: davem@davemloft.net,
	netdev@vger.kernel.org,
	colin.king@canonical.com
Subject: [PATCH] net: stmmac: make "snps,reset-delays-us" optional again
Date: Tue,  2 Jul 2019 00:42:25 +0200
Message-Id: <20190701224225.19701-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_154250_952569_3FD60B6B 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 760f1dc2958022 ("net: stmmac: add sanity check to
device_property_read_u32_array call") introduced error checking of the
device_property_read_u32_array() call in stmmac_mdio_reset().
This results in the following error when the "snps,reset-delays-us"
property is not defined in devicetree:
  invalid property snps,reset-delays-us

This sanity check made sense until commit 84ce4d0f9f55b4 ("net: stmmac:
initialize the reset delay array") ensured that there are fallback
values for the reset delay if the "snps,reset-delays-us" property is
absent. That was at the cost of making that property mandatory though.

Drop the sanity check for device_property_read_u32_array() and thus make
the "snps,reset-delays-us" property optional again (avoiding the error
message while loading the stmmac driver with a .dtb where the property
is absent).

Fixes: 760f1dc2958022 ("net: stmmac: add sanity check to device_property_read_u32_array call")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
This is a fix for a patch in net-next and should either go into net-next
or 5.3-rcX.


 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index f8061e34122f..18cadf0b0d66 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -242,7 +242,6 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 	if (priv->device->of_node) {
 		struct gpio_desc *reset_gpio;
 		u32 delays[3] = { 0, 0, 0 };
-		int ret;
 
 		reset_gpio = devm_gpiod_get_optional(priv->device,
 						     "snps,reset",
@@ -250,15 +249,9 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 		if (IS_ERR(reset_gpio))
 			return PTR_ERR(reset_gpio);
 
-		ret = device_property_read_u32_array(priv->device,
-						     "snps,reset-delays-us",
-						     delays,
-						     ARRAY_SIZE(delays));
-		if (ret) {
-			dev_err(ndev->dev.parent,
-				"invalid property snps,reset-delays-us\n");
-			return -EINVAL;
-		}
+		device_property_read_u32_array(priv->device,
+					       "snps,reset-delays-us",
+					       delays, ARRAY_SIZE(delays));
 
 		if (delays[0])
 			msleep(DIV_ROUND_UP(delays[0], 1000));
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
