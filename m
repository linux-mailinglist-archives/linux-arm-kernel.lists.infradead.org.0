Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCCB1B138
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=w/Kf1NfoRntvvEDzmsWw94pCEc/Tp6F0G10DEYyarKc=; b=MQB
	Be+wvafeF9s5zzIpATuDbbEPuEcGJn2wzXfu0W3ig7BSGvpeqXtS2Jed/MQJ6dZ8i/vHxIN/r7I8J
	edVAcGXoz6foVouXVSRlKQTbwaZZnqxU3TNcRsajlGEzhG25jYPcmCKj96h0/OzEUaarD3S2dg2rt
	QijPjQkD9T6e3hWU8syOLlk21pYh017gpPVXrlCy/xFV/wzHbYnFrQIc/eiltc9XxpI9dgnHFYoBv
	Ym1JXppkeikrYdWn4Q6ZJTqiM2YKklY+vqnvCk4j7RUjZUD3ncgOLKDB1964UXqyr++tR3Nfpjkm5
	dwoj3odoSIpsPze5LtSZlSCckj/1frg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5U3-0003q6-Kq; Mon, 13 May 2019 07:34:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5Tu-0003hh-Gn
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:34:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id h11so12482453wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=haQ6ph677t8ZOscojVyK7EbyIxkmtAMauBV824XBBeM=;
 b=LnsKP2xUW4/hQoqpIysOFuXia9Hapy8nU1BFolQOB8c0yH8K6GH3E9Hw8avty3dusE
 8wi/2YHum+QcZjbajUO8I9CZlBT2k45swDJsrO09WVVCmbZ7ZPcC7Vzm83dE0mbBA6/8
 hejV413jPBLpvIIyts3r7klerRF6MojuEY5BB5ndNPRWOHn/nLWaqMFDcvFpUjM3zcdX
 HsdFfVmYylmD+gSxJ/H/ZpVVZQlff5Ir2Yzt4FG/3JJNZ7GzlaqM/JWe01rwDTUeuo/S
 OPPw5y+eEeiBG+prVSapCyhbw6FJuZ94hDeRiyD3hmPuGIeXbJvcZ/sbVmEbM1VCSuJi
 i/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=haQ6ph677t8ZOscojVyK7EbyIxkmtAMauBV824XBBeM=;
 b=hfg5aBUrmRlI+du6+GTs/nNNrFt5DKPxf1aHhAP8qS3mdopaopwtWL7Wd+qwg5ObfE
 KwqyaLnjg9LrtCVvenIArhqLP9DbAPv/Eq6XaPe+nDY+43Ea9c8HmzrXP+tx1+k+fDVU
 GfGiwYfLE8+DGN7wDJbbnHDSa27SyZeBlXSS9BXzfBTxPGe78zBVi5D9Zi7kuWnvDSav
 gMnbLkdX2kZLa6g9XvMx0AjPW/xx2dJb5F+N+cIjRW9NRgW97CzCgKIYjpkuunxmETU5
 QHwPD6AxOT0FkJgbPDaSbmoGsDFqjXTk/tSn47dZuPaY0Ey86f6gRGaoCbOYfhBqquAK
 u+3Q==
X-Gm-Message-State: APjAAAXQJyy85Xm6nPgd4LYPNmB5jrt2abx4kqYEIyGe2pMSvvps+zaY
 u4qXoff91p3o3Iia8+szQn/0og==
X-Google-Smtp-Source: APXvYqyl0TFa/CfFW9dD95CEE4KE/zhIspeeDr2JlDf5B23WXtyzSecGRLezlu0d6oFZsauAreajcw==
X-Received: by 2002:a05:600c:24d2:: with SMTP id
 18mr15328423wmu.117.1557732880915; 
 Mon, 13 May 2019 00:34:40 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id h14sm1009883wrt.11.2019.05.13.00.34.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 00:34:40 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: linus.walleij@linaro.org
Subject: [PATCH 1/2] pinctrl: stmfx: Fix 'warn: unsigned <VAR> is never less
 than zero'
Date: Mon, 13 May 2019 08:34:28 +0100
Message-Id: <20190513073429.12023-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_003442_575142_DB709464 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
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
Cc: amelie.delaunay@st.com, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

smatch warnings:
drivers/pinctrl/pinctrl-stmfx.c:225 stmfx_pinconf_get() warn: unsigned 'dir' is never less than zero.
drivers/pinctrl/pinctrl-stmfx.c:228 stmfx_pinconf_get() warn: unsigned 'type' is never less than zero.
drivers/pinctrl/pinctrl-stmfx.c:231 stmfx_pinconf_get() warn: unsigned 'pupd' is never less than zero.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/pinctrl/pinctrl-stmfx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index bcd81269445e..074c8fa3e75c 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -213,9 +213,8 @@ static int stmfx_pinconf_get(struct pinctrl_dev *pctldev,
 	struct stmfx_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 	u32 param = pinconf_to_config_param(*config);
 	struct pinctrl_gpio_range *range;
-	u32 dir, type, pupd;
 	u32 arg = 0;
-	int ret;
+	int ret, dir, type, pupd;
 
 	range = pinctrl_find_gpio_range_from_pin_nolock(pctldev, pin);
 	if (!range)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
