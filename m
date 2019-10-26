Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F117E595C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 11:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ACaHmBWJJA9Uvy+RhraVckt5G7cTc/wTa6MvaYt86w=; b=QjcGDyB8xmdYln
	dmo0OtFdWKZmV8vr2c4PSRiYQEktHV+fm7yZ1TCCOFQ+jZnso34/WuJzN2rMxvsZFYN1kUtpw2Uzg
	dRRmrrppN1oavTe8HpOGQ4dmmTj1YIYnnUAfWtj0fo3WIG5c2X1HCfpLWJ1uR3hK/Y5HyHWsT1Msy
	CXQikue2zyCtyr4uE4toGnnG7JDIrE9SqmzrKSnCJsL/f6w/pqXUBEIxo1jemKThW9u7XhI83nAEw
	KhWFBWETnYAdN2Zn7LYvMJVCwvdZ8M+8n1lnXhSqyYgk+AAe4jGtrmAKLMUYGMhaBYEDZdU7EyH3c
	5+94nBILrtS2mY2GTCUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOI0v-0005M6-PQ; Sat, 26 Oct 2019 09:05:37 +0000
Received: from mout.perfora.net ([74.208.4.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOHzw-0003zE-RM
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 09:04:39 +0000
Received: from marcel-nb-toradex-int.cardiotech.int ([81.221.67.182]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1Mna9J-1hfdWD3j4H-00jWpj; Sat, 26 Oct 2019 11:04:21 +0200
From: Marcel Ziswiler <marcel@ziswiler.com>
To: devicetree@vger.kernel.org
Subject: [PATCH v2 2/5] dt-bindings: arm: fsl: add nxp based toradex
 apalis/colibri binding docu
Date: Sat, 26 Oct 2019 11:04:00 +0200
Message-Id: <20191026090403.3057-2-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191026090403.3057-1-marcel@ziswiler.com>
References: <20191026090403.3057-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:SnhVHRVvbDZqq57bt8ycn0RqZcXnZPwkFSn123IVncODo7yNFDn
 qt0vx1vlOB25lGok0cA11QDYKYIBSRZPmp+uDSGCPaPR9JHNp3fAZGSgoAN07B9WWEBbrDP
 Yq6tk2ASGCcm8KttiKkj7MeHU+QtzDfhQZPfSolnEfUibJGRgeffzIVcq7rjQUkdxXmWEsa
 qf41yRlidrQd5I9IUmpCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2+bS6cn37WY=:aAYwrbYZyKnLnimqlgvrex
 k5BRaeR0EFRJGp+FLamHiIWfHhwF7KrnZeJYkn27E+W5GR80l1z9RMaZUbADC/y1BtI0NM/Ko
 cGOlUHlIqx8mFEJU4pQ74ZhtEu6anvKOtg5eko8GHW9bCEiUoXmbAbNR879M8KohBB1RVrstc
 mi+CM4yE3Kbq/QHdA+Af8pfiNALSbApPH/uMM2eUM+CZU+SaoGkQcuq7j9KR2iW4+ool2kClI
 bsIn7V6Z66r8wbmyogfoabI70zeW4yC+HLrJhlbRdwoiBWO+CKa9SGcp7R+Ibip78QyCoFwzA
 FUqP1+jX78FRlYAwaWVLzS7KlefKYkV0gVx+WYi2DrBfoVpDbPO0wlcGpvu4hHGmI1/n8QlGM
 cLhgD5w/5Ef8Y6849nT+Bv6esJ6TOtg093rElTV91UkD1JKaGRhi8xDMObDC6HMzm6pSSvXfM
 Jvg4soTEgnWlGAXLKyqhr/BsvtcSNn1v7rDJa+GgmwvEutnwqn84SmnrGVpUkLELosgJ69pKv
 io+rq5s6vjQU2m3myJ/BWte9r71KMfH6S+mdQxdf1udgMCX7tQKPzFmCS26vmmLz+oWp+ghsr
 mBCSwl8flhn32r2KOXGUuqLjd/Gfua0Ur6p3FFQ9qTnHGFZOarmzdLZ78asqAhaiC3Hc3hwd2
 IilC5V2EvmmMM9DMFqH6M4R0HVJsAR+zC542QyKOZNdgyOWF/0kreAksZ4BZL2GMuAmsnbdUm
 eOz5fbOZhQv2zVuoz7t2tG+U1QoekMm5LIp8HDoKToi9kjNsmfrV+RNQoukTm1P+wp3jA0HdN
 ZM1OkytnEnvuUBe1WfjdpqCS/ui4JP3wxqtvgNS5raASo2gkFanXlu48DphGNnd8g+ERZOJ32
 VTb3jEFoLru4nnfQBwCVmhBkmT6tPF6jMXMC+99eI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_020436_965108_0F9DBA27 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.196 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Document the following NXP SoC based Toradex Apalis and Colibri module
and carrier board devicetree bindings already supported:
- toradex,apalis_imx6q            # Apalis iMX6 Module
- toradex,apalis_imx6q-eval       # Apalis iMX6 Module on Apalisi
				    Evaluation Board
- toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
- toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1

- toradex,colibri_imx6dl          # Colibri iMX6 Module
- toradex,colibri_imx6dl-eval-v3  # Colibri iMX6 Module on Colibri
				    Evaluation Board V3

- toradex,colibri-imx6ull-eval            # Colibri iMX6ULL Module on
					    Colibri Evaluation Board
- toradex,colibri-imx6ull-wifi-eval       # Colibri iMX6ULL Wi-Fi /
					    Bluetooth Module on Colibri
					    Evaluation Board

- toradex,colibri-imx7s           # Colibri iMX7 Solo Module
- toradex,colibri-imx7s-eval-v3   # Colibri iMX7 Solo Module on
				    Colibri Evaluation Board V3

- toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
- toradex,colibri-imx7d-emmc              # Colibri iMX7 Dual 1GB (eMMC)
					    Module
- toradex,colibri-imx7d-emmc-eval-v3      # Colibri iMX7 Dual 1GB (eMMC)
                                            Module on Colibri Evaluation
					    Board V3
- toradex,colibri-imx7d-eval-v3           # Colibri iMX7 Dual Module on
					    Colibri Evaluation Board V3
- toradex,vf500-colibri_vf50              # Colibri VF50 Module
- toradex,vf500-colibri_vf50-on-eval      # Colibri VF50 Module on
					    Colibri Evaluation Board
- toradex,vf610-colibri_vf61              # Colibri VF61 Module
- toradex,vf610-colibri_vf61-on-eval      # Colibri VF61 Module on
					    Colibri Evaluation Board

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v2: New patch.

 Documentation/devicetree/bindings/arm/fsl.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 41db01d77c23..96b05484527e 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -121,6 +121,10 @@ properties:
               - fsl,imx6q-sabresd
               - technologic,imx6q-ts4900
               - technologic,imx6q-ts7970
+              - toradex,apalis_imx6q            # Apalis iMX6 Module
+              - toradex,apalis_imx6q-eval       # Apalis iMX6 Module on Apalis Evaluation Board
+              - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
+              - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
           - const: fsl,imx6q
 
       - description: i.MX6QP based Boards
@@ -142,6 +146,8 @@ properties:
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
               - technologic,imx6dl-ts4900
               - technologic,imx6dl-ts7970
+              - toradex,colibri_imx6dl          # Colibri iMX6 Module
+              - toradex,colibri_imx6dl-eval-v3  # Colibri iMX6 Module on Colibri Evaluation Board V3
               - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
               - ysoft,imx6dl-yapp4-hydra  # i.MX6 DualLite Y Soft IOTA Hydra board
               - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
@@ -194,6 +200,8 @@ properties:
               - armadeus,imx6ull-opos6ul    # OPOS6UL (i.MX6ULL) SoM
               - armadeus,imx6ull-opos6uldev # OPOS6UL (i.MX6ULL) SoM on OPOS6ULDev board
               - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
+              - toradex,colibri-imx6ull-eval            # Colibri iMX6ULL Module on Colibri Evaluation Board
+              - toradex,colibri-imx6ull-wifi-eval       # Colibri iMX6ULL Wi-Fi / Bluetooth Module on Colibri Evaluation Board
           - const: fsl,imx6ull
 
       - description: i.MX6ULZ based Boards
@@ -206,6 +214,8 @@ properties:
       - description: i.MX7S based Boards
         items:
           - enum:
+              - toradex,colibri-imx7s           # Colibri iMX7 Solo Module
+              - toradex,colibri-imx7s-eval-v3   # Colibri iMX7 Solo Module on Colibri Evaluation Board V3
               - tq,imx7s-mba7             # i.MX7S TQ MBa7 with TQMa7S SoM
           - const: fsl,imx7s
 
@@ -214,6 +224,10 @@ properties:
           - enum:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
               - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
+              - toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
+              - toradex,colibri-imx7d-emmc              # Colibri iMX7 Dual 1GB (eMMC) Module
+              - toradex,colibri-imx7d-emmc-eval-v3      # Colibri iMX7 Dual 1GB (eMMC) Module on Colibri Evaluation Board V3
+              - toradex,colibri-imx7d-eval-v3           # Colibri iMX7 Dual Module on Colibri Evaluation Board V3
               - tq,imx7d-mba7             # i.MX7D TQ MBa7 with TQMa7D SoM
               - zii,imx7d-rmu2            # ZII RMU2 Board
               - zii,imx7d-rpu2            # ZII RPU2 Board
@@ -280,6 +294,10 @@ properties:
               - fsl,vf600
               - fsl,vf610
               - fsl,vf610m4
+              - toradex,vf500-colibri_vf50              # Colibri VF50 Module
+              - toradex,vf500-colibri_vf50-on-eval      # Colibri VF50 Module on Colibri Evaluation Board
+              - toradex,vf610-colibri_vf61              # Colibri VF61 Module
+              - toradex,vf610-colibri_vf61-on-eval      # Colibri VF61 Module on Colibri Evaluation Board
 
       - description: ZII's VF610 based Boards
         items:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
