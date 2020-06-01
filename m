Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE6F1E9FA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=25Fcntp9NwCus6JqmA46Q3AjR7cgNrsDsNpMiJVj9sY=; b=jK1yt6hUToSdgS
	lCZSGSUUB9611iMAmnNtiY9HCi1Kfs1v0p9FjLpoFucfDEvo935edO0MlhYO83Eq8AhDz+SmTnwVl
	TMN7bgfSDn3UWCvZaMtxD53ODs/KxaSdck9YTjjQp/HxtCiWtT96lgj7byzoh404zj6oGgvN7CTW6
	D0FMs6jAzXKwpDdX/i98M80/1KTPeCDMmUz2O2BUcC0A1kaaek4iOwzBDJoT4fumhhsN6h8jorSt+
	FMw8i6rV+Sxz2NjS9eTdTZDZkyPkKBWnaRr8N7mi1TzDL6OP77w9mpbUh1lM3fOI53Q+IFMG+kwm2
	SEBRUMzFWonae3nkAJHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffKl-0004mV-4t; Mon, 01 Jun 2020 07:58:11 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffKe-0004m8-KZ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 07:58:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id r9so9769754wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 00:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aHaMG/LcTW8EXYS3SNQHIu43prrk95wtOZmYnSKTFQ4=;
 b=atYes5mIyjlRbVHdvzGM1I/CDl4VxCvjVUBYUFQuy7QLyh/oT3F6m5NtvV+1NNSaYp
 LTBJ9DNCWpdCxP+ec2l2xULkY0WX3W3y8x20ElrWQDQkaHmxg1q46IN5Hs2dX9gwVFTR
 RRfMP6a59XIWzoSQ+JPE1SYZlIMjq65HYW1poQ1JmRXb0s1XDNfHVLQz8i7KHi/LHpWh
 W/KOy81KX57U+5mz0sPCiS3/to9Vl9BW745qVAcBCfBkxoHqwyoralmny312BbgnWtHj
 131G6EaTausCRk2S1nEnxFJq75pphj340oiktMoIO+09ZO8gqsxY4GT92LGZ37NzxSur
 24UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aHaMG/LcTW8EXYS3SNQHIu43prrk95wtOZmYnSKTFQ4=;
 b=M8RwVTg+cb/oBLle1rCAwRvV2GQWKBPND+dLCF9WMRBhd4YpfsTql3JdH1ktedFcER
 2Qeb7Rk846Zw6/ncD5BIb5yfq+8WNEZJ/+MHPnmYIa6D/wPLmQwZCQ5PBCsUg/bo9Ibn
 FGfHgfSlZ79GwoVTCuI8GgEdHj7iW+mhRGtiIu4DL7neEWe3KYqeNMPBTjM/UTJRiMMI
 8Xr3eV/39ex8Hcn3joeIM9VaI6gpxqnb23yC8V8YjsxQB1vyfFQFYqiVnW9EmCesYMak
 sh/XVvyRUxyqkuh7XYUgQ59rp5RSJ1HCKOSbZHg+cBTn3MU7P/TjdB5+Rl+Nx/5n4G3M
 1jww==
X-Gm-Message-State: AOAM533OXKWLkYXCStJbczqzxEDLfoIRuyneCwBpPu/zDqpsyRZgMqkr
 adD08zV6MCImSagSuQjS76tx/qsQZ9o=
X-Google-Smtp-Source: ABdhPJwBL+9VeNnuy+h5Ha8dHLrquA9kkCjNVD2kimhAgYhU89M29CFzDiuEBvb92pUZeYO4ZwpYVA==
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr20783159wmh.93.1590998281769; 
 Mon, 01 Jun 2020 00:58:01 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id c16sm14141486wrx.4.2020.06.01.00.58.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 00:58:01 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: gene_chen@richtek.com
Subject: [PATCH 1/1] mfd: mt6360: Remove duplicate REGMAP_IRQ_REG_LINE() entry
Date: Mon,  1 Jun 2020 08:57:54 +0100
Message-Id: <20200601075754.49697-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_005804_708815_3D4662D9 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes the following build warning:

  >> drivers/mfd/mt6360-core.c:148:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
  REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  include/linux/regmap.h:1191:10: note: expanded from macro 'REGMAP_IRQ_REG_LINE'
  [_id] = {                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  drivers/mfd/mt6360-core.c:124:2: note: previous initialization is here
  REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  include/linux/regmap.h:1191:10: note: expanded from macro 'REGMAP_IRQ_REG_LINE'
  [_id] = {                                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  1 warning generated.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/mt6360-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mfd/mt6360-core.c b/drivers/mfd/mt6360-core.c
index 9bb63e0b69e6a..db8cdf5272c1f 100644
--- a/drivers/mfd/mt6360-core.c
+++ b/drivers/mfd/mt6360-core.c
@@ -145,7 +145,6 @@ static const struct regmap_irq mt6360_pmu_irqs[] =  {
 	REGMAP_IRQ_REG_LINE(MT6360_CHG_TERMI, 8),
 	REGMAP_IRQ_REG_LINE(MT6360_CHG_IEOCI, 8),
 	REGMAP_IRQ_REG_LINE(MT6360_PUMPX_DONEI, 8),
-	REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
 	REGMAP_IRQ_REG_LINE(MT6360_BAT_OVP_ADC_EVT, 8),
 	REGMAP_IRQ_REG_LINE(MT6360_TYPEC_OTP_EVT, 8),
 	REGMAP_IRQ_REG_LINE(MT6360_ADC_WAKEUP_EVT, 8),
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
