Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CB11E6A83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MIEHxUV5d1mjoxbL97kzW21QE5n8tbo7a+rZ/tmmX3Y=; b=Z3H7f2xAKaetBivi3dsWkfgySw
	JYewdkgEBg/bAxJiNWUNWTPX2o5/bNcfON8ccAWdtEeAYynCfsbujA0JUBYgEdPcCqAueanjG84Z1
	x7DMCQ5WdDEb0UQs/pzyfJ/xX0RKrKqIggqhsp57HZ1yMCMSPJHC2lqpVnXXZwuefBpHDH/+uwlML
	sDjoYBxwPhDmGO92I9REWUeQWuzMtr1AvgTC/4IQiRaJcexhvqvcGLSogdBledMYeZeVBGherrWXO
	IUo+l8zeoAalvANeWgvFGZwRLkSdfcFwhW+Rdey4oWXf/0Tcvvc9Wi0ri0XVsloYB8Hw8uXrUPq8n
	eJFr4Jxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO7h-0008BR-KJ; Thu, 28 May 2020 19:23:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO5k-000748-P6; Thu, 28 May 2020 19:21:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id y198so14060946pfb.4;
 Thu, 28 May 2020 12:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mn9ohrlxKhWlCLsT8/tQGjuXefbQkhXfEEa1XEFrFM8=;
 b=Ieu+GmkCMg7jmgthscjTaf2F4XyLjRN4/eSDhtKpTgfGoq6sIfW5LJ+7Qjx9HawsNl
 AZXc6PkYulXnWMzIeGGZfVpBGX9rIzvwM22KBXedqeisJA2MKAHaubh+KExlsKHTZbe3
 7AIUE2FJenGo0Q+bRv8n3CSVMS/Rg2OkvgtpzbOxEUlYZKkPtupuaEg7iK+caCUlRVNM
 aBcOCzIh569EY1uIeKrsRm9sUevXDxgzu2xP0qS+yr4PIvTDoiU/o0ewAaDEqkOpmq0t
 Z7w0EfApVjF0/9jVitcg7sgqk2gMh9+DDqcVtrEsR2CB2ATBmvBmCMD9EfUduCC19E/y
 UGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mn9ohrlxKhWlCLsT8/tQGjuXefbQkhXfEEa1XEFrFM8=;
 b=GGJLiplOeYu5jKUXiEVzESD+x/Kd6Q+i+K1oXb3qYoCUHELeiJ3wRVv7rpZDvCOJCD
 Nk4519dXwgW1NH33iY1TNK9NdDW3A1DhmR6eOsOT3mCuO2f+Apuue/r74s0259a2GgD5
 kFqASiuY9yxLVmSatQTnmxKYfrUrsHgQFITei8Zeij+pRkSmQhYhZ9UTfCGCpyGvQnUp
 KOttDUI1YbtIiBF0GzQ3Lua2YuSs6HFJirwrh6vvZuFgduFvEoyze3uWKxenuP44Leey
 WbzRYquJ/KWUvySTmkkE6DckbYpAfl49AUxBvehlkB+YRjH7RNcyHjR+zsnXJIaq1sd1
 lORQ==
X-Gm-Message-State: AOAM530E45ZxNiWJ4gZMR8DoYErLAU4aS2yICbcm1nnG90YK+MT3iI4F
 NXr7CguFLOHXIXnzac7KKBA=
X-Google-Smtp-Source: ABdhPJwRb+nr4rhFloIJTFA7lJNjNqO/d11rldmRfSoxQeHoYbRkWhxEAG1rw3MH8Ot6loYluXa8fA==
X-Received: by 2002:a62:1a53:: with SMTP id a80mr4572305pfa.50.1590693684050; 
 Thu, 28 May 2020 12:21:24 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h11sm5460561pjk.20.2020.05.28.12.21.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:21:23 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] pinctrl: bcm2835: Match BCM7211 compatible string
Date: Thu, 28 May 2020 12:21:11 -0700
Message-Id: <20200528192112.26123-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528192112.26123-1-f.fainelli@gmail.com>
References: <20200528192112.26123-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122130_802807_5ACDEE2B 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM7211 SoC uses the same pinconf_ops as the ones defined for the
BCM2711 SoC, match the compatible string and use the correct set of
options.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 06bd2b70af3c..e8ad1824c6b3 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -1137,6 +1137,10 @@ static const struct of_device_id bcm2835_pinctrl_match[] = {
 		.compatible = "brcm,bcm2711-gpio",
 		.data = &bcm2711_plat_data,
 	},
+	{
+		.compatible = "brcm,bcm7211-gpio",
+		.data = &bcm2711_pinconf_ops,
+	},
 	{}
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
