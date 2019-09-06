Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E144AB270
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1u9MndtNjfjZa6vB/WelztWGEmtsV8HuOxogSkMJiTc=; b=NbQapfqYNGnlQ/
	cdieh2yj8RCMhChVi2S+nCyxV/jV9yVjxAx1DYUy8m39EjvFjJb2hDgA5H2DqO18aClwmIqsXANur
	CN1KraZy/1rWU+WVaSAxE5CNvWDet2bJq4r0QDjJQX+YPu7KOwERoZYzyUq6kLXWwamoRDWPKIpYt
	7CPDP1BiQ+lkMut3Mq8+ooiJdhs7IOXk7PuHIEccimc+lUvwQ9PE2wLGcjsnwKGUCX4lRmU73cxxo
	TugL4aLkjA5ItqAsw1lQjcURUBzdGuofcJV6BoxQgV5pzsbK/E23Bc5L4DFXT0RltFZv/5KtE/8nm
	exV7dOu1MRW9LitPxdTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67hf-0005ja-Pj; Fri, 06 Sep 2019 06:26:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67hY-0005if-6w
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:26:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id y10so2615660pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 23:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VywQQgwoddW91Jq4aMSrybOZ072q9St1Z4i5rxfAKss=;
 b=GGNMeOiyYHFVFbotkWPcgoumWVou3FxdbVs9/ZllGyRMZj3CYE50mPl9eaGFK1SSJ1
 ehwBhp1UScc4KWEVlRPTVx5dcCy+WX7EbS7TTARFNII+ncgxuk21EEMFuOwhgWtIa+hy
 /f6e7unxpJT7Gy1vtgrYz8B8OK/i7/jJyGmy06Zd2HRGt0nVcQhxLxpf/i6vGD+oGigX
 CpnNnsbajWYqKej4a5ukjmDX2t/YD8+maxsED7v6pUHoO6keEhTC2ZjlnTfxTkfPQXbD
 vTYcDqCdcICnYEKy+XEg3z7BLeBcmQK0pGKWBNT+XrnEdIR8+Zot+2wioR+D/zN7vM4n
 vGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VywQQgwoddW91Jq4aMSrybOZ072q9St1Z4i5rxfAKss=;
 b=XFX11iLJM1lgiYQJlD3GOsnL3SCOc2ANFp1nLh9ly2LYLFt+nGObQ+pJTFku4cNGvm
 0zrL4OgzDU+arwXRvwfj+YlN4chFRiUPYGFqhrXBlOpFxacpf8kGTpKgo2OJBgigLe5W
 ew6E7rTd9KS8rkcbpNLojw1VrXYa0sT99G3ZJGjHW/1dSrxlu6Y5c3fzJbqicw/vQ4Z1
 UwOmhnX+uGzjHqFQDYQURja4TUZSWnTSjU0HKVbGB81J15tDMYRBfadNS5kYiSmaL60g
 H3WLOJ0j+Lnc6+9V9RCI1yS2XlSZplcMHkYmWwjIX0l+VHyWdlqNVOiTbl3NtFOU1+Dj
 ItgQ==
X-Gm-Message-State: APjAAAUeeYfijyVFpWFQ56nQ7dShy2/piGlDoxQ+nQKrtI98EBWv3maI
 Cw+NyIOufqNiUZWbkM+2yjs=
X-Google-Smtp-Source: APXvYqyB4ARXWSH67d+dolbjyhdZvVBxPlfvR8PsPQ1/637E5ASl4JnhB8dHZykbbS8hKbyHlvXzkg==
X-Received: by 2002:a17:902:aa02:: with SMTP id
 be2mr7780215plb.172.1567751191484; 
 Thu, 05 Sep 2019 23:26:31 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id c64sm1631254pfc.19.2019.09.05.23.26.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 23:26:30 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v3 2/5] gpio/aspeed: Fix incorrect number of banks
Date: Fri,  6 Sep 2019 16:26:22 +1000
Message-Id: <20190906062623.13354-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_232632_251258_BB7FFC2A 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current calculation for the number of GPIO banks is only correct if
the number of GPIOs is a multiple of 32 (if there were 31 GPIOs we would
currently say there are 0 banks, which is incorrect).

Fixes: 361b79119a4b7 ('gpio: Add Aspeed driver')

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/gpio/gpio-aspeed.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index 9defe25d4721..b83e23aecd18 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -1165,7 +1165,7 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
 	gpio->chip.base = -1;
 
 	/* Allocate a cache of the output registers */
-	banks = gpio->config->nr_gpios >> 5;
+	banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
 	gpio->dcache = devm_kcalloc(&pdev->dev,
 				    banks, sizeof(u32), GFP_KERNEL);
 	if (!gpio->dcache)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
