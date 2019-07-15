Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A411068A0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZKCLE8ft+NUyQses/JaL6HPn7Kz/O4jqlA3k62tQMDk=; b=GX5HEwDcOem+8rJquo+UMdjIpI
	zz2zjFtYi54b/qzwNeLAJ/n45QbQ5IPPkW9P8P4f2XKye7We1cV6qEouUnXwWNuyUZY5+Hxgt0qwH
	LWMUnbakpS3ciC5LcnIecRDdklt6r/yro+GycAn7Oful7Dl90V0iRhbV4Eb3gdp8ngLmSFxVY/sXL
	EAuc/7CU3ExEzPTu8/Qlc5fvLC/oNeuKFnr8WSv7LADeaFeWg/1+6ev2QxGUV5dbzPxxuplTogj5h
	l/4uF/lh1SDOo76Hg1EKbKtYXMdOpPdtrZaq50RqE+t2o2F+iEM+kyT56mQ2hd2WpqlJ6MPZdWqsy
	D8AYCmgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0WQ-0007QC-4s; Mon, 15 Jul 2019 12:56:02 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Le-0003qH-33
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:55 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124452euoutp0251562a6ea71ab315cc8ca917d37e20f2~xlUp8mW3K0714907149euoutp02Z
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124452euoutp0251562a6ea71ab315cc8ca917d37e20f2~xlUp8mW3K0714907149euoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194692;
 bh=YC8dotW1I1wyLEkwf/U+c5ZFp3zTs1jZ5aE9LLN7rRA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fAWSqsl6Oz3dFJaektFlDztYti/81R3FalvwdUwcfTNdB7A3hEtWCvqLbyuNd/txE
 wZFGxBfoF+lDLushU+WaicrFlH0PtG3hOQyfm4y+tVBdhJHACCqwzF6cFQsNVitLJm
 ZIoczT57AUqRgqqL96czxF5RCVCyG1Q1TAN1H+lw=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124451eucas1p236623bca6e1abdc8be994cd0c9c7a1c2~xlUpGtRJN2241922419eucas1p2k;
 Mon, 15 Jul 2019 12:44:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 56.B0.04325.3457C2D5; Mon, 15
 Jul 2019 13:44:51 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5~xlUoTuixg3211132111eucas1p2O;
 Mon, 15 Jul 2019 12:44:51 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124450eusmtrp1b72adaeb1ef0b6911e90305afc3e4084~xlUoFnJLO0488104881eusmtrp1C;
 Mon, 15 Jul 2019 12:44:50 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-d5-5d2c75438a88
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 57.07.04140.2457C2D5; Mon, 15
 Jul 2019 13:44:50 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124449eusmtip28b6ef71151b9f663ca27293d9c48a6ed~xlUnTGwSg1242312423eusmtip2S;
 Mon, 15 Jul 2019 12:44:49 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 21/50] ARM: dts: exynos: add OPP into FSYS APB bus in
 Exynos5420
Date: Mon, 15 Jul 2019 14:43:48 +0200
Message-Id: <20190715124417.4787-22-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTURzv3Lv7cLq8zaiDRsIicj3MyOBkLyOD0acsJFpFzbxMbZu22ywr
 aBbLEtMymMNMl+Rrzpprhb1W6lRo1FyJOiUNFiSmhmQfpCVt3lnffv/f4/wfHBoXO4lYOkdz
 jtVqFCoJKRQ865nzbNqn23giqb1uDRp+9IFAbabHBBqc/UagWlewLPd/x5HHY6PQ+6uTFBrW
 r0J2/wCBZkpHCfTpRTWJTB4nhlpdnylUP+jFkPfdfjRS1EQiw2sXhbomiwk0P9AmSI2RWWus
 QPZjyEDJ7JabpOzJwyuyjulXmKzMYQGyn/bVBym5cGcWq8opYLWbd58SZr8J2LB8N3nBaPhE
 6oGZKAERNGSSYYPbQJYAIS1mmgDsv3dHwBezAD41vQwrPwH0WMvAYqSuowvjhUYAJ6tKwb9I
 V/FMUKFpkkmE7ZazocBy5iGArrnMkAdnfBh89fX5QvMYJgO2PRjAQ1jArIXXJnwLvIjZA/t/
 j1J8t3jYYnu74IkI8nPGvoWRIPOBguavf8JbpMGnldU4j2PgRK8jHF4F3XdLBTzmoP7Wg/AK
 l6G//H7YswN29XqJ0NA4I4WPX2zm6b1waKyFDNGQWQqHppaFaDwIK55V4jwtgjeui3l3AnSU
 9mE8XgEbrcbw4zIY6B7E+fNUAFjsrsRvg/iq/83MAFjASlbHqZUst1XDnk/kFGpOp1Emns5T
 20HwV7nne3+1A2cgsxMwNJBEiVKzNpwQE4oCrlDdCSCNS5aLdv0KUqIsReFFVpt3UqtTsVwn
 iKMFkpWiS0u+HBMzSsU59gzL5rPaRRWjI2L1ICE3Z/xRrC/jW+xV1/jFQ2O5KTWRrLutqLvX
 bK7WLZPHKbcckXgiGu0zvo/Z/sjoEbdNeisphalXPffVOQOHp7wHLkeu2x7tKk5jvrQ0BMBo
 hvySfEXy21lNfFQzpR5ytMbkZ25zTjUcPxqVLpwmpXulRru4J53FHLUmX7NEwGUrtqzHtZzi
 LyzMh11RAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7pOpTqxBu+nGljcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M/X82MBWcZquY1nqZrYFxAWsXIyeHhICJxKKDh5m6GLk4hASWMkoc
 urCFESIhJjFp33Z2CFtY4s+1LjaIok+MEueOrAPq4OBgE9CT2LGqEKRGRGAFo8TkE94gNcwC
 r5kkjhx9B7ZBWCBY4tC9P2CDWARUJZpf3QSL8wrYS1z5fQ9qgbzE6g0HmEFsTqD4z2kX2EBs
 IQE7icVHfzJNYORbwMiwilEktbQ4Nz232EivODG3uDQvXS85P3cTIzB2th37uWUHY9e74EOM
 AhyMSjy8DinasUKsiWXFlbmHGCU4mJVEeG2/AoV4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5
 HxjXeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGB15z4Z9kFyS
 duDuJKYXC2T3Oek4i1gybXpxw0W8yzU/tO//dsszxik/tF/tEbun3b9Hbsljfc/Vrde6eBZZ
 2WaUW7DMX+88RaOIQfYF86/vzut9c9q4Z5duaSl0ymVhYoufff9bTK/ryTebHqTdq9gesMPs
 4fGrgQezv/S/+t360lMsrvVrnRJLcUaioRZzUXEiAOIlzMGzAgAA
X-CMS-MailID: 20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5
X-Msg-Generator: CA
X-RootMTR: 20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124451eucas1p2904b49f59cca0cbbc22381f168affbb5@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054454_454338_6680DF9F 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, cw00.choi@samsung.com, b.zolnierkie@samsung.com,
 sboyd@kernel.org, mturquette@baylibre.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an OPP for FSYS APB which reflects the real possible frequency.
The bus will have a new parent clock which speed has 600MHz, thus
a new possible frequency provided by the clock divider is 150MHz.
According to the documentation max possible frequency for this bus is
200MHz.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index c7fc4b829b2a..2b36c2f77a10 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1153,6 +1153,9 @@
 				opp-hz = /bits/ 64 <100000000>;
 			};
 			opp01 {
+				opp-hz = /bits/ 64 <150000000>;
+			};
+			opp02 {
 				opp-hz = /bits/ 64 <200000000>;
 			};
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
