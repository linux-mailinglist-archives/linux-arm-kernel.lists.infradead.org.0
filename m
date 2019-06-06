Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DAF370B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IrjBK2aP54H9fuRcGyxNw9yub7o/FjmfioAqL6+Ocxo=; b=dw1H0dF3YEATe0
	v/TE62pxht7L+vB9PQ2RAlfspGCre3Skf0Ok4oNWzoU9hZKoRLKjYXDy1vnUDX4mkP9MVH803r3pw
	/BeinOQbDpm3zmyLPd3z6HSMtTRgW/YNhbirwkQo4bdvLzdLxQTWK45C0q9FziA3DTayJ7MKtDKjI
	SGKQLPo/jfGUPCn2Vfd+SyJBTC8S2F9kbS4g/Abfyz5u4UCb7b/ZGFa02pf15CP3TJvzK52SS/NEN
	OEL6STTfdbXUxZaEmOU2Hxk3eCsbqpp8Boaai6ZyXnNKg36F1T6+hp3prC9GI1k3SgNdNg4Ux7Hkk
	5boy6T1cOEBer4wD0JVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYp0Z-0007K6-W8; Thu, 06 Jun 2019 09:48:32 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYozm-0006UP-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:48:11 +0000
Received: by mail-lf1-x143.google.com with SMTP id y13so1051419lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NsVvPiBY4yVAfgVoOW5rwqcEUi8304y5zEW51I3/QB0=;
 b=Wdoh2MpFPPwEGDiEjo9yNWPvFiF5rNlEHiZaJf0n9Vg6FS4VUU2cc68GaQl4o2gqwy
 4dbJ3g7WEmat/ufCpfazLVbgV6ySmza2gxaYFAenGQnggpEoKYT0NNP+fPKzDviOplly
 V4mMdAPS/XxX37EVSGdaX+UcmhdKT4IrRkVpNMAbgC2gt8VMNs9PsvD/GD6B5RuHKt5c
 t/UzHJLvzB8BJNgCgTBSJ9KsV9zFkV8hfU8Yx2nTgZ+yWZl6uY6MS8YPGXRBG1hDMj9x
 L4RXjgeGsIVpXYaTYCaIyZyu1UZI8FSwWNUppmzZdyqw0fFmoG4R/pcy23fAlNtrw2K/
 yzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NsVvPiBY4yVAfgVoOW5rwqcEUi8304y5zEW51I3/QB0=;
 b=MS57Jrdvel2G5etVBSZf74VD/gn79dn12XuukMvITiqxgCQ7tKPot63/aq6AFtJwof
 9ZxbDjAt4f+cdFO39W4RsaS9QakXqNFST08K/8fe6l5t4JPJVHWsGozJARpJhxLnAf/O
 WO/HFaMrKnrm+3FlX2NvmbwjDLEjYAgnQO0+4BZ3CekBraKZ/lZ3RzFbXSa+KF3ovf/M
 5fdP3rg2YNMfLTC3Mx5LVzrhlq/j1R/3JB5Gpj1g0Tx3e8xpVfKBfvpq4vOeAGGV3e1W
 rLT1CwnAPIt3ijSFo0AFqa01tQflpXiEyMCoRrWOCTu6x01L91FbYVQQKIP4k03h2m83
 0sxw==
X-Gm-Message-State: APjAAAXpLfx2SJ66lc94gRAZaB46U1WC/+Rhf4zBBh0wCJsovTPyNjkW
 IstgL/xx3i7/FKEBdOYXSr2QDA==
X-Google-Smtp-Source: APXvYqwC1lw0i+elxeAauVlnzExuJPoAeIohV6gRyR/H/KWYyVWxRDSoL1E/QIVDRnsweZyms/BPzA==
X-Received: by 2002:ac2:4ac5:: with SMTP id m5mr22449224lfp.95.1559814460755; 
 Thu, 06 Jun 2019 02:47:40 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id d23sm258143ljj.38.2019.06.06.02.47.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 02:47:40 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Subject: [PATCH 8/8] drivers: regulator: 88pm800: fix warning same module names
Date: Thu,  6 Jun 2019 11:47:36 +0200
Message-Id: <20190606094736.23970-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024743_065417_4E064003 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org, airlied@linux.ie,
 stefan@agner.ch, a.hajda@samsung.com, lee.jones@linaro.org, marex@denx.de,
 f.fainelli@gmail.com, Anders Roxell <anders.roxell@linaro.org>,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 dri-devel@lists.freedesktop.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, shawnguo@kernel.org,
 davem@davemloft.net, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with CONFIG_MFD_88PM800 and CONFIG_REGULATOR_88PM800
enabled as loadable modules, we see the following warning:

warning: same module names found:
  drivers/regulator/88pm800.ko
  drivers/mfd/88pm800.ko

Rework to rename the name.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/regulator/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 76e78fa449a2..6906938071f5 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -11,7 +11,8 @@ obj-$(CONFIG_REGULATOR_VIRTUAL_CONSUMER) += virtual.o
 obj-$(CONFIG_REGULATOR_USERSPACE_CONSUMER) += userspace-consumer.o
 
 obj-$(CONFIG_REGULATOR_88PG86X) += 88pg86x.o
-obj-$(CONFIG_REGULATOR_88PM800) += 88pm800.o
+obj-$(CONFIG_REGULATOR_88PM800) += 88pm800-regulator.o
+88pm800-regulator-objs		:= 88pm800.o
 obj-$(CONFIG_REGULATOR_88PM8607) += 88pm8607.o
 obj-$(CONFIG_REGULATOR_CPCAP) += cpcap-regulator.o
 obj-$(CONFIG_REGULATOR_AAT2870) += aat2870-regulator.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
