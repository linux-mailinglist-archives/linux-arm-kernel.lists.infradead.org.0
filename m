Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973D51BE96E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6Hupy2AFznk2Pn4G/qPbtFug6f27hhKQkh1niZK71I=; b=Rb4Czk3/wTwbq4
	Yp4CaV1neOx3TJpf0lBgJwZo0esgLSCVGZxKdLyUw+CCLymO2kYGPjl75W1vGWkIZC/iUvlfHc2jA
	lwSZ+PCTAcZcQgA7ogXG3hgih6S4udi+9byYI7QTxMHGdecyvmLdBYZl4mJ9cH+IyIqPRkN9DS/xy
	z7pxKgidSEnoGlxGIbl8gYnKLzHdgYMPF9kg4AMF8Xm+RTr4FT8CuGuWIDfcn76FRgpoN4nD36xw1
	xupD7aRShU+MTtBlWNK3mM7sFMRYz1Lw4LWFkA0AaxAxIKMmNdlYXM+ONRJxFIisB/5me+4Ko52/T
	qtWjXHLYu6w8PDNAY1pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtpP-0000lo-PU; Wed, 29 Apr 2020 21:01:13 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtmv-000593-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:39 +0000
Received: by mail-oi1-f196.google.com with SMTP id k133so3117928oih.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EoRdXSXyDk/x1mGGqjsqWksS6mCyDXiHkJ0dVC6MTqs=;
 b=ijZvLLpFIgtoaOU5O1u7H0uJ/T8TXmh2vq7I2OfCrtGXnacA4WDxFUYuRArseUDVyI
 FlmfSC6G+GouuCgjhftZburuBISC5O7LnYGyt8S31yw8R79QYWhfmu2R5MCZ+MFp6PMk
 zd5oyW72JINbmzb2DjZ9HSc+W46eVtNcc+zoFcYDw9n9VdGVQLHQP42PBv4735xjusJY
 a56/QJHwDUmfadTEGftHhIDsCwVi+aveWlsR+y1QdIikv0UKweJOE9YN6RGhaw3bTzN5
 2VH7f6G8eqOJkhorqS5BbHNoe9ZOGl1rz09L2qsQT4R026f6JvJIQz6XVJhSGPDUbNi5
 tNRw==
X-Gm-Message-State: AGi0PuY16goYHhQJXEl92Eiq53lxHcIqdouLPq/ga3fxYredpQx3iuRi
 kBfxKri9UAIjJgkPUOOBYcGJtJo=
X-Google-Smtp-Source: APiQypLdCoQOqyhUOrgVpALW16PrMgDTQhtSkj/rPf8nCMNL3vEltambBtSQoCpAq6uy/8hcmIv3FA==
X-Received: by 2002:a54:4801:: with SMTP id j1mr108023oij.101.1588193916924;
 Wed, 29 Apr 2020 13:58:36 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:36 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 06/16] clk: vexpress-osc: Use the devres clock API variants
Date: Wed, 29 Apr 2020 15:58:15 -0500
Message-Id: <20200429205825.10604-7-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135837_932023_00A291B6 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-clk@vger.kernel.org
Acked-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
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
