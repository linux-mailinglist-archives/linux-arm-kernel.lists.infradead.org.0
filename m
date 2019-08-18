Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB228917B5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 18:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U6ZYtpjUaGUboUxh5ammvAXFg1HbSjOLDQcVXVh9j3c=; b=aOkbOTXXpf2QdtwVItQcfOTPuS
	0EBiLdMdpCC4GZteOQ4bdeEq6F6zmp7cx0u42cMxOyeZznk/hWPSStaQoyBk/aVyRvanycE+oY8VH
	4zlJ/pxnOF1jeRs6BX3EIQm5W5q1BTuGuwLtn6Ino+F6tZ3Azmeuo/VEtCMRBOavdnJ30FO3JafGf
	aCipnWi329HCxe42hBqlkwY4ZRFP65gzrH14slHFW+wK+e2eNLUqJfw+vClKRcva5zxWps9PFEvml
	WXI+dF0We9NuniQsk626whmpw4urp8lypJMAHr+2rThij438a1Od9rQnzW3pHu+uqljUNnz3NHVFM
	HuFt+Qdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzNmU-0002LJ-Dr; Sun, 18 Aug 2019 16:11:46 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzNj8-0006h3-19
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 16:08:19 +0000
Received: from mxout2.routing.net (unknown [192.168.10.82])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 3CE4996E01;
 Sun, 18 Aug 2019 16:08:16 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout2.routing.net (Postfix) with ESMTP id 994CD6483A;
 Sun, 18 Aug 2019 16:08:16 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-185.53.43.183.bambit.de
 [185.53.43.183])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 28498100B88;
 Sun, 18 Aug 2019 18:08:16 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 13/13] arm: dts: mt6323: add keys, power-controller,
 rtc and codec
Date: Sun, 18 Aug 2019 18:07:57 +0200
Message-Id: <20190818160757.8206-14-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190818160757.8206-1-frank-w@public-files.de>
References: <20190818160757.8206-1-frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_090818_325922_8505CAC3 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

support poweroff and power-related keys on bpi-r2

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v5: none
changes since v4: none
changes since v3: none
changes since v2: none (=v2 part 7)
---
 arch/arm/boot/dts/mt6323.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/mt6323.dtsi b/arch/arm/boot/dts/mt6323.dtsi
index ba397407c1dd..7fda40ab5fe8 100644
--- a/arch/arm/boot/dts/mt6323.dtsi
+++ b/arch/arm/boot/dts/mt6323.dtsi
@@ -238,5 +238,32 @@
 				regulator-enable-ramp-delay = <216>;
 			};
 		};
+
+		mt6323keys: mt6323keys {
+			compatible = "mediatek,mt6323-keys";
+			mediatek,long-press-mode = <1>;
+			power-off-time-sec = <0>;
+
+			power {
+				linux,keycodes = <116>;
+				wakeup-source;
+			};
+
+			home {
+				linux,keycodes = <114>;
+			};
+		};
+
+		codec: mt6397codec {
+			compatible = "mediatek,mt6397-codec";
+		};
+
+		power-controller {
+			compatible = "mediatek,mt6323-pwrc";
+		};
+
+		rtc {
+			compatible = "mediatek,mt6323-rtc";
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
