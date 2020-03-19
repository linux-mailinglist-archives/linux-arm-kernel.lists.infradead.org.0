Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798CF18BA7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cG2PB+Em9n4AIPQBWpGREppfQXR9hiCmiNSmku0pEXk=; b=Fii0D8pGgStokKS3AQUWMKVMjN
	M7muR6W9ONYAghHidv5WaaGzYSXM8QPMkhlxAixhuzUYj2lqXGS7pC2aaP2Jfclx6TgJHP9oaOYXj
	G9/QwJIu8NjbCj3019WOSsU4laZkM2ncL/jAeURunTBI+u4fkmrLuY39tl1rG6/JVPW0UP7sF/hY+
	YOSqxHzL1ikuelVR07Y5HePGtqlD5pYIBUdx+AThODYN2hIyu4whw5iBPqxv0+eLNwdIMuy9YqHJA
	h5Fl6LSDb718U/7yNIGIrzWlHqwq9ey427sTWqapsu6vcBOvk3b7brzML80ynZ5ebNhkMxAzk2y/Z
	a3uu4VuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwm8-0001Ms-Gg; Thu, 19 Mar 2020 15:08:00 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwlM-0000ow-N6
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:07:14 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200319150709epoutp03b3f893d3a65384036dca0d805c1eeb82~9vPreTy9J2665826658epoutp03y
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 15:07:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200319150709epoutp03b3f893d3a65384036dca0d805c1eeb82~9vPreTy9J2665826658epoutp03y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584630429;
 bh=0ogGbMGNWOHu+IsRUj8FqJ93r0JgndC1MhFG6E6RBAQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f5+OndO7a+GbuIULI+e2rRf9JpZRI/c/9jhp61ujszdRXRdEEjhtXYDaNZNysKkn7
 wYU+5h5kWj8Qls8x5tGuLSEdhin1oV9auMSzaKFZwuAU3rtFyoRxHVFGjI5hQxSDk1
 hJdNVI+j3VBMoJeMMHsGn0KB/lzDPMHXcAQlXGhQ=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200319150708epcas5p316ad3f63c2eb51ed852cffe3aa623096~9vPqCtA6f2901629016epcas5p3g;
 Thu, 19 Mar 2020 15:07:08 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AF.19.04736.B9A837E5; Fri, 20 Mar 2020 00:07:07 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200319150707epcas5p12cd31988fe8d11357519ddaee1b98ef9~9vPpqXmcK0155701557epcas5p1a;
 Thu, 19 Mar 2020 15:07:07 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200319150707epsmtrp22c245f3e33dd36eed8dbe37490d31316~9vPppeosC1476414764epsmtrp2U;
 Thu, 19 Mar 2020 15:07:07 +0000 (GMT)
X-AuditID: b6c32a4b-acbff70000001280-60-5e738a9bb22d
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1F.E6.04024.B9A837E5; Fri, 20 Mar 2020 00:07:07 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200319150705epsmtip2419b3a540841ac5e50fc6809cd1b6ae8~9vPnzPyLt0556705567epsmtip2X;
 Thu, 19 Mar 2020 15:07:05 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 3/5] Documentation: devicetree: ufs: Add DT bindings for
 exynos UFS host controller
Date: Thu, 19 Mar 2020 20:30:29 +0530
Message-Id: <20200319150031.11024-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319150031.11024-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupjleLIzCtJLcpLzFFi42LZdlhTS3dOV3GcwRR2iwfztrFZvPx5lc3i
 0/plrBbzj5xjtTh/fgO7xc0tR1ksNj2+xmpxedccNosZ5/cxWXRf38Fmsfz4PyaL1r1H2C2W
 br3J6MDrcbmvl8lj06pONo/NS+o9Wk7uZ/H4+PQWi0ffllWMHp83yXm0H+hmCuCI4rJJSc3J
 LEst0rdL4MrofbifpWCLdsXkH6dZGxinK3UxcnJICJhInOzYwtbFyMUhJLCbUeLf+jWMEM4n
 RonLcw6zQzjfGCWa9naywrS0LD3IBJHYyyhxa/4eqKoWJonF+5cxg1SxCWhL3J2+hQnEFhEI
 kLj0/iDYEmaBeUwSix71ACU4OIQFMiTuf5IBqWERUJW4/W0HWJhXwEai71EaxDJ5idUbDoCN
 5BSwlZhz4ToLyBgJgcdsEufnN7NAFLlIfNj/nxHCFpZ4dXwLO4QtJfH53V42kJkSAtkSPbuM
 IcI1EkvnHYNqtZc4cGUOC0gJs4CmxPpd+iBhZgE+id7fT5ggOnklOtqEIKpVJZrfXYXqlJaY
 2N0NDRIPiT/re8DiQgITGCW6f4ZOYJSdhTB0ASPjKkbJ1ILi3PTUYtMC47zUcr3ixNzi0rx0
 veT83E2M4FSi5b2DcdM5n0OMAhyMSjy8M9qK44RYE8uKK3MPMUpwMCuJ8OqmA4V4UxIrq1KL
 8uOLSnNSiw8xSnOwKInzTmK9GiMkkJ5YkpqdmlqQWgSTZeLglGpgtD7F0b0wINzWjHlarhHH
 Hv0vpwSMZQI4u701l+3gyZvfFJSVxLCA80M0h+W+p8H5Jy7YOdUE9nYtK2kS+R+/fP1frjOH
 Gdv5ftp/lnxolRnjYSQ47e/SI0WLXpx7/2LDTdNFoX4qc63e8AYU7rBaebdurrDz1ZIU5tVb
 iq5vPfpbQid3/fsFSizFGYmGWsxFxYkA/UynSCEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrALMWRmVeSWpSXmKPExsWy7bCSvO7sruI4g+WL5S0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLFr3HmG3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoEro/fhfpaCLdoVk3+cZm1gnK7UxcjJISFgItGy9CBTFyMXh5DAbkaJAz++sEIk
 pCWub5zADmELS6z895wdoqiJSWL13Q4WkASbgLbE3elbmEBsEYEgiXtr1rKCFDELrGKS6Ow9
 ywiSEBZIk/gw4TxYA4uAqsTtbzuAGjg4eAVsJPoepUEskJdYveEAM4jNKWArMefCdbByIaCS
 zlfX2CYw8i1gZFjFKJlaUJybnltsWGCYl1quV5yYW1yal66XnJ+7iREczlqaOxgvL4k/xCjA
 wajEwzujrThOiDWxrLgy9xCjBAezkgivbjpQiDclsbIqtSg/vqg0J7X4EKM0B4uSOO/TvGOR
 QgLpiSWp2ampBalFMFkmDk6pBsaVv7sqNPRyBX9euH7q528e46M3eo88rCiaHRw7s+3L+2OP
 Ph27pijv+dGes6jTecMVDoaUf7Pfymk1bfJYN/MQq//d87NO16smyEbd8Cla5O6sPi1/Veh2
 q1iWddbOylln/8Z628Wui15i97/zBafUsgd178NiLq4Rl80SP/q0JCFw/r/YNxxKLMUZiYZa
 zEXFiQBtGZmNYwIAAA==
X-CMS-MailID: 20200319150707epcas5p12cd31988fe8d11357519ddaee1b98ef9
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200319150707epcas5p12cd31988fe8d11357519ddaee1b98ef9
References: <20200319150031.11024-1-alim.akhtar@samsung.com>
 <CGME20200319150707epcas5p12cd31988fe8d11357519ddaee1b98ef9@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_080712_939844_BC7CFD3B 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
