Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D2E836E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k1Fsg08Sp0xXsGkoVR1URAZ97hsjmF1srAaTVRISj0Y=; b=TYKK3Yi8jkh7Ji9/KbJnVmiQrq
	RCg3AL/HIsVUy2V5niOpMU3fwih0W9JyxlITDMkCSz4wPvt5asYQA0UTeM41rxVKA7dDpwgq9LD4H
	U2T27ipCK4g0TBO5ldf1FtMv7e6SIxKh6cg7j5TIcYVjUYjEHMbbwmandXXlRXHUdfUDgvtJK0NAs
	DcFTY94x7Rq5NILZKd9R/zsVn/erGUOdw5YXWwGJx11f2xhunmMIjI42aYHK57llAcsQeJ5/KWtqE
	glYGDLNy/pUTYrNlfqEUhIXEtdzAida+ZCKrNqTNyLsLiALapsTGaPj2OoQJ/RWL1q8ki1n1MLDet
	qLx8YSHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2LP-0001Qh-L7; Tue, 06 Aug 2019 16:29:51 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2KT-0000TL-Lu; Tue, 06 Aug 2019 16:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565108886;
 bh=VLX9HTUE+wmslMOMb17Tzc973mqiJr+Dnn3HZbMgnn0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=baKyKeljVeqoNyXI4cQXWi5NcbcAkx3TMg8CMSG1yOf6cTcuEoXalPAE0HoK0zvDy
 WsZ50oHWZ6u4YRHmZCmqc9hlRvbNtd19Kz41VKhvXSFPPIrtQJ79DsdiwLetjzv+WZ
 67NnIQOm+A17LNiUKgFzbZhtnaIfh00sP4aBLunM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.153.94]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M6ioC-1iI5TO0Gpw-00wWc1; Tue, 06 Aug 2019 18:28:06 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v4 02/10] dt-bindings: add missing mt6397 rtc
Date: Tue,  6 Aug 2019 18:27:37 +0200
Message-Id: <20190806162745.8414-3-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806162745.8414-1-frank-w@public-files.de>
References: <20190806162745.8414-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:D9CrS8W2Jt6EUrtYbAmTXR2EPFc9FV/KlELr/U3yFcQs96LMz2L
 7wbIt7yjgZqE4q03I87LOvJLuxjjYHUx80fkTLla6PNa0RXVJyJCyvugHqnFm/NgggSb2Wv
 ckPxkPl9ss+Fpsqi4Nk7FYjeVqc5v/U0coLTIpl8FCvZWi4n+ZmhE9mQhVlviKt3S9tCyZV
 uYdR0WKJK8A4i+EhOM/Cg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:odKRs4cm06A=:4nolkJEMYxs1kTVI3ZyguN
 oBKZp+Kyium1XB72WISTc1o62MGS6+qLQhpeg/w0VTuWJbzyKtn6IqMaA2lQyZEDPBJSlRgjJ
 ZEn6vOQUH6ZFspPwXlsSJo/QMq7iXlgmz0M2s6y4NUsmPTstIukWJx8RFbJAOxbWVWM5OMyEH
 qCR+QcDVDeZBWJvJ4xXTD6dx0vOLNS0mq/wwamKnhPPOpEKZTGYVeQ9LpHQ0y4pH9UXpt9gbN
 nupqDjZRqxXSsOr/FiVGalcNVnQvWN34H9JeceERHzEfqhYuqHMXvMnZyWptIWEro093u9DBv
 8a0PMCGVLWwwkGRzei/OfbeePTI9QnsuaIV3TRt3w+uj3GbYM3lmgQO7aMF4AvIJcULEwbiCD
 L50WhUvfdUEP/l7vHv8QawaTr6BVd5DiX6m5cwrKvossu/OfDnYlDvvjd8b42MACzxGLaxu6D
 ywl3+Hftge1v10vFfnafXQ7U9gG4mdBAJN51xPXQUCDQsOY1v+HKF+mMsFQhnnTncNsr1uNfr
 jhO7rqym3pY/TnGdxsTU4daaiArm9v7jH6riZVbwm0XIO+93iG67yfyHOL2M8mNhKb+otQ+JD
 gO1WkKDpD2dPCNaFQH8f+P+TGkGT1G4GJwVspD702YHCQ8GYT/J8QD8PoPKAc0t5wh/U1mT7+
 9+6R8zopzJAxccpdJBTzMV+AfRiqC4aCjVoPNlGjqvBUDfNzNU4KC5Saj3dxgnb9my58uBU0Z
 7BUWoscMfQ53AhrPLmKCBzH5Pj4dAnNsdN8iixZkUP33BSe7p3k45ZJuSWHnmprJY6AUZ0gxi
 2bWjhI9i856I4kYfnhJ6CwO67o9iWV3CPwbEir+wG+55ECNowJb4+8B0cqr81PlS/h+muwqgv
 T33f3d0+SPFEFfQ5fwlZSn++ToK+ijTgdcfKBC1dhzSQ6hLhZsHXLL3FZy52G4t1WT1rv7hHy
 s69kDK+npcHt+QKts32wYVM7nOSWkbQV4BqDEzx42tMwd2fgwl2/baE7YWffqDZrGwrWbzPF9
 Qhzc6shkpkWJLkE+jLFRz7qgeAdz0EcI6jDHnw75qK0tQNfz/q6dlBL1lJh9pi2hAI8Eg7PJy
 r0sww1CjlcMBtvrfkzi3YlZyg8GqYc4P28vxVllKxXzgmt88up8bNPa8w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092854_027756_7776881C 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

add missing devicetree-binding document for mt6397 rtc
in later patch driver is extended with mt6323 chip

Suggested-By: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v3: moved SOB
changes since v2: splitted rtc-mt6397.txt from first patch

 .../devicetree/bindings/rtc/rtc-mt6397.txt    | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt6397.txt

diff --git a/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
new file mode 100644
index 000000000000..ebd1cf80dcc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
@@ -0,0 +1,29 @@
+Device-Tree bindings for MediaTek PMIC based RTC
+
+MediaTek PMIC based RTC is an independent function of MediaTek PMIC that works
+as a type of multi-function device (MFD). The RTC can be configured and set up
+with PMIC wrapper bus which is a common resource shared with the other
+functions found on the same PMIC.
+
+For MediaTek PMIC MFD bindings, see:
+Documentation/devicetree/bindings/mfd/mt6397.txt
+
+For MediaTek PMIC wrapper bus bindings, see:
+Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
+
+Required properties:
+- compatible: Should be one of follows
+       "mediatek,mt6323-rtc": for MT6323 PMIC
+       "mediatek,mt6397-rtc": for MT6397 PMIC
+
+Example:
+
+       pmic {
+               compatible = "mediatek,mt6323";
+
+               ...
+
+               rtc {
+                       compatible = "mediatek,mt6323-rtc";
+               };
+       };
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
