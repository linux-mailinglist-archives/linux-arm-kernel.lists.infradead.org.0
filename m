Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578D6118D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4eam6o8/7BN0u1uzro22QM6bfVexxbboCrMEkmYIE/o=; b=C/bh4KPvfU+EKk
	QAThcdX+TtO8IFaxdSEKupIBWa4pK97X14l5ud9kpSRbuMGfQUUzwC0AUlQTibUruGm6o58NWKijP
	r9zC+zIPhI7zBk/+uJ4FnYvF3BZIxzGEE+QN+zcC3yJk1YampRVSNs90IgezuzFlTQE5/ZdN/e/vo
	RrbgX4ioYJwDHYLaTBji8JnHXX7s/EytTF3EQYGDeA0FGgQHUr5/0mICbbUpfLcp8ifCeQu3EDwaF
	zBeJyICN/ugYHUXMV70d0AQjaEXFFmsKfrWk7nVl8eMxkMiH8l3e3mdG7iHn19AWXScdRhzZBZmpF
	EXbUpaaIhlngtn30KRdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAfv-0005Yh-Fj; Thu, 02 May 2019 12:18:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAfo-0005Xa-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:18:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id k23so3051016wrd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8yhaNFcdvOpPcpBYXUdsomaKk+La2YImNQmSmSh3PjY=;
 b=SZbstBAyWZbN8X23/VP/9UhABke/igJxDJHJXB7ekMR7k3qBy+2f19eHpUZX5I08QV
 tTytHe/uhg8qsFMTNfklzN5ZSg0BYys58sh/b8IzQsJD0Pmf2KDRJehfrtPzev/RDOh3
 AU6e7dc/yW6EjebbghR2bq7+ekr2NGzHd3s8cVdxDQ5/mIJb8wS9oY+9QkU/vBeot2cZ
 uWxEAgGCDwUHnTeWuqWBshvrUNEp/bxUcbDDF7nDG79Z6VJrfTvtRaLd/h6aZIpHU0y1
 GIRP3mlVC5fW5U0Ce8rwO9h6nHKBOVxrNleoF0o4rauPZyFM8bEPPNJ9CvmL5vcQosnR
 yJlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8yhaNFcdvOpPcpBYXUdsomaKk+La2YImNQmSmSh3PjY=;
 b=bdAPoZs/vUoCUHpaKR5mY7fvw5jL8DIdLWrRsLwpB93ougSRMqY8ms1ZML0cRf6I/Q
 zIHuvid19TZHEnmd7znqDRL4XQhqk/56SSBsvw+bF9g2gHPLnk6wCNO81YGwuozIyJYi
 Z3ZF9qi4JBf//ReiZcBuzOzaiA8CznzfR6LHsDzdhDIZS0HSpWRg5H3EZN5eKSlJL45y
 eIK9sM48UmGk231xe4/KzkzJJ5jl+DtYO1h6rnuXbVRsqDUiWS0am3PFCABx5sZUZ9ip
 6IwDmztdzAjhMvUptUmJIZ4C6AcJqwLAI5f3X7VCBDM8bJAYlyVnzpnUGgSCCwT1MHkP
 bRww==
X-Gm-Message-State: APjAAAWO+Z1PNktSC9CYCnJvzMuUHwcEzJ7aTmeZ5Zs3fvaLGXBNfQ4L
 tOmb/j7KRbcEO/ZEFThw841Xsw==
X-Google-Smtp-Source: APXvYqybnz8QnbpKmcrmKh2L8LuuDVThIoXDaPzBG94Oj9LaHY0YI2yFN/HK2nR6zlXFItMIhB9G0w==
X-Received: by 2002:adf:e70a:: with SMTP id c10mr1268627wrm.278.1556799526486; 
 Thu, 02 May 2019 05:18:46 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id f6sm4392842wmh.13.2019.05.02.05.18.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:18:45 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 sboyd@kernel.org, matthias.bgg@gmail.com, wenzhen.yu@mediatek.com,
 sean.wang@mediatek.com, ryder.lee@mediatek.com
Subject: [PATCH 1/2] dt-bindings: mediatek: audsys: add support for MT8516
Date: Thu,  2 May 2019 14:18:42 +0200
Message-Id: <20190502121843.14493-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051848_205873_0309595F 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add AUDSYS device tree bindings documentation for MediaTek MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../bindings/arm/mediatek/mediatek,audsys.txt   |  1 +
 include/dt-bindings/clock/mt8516-clk.h          | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
index d1606b2c3e63..a4d07108bd4c 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
@@ -9,6 +9,7 @@ Required Properties:
 	- "mediatek,mt2701-audsys", "syscon"
 	- "mediatek,mt7622-audsys", "syscon"
 	- "mediatek,mt7623-audsys", "mediatek,mt2701-audsys", "syscon"
+	- "mediatek,mt8516-audsys", "syscon"
 - #clock-cells: Must be 1
 
 The AUDSYS controller uses the common clk binding from
diff --git a/include/dt-bindings/clock/mt8516-clk.h b/include/dt-bindings/clock/mt8516-clk.h
index 9cfca53cd78d..816447b98edd 100644
--- a/include/dt-bindings/clock/mt8516-clk.h
+++ b/include/dt-bindings/clock/mt8516-clk.h
@@ -208,4 +208,21 @@
 #define CLK_TOP_MSDC2_INFRA		176
 #define CLK_TOP_NR_CLK			177
 
+/* AUDSYS */
+
+#define CLK_AUD_AFE			0
+#define CLK_AUD_I2S			1
+#define CLK_AUD_22M			2
+#define CLK_AUD_24M			3
+#define CLK_AUD_INTDIR			4
+#define CLK_AUD_APLL2_TUNER		5
+#define CLK_AUD_APLL_TUNER		6
+#define CLK_AUD_HDMI			7
+#define CLK_AUD_SPDF			8
+#define CLK_AUD_ADC			9
+#define CLK_AUD_DAC			10
+#define CLK_AUD_DAC_PREDIS		11
+#define CLK_AUD_TML			12
+#define CLK_AUD_NR_CLK			13
+
 #endif /* _DT_BINDINGS_CLK_MT8516_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
