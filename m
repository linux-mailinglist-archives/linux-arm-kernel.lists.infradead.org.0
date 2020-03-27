Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB13195C35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:15:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cG2PB+Em9n4AIPQBWpGREppfQXR9hiCmiNSmku0pEXk=; b=Wzv1wBfIyGe6j2f1F5I33aF2PG
	OzI4J5fxCy39ePRfB4ChZ2Cu2+nH3NFJdkDMpUVfP6rvxQp/cqct3cfY3Csj6Jnx4GfSlME4bU9Q+
	F/Wkwxy25L9zA511mh1JIKKYnTjFH3o/2R0AdkqKQIc0K8XoACCSTJ3994HOrFg9fq5vuUM+k5LS3
	irlqc/p/ptpy0W7ehdMHxOmTKuuGjP3yBZ6zbsZL8d8hkQFqQPDIlj8hmpMQZoXIIXw4JI/T7AzcK
	fKGXI7tAsQPEcQNLzGkwp1degIdyC9QlGbZ9RN5Q4PUh3D5WOJx+9zsLgSH4JCIpj1w/xBrogTyi/
	/MMmCZvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsZN-0005dN-SC; Fri, 27 Mar 2020 17:14:57 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsYo-0005O8-5q
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:14:25 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200327171419epoutp03fed7d3a45508076e948de4b0287461d6~AOI-lWo-v1871718717epoutp03D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 17:14:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200327171419epoutp03fed7d3a45508076e948de4b0287461d6~AOI-lWo-v1871718717epoutp03D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585329259;
 bh=0ogGbMGNWOHu+IsRUj8FqJ93r0JgndC1MhFG6E6RBAQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DyXo4t7S8Vsa1bFQWujjuF6nCQXpduASFTv/Dfn+2xv8zDxLFauCbykZ7R67XwfFM
 IDCWNuXFM1+wT7JI+TiKbje+DO6aBBirMDCF9UJJSx4Cq7R4XdQA1olWw2q98bJaEL
 naI8HM+mHn5LHwl9HQgmJ++mLAuvtyIx2WDUQ+ro=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200327171419epcas5p4556c8c663ee03f8891b0bb72040f70c9~AOI-Mk4pW2894828948epcas5p4d;
 Fri, 27 Mar 2020 17:14:19 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 68.4F.04778.A643E7E5; Sat, 28 Mar 2020 02:14:19 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200327171418epcas5p4b85bea273e17c05a7edca58f528c435a~AOI_v4oSU2894828948epcas5p4c;
 Fri, 27 Mar 2020 17:14:18 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200327171418epsmtrp2a732b41db40c7cb380b3a88fd0604d20~AOI_vHpCt2787527875epsmtrp2T;
 Fri, 27 Mar 2020 17:14:18 +0000 (GMT)
X-AuditID: b6c32a4a-33bff700000012aa-bd-5e7e346ac875
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 64.2C.04024.A643E7E5; Sat, 28 Mar 2020 02:14:18 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200327171416epsmtip1226681493d2d08f0fe317b8fe471f1bf~AOI81zBvF3081730817epsmtip1E;
 Fri, 27 Mar 2020 17:14:16 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v4 3/5] Documentation: devicetree: ufs: Add DT bindings for
 exynos UFS host controller
Date: Fri, 27 Mar 2020 22:36:36 +0530
Message-Id: <20200327170638.17670-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327170638.17670-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGec/NM3FympJvWhYHBG9ppsL5oCUYcbpgfgqSsJYedOimbNOy
 vFXeN2VaaYrXUjNL1LnMFtO5aSLSBG1OAyFbg24oaqUiSM2j9O35/5/f87wvLy+JijS4NymR
 KTm5TJxOE67YoDnA/3haRH7iiXYl86l5kGC+bVkJZq23E2daxiw4Mz3d58Is6MYxRmufw5lZ
 fSPBPJ4eRhiVbYhgnk3sIEyxYcyF6Xi1AGKE7GxVJcJqu8sJdqC9gC2aHMHYVcdHjK3SdQN2
 XevLlhpVSDyZ4BqVzKVLsjl56KnrrqmVSyNYpi7o1oPNKbwQ1NEVQEBCKgLOaGrxCuBKiqi3
 ADbde4jwwxqAOtswwQ9/ANxqnQf7kb7q5y68YQDQaqrZo4oQ2DU6iTgpggqCi3W6Xe1JxcOZ
 ldFdCKWaEfjks3rX8KBS4eBA/z9NkhjlB9//uuFcC6koWGJYxPnTjsIXfUbUqQVUNJx/U4s6
 eyBlJ+BcUxvKQ2dgeXMDwWsP+H1C58Jrb7i+bCCc/ZBKg2p9OL/OhR3N7zBen4bGD42YE0Gp
 ANirD3WuUcodVm5/QfikEJaViHjaD95ftu4lfWC1SrV3SxaqLQ7AP4MGwNflLYgGHGn439oK
 QDc4xGUqpCmcIjLzpIy7GaIQSxVZspSQpAypFuz+k8DzQ6DTctEEKBLQbsIua16iCBdnK3Kk
 JgBJlPYUOq7kJoqEyeKc25w845o8K51TmIAPidFewhrcelVEpYiVXBrHZXLyfRchBd6FoKrA
 cQddGggbl8UGu/kp1cOp9tG8C/SBzbLwqbMHmpRIwUHb9OHIbVazM1O/XSyQm+sv2X9b4rye
 mksfXe75KelyZPSG+a8eU2dsRDf4tk3G9RsFcy+RcytG24+cuxsxsSN696/5of3BVf6bXm5E
 kl+I2SOKTuiKltBF2T2FNKZIFYcFonKF+C8BDo1jIwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPLMWRmVeSWpSXmKPExsWy7bCSnG6WSV2cwbQLchYP5m1js3j58yqb
 xaf1y1gt5h85x2px/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFq17j7Bb
 LN16k9GB1+NyXy+Tx6ZVnWwem5fUe7Sc3M/i8fHpLRaPvi2rGD0+b5LzaD/QzRTAEcVlk5Ka
 k1mWWqRvl8CV0ftwP0vBFu2KyT9OszYwTlfqYuTkkBAwkdgwcSV7FyMXh5DAbkaJPz8esUAk
 pCWub5zADmELS6z89xzMFhJoYpLonRYMYrMJaEvcnb6FCcQWEQiSuLdmLSvIIGaBVUwSnb1n
 GUESwgJpEicf/AYq4uBgEVCVOPslCSTMK2Aj0bb3LivEfHmJ1RsOMIPYnAK2Ejd2TmOG2GUj
 8aHpAPMERr4FjAyrGCVTC4pz03OLDQsM81LL9YoTc4tL89L1kvNzNzGCg1lLcwfj5SXxhxgF
 OBiVeHhXXK2NE2JNLCuuzD3EKMHBrCTC+zSyJk6INyWxsiq1KD++qDQntfgQozQHi5I479O8
 Y5FCAumJJanZqakFqUUwWSYOTqkGxp6Dotu2v7vgIVzQ/EvXfM9J/XSbktvTdUOnFx1aL6+v
 5XCi2bizMuZnv7nPZumDH+1NqziiV3v0mPxQZwvZPXF1baTuuacTdBhbpC7uYe7bN7nioUwk
 85wg1i++557LB7dNuKnJ7a28Y7GExmLV/TxJLxmViwL6FtSfVJH6d3TL9aV80Z//KbEUZyQa
 ajEXFScCAI4wTuliAgAA
X-CMS-MailID: 20200327171418epcas5p4b85bea273e17c05a7edca58f528c435a
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200327171418epcas5p4b85bea273e17c05a7edca58f528c435a
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171418epcas5p4b85bea273e17c05a7edca58f528c435a@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_101422_393766_CB5D2BAA 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds Exynos Universal Flash Storage (UFS) Host Controller DT bindings.

Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 .../devicetree/bindings/ufs/ufs-exynos.txt    | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/ufs-exynos.txt

diff --git a/Documentation/devicetree/bindings/ufs/ufs-exynos.txt b/Documentation/devicetree/bindings/ufs/ufs-exynos.txt
new file mode 100644
index 000000000000..08e2d1497b1b
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/ufs-exynos.txt
@@ -0,0 +1,104 @@
+* Exynos Universal Flash Storage (UFS) Host Controller
+
+UFSHC nodes are defined to describe on-chip UFS host controllers.
+Each UFS controller instance should have its own node.
+
+Required properties:
+- compatible        : compatible name, contains "samsung,exynos7-ufs"
+- interrupts        : <interrupt mapping for UFS host controller IRQ>
+- reg               : Should contain HCI, vendor specific, UNIPRO and
+		      UFS protector address space
+- reg-names	    : "hci", "vs_hci", "unipro", "ufsp";
+
+Optional properties:
+- vdd-hba-supply        : phandle to UFS host controller supply regulator node
+- vcc-supply            : phandle to VCC supply regulator node
+- vccq-supply           : phandle to VCCQ supply regulator node
+- vccq2-supply          : phandle to VCCQ2 supply regulator node
+- vcc-supply-1p8        : For embedded UFS devices, valid VCC range is 1.7-1.95V
+                          or 2.7-3.6V. This boolean property when set, specifies
+			  to use low voltage range of 1.7-1.95V. Note for external
+			  UFS cards this property is invalid and valid VCC range is
+			  always 2.7-3.6V.
+- vcc-max-microamp      : specifies max. load that can be drawn from vcc supply
+- vccq-max-microamp     : specifies max. load that can be drawn from vccq supply
+- vccq2-max-microamp    : specifies max. load that can be drawn from vccq2 supply
+- <name>-fixed-regulator : boolean property specifying that <name>-supply is a fixed regulator
+
+- clocks                : List of phandle and clock specifier pairs
+- clock-names           : List of clock input name strings sorted in the same
+                          order as the clocks property.
+			  "core", "sclk_unipro_main", "ref" and ref_parent
+
+- freq-table-hz		: Array of <min max> operating frequencies stored in the same
+			  order as the clocks property. If this property is not
+			  defined or a value in the array is "0" then it is assumed
+			  that the frequency is set by the parent clock or a
+			  fixed rate clock source.
+- pclk-freq-avail-range : specifies available frequency range(min/max) for APB clock
+- ufs,pwr-attr-mode : specifies mode value for power mode change, possible values are
+			"FAST", "SLOW", "FAST_auto" and "SLOW_auto"
+- ufs,pwr-attr-lane : specifies lane count value for power mode change
+		      allowed values are 1 or 2
+- ufs,pwr-attr-gear : specifies gear count value for power mode change
+		      allowed values are 1 or 2
+- ufs,pwr-attr-hs-series : specifies HS rate series for power mode change
+			   can be one of "HS_rate_b" or "HS_rate_a"
+- ufs,pwr-local-l2-timer : specifies array of local UNIPRO L2 timer values
+			   3 timers supported
+			   <FC0ProtectionTimeOutVal,TC0ReplayTimeOutVal, AFC0ReqTimeOutVal>
+- ufs,pwr-remote-l2-timer : specifies array of remote UNIPRO L2 timer values
+			   3 timers supported
+			   <FC0ProtectionTimeOutVal,TC0ReplayTimeOutVal, AFC0ReqTimeOutVal>
+- ufs-rx-adv-fine-gran-sup_en : specifies support of fine granularity of MPHY,
+			      this is a boolean property.
+- ufs-rx-adv-fine-gran-step : specifies granularity steps of MPHY,
+			      allowed step size is 0 to 3
+- ufs-rx-adv-min-activate-time-cap : specifies rx advanced minimum activate time of MPHY
+				     range is 1 to 9
+- ufs-pa-granularity : specifies Granularity for PA_TActivate and PA_Hibern8Time
+- ufs-pa-tacctivate : specifies time to wake-up remote M-RX
+- ufs-pa-hibern8time : specifies minimum time to wait in HIBERN8 state
+
+Note: If above properties are not defined it can be assumed that the supply
+regulators or clocks are always on.
+
+Example:
+	ufshc@0x15570000 {
+		compatible = "samsung,exynos7-ufs";
+		reg = <0x15570000 0x100>,
+		      <0x15570100 0x100>,
+		      <0x15571000 0x200>,
+		      <0x15572000 0x300>;
+		reg-names = "hci", "vs_hci", "unipro", "ufsp";
+		interrupts = <0 200 0>;
+
+		vdd-hba-supply = <&xxx_reg0>;
+		vdd-hba-fixed-regulator;
+		vcc-supply = <&xxx_reg1>;
+		vcc-supply-1p8;
+		vccq-supply = <&xxx_reg2>;
+		vccq2-supply = <&xxx_reg3>;
+		vcc-max-microamp = 500000;
+		vccq-max-microamp = 200000;
+		vccq2-max-microamp = 200000;
+
+		clocks = <&core 0>, <&ref 0>, <&iface 0>;
+		clock-names = "core", "sclk_unipro_main", "ref", "ref_parent";
+		freq-table-hz = <100000000 200000000>, <0 0>, <0 0>, <0 0>;
+
+		pclk-freq-avail-range = <70000000 133000000>;
+
+		ufs,pwr-attr-mode = "FAST";
+		ufs,pwr-attr-lane = <2>;
+		ufs,pwr-attr-gear = <2>;
+		ufs,pwr-attr-hs-series = "HS_rate_b";
+		ufs,pwr-local-l2-timer = <8000 28000 20000>;
+		ufs,pwr-remote-l2-timer = <12000 32000 16000>;
+		ufs-rx-adv-fine-gran-sup_en = <1>;
+		ufs-rx-adv-fine-gran-step = <3>;
+		ufs-rx-adv-min-activate-time-cap = <9>;
+		ufs-pa-granularity = <6>;
+		ufs-pa-tacctivate = <6>;
+		ufs-pa-hibern8time = <20>;
+	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
