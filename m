Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0F212241D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 06:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wrpzksqJFZm+oaE0Qkv20Z7tE6pYHFtq1zeuZTyY7XQ=; b=hNPzaED+5e0ePAt1KaBic+/AOk
	JAECvJ+6Nt5B+g/mPhs+6ST587HKLwZ4Dww5VU4YIhY+5gCoHehFhopwlbznkHyb5FF+XN0QZ/uFe
	JR8T4JkgExiTtq3SKURL1BNS54sDyA+gzFd9+sDHOFz65mvkMfj6NA1hGKaZdnvdVG0izlRJtkgCm
	2JxmpkD14g9K8c9U8Jn2r1eCAfY9VVKjQ1Qo8jVn52Awew40Omr9Y3W93qKcdKcpFDXsp8ysqTPeb
	sRYv8S02+8t5iX0o1nrfpnjH2hZqyoaiRF0gRbDH8JEvoqDcjZG7zid4NOgyXWc6bdTAm2SoQ4YpJ
	AjWZqQ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5mk-0001QR-FF; Tue, 17 Dec 2019 05:52:42 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5lM-0000KO-Cc
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 05:51:24 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191217055110epoutp04e07041556b25219f964b29018deafbdd~hEqsJWMW-0763107631epoutp04h
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 05:51:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191217055110epoutp04e07041556b25219f964b29018deafbdd~hEqsJWMW-0763107631epoutp04h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576561870;
 bh=5KlqhZpaYOHN8kNBKPJ2ctLOXWdiVXSFj/1DvZcuFME=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ojU/PUg42EimXD8BFmTeCLTxGT6i1YgZGzRZvu4C3jYLJ3wllwqmsedtJGeWKx+5Q
 tsgGRg7qvo5KdMXyjYK7ywRgAxZYAqfiruFW6RlJni0ReqU2oFGxeWXBNcofE8nNZs
 3vjtoN0NphsitqbFxDehVLf6nqeLG51DTYpNr9lE=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191217055109epcas1p271e3614a4e5180fcbfb0ed31b584cb88~hEqrg4H-v1489014890epcas1p2U;
 Tue, 17 Dec 2019 05:51:09 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.156]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47cS1Q6vxpzMqYkx; Tue, 17 Dec
 2019 05:51:06 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 C9.3A.57028.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epcas1p2c43a45e34983c1b3e60cc6fd842dd33e~hEqooewpL2687526875epcas1p2S;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191217055106epsmtrp219386dafae97a660da86349495bd4edc~hEqonpuy81947419474epsmtrp2G;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
X-AuditID: b6c32a35-50bff7000001dec4-2e-5df86cca2234
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0F.7E.06569.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055106epsmtip1dae4d0de04bf6da1c77b39bca60f0592~hEqoU99jS3162031620epsmtip12;
 Tue, 17 Dec 2019 05:51:06 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH 7/9] memory: samsung: exynos5422-dmc: Replace deprecated
 'devfreq-events' property
Date: Tue, 17 Dec 2019 14:57:36 +0900
Message-Id: <20191217055738.28445-8-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFJsWRmVeSWpSXmKPExsWy7bCmnu6pnB+xBsueWVjcn9fKaHH9y3NW
 i/lHzrFa/H/0mtWi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGi08P/jNb
 zDi/j8liYVMLu8XaI3fZLZZev8hkcbtxBZtF694j7A5CHmvmrWH02LSqk81j85J6j43vdjB5
 9G1Zxeix/do8Zo/Pm+QC2KOybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPIS
 c1NtlVx8AnTdMnOA3lBSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFFgW6BUn5haX
 5qXrJefnWhkaGBiZAhUmZGdsfriRseCTQsWLK+9ZGxgPS3cxcnJICJhITDr4l72LkYtDSGAH
 o8T7/f+ZIZxPjBIzZuxlA6kSEvjGKDH5pwRMx8PDq5kgivYyStzpvg5V9IVRomWJEYjNJqAl
 sf/FDbC4iECdxPzDO8AamAVuMknsuXSLFSQhLJAicXf9bCYQm0VAVWL22rlgDbwCVhJbLhxl
 h9gmL7F6wwFmEJtTwFri+bbXYIMkBP6zSUz5PosJoshFYs+eQ1ANwhKvjm+BsqUkPr+DeEFC
 oFpi5ckjbBDNHYwSW/ZfYIVIGEvsXzoZaBAH0HmaEut36UOEFSV2/p7LCGIzC/BJvPvawwpS
 IiHAK9HRJgRRoixx+cFdqBMkJRa3d0Kt8pB49P09NIT6GCWetjxjmsAoNwthwwJGxlWMYqkF
 xbnpqcWGBYbIUbaJEZxOtUx3ME4553OIUYCDUYmHt6Dse6wQa2JZcWXuIUYJDmYlEd4dCkAh
 3pTEyqrUovz4otKc1OJDjKbAoJzILCWanA9M9Xkl8YamRsbGxhYmhmamhoZK4rwcPy7GCgmk
 J5akZqemFqQWwfQxcXBKNTD2vEz/FB7/cuPiPJnJv99J+rqHzshQKXrXt3jdze23fpzZUj13
 3koLwyPKAedEVnFWl1m8O6ozOapfJNh7IePnihOX/SJiWbiNvZa1RhxKmxJ08pmO09lzq5Vn
 13IXlNgu4//wWH0li9qFDzwOvDt7Jxi9PzHx80GdM54z557+VF7mbFrW/eeIEktxRqKhFnNR
 cSIAG8sI5b0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsWy7bCSnO6pnB+xBp97ZS3uz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FFcNimpOZllqUX6dglcGZsfbmQs+KRQ8eLKe9YGxsPSXYycHBIC
 JhIPD69m6mLk4hAS2M0osejuDxaIhKTEtItHmbsYOYBsYYnDh4shaj4xSixousMIUsMmoCWx
 /8UNNhBbRKCNUWLJdzkQm1ngOZPEvi4zEFtYIEni+7pedhCbRUBVYvbauWD1vAJWElsuHGWH
 2CUvsXrDAWYQm1PAWuL5ttdMILYQUM3Pqc9YJzDyLWBkWMUomVpQnJueW2xYYJSXWq5XnJhb
 XJqXrpecn7uJERz0Wlo7GE+ciD/EKMDBqMTDK1HyPVaINbGsuDL3EKMEB7OSCO8OBaAQb0pi
 ZVVqUX58UWlOavEhRmkOFiVxXvn8Y5FCAumJJanZqakFqUUwWSYOTqkGxlCbnTlWs4Pu/SiU
 8J3DeU3O8aayKHtryB72xe0lrFY9ra97iifpCq+TqAnxtEzYd0Vv/eHQiNT3Nqoa0nsPyf2u
 8wlntQ29dfRtxMvFJosi5i0/cd63wnaXx22LB6+vbZyc/L5ypfQiWfek8o5dZvHxz8t3xIa/
 FDp7NH+LgF/d8cN7Aot5lViKMxINtZiLihMBOwQJi3YCAAA=
X-CMS-MailID: 20191217055106epcas1p2c43a45e34983c1b3e60cc6fd842dd33e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191217055106epcas1p2c43a45e34983c1b3e60cc6fd842dd33e
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p2c43a45e34983c1b3e60cc6fd842dd33e@epcas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_215116_748534_9F879015 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

In order to remove the deprecated 'devfreq-events' property, replace with
new 'exynos,ppmu-device' property in order to get the devfreq-event device
in devicetree file instead of 'devfreq-events' property. But, to guarantee
the backward-compatibility, keep the support 'devfreq-events' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../memory-controllers/exynos5422-dmc.txt     |  6 ++--
 drivers/memory/samsung/exynos5422-dmc.c       | 29 +++++++++++++++----
 2 files changed, 26 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
index 02e4a1f862f1..1e1b3702f045 100644
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
@@ -73,7 +73,7 @@ Example:
 			      "mout_mx_mspll_ccore",
 			      "mout_mclk_cdrex";
 		operating-points-v2 = <&dmc_opp_table>;
-		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
+		exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
 				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
 		device-handle = <&samsung_K3QF2F20DB>;
 		vdd-supply = <&buck1_reg>;
diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index c3195111d646..96593f37a478 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -1270,10 +1270,17 @@ static int exynos5_dmc_init_clks(struct exynos5_dmc *dmc)
 static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
 							int index)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq-events",
+	struct device_node *node = of_parse_phandle(np, "exynos,ppmu-device",
 							index);
-	if (!node)
-		return ERR_PTR(-ENODEV);
+	if (!node) {
+		 /*
+		  * Check the deprecated 'devfreq-events' property
+		  * to support backward-compatibility.
+		 */
+		node = of_parse_phandle(np, "devfreq-events", index);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_event_get_edev_by_node(node);
 }
 
@@ -1292,10 +1299,20 @@ static int exynos5_performance_counters_init(struct exynos5_dmc *dmc)
 	int ret, i;
 
 	dmc->num_counters = of_property_count_elems_of_size(dmc->dev->of_node,
-					"devfreq-events", sizeof(u32));
+					"exynos,ppmu-device", sizeof(u32));
 	if (dmc->num_counters < 0) {
-		dev_err(dmc->dev, "could not get devfreq-event counters\n");
-		return dmc->num_counters;
+		 /*
+		  * Check the deprecated 'devfreq-events' property
+		  * to support backward-compatibility.
+		 */
+		dmc->num_counters = of_property_count_elems_of_size(
+					dmc->dev->of_node,
+					"devfreq-events", sizeof(u32));
+		if (dmc->num_counters < 0) {
+			dev_err(dmc->dev,
+				"could not get devfreq-event counters\n");
+			return dmc->num_counters;
+		}
 	}
 
 	counters_size = sizeof(struct devfreq_event_dev) * dmc->num_counters;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
