Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB1637096
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=luLz2zNvsBGR8QkmoRTNxtgvNnKAnTWGz/fNpT95M7o=; b=pBYmuZtmztIblq
	Hq0eUvin7LvVpgZD2BDWoCl3qMjlh7qUtDingVmCXcJvgJKxoklZui5qGq3jfF6B3N/QRa3veiZGS
	FExH8a/ufhqf+V9dftqAmS0tB6+gHfGJbxfxm9bXOn3RJlNOlZNFQ11PcttaVS31zWZR525UGNYP1
	UMOLC7TnkwG3skaAWRzjYL9mdgNVkxIZ14lyQVtS9D5QYOz8yqPoi9oTMquiWKcAKy0z7b5OpyoQu
	kdrssLCToC7HmXaamDjCk4mhsPEv7jqVl9iPvLrMubIXjm+Tp1M+5LdNYBVegXVQUSV8duOe0LAI/
	NUgENEzCxpuJEKgYtLZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYozX-0005wn-WD; Thu, 06 Jun 2019 09:47:28 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYozJ-0005ns-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:47:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id v29so1385692ljv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l/U6XWsLOhFjdMqLKkh6fLtzFOqDQWJVhwH8yel62eg=;
 b=DPqi9DXwR+/hq7+Y9ZtMxZT2lLXGKzxdH/38Gu1SLXrFX1a+ucNrqvP8hDzJ33uHfp
 pHEwDO0hH6zLdP51PIE7a9x0i3YEr55tq9dzzKM2sf7emuDCE24z6TmisXtKu4JZYCfT
 I5+Ywy17dLMfSskwg73uua2d5seIGWnJH4ccXJGPEm56bi+clkBBXjvOTAbhkMQl7xUu
 REhmNfRmiR3yPcEvujzxpqbYiiNCMdqFFPlGaOIrpBDxtQDH8j1BgnS/FfuowKEobouO
 ZtKE/RsncvrSsnltdI/Y98+ttSi+9orKWxSDoJjdFl077xhmlcWcq4CB/fwN06jV3ZJQ
 pFbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l/U6XWsLOhFjdMqLKkh6fLtzFOqDQWJVhwH8yel62eg=;
 b=ZwU65wV4paSo5z/WdFeWt3g6yFH14gmPT+Tc/COTWZKH6pp4SL3m3vL0Obzy9LEaAc
 B3FMubILJcsTxSfEF/6+M0Gw9JbbwGRKOTPvm45od7PuM6fqroNP9asr19mqW6l5Mijk
 BOEowv5CCCPBjAMbJh/+LJ8hqkqohYBw5yUJx9K24terIQnTsafAvdZOfPeF9G9sb2qi
 7lEpQnkAD+6kJZspxYUg+9BxTmTY/Jr9B8j/9yyu0yYMzAVVphLXkxUAf4lChwB55Rar
 0zZ3ZcvRqyUNZZX2OEtCnf/hNSv0Xl8KbGZeZbiSmcPrnuOXcy5Siv9kI1k8MALnAPO/
 G3gQ==
X-Gm-Message-State: APjAAAXvIEYHHYDjQHDxn/qhcAe/Lo8P6qNRalKg4WIiUgATImZhD1Qp
 VzBMpKTy0fLfcZbtZiaS+KH6sw==
X-Google-Smtp-Source: APXvYqy7mb00k+UK6LOG7DoqGlifcZ13JvJ32QMCTaESKr1UJUujm2V1imjgYwk0EZVnqo92sOxRgA==
X-Received: by 2002:a2e:2b11:: with SMTP id q17mr24274621lje.23.1559814431865; 
 Thu, 06 Jun 2019 02:47:11 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id q2sm217457lfj.25.2019.06.06.02.47.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 02:47:11 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: andrew@lunn.ch, vivien.didelot@gmail.com, f.fainelli@gmail.com,
 davem@davemloft.net
Subject: [PATCH 1/8] drivers: net: dsa: realtek: fix warning same module names
Date: Thu,  6 Jun 2019 11:47:07 +0200
Message-Id: <20190606094707.23664-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024714_199331_47B3E921 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: marex@denx.de, linux-fbdev@vger.kernel.org,
 Anders Roxell <anders.roxell@linaro.org>, p.zabel@pengutronix.de,
 b.zolnierkie@samsung.com, airlied@linux.ie, lee.jones@linaro.org,
 s.hauer@pengutronix.de, lgirdwood@gmail.com, stefan@agner.ch,
 linux-kernel@vger.kernel.org, a.hajda@samsung.com, broonie@kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 netdev@vger.kernel.org, mchehab@kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with CONFIG_NET_DSA_REALTEK_SMI and CONFIG_REALTEK_PHY
enabled as loadable modules, we see the following warning:

warning: same module names found:
  drivers/net/phy/realtek.ko
  drivers/net/dsa/realtek.ko

Rework so the names matches the config fragment.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/net/dsa/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/dsa/Makefile b/drivers/net/dsa/Makefile
index fefb6aaa82ba..dbe8352cf8a4 100644
--- a/drivers/net/dsa/Makefile
+++ b/drivers/net/dsa/Makefile
@@ -9,8 +9,8 @@ obj-$(CONFIG_NET_DSA_LANTIQ_GSWIP) += lantiq_gswip.o
 obj-$(CONFIG_NET_DSA_MT7530)	+= mt7530.o
 obj-$(CONFIG_NET_DSA_MV88E6060) += mv88e6060.o
 obj-$(CONFIG_NET_DSA_QCA8K)	+= qca8k.o
-obj-$(CONFIG_NET_DSA_REALTEK_SMI) += realtek.o
-realtek-objs			:= realtek-smi.o rtl8366.o rtl8366rb.o
+obj-$(CONFIG_NET_DSA_REALTEK_SMI) += dsa-realtek-smi.o
+dsa-realtek-smi-objs			:= realtek-smi.o rtl8366.o rtl8366rb.o
 obj-$(CONFIG_NET_DSA_SMSC_LAN9303) += lan9303-core.o
 obj-$(CONFIG_NET_DSA_SMSC_LAN9303_I2C) += lan9303_i2c.o
 obj-$(CONFIG_NET_DSA_SMSC_LAN9303_MDIO) += lan9303_mdio.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
