Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC102122450
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 06:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W0/0ZOCnF1x1vsQU4AU9qGoLfENieQSEnwSLGCezh40=; b=rumYF3fWuXeynIsKS8/Q48lzSO
	80Haqobtn0P2rKrTBqUymhw5shYVDmKrH8/OqZtk+6FARSb1k+t55AzNWnviC/KUg55NkIcX00fyq
	63/3YDd+k6pLu3894mTlNtiDk9/yc/zoZO7h2j+SFqcDm0ITdky8tN4bcjidOor33uI8Z3eyM1h9O
	0EAXASDNTdZOqykdGJkPrwJczxlYwwqd/6zfCl2O1nPg38+OQhNp2alxW92Uog6R0v+MFEQbgsyUq
	FhY1mlgtNmaXzW0Vx3B5su4b8yllufLICTtv4auKy2jsqL2D55DjbnZS53++zv+hgxBm+SEBtBwy5
	GWKiySOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5nN-0001wf-Ln; Tue, 17 Dec 2019 05:53:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5lW-0000VN-BP
 for linux-arm-kernel@bombadil.infradead.org; Tue, 17 Dec 2019 05:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eX43I+qUocUpECabhW06ewcSAYF+DXL//QhEerlGfJ0=; b=v5NIkTDezOGIIpVGTq5bWAXyz
 jnAjsM9p2yKCYps7OAdjTGby83KOGnPGIrr/WJ00ZRRQFaHMQ2ubc4azstWJemsg+9huCbCNtJWN0
 e0pOYT4gpwpN0YsBIK0UZnrXAGc7OGcVwj70KyqhNLdLDv8j11NYb3oYxihsyc3BspYrRKRZF1uk1
 UW0AVJy5uzNr7TgTjooGuBV5xdk5K2IdFddqN10I5b2WcgPqfxRy4xf7jajBdNRNeLD4zL3L34Mmu
 I2q5qnTiGmOStHxEeVAQUEnrUbWs4Ffyodgt9Y8seWT7f2AddB9AHG/k988b5tH/308BLevFP7qGG
 i80iG3kDA==;
Received: from mailout3.samsung.com ([203.254.224.33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5lv-0004Ab-EX
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 05:51:54 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191217055112epoutp0366ce02b405aeadefddfa42e40bfd5a22~hEqt76Q8r0699406994epoutp031
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 05:51:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191217055112epoutp0366ce02b405aeadefddfa42e40bfd5a22~hEqt76Q8r0699406994epoutp031
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576561872;
 bh=eX43I+qUocUpECabhW06ewcSAYF+DXL//QhEerlGfJ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XIJYdB/PZKu2hX93mgGv19r1D+NLLpBh1QO4eIa6gavIqvRW5T5rw6z4kvBsUA0LJ
 Gk6rqcyNJo9P622HkmhA1cMoJwaAETcsaFNwEOFUONBxX37F8y3NQSVLjUhCx/98Kx
 aiWG2eBD02jq9aZjvjaYOn9c+J+zwBfG5meQABL8=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191217055111epcas1p284005aa7c5a889f3a27912cf18147b55~hEqtcedDZ1712517125epcas1p2G;
 Tue, 17 Dec 2019 05:51:11 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.156]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47cS1R3ktKzMqYkm; Tue, 17 Dec
 2019 05:51:07 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 AC.0D.51241.BCC68FD5; Tue, 17 Dec 2019 14:51:07 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epcas1p4c0f65bec74e53b38d95e984e146bf8b6~hEqou9Q4M2005920059epcas1p4q;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191217055106epsmtrp1596427e0e0cc9d280a8cb4b2f0601480~hEqouDwvN3020530205epsmtrp1D;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
X-AuditID: b6c32a39-14bff7000001c829-4c-5df86ccb8eb8
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 50.8E.06569.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epsmtip159a0b039960390042e3c2e02ec18ad38~hEqodSZ_D0093400934epsmtip1i;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH 8/9] ARM: dts: exynos: Replace deprecated property for
 Exynos bus and DMC
Date: Tue, 17 Dec 2019 14:57:37 +0900
Message-Id: <20191217055738.28445-9-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFJsWRmVeSWpSXmKPExsWy7bCmvu7pnB+xBnPmyFrcn9fKaHH9y3NW
 i/lHzrFa/H/0mtWi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGi08P/jNb
 zDi/j8liYVMLu8XaI3fZLZZev8hkcbtxBZtF694j7A5CHmvmrWH02LSqk81j85J6j43vdjB5
 9G1Zxeix/do8Zo/Pm+QC2KOybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPIS
 c1NtlVx8AnTdMnOA3lBSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFFgW6BUn5haX
 5qXrJefnWhkaGBiZAhUmZGfsnTaXteCaR8W3czdYGxhvW3UxcnJICJhIXF79hrGLkYtDSGAH
 o8S3KTuZQBJCAp8YJdofGkIkvjFK9Py9yAzT8fnHIXaIxF5Gieldd1ghnC+MEpufzmMBqWIT
 0JLY/+IGG4gtIlAnMf/wDiaQImaBm0wSey7dYgVJCAtES6yZ+ZsRxGYRUJX4vaoJLM4rYCWx
 pmkSI8Q6eYnVGw6AreYUsJZ4vu012CAJgf9sEn1nTkMVuUisXNfNBGELS7w6voUdwpaSeNnf
 BmVXS6w8eYQNormDUWLL/gusEAljif1LJwM1cwCdpymxfpc+RFhRYufvuWDzmQX4JN597WEF
 KZEQ4JXoaBOCKFGWuPzgLtRaSYnF7Z1sELaHxKxZs6Dh2Mco8WuH/gRGuVkICxYwMq5iFEst
 KM5NTy02LDBFjrJNjOB0qmW5g/HYOZ9DjAIcjEo8vBIl32OFWBPLiitzDzFKcDArifDuUAAK
 8aYkVlalFuXHF5XmpBYfYjQFhuREZinR5Hxgqs8riTc0NTI2NrYwMTQzNTRUEufl+HExVkgg
 PbEkNTs1tSC1CKaPiYNTqoExiGPDhC6N/MMKfWGVcrxruabNPl065crW7orGCc97Ll/3td3T
 8Vv//cJ4PinDW7sd30qrMFVYbpjnct5x+1XGtbeiZ21c7cDOJe6o0p5UIf7F/52DxU3uKpWX
 0c7zd9Z6qV59M19wqV3OaTsztWdhCzZ3VIburTWUUGXXmbi71va+xMO3E24qsRRnJBpqMRcV
 JwIAmnE7Db0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsWy7bCSnO6pnB+xBrc+K1ncn9fKaHH9y3NW
 i/lHzrFa/H/0mtWi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGi08P/jNb
 zDi/j8liYVMLu8XaI3fZLZZev8hkcbtxBZtF694j7A5CHmvmrWH02LSqk81j85J6j43vdjB5
 9G1Zxeix/do8Zo/Pm+QC2KO4bFJSczLLUov07RK4MvZOm8tacM2j4tu5G6wNjLetuhg5OSQE
 TCQ+/zjE3sXIxSEksJtR4uu+eSwQCUmJaRePMncxcgDZwhKHDxdD1HxilPh4diY7SA2bgJbE
 /hc32EBsEYE2Rokl3+VAbGaB50wS+7rMQGxhgUiJS6f/gNWzCKhK/F7VxApi8wpYSaxpmsQI
 sUteYvWGA8wgNqeAtcTzba+ZQGwhoJqfU5+xTmDkW8DIsIpRMrWgODc9t9iwwCgvtVyvODG3
 uDQvXS85P3cTIzjotbR2MJ44EX+IUYCDUYmHV6Lke6wQa2JZcWXuIUYJDmYlEd4dCkAh3pTE
 yqrUovz4otKc1OJDjNIcLErivPL5xyKFBNITS1KzU1MLUotgskwcnFINjNOX+Sxn/seWedUs
 P5iTt/JAdrOLhrak+87omZvF8gx63DqjKqPu7myUeV7zYsnnqb8aePu1Y08FSL44ekvqZqAf
 94GXv65Lvr7wlF++LOJn1cFy4R2ZPjd2ShzQeNYwLaHO9YfyNfck89mTiydW1xzalTSjrfr8
 xU/RPWc+e6yZnizakNB0SomlOCPRUIu5qDgRAIb3PhJ2AgAA
X-CMS-MailID: 20191217055106epcas1p4c0f65bec74e53b38d95e984e146bf8b6
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191217055106epcas1p4c0f65bec74e53b38d95e984e146bf8b6
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p4c0f65bec74e53b38d95e984e146bf8b6@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_055152_083726_0DD20EEA 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 kgene@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the property related to devfreq and devfreq-event device
to remove the deprecated property name.
- Replace 'devfreq' with 'exynos,parent-bus' property
  for getting the parent devfreq device of exynos-bus.
- Replace 'devfreq-events' with 'exynos,ppmu-device' property
  for getting the devfreq-event device to monitor bus utilization.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 arch/arm/boot/dts/exynos3250-monk.dts         |  2 +-
 arch/arm/boot/dts/exynos3250-rinato.dts       | 18 +++++-----
 .../boot/dts/exynos4412-itop-scp-core.dtsi    | 16 ++++-----
 arch/arm/boot/dts/exynos4412-midas.dtsi       | 18 +++++-----
 .../boot/dts/exynos4412-odroid-common.dtsi    | 18 +++++-----
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 34 +++++++++----------
 6 files changed, 53 insertions(+), 53 deletions(-)

diff --git a/arch/arm/boot/dts/exynos3250-monk.dts b/arch/arm/boot/dts/exynos3250-monk.dts
index 248bd372fe70..c6b1fcd4ba97 100644
--- a/arch/arm/boot/dts/exynos3250-monk.dts
+++ b/arch/arm/boot/dts/exynos3250-monk.dts
@@ -158,7 +158,7 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/exynos3250-rinato.dts b/arch/arm/boot/dts/exynos3250-rinato.dts
index 86c26a4edfd7..7ad80354d8df 100644
--- a/arch/arm/boot/dts/exynos3250-rinato.dts
+++ b/arch/arm/boot/dts/exynos3250-rinato.dts
@@ -153,49 +153,49 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
 
 &bus_leftbus {
-	devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+	exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 	vdd-supply = <&buck3_reg>;
 	status = "okay";
 };
 
 &bus_rightbus {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_lcd0 {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mcuisp {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_isp {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_peril {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
index dfceb155b3a7..e275a52eb0d3 100644
--- a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
+++ b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
@@ -70,44 +70,44 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
 
 &bus_acp {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_c2c {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_leftbus {
-	devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+	exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 	vdd-supply = <&buck3_reg>;
 	status = "okay";
 };
 
 &bus_rightbus {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_peri {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
index 83be3a797411..1869eed05167 100644
--- a/arch/arm/boot/dts/exynos4412-midas.dtsi
+++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
@@ -288,49 +288,49 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
 
 &bus_acp {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_c2c {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_leftbus {
-	devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+	exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 	vdd-supply = <&buck3_reg>;
 	status = "okay";
 };
 
 &bus_rightbus {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_display {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_peri {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
index ea55f377d17c..bb5a7cbcc308 100644
--- a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
+++ b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
@@ -88,49 +88,49 @@
 };
 
 &bus_dmc {
-	devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+	exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 	vdd-supply = <&buck1_reg>;
 	status = "okay";
 };
 
 &bus_acp {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_c2c {
-	devfreq = <&bus_dmc>;
+	exynos,parent-bus = <&bus_dmc>;
 	status = "okay";
 };
 
 &bus_leftbus {
-	devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+	exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 	vdd-supply = <&buck3_reg>;
 	status = "okay";
 };
 
 &bus_rightbus {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_display {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_peri {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_leftbus>;
+	exynos,parent-bus = <&bus_leftbus>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 059fa32d1a8f..8510e2787a9c 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -134,7 +134,7 @@
 };
 
 &bus_wcore {
-	devfreq-events = <&nocp_mem0_0>, <&nocp_mem0_1>,
+	exynos,ppmu-device = <&nocp_mem0_0>, <&nocp_mem0_1>,
 			<&nocp_mem1_0>, <&nocp_mem1_1>;
 	vdd-supply = <&buck3_reg>;
 	exynos,saturation-ratio = <100>;
@@ -142,77 +142,77 @@
 };
 
 &bus_noc {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_fsys_apb {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_fsys {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_fsys2 {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_mfc {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_gen {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_peri {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_g2d {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_g2d_acp {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_jpeg {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_jpeg_apb {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_disp1_fimd {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_disp1 {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_gscl_scaler {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
 &bus_mscl {
-	devfreq = <&bus_wcore>;
+	exynos,parent-bus = <&bus_wcore>;
 	status = "okay";
 };
 
@@ -225,7 +225,7 @@
 };
 
 &dmc {
-	devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
+	exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
 			<&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
 	device-handle = <&samsung_K3QF2F20DB>;
 	operating-points-v2 = <&dmc_opp_table>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
