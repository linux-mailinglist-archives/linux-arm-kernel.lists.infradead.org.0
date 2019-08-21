Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41F297CB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzxS+j+3jvJKqzBjluwO4iL9AO/wFt1GcIMCJR3DPJo=; b=axtyNALYPpWQYM
	IIUTMzvxC3yyp+IvbU95jaDgyCr4iHfJK6j13HD3+l4MZEIPaGHL6uMOWnyQ82zUBmbSx7LKIYkVy
	6mZgAfDCtxg8p0I0zjWXBn/sbwTMxxTikq5M9gFXP6eZZv4OPyRu8Pr56euk74vbW6EmlqLex0SuJ
	Lmy4hmBYeeSb54dJoUJqdoWfjl8+TirzYITOu9PnVJ9IVXxb9AvD9uUtI+BiUO7wApCWz0lYFWkFG
	jme7LDJbeAHUJBcliZts3SPy6SuUyKqjhuUIq0eZwLKMojf10haSqmVKeWuhjH70mSJTLRf+uzNmy
	3+GCVS2Li89qjOaeMnLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RWf-00014m-Sa; Wed, 21 Aug 2019 14:23:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RTz-0006nN-7E
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:21:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id t16so2231330wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VoiyEoznGsebSQriKSg2X1Svm8xxDWhM6W5MAaVlZfM=;
 b=kxZeVK3IMsEJNXIkE1onD8r59IVoLEsMEFhCHM77efUT/dMgzNRiqJozIBArFi+2+i
 3e6vE9PB3bzlqrDinHivdpyfO3ztJdbCINwQIHsXFnVv/z3ohELjBSr4XoMcs8UkgfNU
 fkYsYWfkv2jhYTPZCOKsRZwZ6D4kSe5y4p9vsuZ1iXJ3jCZCr5v8RUMEPmMY8/xCUeo0
 kV74c4MDt0J4MdKaXQ6VqPlndlNyreStd0mMLlKS12j2ElwiG5vOgJ/DuWnJX36gUae/
 9T/Jlziczx8QIzIeGtxsxH7a6Ybxtob9fmA4il5Y10TicFejw4bibo7u0uGPYNdD32x0
 LUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VoiyEoznGsebSQriKSg2X1Svm8xxDWhM6W5MAaVlZfM=;
 b=TlJH8V7RCpWz7V11D8Ub2ymSwb6AwGd+BB7WMJXDtLkHRu3tZoQR7nUdgWEmRQ228n
 vooVfaKZ6er0zpvSJOoZoExFwy4bBZkiU3Urr5sNmvcoVOQlVVIHiNw8RoEhEEWIUvwN
 YEgcznhi2No9ERKTcv9Cy5lFRWBaSyJJpYe0TbL07cJ6Zw25EMdqzKvkuLOvEnXpOq3B
 N1CzZe/rxD2flVLbxL9iM3zlo39VrlkeihgfmDb0wwJmvstD/ZHctfKySdLEQn9ff0uL
 fCkKt+On48IpSKtabkCy/A8CUDZpcGldcnbtF4jebty3fRx1hXRN2s5FBM5l2NgxMQpD
 J5eA==
X-Gm-Message-State: APjAAAWnBEY7Uq1zQOwklTCfkY8+3KeJxvDZ0AbLfurW8w2n6zRrkVZs
 R9NfZrJ0O7Ib7/dori3NEpXm8eB4YIyPkg==
X-Google-Smtp-Source: APXvYqxFlWXpWGYx7Skr2k4dM6gUG8fIPs5pjfvI7AKdcs4MotQyTUuCI6H5yyjL+seAB1jiCBbh3Q==
X-Received: by 2002:a05:6000:12c5:: with SMTP id
 l5mr40802954wrx.122.1566397261813; 
 Wed, 21 Aug 2019 07:21:01 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.21.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:21:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 08/14] arm64: dts: meson-gxl: fix internal phy compatible
Date: Wed, 21 Aug 2019 16:20:37 +0200
Message-Id: <20190821142043.14649-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072103_351981_0158995D 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: ethernet-phy@8: compatible: ['ethernet-phy-id0181.4400', 'ethernet-phy-ieee802.3-c22'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index ee1ecdbcc958..43eb158bee24 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -709,7 +709,7 @@
 			#size-cells = <0>;
 
 			internal_phy: ethernet-phy@8 {
-				compatible = "ethernet-phy-id0181.4400", "ethernet-phy-ieee802.3-c22";
+				compatible = "ethernet-phy-id0181.4400";
 				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <8>;
 				max-speed = <100>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
