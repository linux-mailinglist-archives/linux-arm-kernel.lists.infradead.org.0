Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E83F298C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+j8VLhUCbNtvuACy+g90N1smaBBbfF6U/jTT7V+lJpo=; b=hWTv8IjVB7heAUExDHrEocAnor
	6Bu01im/R/spzpVcLjnA+GSX3ksYVUECb92qDH6SsKmt6ynpjQ0pVP2GVwUcytcMUbv18zDM5yb5h
	PJBlWjShIWWMpqrXyc9Lh2Rz/QHwFpLVQBmzjl5M1a115bpkjK+4HP8nf+LQ6ElmRGP3FsX6GUv63
	aTCBhq4N7Ol7DFktmV65obEf2JCC5mOXURkvCs/j9wuwMsAlKGRCNh7rPWMNTIXZXEf7j/FEIsIu2
	44tPIzSN5sbhwo3mO0tgKsvt0S+voU2J9VmpbXeEhpAxb8tuqjY8s3ndh3bHZtV9a6Ocd4JqysIi6
	6P2n6DvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA7q-0005mc-Jq; Fri, 24 May 2019 13:20:46 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUA7I-0004Cy-5a
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1558704004; x=1561296004;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=htBm2Z1l/RpGwgrP/iupQ5lRtnAvKDrdd+EzKAZZ6Yw=;
 b=N9+3u7T7Pj5rLd2ohLNxYZxqaABOrzwJYQKASBT489AjKWmu6ass7OWr/JRyuq2t
 9YSxxof2JPZohr5vSjfw6UKxhiWX15sYCImWaCs7okYaFih5Ca4UfN0rGT15m8do
 IyDF6j5pc1gucswITNfiVQDpOtheCaIilpZdI3qiTf4=;
X-AuditID: c39127d2-6bdff70000000df6-be-5ce7ef84f8e3
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 9B.81.03574.48FE7EC5;
 Fri, 24 May 2019 15:20:04 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019052415200419-20935 ;
 Fri, 24 May 2019 15:20:04 +0200 
From: Teresa Remmet <t.remmet@phytec.de>
To: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/7] ARM: dts: am335x-phycore-som: Add emmc node
Date: Fri, 24 May 2019 15:19:59 +0200
Message-Id: <1558704003-393769-4-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
References: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 24.05.2019 15:20:04,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 24.05.2019 15:20:04, Serialize complete at 24.05.2019 15:20:04
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLLMWRmVeSWpSXmKPExsWyRoCBS7fl/fMYg8dTtSzuzP/LajH/yDlW
 i02Pr7FazF7Sz2Kx9PpFJovWvUfYLfZf8XJg91gzbw2jx7evk1g83t9oZffYtKqTzWPzknqP
 z5vkAtiiuGxSUnMyy1KL9O0SuDLeb8gqWCxQMbthKVMDYyNfFyMnh4SAicTzSfsYQWwhgR2M
 EkcvG3QxcgHZFxgljsxuB0uwCWhIPF1xmqmLkYNDRCBB4tZLIZAaZoEzjBJ3+5exgdQICzhI
 rL05mRGkhkVAVeLflyyQMK+As8Tauf2sELvkJG6e62QGsTkFXCR+H37GCrHXWeLp+qNQNY1M
 Ejc/RUDYQhKnF59lnsDIt4CRYRWjUG5mcnZqUWa2XkFGZUlqsl5K6iZGYKAdnqh+aQdj3xyP
 Q4wCHIxKPLwJl5/HCLEmlhVX5h5ilOBgVhLhjd3/LEaINyWxsiq1KD++qDQntfgQozQHi5I4
 7wbekjAhgfTEktTs1NSC1CKYLBMHp1QDo4HPCv2Sf9NsI44xczZYrbNZtSd72SX12UenaRv0
 PrFc6mW+ouAu05OdZe98TEVuTuC4c2r/3Hkztq+Yekpzas4Xk+VzTNb4SOuXf95aYSmXeDxm
 OUfK9YiX0yqXnD1skSImnvpAvzxBPG6NonbU9Nx5S3ee4Sl46vnpqcqErJgFAveZNTfxtCix
 FGckGmoxFxUnAgDw53SmMAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062012_862622_994E6AF8 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tony Lindgren <tony@atomide.com>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

The phyCORE-AM335x EMMC modules have an EMMC populated and are based
on the phyCORE-AM335x R2 SOM. Therefore, the EMMC node will be added to
the phycore-som devce tree but is by default disabled.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boot/dts/am335x-phycore-som.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/am335x-phycore-som.dtsi b/arch/arm/boot/dts/am335x-phycore-som.dtsi
index f5b53d30e9a9..2bc2265534e1 100644
--- a/arch/arm/boot/dts/am335x-phycore-som.dtsi
+++ b/arch/arm/boot/dts/am335x-phycore-som.dtsi
@@ -49,6 +49,33 @@
 	status = "okay";
 };
 
+/* EMMC */
+&am33xx_pinmux {
+	emmc_pins: pinmux_emmc_pins {
+		pinctrl-single,pins = <
+			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN1, PIN_INPUT_PULLUP, MUX_MODE2)	/* gpmc_csn1.mmc1_clk */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_CSN2, PIN_INPUT_PULLUP, MUX_MODE2)	/* gpmc_csn2.mmc1_cmd */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD0, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad0.mmc1_dat0 */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD1, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad1.mmc1_dat1 */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD2, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad2.mmc1_dat2 */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD3, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad3.mmc1_dat3 */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD4, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad4.mmc1_dat4 */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD5, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad5.mmc1_dat5 */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD6, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad6.mmc1_dat6 */
+			AM33XX_PADCONF(AM335X_PIN_GPMC_AD7, PIN_INPUT_PULLUP, MUX_MODE1)	/* gpmc_ad7.mmc1_dat7 */
+		>;
+	};
+};
+
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_pins>;
+	vmmc-supply = <&vmmc_reg>;
+	bus-width = <8>;
+	ti,non-removable;
+	status = "disabled";
+};
+
 /* Ethernet */
 &am33xx_pinmux {
 	ethernet0_pins: pinmux_ethernet0 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
