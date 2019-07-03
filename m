Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C365E9B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cZDVciJSySVZFhh9dvPf3EjxqZHR5350w5mXdzVABZg=; b=Skjki7UI7NscREV57ApzeanUBW
	PImNGhtF0bmlsXHXSpJyW69Fp8XyEzwshb0ohpT3bifj5D1KxwWMjbBbOcM+e0kNby4Kp/hc8TbLn
	bH9F4LRGxxa3v25gsA3AOZTaO+4CZeV7Y60xJDLqXDNzOimeI4O9q7WSaXiBYEVPPdyaWp5Xuy45B
	75L6AeRdsCXnGzmVvVhCobxS1JOmxLGhrGueHp5LoGo9Y3V4djWoggX1MOQMWxueQ/XcFZiqNH9Fp
	JVLWGwyLYG9xwPSDnENPXe7RAHxevIxx1Dk1KlmGXR2O8jI155eZ1AeLW3l7yAC1oQU/EWGXZr+GX
	WtzjqTew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiT1-00033P-8e; Wed, 03 Jul 2019 16:50:47 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiRo-0001CJ-Ub; Wed, 03 Jul 2019 16:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562172512;
 bh=0w7nyu9wSyUNFugecpftxoveFd04MwndiFhERzCcH4U=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PYCf/wvNcQPJqzK+6TrPDe4U1s3nWPkcTSLDXO7gGiKpTIDfc7nv5PJV3SbxXc7Xw
 LeRsR1//wn5WyWNxELldcMXnjAt1fNkanjNfcJEqmb3szfmhO4k6naSQFo58U5pvew
 8jpdomMfHcgQrEMVZu4sW6iJ4sPXLyv8kVwZWCXM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.158.204]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M1Ygz-1hhKrD2Xhj-0032k6; Wed, 03 Jul 2019 18:48:32 +0200
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
Subject: [PATCH v2 1/7] docs: dt-bindings: add poweroff
Date: Wed,  3 Jul 2019 18:48:16 +0200
Message-Id: <20190703164822.17924-2-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703164822.17924-1-frank-w@public-files.de>
References: <20190703164822.17924-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:RaJfCMIYAXb0FRWR7atb1Wt8tqSDqFVstf8i87J53HmZBA/WEAg
 8LprSsryrnuZeOepH5JTe1QAJSgeVotvVYsGLs6vhRAbo862eWgtojUHsuKT0EBbNS2dWBO
 R2U9uzKnD1fziJD6yy+RdFdfe+Y+MnXjt3uOOKFlS3d3DJT8Pxz92w9+sjvWeX5O/0dxnWB
 hHc3AvQQ7ORjbRBCJsiZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oBlJwgH7f+s=:2iLFypLybMqQHCt22s/EyG
 x/20PnTJLrdGQlkGUdh9j0riLTLu2nMd5NUZz9uOPQM1Eo2HgEXn4iRzawBB48Fpq98G3hZ29
 FcXFiawcFAzKY627wuPidJIFlb6Ns+E5HAA2QRD8Xre7CZxccu+vN5tjRFfGhgctJ+UyAnW/4
 iDL49WQVQJqLBYW4P9OZo+WMsAMR0ndfCGOz+kqlvwI1e5FNRwPaqdA1fcpPVL5p7AEnAJWlu
 8nmqjEc1Mq2zvcZfcCiWJMY+uTSP4cukJRSAePUfEzcvLCNOYBn+JlSFUj9w9UcpTcjZgdV+t
 hRS+k6NeinQsPm+m6aARwt8SXs2FvEiOo+AfvGmbNtEsIYsgoJyRRbAaoaWI4u3wgFcvr432y
 mffmWynHBa+y5Ut23hnLVk/8ejGBnQTUnxX0oxyhWXs/dydC0bUmYweEJv3bmE2lX+BgynxL/
 pAwKC/jafmUTzWRiny3J07UE2iCQrMYZnrSzRLxZCjK2ghGZkEgYo91qXy4/+8zOklM5aGbyN
 cqLsZEx8g0yk1Q3YJIlBiWLb1+xUHThlAUio8ojQnKyo3rL9pkyzICsIY7by6wmF6PBgjVcER
 2rUlWEzvQ0UxAgWgq0VtZWkKj/Pt79S28sLeF2dQAvTDseqF0Llfj/N8+9JqrR12Q1q7n2PvD
 zCUp2DGTQGfSUkwJs3bud9nbQQCN6SgUu2J860SHdWfyyKFzYYRk65u64b7/dgYgYvd1v5ejd
 XPlWw1Mmuzt5tQgLSjHIlIHaKE4oIUP1+PA+G+CLS1SkPMuOpjGkmZ2Jc7+bZ8TRY6pA9wK0/
 PfwxgcTGS6pw7I6XxwAYfCpilHHLSCgoQN3zSuyF0V93vtwZ+i1gflaL7x1RS/jT3JiY+47f3
 8S9Aac+8+j3eZADuylaS1We8B0u4Jrd5J3fAzThPBnf4iz6FezyGv0QSW/wQBKGiIfLbmFEF4
 O/9DqpcoSuWHudGVKJ04WTA/RmLb6a9jxNR/LEhS7cEtjjnapyg4D3zXy+aBN/DoLH8x9k/Y8
 dr6wRWdiqKoEp7nV0v+UBliPBigRdTjSwnipfxpSr0CpBGuV1IPOG/Z/9jISlQP4O6PpxdqyU
 sxej10Kq0vp0m0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_094933_279771_FDC0F15B 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
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

add documentation for pmic, rtc and power/reset devicetree bindings

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../devicetree/bindings/mfd/mt6397.txt        | 10 ++++++-
 .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++
 .../devicetree/bindings/rtc/rtc-mt6397.txt    | 29 +++++++++++++++++++
 3 files changed, 58 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt6397.txt

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 0ebd08af777d..44acb9827716 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -8,6 +8,7 @@ MT6397/MT6323 is a multifunction device with the following sub modules:
 - Clock
 - LED
 - Keys
+- Power controller

 It is interfaced to host controller using SPI interface by a proprietary hardware
 called PMIC wrapper or pwrap. MT6397/MT6323 MFD is a child device of pwrap.
@@ -22,8 +23,10 @@ compatible: "mediatek,mt6397" or "mediatek,mt6323"
 Optional subnodes:

 - rtc
-	Required properties:
+	Required properties: Should be one of follows
+		- compatible: "mediatek,mt6323-rtc"
 		- compatible: "mediatek,mt6397-rtc"
+	For details, see Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
 - regulators
 	Required properties:
 		- compatible: "mediatek,mt6397-regulator"
@@ -46,6 +49,11 @@ Optional subnodes:
 		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
 	see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt

+- power-controller
+	Required properties:
+		- compatible: "mediatek,mt6323-pwrc"
+	For details, see Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
+
 Example:
 	pwrap: pwrap@1000f000 {
 		compatible = "mediatek,mt8135-pwrap";
diff --git a/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
new file mode 100644
index 000000000000..933f0c48e887
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
@@ -0,0 +1,20 @@
+Device Tree Bindings for Power Controller on MediaTek PMIC
+
+The power controller which could be found on PMIC is responsible for externally
+powering off or on the remote MediaTek SoC through the circuit BBPU.
+
+Required properties:
+- compatible: Should be one of follows
+       "mediatek,mt6323-pwrc": for MT6323 PMIC
+
+Example:
+
+       pmic {
+               compatible = "mediatek,mt6323";
+
+               ...
+
+               power-controller {
+                       compatible = "mediatek,mt6323-pwrc";
+               };
+       }
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
