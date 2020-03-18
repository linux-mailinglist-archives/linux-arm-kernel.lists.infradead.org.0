Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D634F189A7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cG2PB+Em9n4AIPQBWpGREppfQXR9hiCmiNSmku0pEXk=; b=u69uGLalxADLVKBRTThNEOfL5+
	cZQkmDNZsmDmfqSTsZ1G6HsR4qxxCEDo0yjBzCfDRYaTvv49j4nzFFsEvKZEdg96cHHmqfTDCOkoP
	rz9MVy9eGCFvZibPyaFJl/3Go7HGlVr3QbLDKHQ8DyvhnjX0EKoioftfK+sk4XT80vPPz18BpoqWd
	k/GXm2dydKTb1T61mJ94UGsJVDzlIagT9WouNzUwL4kCGTvMzf5YVsurEwfFpdfeeER2FSxVmyilH
	XAH29+OWs6Vzuv1n3TMz7MrLAQa1ekvnj9BZmTh9DflteYwzLTzb+4txa3MMlK+SgnyV7qGPU+hMr
	WlHPPYqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWij-0007uU-Vk; Wed, 18 Mar 2020 11:18:46 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWiF-0007gs-Kz
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:18:17 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200318111811epoutp0127b21069285f509d45b092443db0b95e~9YeeRdm_D2380423804epoutp01a
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 11:18:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200318111811epoutp0127b21069285f509d45b092443db0b95e~9YeeRdm_D2380423804epoutp01a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584530291;
 bh=0ogGbMGNWOHu+IsRUj8FqJ93r0JgndC1MhFG6E6RBAQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o90j8zvM7NAp0p4s7fkQgMqs/DF5a2qVRg7zkqotsTsdKgY8tx9VhjySKLm5hDp0e
 akrh2VH+T4Aak+JEotg3Zs7UdIHubBiHXPP9wYAES+V2nzOJalhCBOOMQOBnqUiHgh
 fk5RD3WE4hPHyiS7vC0lInyCs37GeJ4FQmoUNFhA=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200318111810epcas5p14db4eb88a0aa8b43f734e5f1402626ee~9YedyOSmT3102031020epcas5p1q;
 Wed, 18 Mar 2020 11:18:10 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 8B.4E.04736.273027E5; Wed, 18 Mar 2020 20:18:10 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200318111809epcas5p37b33e3038ede4797c83682314afc683b~9YedBB80I1474914749epcas5p3B;
 Wed, 18 Mar 2020 11:18:09 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200318111809epsmtrp25a6b32c6251ca3e7a7138524a3fd2fdb~9Yec_ZN3U3128231282epsmtrp2z;
 Wed, 18 Mar 2020 11:18:09 +0000 (GMT)
X-AuditID: b6c32a4b-ae3ff70000001280-12-5e72037237d4
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D1.3D.04024.173027E5; Wed, 18 Mar 2020 20:18:09 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200318111807epsmtip22fe9d1251e5e09e6c20cf7158dfa803a~9YebNpFXa0257602576epsmtip2f;
 Wed, 18 Mar 2020 11:18:07 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v2 3/5] Documentation: devicetree: ufs: Add DT bindings for
 exynos UFS host controller
Date: Wed, 18 Mar 2020 16:41:42 +0530
Message-Id: <20200318111144.39525-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318111144.39525-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEKsWRmVeSWpSXmKPExsWy7bCmpm4Rc1GcwccmBYsH87axWbz8eZXN
 4tP6ZawW84+cY7U4f34Du8XNLUdZLDY9vsZqcXnXHDaLGef3MVl0X9/BZrH8+D8mi9a9R9gt
 lm69yejA63G5r5fJY9OqTjaPzUvqPVpO7mfx+Pj0FotH35ZVjB6fN8l5tB/oZgrgiOKySUnN
 ySxLLdK3S+DK6H24n6Vgi3bF5B+nWRsYpyt1MXJySAiYSHxf8IWxi5GLQ0hgN6PEwZ+foZxP
 jBInL1xignC+MUqsmzWXDaZl8geYxF5GibZXG6FaWpgkNv9czwxSxSagLXF3+hYmEFtEIEDi
 0vuDbCBFzALzmCQWPeoBSwgLZEjc/nYBrIFFQFViwdobLCA2r4CNxPOPl6DWyUus3nAArIZT
 wFbi791WsG0SAvfZJPZvfwBV5CKx+eMMFghbWOLV8S3sELaUxOd3e4FqOIDsbImeXcYQ4RqJ
 pfOOQZXbSxy4MocFpIRZQFNi/S59kDCzAJ9E7+8nTBCdvBIdbUIQ1aoSze+uQnVKS0zs7maF
 sD0kTu18xgIJhwmMEgt/vGKdwCg7C2HqAkbGVYySqQXFuempxaYFxnmp5XrFibnFpXnpesn5
 uZsYwSlFy3sH46ZzPocYBTgYlXh4OTYUxAmxJpYVV+YeYpTgYFYS4V1cmB8nxJuSWFmVWpQf
 X1Sak1p8iFGag0VJnHcS69UYIYH0xJLU7NTUgtQimCwTB6dUA2OCC+fyxwe1NSe9XXnpg5Z+
 h3OxuLzI1XanbJ/fmW4zdr4s7BcPq23zUou48i4iPEwp1X+Dyrs+6cIZr7h+f1GVif3YJ2yR
 4nBv04ej784+7ZbcntK9UuT03K/6u1calL4zi9Pz/bz04LGT67e5/bD6u7C2JVNFpEqI/82P
 g+ezHmxkeXNh+xIlluKMREMt5qLiRAC2OfcvJQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrALMWRmVeSWpSXmKPExsWy7bCSvG4hc1GcwYnpKhYP5m1js3j58yqb
 xaf1y1gt5h85x2px/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFq17j7Bb
 LN16k9GB1+NyXy+Tx6ZVnWwem5fUe7Sc3M/i8fHpLRaPvi2rGD0+b5LzaD/QzRTAEcVlk5Ka
 k1mWWqRvl8CV0ftwP0vBFu2KyT9OszYwTlfqYuTkkBAwkZj84RITiC0ksJtR4tRaT4i4tMT1
 jRPYIWxhiZX/ngPZXEA1TUwSS579ZANJsAloS9ydvgWsWUQgSOLemrWsIEXMAquYJDp7zzKC
 JIQF0iQOfrnIDGKzCKhKLFh7gwXE5hWwkXj+8RIbxAZ5idUbDoDVcArYSvy928oIcZGNxLHJ
 v1gmMPItYGRYxSiZWlCcm55bbFhgmJdarlecmFtcmpeul5yfu4kRHM5amjsYLy+JP8QowMGo
 xMObsKkgTog1say4MvcQowQHs5II7+LC/Dgh3pTEyqrUovz4otKc1OJDjNIcLErivE/zjkUK
 CaQnlqRmp6YWpBbBZJk4OKUaGOeXdtzUNijfXVb5ZdO6I1fcVS43hdrI8a5KmL/Xk32XRWBB
 7e3FqluN/rzZ2rFCTO/Wt48tCbK9XyO5V69P1uKvfCCd6jXPabWxykfZ9Ap/x4UyN8WvKH1d
 uezPRpaMqMscJnvV1+6vP+kceG2zSmqVqcMnHtv/XJppqz+lKmqun+sZzSEXpsRSnJFoqMVc
 VJwIACwJcshjAgAA
X-CMS-MailID: 20200318111809epcas5p37b33e3038ede4797c83682314afc683b
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200318111809epcas5p37b33e3038ede4797c83682314afc683b
References: <20200318111144.39525-1-alim.akhtar@samsung.com>
 <CGME20200318111809epcas5p37b33e3038ede4797c83682314afc683b@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_041815_896643_4EC7E1F6 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
