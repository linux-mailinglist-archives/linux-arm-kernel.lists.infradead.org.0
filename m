Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAFF7926B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y03P2ZNyehURqKuNtYcwPYufHx5CuF8HFcwe+wFdDfE=; b=l58yiGX2nUFpJeKf6qJmOyqU8u
	1t4kfaVnGOy7S2rQLeqyGBx764YmgmN+u4BfsZpmQSHE3Dcve+k+qPN3uNyFuP958R5Hlth1j18X+
	frazWXrNxJYKSJnnE9W7KmvYFOJK6dd0UtbF+z9JaYNTs37rBQEv3YpPCKiYgrUTj4HUedOQxTQ8B
	rjlnZgHmBGmVDBf6wsEGTgbLx94JxUtzh0XiHSTsCGSPm59TuYQBiGqz2SrLBDRHnLOV87vVyN/+g
	TSIAq5SxuCqgHnQwodwOteHvqWII2/5vueHHjkpIatxcw6kPM5wXQUHZvsyNPnG9x4FJMbDFMKY6Q
	TUtS66/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9gS-0006Yf-Mw; Mon, 29 Jul 2019 17:43:40 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9fp-0006EF-1L; Mon, 29 Jul 2019 17:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564422136;
 bh=2upA4Eee2eLxGKQpMOKxUWbTwNeRMbtSYCSugmC0GWc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=VzxBOSkQ57/fGvyduo8JBaFAJ+4VaF5CN4fW7TY2VDUPAkXvgMAcV3EEXSU8TTIV4
 QzknCcyJLENarfrzz7nLk58UoDs17jWocp4aEaE09F9wttAq+No0HgtpWRw8pv0uQt
 aFj27TlQ8tjwfDcuAN2ZNYmIDJd47SlpJ2oN66tY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([185.76.97.79]) by mail.gmx.com
 (mrgmx001 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LwaQZ-1iRnd926zn-018Gvw; Mon, 29 Jul 2019 19:42:16 +0200
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
Subject: [PATCH v3 02/10] dt-bindings: add missing mt6397 rtc
Date: Mon, 29 Jul 2019 19:41:46 +0200
Message-Id: <20190729174154.4335-3-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729174154.4335-1-frank-w@public-files.de>
References: <20190729174154.4335-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:n2zUh/vBMrR/T/FmmAN+wn7QKL0aiwb8lCVGDcRqmLkY60+LbYp
 75Yof9evGGAzVYq9T7To3kmtms+cHY1cVVgtyBTBTTcA6ILiDSHdco6fnRBkBVOFZWOgYB/
 +mflzaL6iXpplrBY8RqzW8mD3pso3luf6hoAVRWBqYJr9F133IWFvdnHnVi760Wayt29vUB
 DFXx+EoY/2zJUHu9L0pKQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3BCmzlM7TJA=:/nJkZvBc4do4lI0pWVrXDu
 fHAfzfWinW0B6mPgALHOmP3HwFCiJOmcN54Gq7X+9cPdGCfSx9tCoLpStWPNB+CBR9qwkqho4
 r4ut0m4JUYbg+ZzLd+VkDyvISw4LKj/msNspivDKgUC3Qg9H9Zt716kgHwfrzNQXmLKBdoWlX
 Tylf/ZNz+hT5FqzbZ5TJRX1xoI3ORKdhrHZy4y3BNGB09kuyrwkwrlWM+PC13R0iGFeOP70K+
 SINkemcm/T0vK096Yei+cIZyrlt9ZZtet1+664WrbtvC2OwfB35ToHWqT07KVN0L17cruOGi5
 8UrpLVZkf8bjOXVwc5gec5BN+e1Jjn8M0PAkIQ1H4yDYAq1AJpTn1Fq0Ip45+BXcffemK9jF2
 F/LN+SSGl1bN9GUv+REV1ZX/tEBNKrrEDG6S856a6W2zfOOU5yvi/r5VLiUhsZv/CWi1g8c6J
 rejZOQcWdZcxc5Y96oCmTRNFdV6o1u+E4uYa402iMDW4WXgvs7LsNnx1oDNx9AvmlKeaA9+h1
 OGfD4q0UobAfVJ2/I015fi9efjAUXoK3S0njDCypDdQloHPYjUx0rNW7ND0flKSl5hWSuRR+H
 dIZrQQkm02s1bI8HQSqivuxxbFdAZo8bpbF2nlevAWDoxKfgarBuihytBUyB62ZSaz6Bg3vMR
 ZjRofVttHU6kJDhwabkvEb7PU8hzRRTY1p2bjOnogGEhLeYNR8rgCJVzwJZSKNS6nLe3zuwgc
 dzOSmlYWvMKQdvIE2l4vKPsWqzdJYom0wcVl8/L9gzUYb09p7pu9rWKKOkkkfMIX/4+MBSYHZ
 mdCMYjMkYyJM1SPPRCgi9QvJDniXokzLN4nqqwnlX904L11+RlPckML8qM6xjEH4EuAex6Cng
 b0ow36LqBD5lfuzSm5Rjqv9prApeZpbSTjfSKm7IXSRdZJq8rUxtdDmKTHRYDbD4j6zF838sz
 XYsSb59qYHtTqMrJjn0FPtukG+/Kc5PGenkzXVGBxAvMDpg7YGJLE1GiXxZD46c2yGg5GHYtq
 oDV0pdXxsrg1/X4PdtqRqhZRpNaTydxnTvfZPrpsiFz7NxGywxIcQSn5mvSKVuzUesbv/Rjk4
 V7HMJZgp3cOoec=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_104301_374593_A64B1DB5 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

changes since v2: splitted rtc-mt6397.txt from first patch

Suggested-By: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
---
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
