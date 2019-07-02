Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543FB5CCC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9GOR/0bstvH5ND2iUHFkdYyo+5DgIROH+D/kBaDhjhk=; b=fkYafr/ChNCTNp/jE2hlUGZf4E
	7YFm7g8lO5t/mUJKj7GA+1KFSbEIZbIe/7VSIb/1YW/bwbdu/k6sqJtko9WLpb5kwnh7J2VmftiFR
	3dvium2A+NgSb5sV7o4PjHp9r3bqLoIiaZdI4zlXbw4io0mCw06+0qn16lJi8Mi/kAkMcnQj2XC6U
	w7Ql7p/nTg4yslI7iFypfmPTpn5pN4VhWvWjNMmcIPOHme1PWYcZEQS+VhHAvvqd9tivKLJ7UxKUb
	ED9TH+G/oNBLeO1syYEePAyEe/lkp16zDK5qc5CLtCpQkFqD5umdjdngZaBQxFesq5iPixODPELSY
	YnQeXuYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFHr-0000BA-In; Tue, 02 Jul 2019 09:41:19 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFHc-00009r-BR; Tue, 02 Jul 2019 09:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562060457;
 bh=oSqquuEE5yW/c8iRNBPSI0a5cJClK80fy7DvXrOLPr8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dlagoiXf/RIMZkio48bbIEFFdFxC0w4tvy9u6hAXvstcAOzImbjRJrfBMLaJQQjE4
 Me0c5R103Sxko8B/UHSsVYA+gNY5V7QLDnhnywvbhMXJDLET5oarLPP5RGoSjysDIy
 ogEmPVwoWfRZRDeT4GEToiRzNHubODIOQDqPP+GE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.147.59]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MvsJ5-1iZW9u3D2l-00srKO; Tue, 02 Jul 2019 11:40:57 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] add doc and MAINTAINERS for poweroff
Date: Tue,  2 Jul 2019 11:40:43 +0200
Message-Id: <20190702094045.3652-2-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702094045.3652-1-frank-w@public-files.de>
References: <20190702094045.3652-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:2vYhi+xH+hblnqvwu7JCJIYk+RNMfwzyTaHzeLF4uHhL2sVf5es
 na0tRbfWtiREIfkOSzpQ4pqdw/gGlzeayu5qhOw5et1M80TXvGZEna7ax/vbyqEADYZrk3I
 uq5s3VavjDAOv/uOqGtFkUrtx0r/Q8gKMTmYUxv9K9J3TRsEKgn1CQZBZTgrNenoS6P+7Xz
 ds35ih+ygouOf+FACkwEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6WGGfsOJ0Z4=:mmz9GFuTPxrR8oTzHF4LQw
 CMbl9OPIDv0qksIZOiZ3eL7KkLsw9FVgxEgHwbk89ceEldUeH06u46zg3fiVAF38PVn2j9DUV
 vIdBOkIm1CThm4Gl/39wVNKqWPTaTw2Woi4GuQbmeI6ga19v1Es5xTUUUP6qN2a3KDByYvegb
 if08rfhlVr14vdTUvxqCaVwbkiiov1h96hBeQw0Q80Z0Vy+8S1Q5QWA2H+kOnWZpmqs+ooOam
 9/iSqVmq4wVpe/FlNgFoD+eDUomNy/8MGvHV3DvWcKWgI8pQ3iZNcB9sQpxhODTfw7Qly65Xg
 eI6Vw1VYJQSYCtr9y3ZZwWgva02ifKkbqLytaaeIACYWJ7MOq6jj+qYMYdH7Esxa2pVCxbJLj
 mjfvECFG9CP88xWBhZ6A2SvMjejOVks0fgCfFUk4MOSx9CudyWOcJbfZyasz286pjiYoTgu0V
 D9K47G7F7njz2qdly9yhRWbE2i4DuPc4oVaOh6aCD9txp1RxCPbTd682aE5OH5+PzyomoSLNR
 pX7S/0L2Hg9EoBLAMuNywM86Z1tzXVTRP7hFAleAd7rHOcdSaUl9z6BM6Lkq1QEWenVLQwZZn
 DqrkDNAX5nGKGHaEPvdZnp+vi5O8BucZayu19nCpwaHvd5FY1aadKckFlK1APWb3vH5h+SMru
 ldLt9X0on9t26vJnMxB171/tIPcePmTBsgzC2dwL/sqeEQ35/f7oAh8waEftHyfJ5anHiHO5N
 YuudQBTHeo0tkG/Iat3DG/F1r6i80pdYXarq0InXE1KrEzqGAxryBT4jvaitvYfffOjxN1353
 9rDx7vBwnfPzIIoZ1GX2udhbpHF1Yyvv1ZBu31K672l9GkooGgNnQ8eCvFNQ9hg1uHm30MnDK
 O7UGBkCEWqqUFGrll+eUD6se43oX0E7R1wXY/7U2qNqu2UH+QfKtXaDOmNlsi1c1LMrLCaQZ8
 +0UtrAPpXPk91gM08YypkdQ6B/4SuW1MdeyhmNy0/9BuXiBDGTaDae9pZ3xdjO0xajX7mC3Dp
 4Nm74/NMrlkUSfqbFgTQ8Q94USrHpaXyTxaS8LeJ5kzOSvgA3Igov4arEtSdYcGSLBOHQjB9D
 Z1gmS9XtOQIas8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_024104_726889_70992588 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
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
Cc: Josef Friedl <josef.friedl@speed.at>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

poweroff for BPI-R2
Suggested-by: Frank Wunderlich <frank-w@public-files.de>

Signed-off-by: Josef Friedl <josef.friedl@speed.at>
---
 .../devicetree/bindings/mfd/mt6397.txt        | 10 ++++++-
 .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++
 .../devicetree/bindings/rtc/rtc-mt6397.txt    | 29 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++++
 4 files changed, 64 insertions(+), 1 deletion(-)
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
diff --git a/MAINTAINERS b/MAINTAINERS
index 01a52fc964da..ec6ff342aa3c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9920,6 +9920,12 @@ S:	Maintained
 F:	drivers/net/dsa/mt7530.*
 F:	net/dsa/tag_mtk.c

+MEDIATEK BOARD LEVEL SHUTDOWN DRIVERS
+M:	Sean Wang <sean.wang@mediatek.com>
+L:	linux-pm@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
+
 MEDIATEK JPEG DRIVER
 M:	Rick Chang <rick.chang@mediatek.com>
 M:	Bin Liu <bin.liu@mediatek.com>
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
