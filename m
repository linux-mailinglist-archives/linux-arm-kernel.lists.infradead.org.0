Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AFA689FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rAKuHiS0BdNsfGq2wKaizVx87agLYExpRvuZlJSfdII=; b=OAwG5qZdMXWmRc+LLZE/bavNwE
	TSAEPcsTl1FppzAFXUoHWqwrhj+zKUEaN3mydMf3wgc8iF06KW+OOIxMs8gSteqktKwFP+QXzVXFU
	r+2RJMQo+A7dHSqEkFaEEael9aO+DHRdthkG4wTo19LG3NDMfV8GORkeD6rqyNgN3/6SXSObmk6to
	d6yNpNDPhjSaMtobkReBtbZg75rRFgS2yE7dLx5FkS/QDerhlrpZ3k+j3Kw9iXS2RXxmuBNQhIk2N
	3TTJwWOLop1R8zxsliT50UYiPrcrNGB6ZimPXao9O4WgAKqQ6fMWuEMPGv/Ln0PbNQH1mdiZFo+mY
	stDq977g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0SN-0002xO-NC; Mon, 15 Jul 2019 12:51:51 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0La-0003nC-QO
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:52 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124449euoutp02584f9f2e4c766abd3da1c46edb94fa3c~xlUm2R9520714907149euoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124449euoutp02584f9f2e4c766abd3da1c46edb94fa3c~xlUm2R9520714907149euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194689;
 bh=e/bI+49CIyftwGTc+xwcAyP9bm184Xpd/85SSnUhakk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OEf4HAPw5CMhyHIn1QKZXceSv9vYjh6o6FOVojXdUEHbJ5EO8n9wtAKdiXJX+XMsX
 ygU9tJxV+ZhIlL36VU4vAsT588mq2JtfoWGdnkLSZoDZS1a8tFHifBhztOaeyu4U0O
 Ebvdj4EHw95Af/FBdM21kO9OE5s+G+DmZSLsm808=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124448eucas1p25eda46e4b1c2f49f1c38cd5f9bdbc911~xlUmBqDMv1544915449eucas1p28;
 Mon, 15 Jul 2019 12:44:48 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A0.B0.04325.0457C2D5; Mon, 15
 Jul 2019 13:44:48 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124447eucas1p143a857f619f48b9b87437ec3b13dfb3f~xlUlNvQ4c3191231912eucas1p1Z;
 Mon, 15 Jul 2019 12:44:47 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124447eusmtrp16f1daa55d99a5d7e0e9d4d828e2b5580~xlUk-pGZn0462004620eusmtrp1Z;
 Mon, 15 Jul 2019 12:44:47 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-cc-5d2c7540edc4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 13.07.04140.F357C2D5; Mon, 15
 Jul 2019 13:44:47 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124446eusmtip2508c7ab371e3cb515ec4d9541fa125a0~xlUkOKj190518605186eusmtip2j;
 Mon, 15 Jul 2019 12:44:46 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 17/50] clk: samsung: add CLK_MOUT_MMC0 in the Exynos5420
Date: Mon, 15 Jul 2019 14:43:44 +0200
Message-Id: <20190715124417.4787-18-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSxbYRTGvb339l6yyl0Jb0wmaSL7xBYWb2YzxJYmkpl/JLPIVtwgU6xX
 bWyJWpiPWA2J2TIzG0N9lwiGrTQEUZqJj2IhXSLBSFci9mFr3dr++53nnOc5J29eChP2EW5U
 YnIaI0uWJIn4DnjX8J7OK0h+NvqcqtgFGVp0BGqvaCXQ7PYqgaq0lrLYuI6hyck2Ek083iCR
 QeGO1MYZApmKvhDoc+8rPqqYHOChZu0SiWpn9TykH7uKFrLr+Si3X0uioY08Au3PtONBTuKm
 101AvDWXS4rVqgK+uKMmS6zZ7OOJlZ0qIDarj98goxwuxTFJiemMzCfwjkOCvt+MpzaQD0Z0
 Gr4CVPELgT0FaT+oLighrCyk6wFceBFYCBwsvA1g2/IuyRVmABc7FolDR+GWgs816gBUVv/G
 /1k075YtBUXxaW/YrbpnNTjTNQBq92KsMxg9z4N9X3sOkpzoMDg92gCsjNOesNn45+AmAX0F
 NtWbcG6bB2xs+4RZ2d6i75VP2e7WkbDFJOA4FObkmTCOneDaSCfJsTscLyuy5bBQ8bQacPwI
 GosrbTMBcGhET1hvxuhTsLXXh5ODYY55BbPKkHaEc9+OWmXMgqVdz22yAOY/EXLTJ2Fn0RSP
 YxdY11RuCxfDmrV+gnudUgA3DPvEM+Dx8v+yNwCogCsjZ6XxDOubzNz3ZiVSVp4c7x2bIlUD
 y58a3x/Z6QYDv2IGAU0B0RFBUNyZaCEhSWczpIMAUpjIWXB5xyIJ4iQZmYws5bZMnsSwg+AY
 hYtcBQ/tlm8J6XhJGnOXYVIZ2WGXR9m7KcDAV15Xrzx6rM5fVZwdaDQG2EnD03eKHL1GY8Mn
 vi/+xMta/ZE5ZNZ3+Joyazf6JqFaD1taSWx0ipjOD1H5hJQr7dLeqyt7YeuswRwf/CFy0aB5
 2xPh2axLkPlFjivDTBeNJ6672nuFXZCH6ud/RCkGastXNxtD0kNLdHTmRxHOJkjOn8ZkrOQv
 I8r3FU8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7r2pTqxBstOyVrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Mi3s/sxSsZK84fu4gWwPjfLYuRk4OCQETia73DUA2F4eQwFJGiZMT
 vzNDJMQkJu3bzg5hC0v8udYFVfSJUWLHi8lACQ4ONgE9iR2rCkFqRARWMEpMPuENUsMs8JpJ
 4sjRd6wgCWEBb4krJ1cygtgsAqoSax//B9vMK2AvsWbFRxaIBfISqzccAFvMCRT/Oe0CWI2Q
 gJ3E4qM/mSYw8i1gZFjFKJJaWpybnltspFecmFtcmpeul5yfu4kRGDvbjv3csoOx613wIUYB
 DkYlHl6HFO1YIdbEsuLK3EOMEhzMSiK8tl+BQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwP
 jOu8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MveWV1QV9k0XX
 NjOlXfQr1jiTPblHY9vCiGs/r1zu277nxWq3d9Zb7BLDEnua6+ZuX2YU89Nhf7vX3a9x/KnZ
 DT9XtEhU7WnRbCy982LrnjWnplit2hJqfyU9YN+0kisrOB7+t1evi/zizFFyZGuctoLsH5Wj
 Rg8MpjuazpJfdGjBrnvrGe3/KrEUZyQaajEXFScCAGXYNO+zAgAA
X-CMS-MailID: 20190715124447eucas1p143a857f619f48b9b87437ec3b13dfb3f
X-Msg-Generator: CA
X-RootMTR: 20190715124447eucas1p143a857f619f48b9b87437ec3b13dfb3f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124447eucas1p143a857f619f48b9b87437ec3b13dfb3f
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124447eucas1p143a857f619f48b9b87437ec3b13dfb3f@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054451_441213_4192B8C3 
X-CRM114-Status: GOOD (  12.80  )
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

Add ID to mout_mmc0 MUX to make possible children connection in
the DT.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index ead569a164cf..8d58801baf2c 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -763,7 +763,7 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 
 	/* FSYS Block */
 	MUX(0, "mout_usbd301", mout_group2_p, SRC_FSYS, 4, 3),
-	MUX(0, "mout_mmc0", mout_group2_p, SRC_FSYS, 8, 3),
+	MUX(CLK_MOUT_MMC0, "mout_mmc0", mout_group2_p, SRC_FSYS, 8, 3),
 	MUX(0, "mout_mmc1", mout_group2_p, SRC_FSYS, 12, 3),
 	MUX(0, "mout_mmc2", mout_group2_p, SRC_FSYS, 16, 3),
 	MUX(0, "mout_usbd300", mout_group2_p, SRC_FSYS, 20, 3),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
