Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289664BB4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMIefABkBJIQtnmTyGHgNSthhYdMIkqRYkmxq9rt68A=; b=ptGBqvNGVmOypI
	PK0sLgMMOm5m7LpyDfi0FoCxyUu3oEPRfNt2EJr8zpf9dHWxsPSExt9aeOyjaKO2HfXc9oNqty3Jl
	jdLvPnveeBGZX2Ia/PFgkGObHYc/4f0udFSI2Ck1219a0aqUPCn9B83Edat4tzdGhkzYaK0qGXoxD
	Qk3LSwsle2d8BGex2GTPFAKT5gubxyEa/q4JrPsVP9//K/Hbujw/EQTvtv/AidJM3mXUGYo3MQGoG
	eNfmFxtZdkR0K/t/lIdqDPQWT48rQZjo0AxKT7DmLv7GH+ECgS5oonhJBeapNNg4CdPtTe3AigcB2
	5Sz5rRiOAa+vmu+wtNkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbT1-00072b-4u; Wed, 19 Jun 2019 14:21:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbRm-00063G-I2
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:20:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so2047757wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZRfugtSiNnnWHk67X3XyWfWdW41BFsMrlORgFvQpHB8=;
 b=x2KfGd6nmTs2XlXpPmXh7Bn5s/ja/yB+ssgQg0K8PWsdCScEmLdoLMyeXSoFjpaU2c
 4vLChCMeHfz8s5eFGW5PWmUuBW+WhFnm6MdC8XbYfCgCgrqb/neFu7MUF5Aphbv3FJbY
 3rpX7PLEp7KhW+13YKd2whUbI7ot5zYfNoe0B2rQHZ3QXyi33+xLFOjUBeH9m9QtCWlg
 0dtmZYSnjUWrEjEN8p6g2UDu0QraU68hCPFzX4gYdLGA+VpECer59BYjvNHnwkbq8+Zq
 MnvCWzR162k/zGLHSPwXFrA2UV+fLwDGOQ+FMLWoIkohfJQbSjqNZ+e5o/kif2t2GPlQ
 tMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZRfugtSiNnnWHk67X3XyWfWdW41BFsMrlORgFvQpHB8=;
 b=TCFUpbp687Dsvy25IrSr3V7Qcff9NVja97GAtrz/82eZkGeXqZYKSAs1QV/GNhnM36
 CaEDaNcg9LgDwxbGZMJdsme5xcZljxrBuOPDhb1wSDOutF1hE3pXD+JFfLOSHnYU2R0Y
 blDZ0JneQEBvPpYIdV5M3Fbn5aSDOGJwk/jL0MbHm97iQXB6CRtJQ1DfaA8Dg09EQorI
 mtyZr9Y+yOUdp1G1W3yt0BwMa8pL9gVUIKD+rTnDLwOGF6Hpk/P5AHTwfitjXzyPMzvR
 4E2IvmlQPAY24VKZamKlOfbSVPQ9/G3Y6JcbUAnv2Jx3YGzUPW/cS4ZUhec44pMpFGha
 cPAg==
X-Gm-Message-State: APjAAAWz/g76MNllLiIfG2MfFo3xXGEMfdRjReDCfpWLcfG/2qesVscr
 LIZugE24RrUeY3aykLdEDQiBJA==
X-Google-Smtp-Source: APXvYqxviKVJH2mGeoI0M+JIBXaftgWG3sqGHPq1gzdOJBj4y7cCwom3d0P0PUFpn9jhuZU7bp+zXg==
X-Received: by 2002:a1c:4184:: with SMTP id o126mr8614067wma.68.1560954021233; 
 Wed, 19 Jun 2019 07:20:21 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id o20sm24209979wrh.8.2019.06.19.07.20.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 07:20:20 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
 lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v4 3/7] dt-bindings: input: mtk-pmic-keys: add MT6392 binding
 definition
Date: Wed, 19 Jun 2019 16:20:09 +0200
Message-Id: <20190619142013.20913-4-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619142013.20913-1-fparent@baylibre.com>
References: <20190619142013.20913-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_072022_633383_0A361BC0 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the binding documentation of the mtk-pmic-keys for the MT6392 PMICs.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

v4:

	* Patch was previously sent separately but merge to this patch series
	  since there is a hard dependency on the MFD patch.

---
 .../devicetree/bindings/input/mtk-pmic-keys.txt       | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt b/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
index 2888d07c2ef0..858f78e7262c 100644
--- a/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
+++ b/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
@@ -1,15 +1,18 @@
-MediaTek MT6397/MT6323 PMIC Keys Device Driver
+MediaTek MT6397/MT6392/MT6323 PMIC Keys Device Driver
 
-There are two key functions provided by MT6397/MT6323 PMIC, pwrkey
+There are two key functions provided by MT6397/MT6392/MT6323 PMIC, pwrkey
 and homekey. The key functions are defined as the subnode of the function
 node provided by MT6397/MT6323 PMIC that is being defined as one kind
 of Muti-Function Device (MFD)
 
-For MT6397/MT6323 MFD bindings see:
+For MT6397/MT6392/MT6323 MFD bindings see:
 Documentation/devicetree/bindings/mfd/mt6397.txt
 
 Required properties:
-- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
+- compatible: Should be one of:
+	- "mediatek,mt6397-keys"
+	- "mediatek,mt6392-keys"
+	- "mediatek,mt6323-keys"
 - linux,keycodes: See Documentation/devicetree/bindings/input/keys.txt
 
 Optional Properties:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
