Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C194689D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0lOOzsJGVoaeAhCa4yDSqtb8/QJQaEpWHb2713LyMNc=; b=QPY7BrjQNVRAWO8tVR6DduG+HJ
	/niB+E6w9KeIs2lGz4zgjwLImwgsvbLPvZ0WTu3YX7srWRyroUe2GXLx5jqgwir+7nNuqaMo41FFv
	1HJNWcN6v2J5Na+LHqhOkEF+cy/4n1DLJardA9fSMd4AF6EqhkWqvEY9D5PNhBlrSWZ6MlmVsw3AE
	8Oe1HZNl4IiLZPgw/runVcsdQ+vROZF3ipNghIy0DSmWByN1HDceXaGg8cCMYKKB5wJP8vrL8WIJn
	GlVjnsYHaM8EGp1c2OUPlo91kA2ouNpemJdIQUTPXsSl9uV4FVDQX8NzRWAR39PydI29Rx1B/Xphc
	V0byEDkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Oo-0007Ff-Js; Mon, 15 Jul 2019 12:48:10 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LS-0003fj-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:45 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124441euoutp01341c31df60015edac5c479bf6b93953e~xlUfEOXMV1962419624euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124441euoutp01341c31df60015edac5c479bf6b93953e~xlUfEOXMV1962419624euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194681;
 bh=ondmxPhh+Fxnd5s3n9tmk8yHO5V0bGcYkkE6AtEC9vI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hGJgJeajijiW2X8ct1OrRdv26MaryBvaBd8et+4GCy0LRCxQAGKk1NcmWhbFQjtlg
 7AwCVVabaxMMhbFDwedsO5RgueYQiUam6EB2BJ1EPP/Og/DVbDPQkPQlmRsRp7enIM
 XdwlUQP+SkZxGXNJNTPD1xEU8vRmKZhKLK5ahLBo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124440eucas1p1e3f7f5869fa71941b7f6e250a55d51c6~xlUeSFr7c0154701547eucas1p19;
 Mon, 15 Jul 2019 12:44:40 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 98.D1.04377.7357C2D5; Mon, 15
 Jul 2019 13:44:40 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124439eucas1p18c4f512d2647717d77666d94dca867a6~xlUdjzo_P0154701547eucas1p18;
 Mon, 15 Jul 2019 12:44:39 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124439eusmtrp16e36cc3810052fd6b715c1b906b353a9~xlUdVlXPj0462004620eusmtrp11;
 Mon, 15 Jul 2019 12:44:39 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-d6-5d2c75376117
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 83.40.04146.7357C2D5; Mon, 15
 Jul 2019 13:44:39 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124438eusmtip2d4e140a64781153b3011323f5d9c60cc~xlUcgTSjc1115211152eusmtip2F;
 Mon, 15 Jul 2019 12:44:38 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 07/50] clk: samsung: add IDs to ACLK266_G2D clocks in
 Exynos5420
Date: Mon, 15 Jul 2019 14:43:34 +0200
Message-Id: <20190715124417.4787-8-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGuZ1OOyA1Y9muSMQ0cYfi9nCjrAmaPokxISQK6iATQFY7lEUk
 FggqhEWqAhpAjWxWpFALIiKyNDRhbzCAGFGDihFESIuKUZBhSnj7zn///55zTy6BiVtwZyIy
 NoGWx1LREoENv6l7ccAdKdxC9pVL0HjdAI4aSjQ4GjVP4eiefqUsmJzG0OBgvRD1Z8wI0bjS
 BWknR3A0nzuBo+GWUgEqGWzjoSf6d0JUOWrkIWPPUfQ2vUaAsl7qhahr5hqOlkYa+L52stry
 WiD7MZYllGnV2QLZ04orso7ZVp4sX6cGMpN26wnhKRvPMDo6MpGWe3ifs4noz7CLn7BNrs/7
 IlAC5YYcYE1A8hBsVumEOcCGEJM1AA4qXwCuMAM4WzeOcYUJwM/tmfhapEfdbolUA/iwu2o9
 crtjQpADCEJASmGz+iIbsCcrANQvhrIejHzDg62fnuOsx44MhMU6f9bDJ7fDj48Mqw1EpDf8
 t9BtaeYKH9e3Yyxbkz5wsWhIwOkDQlg9tZljf5hfWMbn2A5+M7DvYdkF9t7MtegMVOY9ABxf
 hpMFZRbPEdhlMK6Og5G7oabFg5P9oGm6BGNlSG6EY983sTK2gqqmYossgtevijn3LqjLHeJx
 7Aira4ssl8tgVSO7NXY5KgC/Vv7m3QCud9eb3QdADZxoBRMTTjMHYukkKUPFMIrYcOn5uBgt
 WPlRvUsGczNo+RvaCUgCSGxFvmF7Q8Q4lcikxHQCSGASe5HXwookCqNSLtHyuLNyRTTNdIIt
 BF/iJEq1+nBaTIZTCXQUTcfT8rVTHmHtrAS3FIrybGmqfbDj67I5vS+cDbXa5rAc1e1zRhtS
 pwk8mPa+qe8wodK4FRPzpjTJBal7NDqOpccPZJx89cfF3Bo0a9QpDFWRbea5nX6ecz3Usztu
 1K/m5J+ujV5JkX2l2xw0O5Z9TAGqcDQcNH4sQB3s4aRP0mc2SPWFxgSnVAmfiaD278HkDPUf
 BxEQTU0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7rmpTqxBke/cFvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Ms03CBfd4Kjb0PmNrYGzg7mLk5JAQMJE4teoAexcjF4eQwFJGieZZ
 05kgEmISk/ZtZ4ewhSX+XOtiA7GFBD4xSty9D2RzcLAJ6EnsWFUIEhYRWMEoMfmEN8gcZoHX
 TBJHjr5jBUkICwRLbL8yBWwmi4CqxMOVx8HivAJ2En+/HmOFmC8vsXrDAWYQm1PAXuLntAtQ
 u+wkFh/9yTSBkW8BI8MqRpHU0uLc9NxiQ73ixNzi0rx0veT83E2MwLjZduzn5h2MlzYGH2IU
 4GBU4uF1SNGOFWJNLCuuzD3EKMHBrCTCa/sVKMSbklhZlVqUH19UmpNafIjRFOioicxSosn5
 wJjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAqHO86YrRPnaF
 d4v/NM3b9iqg0uDohYRzsU9f/6iOXKgd/f2sdYJHkFDRSu/CbYfuCOZPul3RebHvxhaZztp/
 LPt75hQFfF9Y4MCbZe9tXyp0/e8E1Ylzz8iXz+hu9lQwP/dDWPpxVucvxodCtlknDbZbvHyw
 v6m3kafSl3fPfJdv/eEbja9aKrEUZyQaajEXFScCAAFoBlexAgAA
X-CMS-MailID: 20190715124439eucas1p18c4f512d2647717d77666d94dca867a6
X-Msg-Generator: CA
X-RootMTR: 20190715124439eucas1p18c4f512d2647717d77666d94dca867a6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124439eucas1p18c4f512d2647717d77666d94dca867a6
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124439eucas1p18c4f512d2647717d77666d94dca867a6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054442_607365_568AEDC5 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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

Add IDs to MUXes of ACLK266_G2D to manage them from DT.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 9b4a1d81f708..9d54856dbcda 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -478,7 +478,8 @@ static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 
 	MUX(0, "mout_aclk400_disp1", mout_group7_5800_p, SRC_TOP2, 4, 3),
 	MUX(0, "mout_aclk333_g2d", mout_group5_5800_p, SRC_TOP2, 8, 2),
-	MUX(0, "mout_aclk266_g2d", mout_group5_5800_p, SRC_TOP2, 12, 2),
+	MUX(CLK_MOUT_ACLK266_G2D, "mout_aclk266_g2d", mout_group5_5800_p,
+			SRC_TOP2, 12, 2),
 	MUX(0, "mout_aclk300_jpeg", mout_group5_5800_p, SRC_TOP2, 20, 2),
 	MUX(0, "mout_aclk300_disp1", mout_group5_5800_p, SRC_TOP2, 24, 2),
 	MUX(0, "mout_aclk300_gscl", mout_group5_5800_p, SRC_TOP2, 28, 2),
@@ -567,7 +568,8 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 
 	MUX(0, "mout_aclk400_disp1", mout_group1_p, SRC_TOP2, 4, 2),
 	MUX(0, "mout_aclk333_g2d", mout_group1_p, SRC_TOP2, 8, 2),
-	MUX(0, "mout_aclk266_g2d", mout_group1_p, SRC_TOP2, 12, 2),
+	MUX(CLK_MOUT_ACLK266_G2D, "mout_aclk266_g2d", mout_group1_p,
+			SRC_TOP2, 12, 2),
 	MUX(0, "mout_aclk300_jpeg", mout_group1_p, SRC_TOP2, 20, 2),
 	MUX(0, "mout_aclk300_disp1", mout_group1_p, SRC_TOP2, 24, 2),
 	MUX(0, "mout_aclk300_gscl", mout_group1_p, SRC_TOP2, 28, 2),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
