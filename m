Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08085E993
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3jn6rCi8LSYRGM01fqEoV4Kg+5DtkKHDZ1oezlpjo+Q=; b=WXaPlY6k4F4Sd09AqSHDYzoSQB
	S+Hnq9NWK+fAzaB+YcTuevi1hQVpnED42wPzquZ3tXpNV+0QIRf1V7k9SCwenK97vwMsCGprIBcaH
	LZK6Dz95ur9JEHj/Bf9vryWZja+2+LHoTApprCMT1cyRzCaR5hAB+YSMx2u/KqLH90IeTL4l8lJm3
	QzY+D/2Ds1OpkpYNUC6ECNOFIbu9lHdKGz11qDj/0K220wjkx+cmK9CASBBM77qXmqqpZuyIl8WzJ
	0zlMEP1pNxq6LiBCnoPYBHc1TsDS0X9NiaJ6RpYdGCcXZ0o5tItijYyVflXmpudV8aSYmh+CTtuu/
	7BMtrQTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiS8-0001EB-94; Wed, 03 Jul 2019 16:49:52 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiRo-0001CI-PB; Wed, 03 Jul 2019 16:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562172519;
 bh=f9CkfFAhLTyBC2mK1XCTgP+oK3gUWu6kajz4IzQ916o=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ccmsewjWRWHoMNLF2s7g//LMWfgSyp06z3ShFt9/me5/llbudtpyDqAZ7RnoOn4Tt
 CvC4e0v/3nmjUv0dhgQJy2sigeitMow5Sn9OcqLdqbvdjoj8dmxW0wXY/m+G+VQrOo
 i3uwlTJ4K0nJ56PsJ7LtFjxsv6hWsHCF3gnGztF4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.158.204]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MTRMs-1i5laU3QXU-00Tp6b; Wed, 03 Jul 2019 18:48:38 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Richard Fontana <rfontana@redhat.com>,
 Allison Randal <allison@lohutok.net>,
 "David S . Miller" <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>
Subject: [PATCH v2 7/7] arm: dts: mt6323: add keys, power-controller,
 rtc and codec
Date: Wed,  3 Jul 2019 18:48:22 +0200
Message-Id: <20190703164822.17924-8-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703164822.17924-1-frank-w@public-files.de>
References: <20190703164822.17924-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:J5PTVldGZ2BtOOxdvMcmlO+wL7EiSfxjE9VHSxBCKJhbkcDQlEx
 Esz8v7fVJsxih/JVqdN1Xz4ToCcEotkG8nETqKCtpTZjnCWCEYhdAhXiwdENZNq5B9ALaPs
 YoBaBKrCd1vtz098oBC24Shrtkt4F4GsB4V19dGupv+0Vcm0eG0R/w64S1CugmqG8uGDnnG
 ZXLtwX8ZJAaVOUvXxwkPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ykV+fAiJ0bE=:bYAiQp4RTDSPBbgVDfvdSU
 XzhISACTumkRFqupBxuQKLduJKimCuNWZglVJIt37DLMLw3+n8YOjkzy+31rLeZQOUYZvtRaF
 Sqjto3crgtUqjxK0YrdEGwu70YNCdvrTwsfAuTDG+PXrRXLjRM/5s2fayeOnczlpkM1w0VOV7
 eNCLq2Qy72II90gVKsvL3jvVcpdTZWQguisuYqiT0vCy3GqFzJ3pIyCa914/rvwh/L1hj16pV
 91xEZ4csMdVhHCahybIFDx6qGbs28J6i32giKzVjyGfILSk9kDfjD0Wl3fuInAA0HOP+JGv9W
 XpjUH3RuiMldhEpbL8JbDMQxP/na3Ai1+cF8t39qAH9NUd0vtExElGOt035Z05eGbA38TTlxt
 kl0hRtPLSRbNnSrakMC9oBAbwTxjZVpBRrMfwPdkmdGlK9XMF2rmUcgwBJZgI1Xu4vfP3iKnp
 qgw/fiZcX54mg3PAxHR3lPDDseNTVWNmyMN5i6dEgSKLX0ibn1v1m471NiMGejISsmhRz/rje
 4RlmsfErlTp1GwalRw+nSLlWtw0grTJl8L/6NCGkQXeb5IYECjeSJhcwrZJKFH+KaMKCUU3MO
 zlXHhbWWL4nQ8y3c2W2Va0kuimBZCOa7fNndZpjm/z1F17l9bzaxMorz9kzx7C5aaOfhGI7Fp
 9fhhaZ1wzuiLUJAYswpw+4MpTC2AlrToXrRrjfd/nKHjE3fj+1mZqIXUPhwcQatiBXz6gIYus
 eqLYR+bdFy0mMuMx48q5RYwktraBnxph4eSoAltr6xQGslFCQDQcVQ7iCppVOc5MetAZ2VVfb
 UZrNFiCmM3+YVxojnQbNfPEhmomgngQwRf7pKvZO9j9M5HDMFb24NmsUho4+9n2icrM5xipIL
 YrnY515cISAYSiRQKC6XiU61Ff7PwW38TgBB7oP/sdAw86snuoB7JNWC+DzwIf1lfvw7IpTjk
 Q8RbRz1YOaLomovB9VHabs4hdYACWf4KZ6E3r0iNHwLzJ/85jux3C2jPM6nuBqrwBqfLs9jk2
 bsBGd61Hv/hEAHxPGsvJmt2wcMpHB/x9pSBqMYJWuRx26h+7WRPhmYSw3gdWgpZbHJsHG3KmK
 91ATsTSyIjDuDg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_094933_115909_591ABCDF 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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
