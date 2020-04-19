Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20E31AFC7D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vAKTZMVafu6M4HpuYvZ0/igqGajWW8G50EGZvW59cs=; b=Y4cABX/yCGfx7i
	fLwRPJ19lycLSqBnIieFDNdIACw0sM4eR3aoaGLE/rtDOUijEdfJ4IiqGjJ1MgPmFOx6AuizUkzNT
	mL/sKqazN/hujHoeO7+sN4+pdvaO39iSxSx5uA28Ve/U1qrdzLaNJRTPfLCRLvtt7plfgPpx5vl5E
	n0CCZb1KYdi7bXCZYREj9aGZh5dM6aASOgQxZcgjcM6YRUoM3tYz4pEvoR7xOCggOQvqCuZiH5tE0
	xpXJDifJHmrcne3GEQXQa3eNiPYE5NaHXnxScZ9SmkxcvCx0XOIniaDXqraLBDhgKD+1O709/NdNj
	J8Ty9RC9WBKnX4l02GBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDT2-0005vA-DI; Sun, 19 Apr 2020 17:10:52 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQe-0001mD-Jj
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:26 +0000
Received: by mail-ot1-f68.google.com with SMTP id i22so5945634otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qR3APrxTNCGqJRTKnyGqCjhSnTFRpHkLD/ZqBvxeFJA=;
 b=EVccPyI8+fTFrYnVqGcnld+JN8+/mvlXmrmYLKGff1C0iSY5oJTt8V28iz7dBzAIoX
 +tx57BynsquOZVJrBOBBzHKQ7/wp440eb80PSaFe+goEZWQdIk6WdrCBdsPdQm2Wdjj7
 LhzZhUaRfSRqTUlNFJOyjZx4ET0HZPMtbnYK4ENCXz1Dg068XB+ak7KzOr0jZ8w4KGfT
 E+JVK7+QhCCWRTO4bB4r1Nw1iB1LCdJ4VJwYH7F6WIRgyvO8OlQfLTktQTj1hA+tZd2F
 3z32xq0AwF/N50MJl5z1As+nGQJkWgvpCHwKvWeuKfJWF0tzTZf9JI1QTcip97GFzf0L
 3Crg==
X-Gm-Message-State: AGi0PuZ7Kv4dW+rwi8HLz/M8mZF3wrtKJ7dESUqkHYYlj3FoEoF4DonO
 IatRoLmuW04Fy/a/ueY2baSDYlQ=
X-Google-Smtp-Source: APiQypJRBqdugWx8PeDgR8OJglN2KN7qjTUoljyMmF8u89tlJuk3/msimvMwYF6xrm67UkXj9aqsmw==
X-Received: by 2002:a9d:805:: with SMTP id 5mr6859221oty.111.1587316102393;
 Sun, 19 Apr 2020 10:08:22 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:21 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 07/17] clk: vexpress-osc: Use the devres clock API variants
Date: Sun, 19 Apr 2020 12:08:00 -0500
Message-Id: <20200419170810.5738-8-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100824_651500_F0BC8F1E 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to enable the vexpress-osc clock driver as a module,
convert the driver to use the managed devres clock API variants. With
this, a driver .remove() hook is not needed.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/clk/versatile/clk-vexpress-osc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/versatile/clk-vexpress-osc.c b/drivers/clk/versatile/clk-vexpress-osc.c
index 7ade146a3ea9..5bb1d5a714d0 100644
--- a/drivers/clk/versatile/clk-vexpress-osc.c
+++ b/drivers/clk/versatile/clk-vexpress-osc.c
@@ -65,8 +65,8 @@ static int vexpress_osc_probe(struct platform_device *pdev)
 {
 	struct clk_init_data init;
 	struct vexpress_osc *osc;
-	struct clk *clk;
 	u32 range[2];
+	int ret;
 
 	osc = devm_kzalloc(&pdev->dev, sizeof(*osc), GFP_KERNEL);
 	if (!osc)
@@ -92,11 +92,11 @@ static int vexpress_osc_probe(struct platform_device *pdev)
 
 	osc->hw.init = &init;
 
-	clk = clk_register(NULL, &osc->hw);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+	ret = devm_clk_hw_register(&pdev->dev, &osc->hw);
+	if (ret < 0)
+		return ret;
 
-	of_clk_add_provider(pdev->dev.of_node, of_clk_src_simple_get, clk);
+	devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_simple_get, &osc->hw);
 	clk_hw_set_rate_range(&osc->hw, osc->rate_min, osc->rate_max);
 
 	dev_dbg(&pdev->dev, "Registered clock '%s'\n", init.name);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
