Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DBC68927
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sjauYtxDy/clezqRRNlPn5ujIMkgf0Z1xyTaqgziL5Y=; b=Mc9NbM6Q5oj1PXtbeD9qrTqxgo
	X57P6KxmwIY/2qiQaUuYZOp89+10KJbnYSVLNfFVbK0lTDS195af7bu70WXHuuRgIg+4KDlUouT12
	SX0vyM6WN5KpF3W4h109vTmwO/urpB6dFFjVPDD/gaTdIKgmh8H2OOvaRosKdUGHNjuvMa3DJVBMD
	+qEKo3ikE+mx7w2pvani4/13+nXlUeY08CEftSoVHeGY2bzDUMEOvqKMFBZQveET3VDo1T5yTk35w
	U0L0Kwu0RxnsxnlD24kXoN55fHU+FVoI2TwE7RhjCAWOdYvT1JP28pThswi/DyvrY5RVFKpT/Yf2C
	M8UC9hvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0N8-0005n4-0R; Mon, 15 Jul 2019 12:46:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LR-0003f2-HB
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:43 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124437euoutp01e17deac5f149253d0dbc0343a1c85681~xlUcDXOec1960819608euoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124437euoutp01e17deac5f149253d0dbc0343a1c85681~xlUcDXOec1960819608euoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194677;
 bh=hGig9Rzkx3mDs5eAMnepeN87i1SlggiWZ7aSYKVnbqo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WHof3DfayBv2tQYzCKJCz+cXodCMztEj2mo6DQ5hn3MiEFhs4cbDp4kfZ8zgZEGuT
 d+DG8zg0o4v7T+0Jf3KPc2HfK/xqfwRNc32BVsUaMyyHdYTZJqa9Eklz4UTsWkcZ+O
 4DqRE54RUWFeO/qJPx4wLTMJ+OTvESjj/qzzPil8=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124437eucas1p14e9baf4d4e5c391d86e6c6428a07f7ac~xlUbVJyjZ0156501565eucas1p1_;
 Mon, 15 Jul 2019 12:44:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 40.25.04298.4357C2D5; Mon, 15
 Jul 2019 13:44:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368~xlUaexKUl3211032110eucas1p2o;
 Mon, 15 Jul 2019 12:44:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124435eusmtrp16beae56206d9992cd7b65d74a399b565~xlUaQq-170421504215eusmtrp1h;
 Mon, 15 Jul 2019 12:44:35 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-97-5d2c7534ad2c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 40.40.04146.3357C2D5; Mon, 15
 Jul 2019 13:44:35 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124435eusmtip2caa2e667ade83f596d9b5824a60cdd83~xlUZbUEac1172811728eusmtip2h;
 Mon, 15 Jul 2019 12:44:35 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 03/50] clk: samsung: change parent of dout_aclk400_wcore
 in Exynos5420
Date: Mon, 15 Jul 2019 14:43:30 +0200
Message-Id: <20190715124417.4787-4-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNKsWRmVeSWpSXmKPExsWy7djPc7ompTqxBluO6VvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6MXTumMxVMZK84MMGhgXEyWxcjJ4eE
 gInE2/3n2UFsIYEVjBKfV9t3MXIB2V8YJfbMv8UI4XxmlJh8djqQwwHWsaXTGyK+nFFi080Z
 LHAdu15/ZAcpYhPQk9ixqhBkqojAEkaJIz+TQGqYBW4ySex5spMVJCEsEC3x+mUjM4jNIqAq
 sb71DtgZvAJ2Ev2NJ1ggzpOXWL3hAFgNp4C9xM9pF9hABkkIXGKXmPGumwmiyEVi4uTPjBC2
 sMSr41vYIWwZidOTe6AGFUs09C6EqqmReNw/F6rGWuLw8YusIEczC2hKrN+lDxF2lLi6rZMd
 4mE+iRtvBUHCzEDmpG3TmSHCvBIdbUIQ1RoSW3ouQB0jJrF8zTSo4R4Sp78cZ4cEzyRGiZ0P
 mpgmMMrPQli2gJFxFaN4amlxbnpqsWFearlecWJucWleul5yfu4mRmCSOv3v+KcdjF8vJR1i
 FOBgVOLhdUjRjhViTSwrrsw9xCjBwawkwmv7FSjEm5JYWZValB9fVJqTWnyIUZqDRUmct5rh
 QbSQQHpiSWp2ampBahFMlomDU6qB0a7t19HWLQ8nRWQuOr1g0mVOTpZ8m6YbpcGNvyKqoyQ2
 MH9TVAvS03bWepr2bf9aW4eMudMm+JRyzo3bmHQ4y+flrNanj5xSFAoN5COd1/67cuVh+JoQ
 eSsuY42y6O8bCh6kdMfmWTekn9wtlV6/ft5Rf5Gj+d8aCqwD5Frlehkfbomu3dmuxFKckWio
 xVxUnAgA8OsEBk4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7rGpTqxBk2HzC1urTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamS
 vp1NSmpOZllqkb5dgl7Grh3TmQomslccmODQwDiZrYuRg0NCwERiS6d3FyMnh5DAUkaJLbcq
 QWwJATGJSfu2s0PYwhJ/rnUBlXMB1XxilPj7cRIrSC+bgJ7EjlWFIDUiAisYJSaf8AapYRZ4
 zSRx5Og7VpCEsECkxM/bU8FsFgFVifWtd8CG8grYSfQ3nmCBWCAvsXrDAWYQm1PAXuLntAts
 EAfZSSw++pNpAiPfAkaGVYwiqaXFuem5xYZ6xYm5xaV56XrJ+bmbGIFRs+3Yz807GC9tDD7E
 KMDBqMTD65CiHSvEmlhWXJl7iFGCg1lJhNf2K1CINyWxsiq1KD++qDQntfgQoynQUROZpUST
 84ERnVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgXHBxlexKge+
 r+Kev/rQ5FLvyxzzFd25+CK3VL50ajW8853XNu7NA8+7+2ezuZevEqnT3jW32POYkqvAhZyU
 ZQvLqi99aeBx8xPQkp9g73LGbGVexa66GKGzv1l1TigtVv219JG0/tWW+Z0ax87X13CY5W0O
 6Zl/du0a3bd6R36s2KAiZrVaokWJpTgj0VCLuag4EQBK+UnCsAIAAA==
X-CMS-MailID: 20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368
X-Msg-Generator: CA
X-RootMTR: 20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124436eucas1p28a581bc25f6dae52a5b9b1af26d26368@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054441_706499_D8DAA258 
X-CRM114-Status: GOOD (  12.48  )
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

Change parent of dout_aclk400_wcore to mout_aclk400_wcore which reflects
topology described in the RM.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index d353870e7fda..361ee53fc9fc 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -577,7 +577,7 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 
 static const struct samsung_div_clock exynos5420_div_clks[] __initconst = {
 	DIV(CLK_DOUT_ACLK400_WCORE, "dout_aclk400_wcore",
-			"mout_aclk400_wcore_bpll", DIV_TOP0, 16, 3),
+			"mout_aclk400_wcore", DIV_TOP0, 16, 3),
 };
 
 static const struct samsung_gate_clock exynos5420_gate_clks[] __initconst = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
