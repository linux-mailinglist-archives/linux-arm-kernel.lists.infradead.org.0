Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C15D172A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1M6Az+WfGYj4EMPBUeSA95g+0LiPVD30/5rSTJ+Qlxo=; b=FsjXum3ukuWJiY
	EcBbGgrhjD/leqgt1uaCOrkzu2/Y452gpPF6ssj/KkHZvzuhlhBBFmgJjJOPWCv9giP24BrrUyy5c
	ZVafTO7PHSoXX6cjlQxG9nJDIOhlnT6/fYrilh//f6JmP9vHakfnK3n848e0OfQR/fqwOVHB4hIWy
	xHsg010FPngVNQtrbIyJDs2ECrnOewGlm3MtoAJUbuN0T8Zpxnq+COJuLJOT8LN3hqCLQaQwGpzc8
	lkCaTNzUbhwU7tSJ7yqwU+Jbx0ajmowHucE7Za4/pScPCAPO7T2R2VZO6krq44UZu2ZfD7nrKSQHD
	DW/PMAEOVf056CoiIzvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOH5e-00021C-Lf; Wed, 08 May 2019 07:34:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOH5C-0001XS-HQ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:33:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id g3so10041941pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 00:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yDsrcSSMgKGSHP0Nk2ne2DJD7hpeUAFwPm0h/OfCnfA=;
 b=AObE5Z8+K0moA2ZDjDuuVYvjyFV8h5J1tWcLuUJBcmiP/jFRjCim4AgJX0Nca0aIPX
 EypRszSAUAWGvknuUsSwSlHu8TWCt1PWuSqCE5eNuSgzXtrbVcSeOWbvgsUU1UVdolnE
 dfDbBe8Icbe2pSeTEhAANpRG20bTjfj6NIgbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yDsrcSSMgKGSHP0Nk2ne2DJD7hpeUAFwPm0h/OfCnfA=;
 b=mSNVhPNBUiRs6zOcDzF7ngQYJKU7H9N48ELJERv2dOOU79cUTQjznK4Z5/8wmSLmYM
 8kuHDU8hmiMANjKDyedE8JlWcBtQRw33lHvt4BVNbgoynw15woR0wlUnB5xMKFvQP1My
 9MtJ/orzhjdDOSNmFwJj8deANAyUXjMQuob4W/k4Fp36FlZFW/J0qqNs6nbotrZWkdXB
 bSfv51rVwDivos0BsKWe5Q7l/+RW5ItnndPEqPCy+IzqSBj/yYx3XSw7RHhMCFEnWO3j
 qcp2CCYJUoM8buJ8UPr2oQnleriFP1RXiw/4E0lOtJoRogtReyC8fNPEDcCS+sMZjjtS
 jAJw==
X-Gm-Message-State: APjAAAW0gf5p/aL5Lkrc8CODCmzMQU6Gj8b3e3EXTAkQrzYlpheo6Mhi
 Z0w1duPzaG7v5zGS195B+t5+tQ==
X-Google-Smtp-Source: APXvYqwWepJc8Vx1tWBJxhjhsou707KRMm7b8Hle1JQuHz0nesKvf5DEHLJ8HVvOxV5wR8OOx+46Mg==
X-Received: by 2002:a62:e50a:: with SMTP id n10mr47328035pff.55.1557300821684; 
 Wed, 08 May 2019 00:33:41 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n26sm29539047pfi.165.2019.05.08.00.33.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 00:33:41 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH v2 2/2] pinctrl: mediatek: mt8183: Add pm_ops
Date: Wed,  8 May 2019 15:33:31 +0800
Message-Id: <20190508073331.27475-3-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190508073331.27475-1-drinkcat@chromium.org>
References: <20190508073331.27475-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_003342_832534_AF71A5FF 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Setting this up will configure wake from suspend properly,
and wake only for the interrupts that are setup in wake_mask,
not all interrupts.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/pinctrl/mediatek/pinctrl-mt8183.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mt8183.c b/drivers/pinctrl/mediatek/pinctrl-mt8183.c
index 2c7409ed16fae9c..9a74d5025be648d 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mt8183.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mt8183.c
@@ -583,6 +583,7 @@ static struct platform_driver mt8183_pinctrl_driver = {
 	.driver = {
 		.name = "mt8183-pinctrl",
 		.of_match_table = mt8183_pinctrl_of_match,
+		.pm = &mtk_paris_pinctrl_pm_ops,
 	},
 	.probe = mt8183_pinctrl_probe,
 };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
