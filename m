Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E31836FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S76+PwjmvOwc/pgMLX9utYAm1suCt4bl3nj2Zx6ROiY=; b=J7JqbIMcbh8+2bIK2Cs0igK7d8
	++PX9I0RLWxHm6rPrSqJwoHAT5PwtDVZ2FxgNnitahnnQ2pZwqZE7SAR4YIuxC1LDlE83B1BqfqSx
	qdyQEctkxzOWKWkMfS6bvq50PUGsfrF8EINsut+SA4J3PtKxwYJL/QcdSL6ukcwd1fdbrRSyNL4jR
	Wrza4K1sz3oa7LYk7lyMPE08r+mHknEFQdvLeBV29Z9kESXc+ruHL2Ua7/3y/LUfWlLtWwohiNsu1
	8T7gn+ix5ulkxBYnFLryuyK23WvkexjACAqe5aX2BpoMbUSHr53lbxlpCERsFdK3VncdWUQQJeN/8
	es86QiYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2MZ-00041z-VZ; Tue, 06 Aug 2019 16:31:04 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2Ka-0000aM-Rx; Tue, 06 Aug 2019 16:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565108884;
 bh=zpDHFZtFnB6jtb9Ty5VxV4oP5o3ljb0IMfQ1WZg0clY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Sm7iniuLTfio2K6K9jk23/qCkaDP0SaifhnYXC3l6DFmQe1/qob5bGW/zHV+CnEL7
 NZmponM93e49n/3Aw8tLWhhxLX2qjpNnHfwUI2iNCqrxQtBqZKPkYywtnonxdAkOBV
 4yr1wJQLYRrnURxW59FVRPs7gJwHVaLOrrVLUEX4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.153.94]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0Mg3h3-1hikmv1UOL-00NSmC; Tue, 06 Aug 2019 18:28:04 +0200
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
Subject: [PATCH v4 01/10] dt-bindings: add powercontroller
Date: Tue,  6 Aug 2019 18:27:36 +0200
Message-Id: <20190806162745.8414-2-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806162745.8414-1-frank-w@public-files.de>
References: <20190806162745.8414-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:AIGOCby4oFv47YSJ9VFQ9scd8B6VnGGTMhIk5HuNYlF12fPSCco
 xKJUKT6QYOFGIKQ/z6NSePLt0CdsRa+wV9mqMkGua7Wffu3uHXZ5GOP+r81dHjoAOYNJDfu
 e/5lRA4Zr/gAapa68Gp9+4b7M1GCmMLNxEIvYHwHWvx9ONzS5qP8Hqyb3Nr1jYM+UxZbj2k
 paoqGOeO7rPQh33p9JYoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XWjw5J45VAM=:2dSZxUR1GbmeEjxNlusGLw
 bS/X4iPie7hRL4oNU0IhIawv8w7+UaAWS95KxFVjElYWEJvvWqTdn6Of+Z5s3pA5a9TSAtTMj
 CNctLTB1MuM/wZXB0BiCWE0l8i5SsBGBTEMa6FYysrIVH6UcYZQHj/oXM85L+Q/rYgzFwQ7t9
 KrYKViVdYJ3Cj/HGncWtchT8zc6jf/VVEXyEgb8OzWklBRbUKLf8vXVajYu8EqaMY4HTEffiS
 ERCxOFFmDFBcBp2ziLwibJKhxV9qWOrsf3c0D0RFmsdiaINA4aO44zOnVKSg3odRwKzHFg+9y
 yvTBNPqvgqJn2UJVieb5Z5k+jE8MDkgk97ncG1an3Dp+/5LkmCmSS0agyHjVMOhoKkjB4uCH/
 4X3Ui7XOo1nSJrRZTJhyWDPVYlq+Muv3n8wnI4MxiZUQe6UMAX2oLXdHnHF/Ia8u/+WfUHoV2
 tQdK+HuRiK+2xvrxaUgyhvU0esYsoGZdM6htmr03ZbflgROiJdJgqPghUdnnCz5dABD6VQjLr
 CRV2mgHbch0EACyFGdFBkc2EDfrKVHajslHZDqg+BNtjewwzgdoTAIXCswuNAAcRG3SHLY9Cr
 F7kRexbw9K0pwF4OTHNgMf25kgvRHEkDHvi16uh+BGahESYj4HBnribGQ2OUWnA+lbGgeZ28S
 2F4GwZU08OlcbJRvneemznuruY3ibbR05hjE6AbcWWPgvyYpQXBYWnoFkRzrtSMiYstbt0kEX
 GgWQH78SAYaE5hTmH51YVSxQp/JvjCsfcWKDveoM0AtjrDNaaLFCmevOSssHo23ywjF3Jf0/e
 0fTx4cJ9IIZ0X+Qfs+hC+xdW8Bj6UHsssu7G6UluKU/7SvzBiCY00JL6I0/B7lNzbXcL+HcVQ
 fm4NgU5Z6Z6jy8dzgVeUiFvzJOZQQGvTEr1VvSHkhT0susH89L9ZYOoORcRB1mV8DwF/nA7So
 2h+msJBOwWROaNUIXy/NTGNiHq/VV352sSO1x86bfskFwlT/bLkEVE80aH9fOIKxq7TzxP1JJ
 8wZu2uOSr4wwEKqJ64LTSYdq2OOiZsm1EgvhjeCav0HTs7diGxKHv7gDj/RM5/GREsfhgyVQg
 zjAqbidpbe8q32hMi7f5Z/Qb5OTiNuYD3oKEzkaLPWDUc54ZGLJ/s/5Og==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092901_354638_144FDE9D 
X-CRM114-Status: GOOD (  13.72  )
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

add mt6323-rtc and mt6323-pwrc to mt6397 mfd DT bindings
an example is shown in mt6323-poweroff.txt

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v3: none
changes since v2: separated rtc-mt6397.txt to part 2

 .../devicetree/bindings/mfd/mt6397.txt        | 10 +++++++++-
 .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++++++++
 2 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt

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
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
