Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CE31C580C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hho/ltpZv7kKtVnoskEf1ZEKHqjKGdFkF53HiNLs8gA=; b=jc8bfEaA7ZRECZ
	i6/QzYScdvxEWV5intpcXuU4DAbTloQWJEHsDf2rB/8f2/bG6BgrxQN/ZcOvb9XfVDmS7InO6SVvm
	JoIbxHw3pPG3En6s4Pbw2kUi1p9z9fxc0OBpG36XRPmH5U6Bmr3BzDxQBcGq0ZQg6tNu2GJSrV4F6
	//oz6XcuL/34tW+GSmd4+LSSfNWV36sUTT89mCaFl7eeXIrqVyHQL+k68Rtc0P2ANTFYcLvWYlaHX
	qtTSh2V24yDs8FdV92tDqydPflaS49urIne+WxUXHEde3hAaG53CGYb9l1/FLAWSfFLISo1wXy134
	S2mtGojLK1LHHsnVnxpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyCM-0004rE-Km; Tue, 05 May 2020 14:05:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAF-0002Lb-8j
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id k1so2854875wro.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=hNfGjv2/etgG+8tAzkJNYt+mnC4ApvZHNSMUbk3vWQMdUyC5rAhLLs4oNMtdc8pWO/
 +cznGtdZyPWshkwy7QjHeTbd4wCTnOtTYZdvbIev5g5UseKkBk0fUo4iLnnZ75GyQs4U
 H8D34z7J3KjSeKQEdFbBCdRt9FGeNoc4MfPDf83NbPBBgB9RjME50vZ2MAWLkAP+y9y0
 7VdS+zOU/SET80n0dWqurzUFhJ5AXRUU7jpf/PNzchSdBW0yV0XHGCxGC7kOCvLp1lH8
 nMeRYEISvEOshTVVoJXnHBySh1CLyGHxNnSGV5R8sK3bF2l12XSQrqsZuVLdRaF32KT0
 P8zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=rhkYtjghYCqNszKv71yNLVwgPcDgV1Vs/N3BkmsCfKCvgkcrmvVBzcmdyvyRWsoNx5
 pN9bZGiOaRV0vUJfoIxpbpvcSK8fleWgZebusJuXOghdsllA14QykSwzyeH1X2SD/ISE
 Z3aQPhkE0nYiJYd50o5VvNpz5WYVn++kgFf+ypqdNrr6rhgtHLlcUUqjRw5MzK+Y0bVe
 uFVeOrYNnEK/82I2iDDXLmVMv5/AEkBHvA6VZ8LSX/H9AyJLLjPcDmqPBjcyVmmDGw7+
 sJ0x2x/a92Z27jPNCLTq2t/F14AHemQ0e2Fuu8e/ItiFQOxXRPQVmewBNYRnigYTYGoi
 6sEA==
X-Gm-Message-State: AGi0PuZo6Mnj0a4yKtXTuDTimLPaM8SFQwLCuishGXFcZEk9tQ9Lxqtt
 5rIeMsWv1KdFhqcYCmK6WdC0VQ==
X-Google-Smtp-Source: APiQypIJAcz7+8YuVqS0Fb+BpugSz7czS+kkRMyzeeVjVlyOtSkG709fxRrSUgqXs+QH46mCuYaAyg==
X-Received: by 2002:a5d:5228:: with SMTP id i8mr3913687wra.359.1588687393914; 
 Tue, 05 May 2020 07:03:13 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:13 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 07/11] ARM64: dts: mediatek: add pericfg syscon to mt8516.dtsi
Date: Tue,  5 May 2020 16:02:27 +0200
Message-Id: <20200505140231.16600-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070315_357098_A1D6CBD6 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds support for the PERICFG register range as a syscon. This will
soon be used by the MediaTek Ethernet MAC driver for NIC configuration.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 2f8adf042195..8cedaf74ae86 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -191,6 +191,11 @@ infracfg: infracfg@10001000 {
 			#clock-cells = <1>;
 		};
 
+		pericfg: pericfg@10003050 {
+			compatible = "mediatek,mt8516-pericfg", "syscon";
+			reg = <0 0x10003050 0 0x1000>;
+		};
+
 		apmixedsys: apmixedsys@10018000 {
 			compatible = "mediatek,mt8516-apmixedsys", "syscon";
 			reg = <0 0x10018000 0 0x710>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
