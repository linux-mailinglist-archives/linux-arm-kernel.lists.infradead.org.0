Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 352D812725A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A1Yyp5WLqMZK0LRhh7bOdgCmtilAVWsgcstc3kkAcY8=; b=YGWZIrjQSFxOTAcB7SkqMPPdYR
	dMvchqo40EcGyjkA4cohqdxbhVFH+IDVCScdFBcoCzn3P7uWn6jm1+axV0jT6l/FPQuBTvB+wO+R6
	ylTlyU6ZMxNnJDE/idOLAutbKvtxEPz/kjtEFv/cc0EhX/tB6pCP/jESdF2gubUU/LZsln9E5NE4H
	fvO4abvc6TDfTvpGHjXRxTLv1ICq+ae8Uckz+tCx5NWLe54v021alMdlx45SR7S6IkvG65FlWtlkg
	ly1HE7aU3JAeut7dkFvNopKkMlZWVUARqhdgMs+SaycrOedJDuCGrgb35ZFXT+nrOgcBNWAM/YvD5
	FLliCyAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii62P-0002Rk-3j; Fri, 20 Dec 2019 00:21:01 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5zm-0007VV-6c
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:18:24 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191220001804epoutp01237230f6256e5906cdfb4e120f220f67~h7DuFWETo2161121611epoutp01e
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:18:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191220001804epoutp01237230f6256e5906cdfb4e120f220f67~h7DuFWETo2161121611epoutp01e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576801084;
 bh=ST4juyyqbRKOEVcJd7O2Zg5VVn33eRk21NfRErVuSO8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ym02GkJfYHUKTVb5fVz3PQfc859IFDPZLxSfusZEfy5LmOQgXYYnJ5dpJSPceveQF
 0mRyUJQPFrAE5ie4taH0fL0lH+LT7sNzJXCRHX5/njKrOd2mhOx1H4MBtBl9gcIVc2
 tXaE3BLQMsxzbhiZGv1FiXAFy6DAKlAU25NYSOX0=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191220001804epcas1p4af83559c1be11b8f5ab9b68b35d2c813~h7DtPzcu92970029700epcas1p4_;
 Fri, 20 Dec 2019 00:18:04 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.157]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47f8Th3NbWzMqYkk; Fri, 20 Dec
 2019 00:18:00 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 E1.14.48498.8331CFD5; Fri, 20 Dec 2019 09:18:00 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191220001800epcas1p364322170854fdd171c43f6b1de2b61a4~h7DpibDmt0867408674epcas1p3Z;
 Fri, 20 Dec 2019 00:18:00 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191220001800epsmtrp1b76d09859300f0741048cf388d0760bd~h7DphRx_q1705617056epsmtrp1S;
 Fri, 20 Dec 2019 00:18:00 +0000 (GMT)
X-AuditID: b6c32a36-a55ff7000001bd72-5c-5dfc1338f545
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F1.7C.06569.7331CFD5; Fri, 20 Dec 2019 09:17:59 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epsmtip1b705f29b4fb8736ba97cfd0da8887f11~h7DpUaRWj1958919589epsmtip1P;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de,
 leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH v2 06/11] dt-bindings: memory: exynos5422-dmc: Replace the
 deprecated 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:25 +0900
Message-Id: <20191220002430.11995-7-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOJsWRmVeSWpSXmKPExsWy7bCmrq6F8J9Yg8W7pC3uz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FHZNhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJ
 uam2Si4+AbpumTlAbygplCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCiwL9IoTc4tL
 89L1kvNzrQwNDIxMgQoTsjOOdSQVPBeq2NzXzNrA+J2/i5GTQ0LAROLUwdnsXYxcHEICOxgl
 Hv14wAaSEBL4xCjRst0AIvGNUeLKru9AVRxgHfNbBCDiexklLvR9YoVwvjBKdH7ZxArSzSag
 JbH/xQ2wSSICGRIzX18GK2IW+Mgk0bXtLlhCWKBQYvehs2BTWQRUJboPyYCYvAJWEh++xkFc
 Jy+xesMBZhCbU8BaYsuzh2CXSgj8Z5OYsGU/E0SRi8Ss9TNYIGxhiVfHt7BD2FISL/vboOxq
 iZUnj7BBNHcwSmzZf4EVImEssX/pZCaQxcwCmhLrd+lDhBUldv6eywhiMwvwSbz72sMK8Tyv
 REebEESJssTlB3ehTpCUWNzeyQZhe0i0ftrAAgmTPkaJpoe32Scwys1C2LCAkXEVo1hqQXFu
 emqxYYERcnxtYgQnUi2zHYyLzvkcYhTgYFTi4XVI+x0rxJpYVlyZe4hRgoNZSYT3dsfPWCHe
 lMTKqtSi/Pii0pzU4kOMpsCAnMgsJZqcD0zyeSXxhqZGxsbGFiaGZqaGhkrivBw/LsYKCaQn
 lqRmp6YWpBbB9DFxcEo1MB68mJl8eVeHi0xY+EbmYpdDSyf6rTxcKZzvKzyL513wQ47rzVeW
 e0bxqjVwF53wtJkSVvim0UnXtEjfaHPmwmmyraLzZ/xWq9ryatH7DL/d+2MLGN6csHObO1lY
 +3+8bfTCMKZpttOV1+gqhJ6e4Hhv+omP3DxbfpVYcq1YmfUxzTeH+evBdCWW4oxEQy3mouJE
 AGGzO1y6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrALMWRmVeSWpSXmKPExsWy7bCSnK658J9Yg6WtNhb357UyWlz/8pzV
 Yv6Rc6wW/x+9ZrXof/ya2eL8+Q3sFmeb3rBbrLj7kdVi0+NrrBaXd81hs/jce4TR4tOD/8wW
 M87vY7JY2NTCbrH2yF12i6XXLzJZ3G5cwWbRuvcIu4OQx5p5axg9Nq3qZPPYvKTeY+O7HUwe
 fVtWMXpsvzaP2ePzJrkA9igum5TUnMyy1CJ9uwSujGMdSQXPhSo29zWzNjB+5+9i5OCQEDCR
 mN8i0MXIxSEksJtRYsO1JqYuRk6guKTEtItHmSFqhCUOHy6GqPnEKPFtegszSA2bgJbE/hc3
 2EBsEYE8iU0bvzKDFDEL/GeS+H7yASNIQlggX+LLQRCbg4NFQFWi+5AMiMkrYCXx4WscxCp5
 idUbDoCN5BSwltjy7CE7iC0EVPLy/AXWCYx8CxgZVjFKphYU56bnFhsWGOWllusVJ+YWl+al
 6yXn525iBIe7ltYOxhMn4g8xCnAwKvHwOqT9jhViTSwrrsw9xCjBwawkwnu742esEG9KYmVV
 alF+fFFpTmrxIUZpDhYlcV75/GORQgLpiSWp2ampBalFMFkmDk6pBkaJpb4Kjks+ahXX1xZy
 Hb6yRfWGZ32rj8AH/vfB8ufEuuKOpumZ7i1en3qIrzDtamf8xZtaWjr7f71TzD1h/v6R1bcZ
 a0T1+F80vWK52yH4vDXaqOvg41n5D07a1oguu5y+se3f72N9GuyLf/7J7mm39hf1VvKbUxXz
 i9+iq/bwnr1HAgur5yuxFGckGmoxFxUnAgA6+mBLcwIAAA==
X-CMS-MailID: 20191220001800epcas1p364322170854fdd171c43f6b1de2b61a4
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001800epcas1p364322170854fdd171c43f6b1de2b61a4
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001800epcas1p364322170854fdd171c43f6b1de2b61a4@epcas1p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_161818_446754_2258C5BB 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Replace the deprecated 'devfreq-events' property with 'exynos,ppmu-device'
property. But, to guarantee the backward-compatibility, keep the support
of 'devfreq-events' property.

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../bindings/memory-controllers/exynos5422-dmc.txt        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
index 02e4a1f862f1..fbecbcc00adb 100644
--- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
@@ -17,14 +17,14 @@ Required properties for DMC device for Exynos5422:
 - clock-names : should include "fout_spll", "mout_sclk_spll", "ff_dout_spll2",
   "fout_bpll", "mout_bpll", "sclk_bpll", "mout_mx_mspll_ccore",
   "mout_mclk_cdrex"  entries
-- devfreq-events : phandles for PPMU devices connected to this DMC.
+- exynos,ppmu-device : phandles for PPMU devices connected to this DMC.
 - vdd-supply : phandle for voltage regulator which is connected.
 - reg : registers of two CDREX controllers.
 - operating-points-v2 : phandle for OPPs described in v2 definition.
 - device-handle : phandle of the connected DRAM memory device. For more
 	information please refer to documentation file:
 	Documentation/devicetree/bindings/ddr/lpddr3.txt
-- devfreq-events : phandles of the PPMU events used by the controller.
+- exynos,ppmu-device : phandles of the PPMU events used by the controller.
 - samsung,syscon-clk : phandle of the clock register set used by the controller,
 	these registers are used for enabling a 'pause' feature and are not
 	exposed by clock framework but they must be used in a safe way.
@@ -73,8 +73,8 @@ Example:
 			      "mout_mx_mspll_ccore",
 			      "mout_mclk_cdrex";
 		operating-points-v2 = <&dmc_opp_table>;
-		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
-				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
+		exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
+				     <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
 		device-handle = <&samsung_K3QF2F20DB>;
 		vdd-supply = <&buck1_reg>;
 		samsung,syscon-clk = <&clock>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
