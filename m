Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72F11DE65B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hho/ltpZv7kKtVnoskEf1ZEKHqjKGdFkF53HiNLs8gA=; b=SLUahcOuTLDpDj
	Vhy2gBhXPUfskvgc3bQ6wLr8GjK9V1Wn3ZT2iV5P6tIrlJ7pcSIb57+EQZnVUwPt+r+x0MSwKpS0C
	5MEM+/q0/ehxB3FAhHE4bdLDEqY44ee2Tsxgrerh89TvHAUlPRCtSBxVv4Fs5v2C+fcYVlPhsyNKW
	tMo91gSZ10aERDOW0FRcpKUMZgDADSB15+GJIYdAd8WYyJkgBWuA7ujq7UNYpHCCV46Df673cRLQn
	15ieKKy7Fb9Uea385xzU0vg2v3uAFpom8AOAta+qdepLXIc5x0ewDTejxHzEX7Lvg+vSjbwgMBvna
	HXaZL2VYgQKgcAkIqhtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6VH-0005hi-De; Fri, 22 May 2020 12:10:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6SZ-0003Ot-TY
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:07:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id h4so8418464wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 05:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=agS9SYZmiExPn1QFT+zp3KAP7WUdbVr14uPS6nJ27iB1uTA+ehxDy0YnoR9vFVYpwe
 ejKdXTzf8HvvGvnXEBEKYv0XRMvOXLfibnVZ4RxWk+opDqL/ZcUAhJfc3z/bq9Kd+/Lv
 ruVgGtvfmDrn3JOLXqEAJ6ZeygoSjuZdHAhLF0oHaU+To5M7N4RW+0P2ItNRNBKmSbBE
 P4pXfoUCxapPvWFYEm/mn3y/hTHEXZT2TuYxVmxdofXn2xpEq3tf4L0boBEWWiTDpsO9
 6AKtCVsk83JdgrJUbOkFst5Wy7TT750YifbEa617FJS68K9UwdH1KMuj3t3gdeqwoNUh
 txoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=VKaAYiT9PhK/RfWzRy/rJUDVzcP3KM6Fqwl36/ttH7ZgpteLANQC+1lH5vi91OyHie
 0JboznD5Wc0Wrk+LKAHUfjEdStM9BwGwpq5nJbxOQ68D+/KomKGZJtBDYdAQ2taYE4X7
 J8Yw5bUIZBX7628zzQgLnWHBVc6cZ7Tx7RgIm3decipJzQnfOZq7MrBMMgwUJi9M1j/B
 7QMFnFiE8fFBxl4nPwi425riPPj9qVanMiX0RiHcqpAe1x4QIorFXYv3oiBg37KzWeff
 f1+Ue//QOSSAvxC12GJ8TUsWXHpyk00dVp8egyjP7RutrdhaVAPQISCfcPBZbRv8tkcf
 LN3g==
X-Gm-Message-State: AOAM533eYtOuS7pF3oXBo53ULrq9NwGjxTmMgvdzjDIYNwkhRNwFavzE
 a5saexf4qmTwAnA4nzW3A7NJsA==
X-Google-Smtp-Source: ABdhPJyMDEfpWBgRlr7TcCLSZc1VpzT4+1vIWxF001lm1q4j5p/zwqQ3+nBq6019j5V6S7cI+dSStA==
X-Received: by 2002:a7b:c778:: with SMTP id x24mr13962597wmk.144.1590149250359; 
 Fri, 22 May 2020 05:07:30 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:29 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 07/11] ARM64: dts: mediatek: add pericfg syscon to
 mt8516.dtsi
Date: Fri, 22 May 2020 14:06:56 +0200
Message-Id: <20200522120700.838-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050732_042727_A4AB2B00 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
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
