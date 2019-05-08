Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B476C172A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBC1+IOwQNHCgwCIYJD/3tk9u4MaorLliA7hcp/X6JE=; b=FoAiH4DYkjBtFD
	zNpn6LuvmJHh7gMhf6lMMAclS4Z4+9Z/IARG1hZvGDLIumI1Um+FJ4dUs3pllgy5Q8SpyhpBSdYM5
	CAgWtM/G2oYRwjLEODa11mNw5bPcyBKYR1optFjZ6ktrxHz26yG2yhXcv45oNAzIQP8IcmyUoZ38U
	WtbOvp+MEFJlJTHkFWRiEPkYHu7mypfvQWI536yd6uVlwcdjmf5TPh5XpBbQ1bdG8b22uWUPunJaa
	bcb2KAWO4sXwGxrWIoPkPVUDmw5FyZ592oLH4BeIsQnlkqfVCEUicFmt6zDqUsikRRXXg+9+0EOnP
	KxIoZodBFs1YGji7XPuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOH5R-0001hC-AM; Wed, 08 May 2019 07:33:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOH5A-0001WB-4d
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:33:41 +0000
Received: by mail-pf1-x442.google.com with SMTP id y13so10030979pfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 00:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gYFoR4O/xJAOVdtzf1KO84jqKZdhkztW34riW/9p2p8=;
 b=R9/XG+XeN3PX0hPVPayizUpipfNj3Nty3nKih/eJLptpZmg0sKXL/78jJxpaObgd4F
 gn31yG/jV8baGAHB2a71oLwUehdb5yWcz53evRbE3koaBHGOpYv3IYon7P8OT+kqhsBi
 YwJBUX6kOHsrqeLts1KKXgIQaJksLkTxDe6lQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gYFoR4O/xJAOVdtzf1KO84jqKZdhkztW34riW/9p2p8=;
 b=mtqfXFS9gS0bJchHBtVYSVT5eg+bU0+opFOG979F3KxjxhSLcyIuoTfCyyDvbjAl8i
 rxRTO4QEaDJ0dkghtPrcKRC7outaRFBbT+XepYhxG6IU36r8B67f3mg+PScEVl/McIdf
 RMLsvEDy7vj5SDLbhaJnpPAiZlrpV9EtF2YCbGE++Olz/w0YszleufASMnJKt3NJj3io
 oo/ePBD1ynt5tagvcGHa1zKOgNIpjrN4pmrjkNf0ZXoctGXVOJFLGAWHjajjlD3FLOmG
 22stASujuWNhaToMCZFPx+1pC1TXexUrI0v/a1YSCHX+sxed2q4OxRMqEyVtwdhtmLi1
 4D5A==
X-Gm-Message-State: APjAAAVfYxREGOnwmVjasxu6eQhZKvp3AunGWUxUJdY5de4eu+3MwFkj
 U5S/OlZ275IAC7OCIDcZVZwQhQ==
X-Google-Smtp-Source: APXvYqwYR+C8pIy/mW/ntjAU5hcB/QYRY8s1HZ9+YEZj2WlaNk6OmhMsHTxoUDB0Wpphy383/FAE0g==
X-Received: by 2002:aa7:980e:: with SMTP id e14mr46827749pfl.142.1557300819483; 
 Wed, 08 May 2019 00:33:39 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n26sm29539047pfi.165.2019.05.08.00.33.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 00:33:38 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/2] pinctrl: mediatek: Add pm_ops to pinctrl-paris
Date: Wed,  8 May 2019 15:33:30 +0800
Message-Id: <20190508073331.27475-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190508073331.27475-1-drinkcat@chromium.org>
References: <20190508073331.27475-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_003340_178856_261E36E8 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 linux-gpio@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pinctrl variants that include pinctrl-paris.h (and not
pinctrl-mtk-common.h) also need to use pm_ops to setup
wake mask properly, so copy over the pm_ops from common
to paris variant.

It is not easy to merge the 2 copies (or move
mtk_eint_suspend/resume to mtk-eint.c), as we need to
dereference pctrl->eint, and struct mtk_pinctrl *pctl has a
different structure definition for v1 and v2 (which is
what paris variant uses).

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/pinctrl/mediatek/pinctrl-paris.c | 19 +++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-paris.h |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
index d3b34e9a7507ec6..923264d0e9ef2c5 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -926,3 +926,22 @@ int mtk_paris_pinctrl_probe(struct platform_device *pdev,
 
 	return 0;
 }
+
+static int mtk_paris_pinctrl_suspend(struct device *device)
+{
+	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
+
+	return mtk_eint_do_suspend(pctl->eint);
+}
+
+static int mtk_paris_pinctrl_resume(struct device *device)
+{
+	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
+
+	return mtk_eint_do_resume(pctl->eint);
+}
+
+const struct dev_pm_ops mtk_paris_pinctrl_pm_ops = {
+	.suspend_noirq = mtk_paris_pinctrl_suspend,
+	.resume_noirq = mtk_paris_pinctrl_resume,
+};
diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.h b/drivers/pinctrl/mediatek/pinctrl-paris.h
index 37146caa667d8c8..3d43771074e6de0 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.h
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.h
@@ -60,4 +60,6 @@
 int mtk_paris_pinctrl_probe(struct platform_device *pdev,
 			    const struct mtk_pin_soc *soc);
 
+extern const struct dev_pm_ops mtk_paris_pinctrl_pm_ops;
+
 #endif /* __PINCTRL_PARIS_H */
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
