Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B796DAC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 05:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlvfRwQK4nz+zKUklO+aeJ/VcpOfTHtgofcUCwle1xU=; b=cGnfKihU3esNEp
	Ib9MfwoQ5JrUordsb3PCyPQgCFXmMLahQV/2KVgMJAlmLmf07TEM775G5Ixq1FZMS91XmOZPjx6j4
	9laGSXdvbqPNQ0zjvK729j8a0XfiIBWpkZjme3+fJ7iTCcgsnhVfTgHkccxzeAOfqr7s/Q8DRio3T
	uScCc02K5/FkejHEaY9UiruK1BXhErtKqmEPPuWuXZrygwlUpWxf6sLOKf3/qEOdAVGxOJvtksCLS
	0e/u+lYkyy4wItF1B9i3Hk6V+sSUqReiYPWRhHaPSFJXguRKzQabHTJmcOF7VECtUIpuUSd8Gvqs8
	j3SjW0h8Cx5/1ezbCFIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwwP-0005Rt-FP; Mon, 29 Apr 2019 03:26:53 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwvj-0004nn-Te
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 03:26:16 +0000
Received: by mail-pl1-x642.google.com with SMTP id l2so1626956plt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 20:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cjmbiwT3xx0O7Zw3eEqLKXpxbtx6F0HnsFgBh+Wws60=;
 b=CNgWhxrReeKSMttB9V3/AQpjze5DuX7cltNGhy/sDaNNUG7o+k1WqxOSMkKwKlDvW2
 /9n0hGXDpt/Or05jBZQIIJVwxeyltEgOjCn83ff0quxl9zoHmE2m3a1M1H44l1FkUIzz
 fYB61oYgVr8AOx3UNCWaSDCzPBsI7r0sSZzRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cjmbiwT3xx0O7Zw3eEqLKXpxbtx6F0HnsFgBh+Wws60=;
 b=dkpuM+jqfuRWAQJDpwUnzu4WHZAbWw2CvFT7+99Y/E71eOkKAovqFz2DfOB6OtezCi
 mhbTobLq03Q2imsE+9So7dypQqB9oyFBHAlL+5H485DkWRfPBr8Y7UBLj/1v0VdDWKxe
 +FdSs3qa1XGDectgqmWomqI3DgzNEq3bQPO6HZKEnT6Sbqv46sT9f+NeCjVFWCkX6AdK
 4zHwUwSBwU44pE7Wd6kahHO2BfGXfrax4FczbT5FJiuTVMBkmHOamfBkiRbnxaNOJB6t
 b/P3SrOrZIGBBD2M0zV5uVp2M9e8qtLxk6GM176HCC3LAOHkqL5UvOg6LuZOnjEOoaeo
 WZGQ==
X-Gm-Message-State: APjAAAXPrvf5yROIT0RHWP+EQ/bi+WpmQ8Z3CsJ5/QL9B3X9gnlbOZTk
 shcMIjjE75Z+dgEbqWG73SIl9g==
X-Google-Smtp-Source: APXvYqy06pNWRUPq6DrNgZnE5+p+TnTL2fBYI+0TfPcqSXM5TfqsdN3IWuQyyVKhaxJhoe+spIIhgA==
X-Received: by 2002:a17:902:a7:: with SMTP id
 a36mr59457611pla.111.1556508371342; 
 Sun, 28 Apr 2019 20:26:11 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id a10sm41364938pfc.21.2019.04.28.20.26.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:26:10 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 2/2] pinctrl: mediatek: mt8183: Add mtk_eint_pm_ops
Date: Mon, 29 Apr 2019 11:25:51 +0800
Message-Id: <20190429032551.65975-3-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190429032551.65975-1-drinkcat@chromium.org>
References: <20190429032551.65975-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202612_164089_80E78520 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reviewed-by: Chuanjia Liu <Chuanjia.Liu@mediatek.com>
---
 drivers/pinctrl/mediatek/pinctrl-mt8183.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mt8183.c b/drivers/pinctrl/mediatek/pinctrl-mt8183.c
index 2c7409ed16fae9c..ce93e55b79a435a 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mt8183.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mt8183.c
@@ -583,6 +583,7 @@ static struct platform_driver mt8183_pinctrl_driver = {
 	.driver = {
 		.name = "mt8183-pinctrl",
 		.of_match_table = mt8183_pinctrl_of_match,
+		.pm = &mtk_eint_pm_ops,
 	},
 	.probe = mt8183_pinctrl_probe,
 };
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
