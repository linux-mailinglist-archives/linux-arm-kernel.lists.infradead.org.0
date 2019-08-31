Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07666A4199
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 04:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uf2pfPkGzt3segHhq+E7rau2ORaVExMHoNUWCHuMBIE=; b=K++
	gf57AQJaJVetMuHw+514UuNMT2HRuyf5XMiRmzNk/gcK9m1bxrdEqLILjpZxJpaSto929oCX0gkdl
	QzWJ8DLw16wM0f7sLa75ApCfMc44HmZkTC37cMJZ2K+9dsjbA9aUBAOIvCbOpr6Q/Tll9CsnJFK4E
	AS6Ozc/6T3OlcgWWjschzlKOT7FuQkMOG2tTYSl1wjXJO8KfTncZ+Y60J9XMSs7EkzL4xw92rge10
	tvCkTx0qNp78j5w1dLu6ueX0+AJlK5S3aNpoKIufKcdXziDsI6JF1TI5sNm2ulu1IrBYECMt1OrHC
	O7PwUtviUGPmJJ7lb6R9qaiQQVc/JHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3sgm-0003gS-MD; Sat, 31 Aug 2019 02:00:29 +0000
Received: from mx5.ucr.edu ([138.23.62.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3sgd-0003g6-2I
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 02:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1567216819; x=1598752819;
 h=from:to:cc:subject:date:message-id;
 bh=9g/JKp5foaxieSnROfbCL0H+QjD7in4dyY/WHzgkS8M=;
 b=HX+7i0fGYtl7dy7jDjg10Adqea0g0y+7T/oMS3FukxN4uJ94KEB7kYxB
 hbHG56cPzElSK9C7aBsAmQy/MIgwc04kuxD9SqiIZ1Bjyb5tj3SK1VkuF
 4Lwilqxgdgcqpvryt4TCZds5dDmKIFfxFm6lFbutiSAbFI3KWCBjHT/XA
 drzFd32zkVpQFMAvjvfFVCV72vje3RGB7UKLUY+dUnAxFchJeRuFxc043
 zIbpoBkGyQxRdsNZlyaxLuW/IYSdEFqeHfySO2MLbTx+05l0lO+o9HsGL
 d2lmQM/DNWD3ECN+Ab1TJGWDxc4GTdACgkOPq3ZiUDNV4pnXuqfgZHtIr g==;
IronPort-SDR: A4P2BsKPAsT4Q3YAZ5oZD+7sY2CIzeiY6VJeUZE0OSDbTnKfQYbYy5EooklHXG4mKVFAu6blPZ
 F0WQ+gsEHPVKaDte7liZUEJb+sCyUBrF1Sqdn8rAlPFS1M+yvizNqW8Ynxkul8cDGV6djrDiOz
 bYmc9AjkK9DvLNQE0JpMI3K+GmEo71ZMmmIbbHJWKPaszqMfA+thb6seZI91mTlvSUb0GZlEkU
 KXD2RPBpGvoAWoyRaZ8pkZMciorIQ5YQArnxndbN+ICZXy9wKF4MIxcUGJDqK2U6v4uvT/22TW
 8b8=
IronPort-PHdr: =?us-ascii?q?9a23=3A+P4eUR3pQ7h4wnYwsmDT+DRfVm0co7zxezQtwd?=
 =?us-ascii?q?8ZseIXKvad9pjvdHbS+e9qxAeQG9mCsbQd1bed7vuocFdDyK7JiGoFfp1IWk?=
 =?us-ascii?q?1NouQttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBA?=
 =?us-ascii?q?j0OxZrKeTpAI7SiNm82/yv95HJbAhEmSSxbalvIBi3rQjduckbjIV/Iast1x?=
 =?us-ascii?q?XFpWdFdf5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPG?=
 =?us-ascii?q?Az/83rqALMTRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VS?=
 =?us-ascii?q?i+46ptVRTlkzkMOSIn/27Li8xwlKNbrwynpxxj2I7ffYWZOONjcq/BYd8WQG?=
 =?us-ascii?q?xMXsNQVyxaGYO8bo0PD+UcNuhGtof2ulUOrRqgCgmoGezk1ztEi3Hq0aE/1e?=
 =?us-ascii?q?kqDAPI0xE6H98WsHrassj7OqkRX+6y16TE0SnPYulK1Trn9ITEbhYsquyMU7?=
 =?us-ascii?q?JqdsrRzFEiGAHEjlSRqYzlIjSV3fkKvmmb7utgVfigi287pw1trDWi3doshZ?=
 =?us-ascii?q?XTho4P1F/L6Dh5zZ8zKNalS0B7ecapHIVMuyyeLYd7QcMvT3t2tCon1rEKo4?=
 =?us-ascii?q?O3cSwJxZg/2hLSaviKf5KW7h/tVOudOyl0iXN/dL+9iBu/91WrxPfmWcmuyl?=
 =?us-ascii?q?lKqzJIktzLtn8QyRPe8tOHSv5h/ke53jaPyhzT5vlEIU8qkarbLIYswrsqmZ?=
 =?us-ascii?q?oStUTPBzf2mEvrgKOPeEUo5+yl5uf9brXpoZ+cMIB0igXgPag0hsO/BuE4Ph?=
 =?us-ascii?q?APX2id5+u8yKXu8VPlTLhOlPE7kanUvIrEKcgGuqK1GRJZ34Ig5hqnCjepyt?=
 =?us-ascii?q?UYnX0JLFJffxKHipDkOlHPIfD4F/i/gkignCtlyv3dI73uHo/NImLdn7j8YL?=
 =?us-ascii?q?Zx81RcxxYrzdBD+5JUDakMIPbyWk/3qdzZAQY1PBauw+biEdl91Z0RWXiJAq?=
 =?us-ascii?q?CHNKPfqluI5uM0I+mQf48Zojf9K/4r5/70l3A2hEEScrO00pcNb3C4BPtmcA?=
 =?us-ascii?q?23e33p1+YAA2cXuUJqXf7qgVzaCWV7en2oGa8w+2doW8qdEY7fS9X10/S61y?=
 =?us-ascii?q?ChE8gTOThL?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GHAQAl1GldgMbSVdFmHgEGBwaBVAg?=
 =?us-ascii?q?LAYNXTBCNHYYPUQEBBosgGHGFeoMJhSSBewEIAQEBDAEBLQIBAYQ/gmMjNQg?=
 =?us-ascii?q?OAgMIAQEFAQEBAQEGBAEBAhABAQkNCQgnhUOCOimCYAsWFVJWPwEFATUiOYJ?=
 =?us-ascii?q?HAYF2FAWhLYEDPIwjM4hqAQgMgUkJAQiBIocfhFmBEIEHg25zhA2DVoJEBIE?=
 =?us-ascii?q?uAQEBjUCHFJYJAQYCgg0UgXOSWCeCMoF/iRo5il0BLaYJAgoHBg8hgTECgg1?=
 =?us-ascii?q?NJYFsCoFEgnqOLR8zgQiLXIJUAQ?=
X-IPAS-Result: =?us-ascii?q?A2GHAQAl1GldgMbSVdFmHgEGBwaBVAgLAYNXTBCNHYYPU?=
 =?us-ascii?q?QEBBosgGHGFeoMJhSSBewEIAQEBDAEBLQIBAYQ/gmMjNQgOAgMIAQEFAQEBA?=
 =?us-ascii?q?QEGBAEBAhABAQkNCQgnhUOCOimCYAsWFVJWPwEFATUiOYJHAYF2FAWhLYEDP?=
 =?us-ascii?q?IwjM4hqAQgMgUkJAQiBIocfhFmBEIEHg25zhA2DVoJEBIEuAQEBjUCHFJYJA?=
 =?us-ascii?q?QYCgg0UgXOSWCeCMoF/iRo5il0BLaYJAgoHBg8hgTECgg1NJYFsCoFEgnqOL?=
 =?us-ascii?q?R8zgQiLXIJUAQ?=
X-IronPort-AV: E=Sophos;i="5.64,449,1559545200"; d="scan'208";a="73961682"
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by smtpmx5.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 19:00:16 -0700
Received: by mail-pf1-f198.google.com with SMTP id b21so6749768pfb.17
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 19:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DDyvegdKp6MmZvQoeqYKTe4rMUcvHNSrG5Su6nBLcf4=;
 b=QuXEh3/ddmodnYd/y8BKEdHE1YclBY5o/RH3wSzccXs2k3W0fYsqM6cNaKFL1BfBWh
 GM0ZHJMjwD9GBcSYutncOBNMmzukZCMkiRU0mUYX+xoAp1yz2s8HoUZ230t7nLX8L5Xc
 oas3LDCf1rSNAbXph86Qlk6c7QkuSwd4zVv6aVWoI+sn5p9HjVj5qIK9+CAm4CKV38Vi
 vje+HyVCleP5V8FS6KEKI7ScK+zqaV1qswjOS6fozc9mj4VrRwTTsGxyKHtXtQT4DXCL
 HE1Pj73Osz+q7+ak9ri1ag0WS2pMpu25+nNi7T/zhoz5pW3mzGbKwzuMT98v/1JjchkK
 7lfA==
X-Gm-Message-State: APjAAAUJIt6SrgB1I8Z1dOjIkA4PjAGje66ftSVcOEhrCPbZHdzcYObt
 p87PXnRcSN2jr42QofY3PtaOR1LMDzpSpbl4S90YPT0GKTBho8GFsPvahNJtIXrHChgPtfNhjRG
 lwQzr0yAhAj74CJjlBMttx2TaHLYPk6Odhee5
X-Received: by 2002:aa7:9495:: with SMTP id z21mr21413555pfk.220.1567216815848; 
 Fri, 30 Aug 2019 19:00:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2BLuGlLGxCSNkEHMBr+Frsk42bOM599GwK6aw54HDOsHA5LvdnFEX6NldgYdsc89eYIHNdQ==
X-Received: by 2002:aa7:9495:: with SMTP id z21mr21413519pfk.220.1567216815530; 
 Fri, 30 Aug 2019 19:00:15 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id 127sm7549594pfy.56.2019.08.30.19.00.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 19:00:14 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] net: stmmac: dwmac-sun8i: Variable "val" in function
 sun8i_dwmac_set_syscon() could be uninitialized
Date: Fri, 30 Aug 2019 19:00:48 -0700
Message-Id: <20190831020049.6516-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_190019_142919_7DD5FEF6 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.62.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: csong@cs.ucr.edu, Alexandre Torgue <alexandre.torgue@st.com>,
 netdev@vger.kernel.org, zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Yizhuo <yzhai003@ucr.edu>, Chen-Yu Tsai <wens@csie.org>,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In function sun8i_dwmac_set_syscon(), local variable "val" could
be uninitialized if function regmap_field_read() returns -EINVAL.
However, it will be used directly in the if statement, which
is potentially unsafe.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 4083019c547a..f97a4096f8fc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -873,7 +873,12 @@ static int sun8i_dwmac_set_syscon(struct stmmac_priv *priv)
 	int ret;
 	u32 reg, val;
 
-	regmap_field_read(gmac->regmap_field, &val);
+	ret = regmap_field_read(gmac->regmap_field, &val);
+	if (ret) {
+		dev_err(priv->device, "Fail to read from regmap field.\n");
+		return ret;
+	}
+
 	reg = gmac->variant->default_syscon_value;
 	if (reg != val)
 		dev_warn(priv->device,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
