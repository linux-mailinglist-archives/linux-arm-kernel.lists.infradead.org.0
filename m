Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F65128F98
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 19:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i9j6tvaj1eAUosuUKzERlQjn4ETpeGSTHCV+bnbWCyQ=; b=Cb2MGp79gHL9NIqc/lYzpJnNRB
	iFvBjNw0h0AwEZe5wH2pfzuH2MQ5n5VWSxplLImhq0QDvDusrskwr5ka3kQIU2C7jUznAuTFNU+7L
	sG8wTXlaVsEsn+BGPyDJdGd0FxTAm1wa8MDguTXn4PRKhq60S5okmJmuBHaKJF18mEtCr9anUarGX
	tlQWIYGV0ZsmqvDnE4vIM2npB6gQ9+OaJM8noOgrK8jrnkmhBo6aCKryLfhgZvZpPbXRuxBYb9Gi2
	SNEe5DgfgwF6xm4PZHafKKJbTP2cbAHq40MHpj6Y4zO+M0FNtAStAciDFqn1vg4LxcEJdQC8GlLlH
	wrFmuO5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij6Kz-0004Jh-Qt; Sun, 22 Dec 2019 18:52:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij6JT-0003Gn-81; Sun, 22 Dec 2019 18:50:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id 195so7212135pfw.11;
 Sun, 22 Dec 2019 10:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8Ke6kqD8tx5FW4sG+uR1d5yqGchz/JTf5FhvZT4do5s=;
 b=pA1DVikadxBfRY27jeihducxVZcsjiRL9ghBfctBvs6ZO4Nzw9RcFo8JL+vI3Ob2qO
 kfIWVtELyEWwbBFrmQuS9TlUXJoI2ZXaMgUjM2+QNtQs4gAxN39H09VpPJORgdD3S+ae
 UJ/S6SJGnD9CQnsPAL9ZW6q8lDL8kN+6/dMakPkxmTf6qZKTASfCXAnE6acSiGCsjfzB
 YGsQ6Wdm+2dRzZuiUnASU3cJQ8W/hVWCvSgoHW8d1VY8rb/FdZlFx+sm2T91etppHTAC
 zmb2tZ4GKc3cf2UlfJNNAy4JooFD/sozpspHVhsH6swJLMP25eGYU25CYBDdskeJKtIR
 /oiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8Ke6kqD8tx5FW4sG+uR1d5yqGchz/JTf5FhvZT4do5s=;
 b=n2QEZMc1/eij+cAXAgEuwi/RFsHbA2TLSD26QwiM3jqONewrq7Wt3wX4v2CyZ7yRYn
 OZqrUPQFJgGQ+skzCdlUcgjxY/nytnjNVtA1SO4VZ8wyWuwCsFzWTw9mZtVJ1lHEqp2S
 jtBhAWnrzUcOY8JsNLrTxsMpaT7y4QiqRYJYqt/hmpGQaeOqpmyW/CGEw69c/iekp8f5
 oZxj05zHbhh06GuAl3NnTBDGPzdgjpSeQDgPyi/isb4Pyo5RrXPXFoe3ZppeUKM4MPik
 3MTm9DEciKkeQ4ObdKZEheY1yGjfP+aOKey07/sXSN5AK0is8z2tHh7QZsHq3SZGaKjN
 Kn+A==
X-Gm-Message-State: APjAAAWtlAtOUj91Tk2kP4vtgdZj/GD4rY7e1N2f3CtUPen0mnj0mrZk
 k2ey7DssdyHsRSsMLgSsYo0=
X-Google-Smtp-Source: APXvYqwpM2sa3hdG1WNZtPR1Q7FDppkkNNMGcWgtij5ugBsoXwFPTfryKohmVTiLz+00EJ9OPdBpLA==
X-Received: by 2002:a62:2643:: with SMTP id m64mr14416885pfm.123.1577040645578; 
 Sun, 22 Dec 2019 10:50:45 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id s24sm11628635pjp.17.2019.12.22.10.50.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Dec 2019 10:50:45 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: ssantosh@kernel.org, paul@crapouillou.net, matthias.bgg@gmail.com,
 rogerq@ti.com, tony@atomide.com, lukasz.luba@arm.com, kgene@kernel.org,
 krzk@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 allison@lohutok.net, tglx@linutronix.de, yong.wu@mediatek.com,
 jroedel@suse.de, evgreen@chromium.org, rfontana@redhat.com,
 digetx@gmail.com, pdeschrijver@nvidia.com, john@phrozen.org,
 alexios.zavras@intel.com, sboyd@kernel.org, kstewart@linuxfoundation.org,
 info@metux.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-omap@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: [PATCH 5/9] memory: fsl-corenet-cf: convert to
 devm_platform_ioremap_resource
Date: Sun, 22 Dec 2019 18:50:30 +0000
Message-Id: <20191222185034.4665-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222185034.4665-1-tiny.windzz@gmail.com>
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_105047_346828_78A65C83 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/memory/fsl-corenet-cf.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/memory/fsl-corenet-cf.c b/drivers/memory/fsl-corenet-cf.c
index 0b0ed72016da..2c62312ea513 100644
--- a/drivers/memory/fsl-corenet-cf.c
+++ b/drivers/memory/fsl-corenet-cf.c
@@ -172,7 +172,6 @@ static irqreturn_t ccf_irq(int irq, void *dev_id)
 static int ccf_probe(struct platform_device *pdev)
 {
 	struct ccf_private *ccf;
-	struct resource *r;
 	const struct of_device_id *match;
 	u32 errinten;
 	int ret, irq;
@@ -185,13 +184,7 @@ static int ccf_probe(struct platform_device *pdev)
 	if (!ccf)
 		return -ENOMEM;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!r) {
-		dev_err(&pdev->dev, "%s: no mem resource\n", __func__);
-		return -ENXIO;
-	}
-
-	ccf->regs = devm_ioremap_resource(&pdev->dev, r);
+	ccf->regs =  devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ccf->regs)) {
 		dev_err(&pdev->dev, "%s: can't map mem resource\n", __func__);
 		return PTR_ERR(ccf->regs);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
