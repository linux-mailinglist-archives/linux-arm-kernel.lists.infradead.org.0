Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8E412725F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N6ELXQS5I17iwZS+YjEW0yFoCJUD+afXT2Fiv8eGxtc=; b=VGoDCxqejGPO/0VQD+EBk71rwa
	tSxTOaZe+HhBfh/M7rMHSCnjUat4ya9OaYnoPCLt8iNLUIQBL/2eRXJvvPt7B5uPHRtZqODUz3vrk
	NVbw5Uq2Gt52MbBVt7apJlqwgsTkLpHyO/ybs4YnU+kD2BIlskXLGWVHd5vlhvyg1e3pWswKLMqWt
	C5NuuddErBBnXAqyH7+Iu/uzPMeRCxIBwpJZHTNHef+zN5RLRF7J0mDYYBr6lhWKnTpaKfzLk+sis
	MlL7aybeSangqmfkJo211ACTTSPML8HI2MR7lx+WGYON0iOfUsKWxMSQ2EpdcctnexTgdv8yao+1j
	DIoNXWkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii632-000353-Pg; Fri, 20 Dec 2019 00:21:40 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5zo-0007XE-3E
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:18:26 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191220001805epoutp03f706cf586d4ebfdf8fa0bca02856dcdd~h7DuMlB8J1423414234epoutp03E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:18:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191220001805epoutp03f706cf586d4ebfdf8fa0bca02856dcdd~h7DuMlB8J1423414234epoutp03E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576801085;
 bh=vj6qQCJO7kdR2uHu16+MKQ3F1A2qE4yUYtHgqen8kuI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H9zCzUezdyTqZuzo/vDfVNSyPrBheskG8CucTPB3Md9pOr4AXIhsfQYlOipdNHU75
 pXMuiqmMAyrvvNKSBSoiIaSmJ5FMDUh4nqWG6/UOkE+VbfjjryTpL1ED3tsSqg/XBg
 nMpHDtWgRsd5rJ57SFV1ANyulQ2KwNkOP2AWJH0A=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191220001804epcas1p3da098f30abe5005bf454482ae3ecc05f~h7DtmT8uk1379413794epcas1p3Z;
 Fri, 20 Dec 2019 00:18:04 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.153]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47f8Th0pW6zMqYkV; Fri, 20 Dec
 2019 00:18:00 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 84.7D.52419.7331CFD5; Fri, 20 Dec 2019 09:18:00 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epcas1p3051f7916542b7234aac5273e0baab83b~h7DpQGarH1359613596epcas1p3W;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191220001759epsmtrp22d890a5ed7cf495d28f3a5a28489e53d~h7DpPNHKa0512905129epsmtrp2V;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
X-AuditID: b6c32a37-5b7ff7000001ccc3-10-5dfc13376788
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C0.7C.06569.7331CFD5; Fri, 20 Dec 2019 09:17:59 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epsmtip11e175b09379ebd11ce2bfff059993667~h7DpECM0w2109521095epsmtip1d;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de,
 leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH v2 04/11] dt-bindings: devfreq: exynos-bus: Replace
 deprecated 'devfreq' and 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:23 +0900
Message-Id: <20191220002430.11995-5-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNJsWRmVeSWpSXmKPExsWy7bCmga6F8J9Ygx2vGS3uz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FHZNhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJ
 uam2Si4+AbpumTlAbygplCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCiwL9IoTc4tL
 89L1kvNzrQwNDIxMgQoTsjNuTn/FWHBXpOL0+60sDYzXBboYOTkkBEwkGrY+Yuxi5OIQEtjB
 KLHn8xd2COcTo0Tjjf/MEM43Ron1z78zwbQ8b5vCApHYyyjx5nETVNUXRonjz66ygFSxCWhJ
 7H9xgw3EFhHIkJj5+jIrSBGzwEcmia5td8ESwgIVEsf6L7KD2CwCqhITdl9lBLF5Bawk7qzt
 YodYJy+xesMBZhCbU8BaYsuzh2AHSgg0s0scPLEF6iYXiVtXWxghbGGJV8e3QDVLSXx+t5cN
 wq6WWHnyCBtEcwejxJb9F1ghEsYS+5dOBhrEAXSepsT6XfoQYUWJnb/ngs1kFuCTePe1hxWk
 REKAV6KjTQiiRFni8oO7UCdISixu72SDKPGQOHBRGhIofYwSa78fYZvAKDcLYcECRsZVjGKp
 BcW56anFhgXGyHG2iRGcULXMdzBuOOdziFGAg1GJh9ch7XesEGtiWXFl7iFGCQ5mJRHe2x0/
 Y4V4UxIrq1KL8uOLSnNSiw8xmgJDciKzlGhyPjDZ55XEG5oaGRsbW5gYmpkaGiqJ83L8uBgr
 JJCeWJKanZpakFoE08fEwSnVwBji9Onbhao7zkavqi7OtJ16fIep8mZpvTkvLErWHttXlxQf
 pJJhNKVSx+vPxZeP+5gjuNVl9zkBc8Qes32n5ldGL3T/HjCzP0bJevI2D3bFhuL28j8rDAp9
 ekQ92X4dzAo6tefCjfS56qGbJzFV/Nz56dHTCzlTZrJubs640//8os8cBUaTq0osxRmJhlrM
 RcWJAN7dMwu+AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCLMWRmVeSWpSXmKPExsWy7bCSnK658J9Yg0/PtSzuz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FFcNimpOZllqUX6dglcGTenv2IsuCtScfr9VpYGxusCXYycHBIC
 JhLP26awdDFycQgJ7GaU+L30IxNEQlJi2sWjzF2MHEC2sMThw8UQNZ8YJTrWXWUBqWET0JLY
 /+IGG4gtIpAnsWnjV2aQImaB/0wS308+YARJCAuUScw/fZUVxGYRUJWYsPsqWJxXwEriztou
 dohl8hKrNxxgBrE5Bawltjx7CBYXAqp5ef4C6wRGvgWMDKsYJVMLinPTc4sNC4zyUsv1ihNz
 i0vz0vWS83M3MYLDXktrB+OJE/GHGAU4GJV4eB3SfscKsSaWFVfmHmKU4GBWEuG93fEzVog3
 JbGyKrUoP76oNCe1+BCjNAeLkjivfP6xSCGB9MSS1OzU1ILUIpgsEwenVANjSqFn9Jb/aj9Y
 8rMipSZNM1miulNt+xmTr/mWtSaXldJY1be87Kt7/FG2Uebn4t8W5bWl65kdzDdPd477NuOx
 8blr50sLF5106PwyReEu9+MZhULXDrcYn+Oq7WU9HSCjbhmVw7klLzdCKPGh5Swn241Gn24k
 GR85nTlX6yfnZ+53v5668LoqsRRnJBpqMRcVJwIA/klRfHcCAAA=
X-CMS-MailID: 20191220001759epcas1p3051f7916542b7234aac5273e0baab83b
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001759epcas1p3051f7916542b7234aac5273e0baab83b
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p3051f7916542b7234aac5273e0baab83b@epcas1p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_161820_622400_2CBA943D 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to remove the deprecated 'devfreq' and 'devfreq-events' property,
replace with new following properties
- Replace 'devfreq' with 'exynos,parent-bus' property
- Replace 'devfreq-events' with 'exynos,ppmu-device' property

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../bindings/devfreq/exynos-bus.txt           | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
index e71f752cc18f..c6c2dd0e77c8 100644
--- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
+++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
@@ -41,11 +41,11 @@ Required properties for all bus devices:
 
 Required properties only for parent bus device:
 - vdd-supply: the regulator to provide the buses with the voltage.
-- devfreq-events: the devfreq-event device to monitor the current utilization
+- exynos,ppmu-device: the devfreq-event device to monitor the current utilization
   of buses.
 
 Required properties only for passive bus device:
-- devfreq: the parent bus device.
+- exynos,parent-bus: the parent bus device.
 
 Optional properties only for parent bus device:
 - exynos,saturation-ratio: the percentage value which is used to calibrate
@@ -374,48 +374,48 @@ Example2 :
 	in exynos3250-rinato.dts is listed below:
 
 	&bus_dmc {
-		devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+		exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 		vdd-supply = <&buck1_reg>;	/* VDD_MIF */
 		status = "okay";
 	};
 
 	&bus_leftbus {
-		devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+		exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 		vdd-supply = <&buck3_reg>;
 		status = "okay";
 	};
 
 	&bus_rightbus {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_lcd0 {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_fsys {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_mcuisp {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_isp {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_peril {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_mfc {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
