Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD6D689F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LGr+OutupsaSm+PNBWgJ5ZPk4aNqGeuO3lyHTkDAOQ0=; b=d3Fj5rXY3pdFOsqvnnGnJLSKt7
	m9Slw61JYyc6GHnYV3nohBR6y5q3SIyc7E3HjXQtJkKZumblqM1EVocaaPpKBeMCv07rXgI+3LVKI
	CHrimN+0Nh4Qxy/INPmlGGnAQZtpOxpWpuYAMLB44jGuew/7oR+dCDAfCydGG2I2Bj1ll+9VvfMwO
	HKSIu+Kdf9sMb4cPJ4O5mjsYgYiXoKvg4aL7NJaZoFzwiWCeIu6waisX7SYrg0gDHQkYkX9EC+92O
	LNBBa4n3/bVIn/joD5k780oV3m8rIYzSEgqkI/2S2eb3hzsKT3tjSXRh8P2fAyAK0lKyycjBWwPMt
	lklQm9+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0R3-0001ob-Lq; Mon, 15 Jul 2019 12:50:29 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LY-0003kH-15
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:49 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124442euoutp02329383ff17c87dcde42504f37100a0ff~xlUgkXVLf0595105951euoutp02a
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124442euoutp02329383ff17c87dcde42504f37100a0ff~xlUgkXVLf0595105951euoutp02a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194682;
 bh=xyPVVgSZeAAl0W8N7v1spNbK/C37A4Mttfo7IbZ7n/A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zu5di3CCoNhgRNrQNS9TiANUz9J2IOT0o34ZFTjFEN4ylN4deLgpNQFAAOGtJ3RU7
 db2fNA2bey5sC8rc97zay8UnzSQaWi5R4Q65Y5Bek5QIQBtm0/9nr79IrCKu2n/P/l
 HVTzpmS28pkoMeQKAH/5SIGQo7AIstTdmJHBPVKc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124442eucas1p27990fa89f07a54f5e2b55434ac7019aa~xlUf_TUQq1386513865eucas1p2B;
 Mon, 15 Jul 2019 12:44:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 4A.A0.04325.9357C2D5; Mon, 15
 Jul 2019 13:44:41 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124441eucas1p12e1f58587318219a5a2c695faa200b17~xlUfK8FhO0146601466eucas1p1B;
 Mon, 15 Jul 2019 12:44:41 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124441eusmtrp14ee2327d0d20ba36d29035765359bfaa~xlUe815ik0462004620eusmtrp16;
 Mon, 15 Jul 2019 12:44:41 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-b7-5d2c7539b1de
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 39.F6.04140.8357C2D5; Mon, 15
 Jul 2019 13:44:40 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124440eusmtip2ea673178038ddf8fc3568c924a8628f6~xlUeCoi8h1184611846eusmtip2U;
 Mon, 15 Jul 2019 12:44:40 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 09/50] clk: samsung: add IDs to FSYS clocks in Exynos5x
Date: Mon, 15 Jul 2019 14:43:36 +0200
Message-Id: <20190715124417.4787-10-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRju2zln52y0OG5RH2Vag6CLza7w2dUo4SAEQdCPIuqYJ43csp2m
 WZEr0aWYmoGKXSVTmVY6zVsqpsuZw9SFWopdVLp5LRU5ZdZOZ9a/530u7/Py8VGYupZYQp00
 nOWMBjZCK1fi5U1C27oAk9+R9S5hI+p59JJAJVmPCdQ9+YlAd+3uMXVgCENtbcUkar0yTKIe
 szeyDXQR6FvyWwK9qr4lR1ltdTL00N5HogfdHTLU0RKEei8XyFF8rZ1EjcMWAs12leCBGqbo
 ThFgxl7Hk4zNmihnSnNjmWejNTImpcwKmAmbz37ykHJ7KBdxMooz+u88pgx3lOaByF+KcyXN
 WcAMnFQSUFCQ3gzTUgUiCSgpNV0AoLW+ApOGSQBb3lR5hgkAn8eNYnMR4eFLXBLyASyd6JT9
 i4z1tbsVipLTOlhpPSMGFtK5ANqFENGD0W9ksGawihAFDR0MXSk2XMQ4vRIOtnwBYlZF74JV
 iQelMl9YWFz/t1jhpoWMdrm4B9IuEl5/+k4umfbCTOGm5zoN/OooIyXsDZ03knEJ89B8LQdI
 +CIcSL3t8WyDjY4OQuzF6NXwcbW/RO+GCYV1pEhDegF8PeIl0pgbppdnYhKtglcT1JJ7FSxL
 bpdJeBHML8rwLGdg4bsGz+ukAziVYyPSgG/2/7J7AFjBYs7E68M4fpOBi9bxrJ43GcJ0x0/r
 bcD9qZyzjqlKUDcT0gBoCmjnqwJD1x5RE2wUH6NvAJDCtAtVO6bclCqUjTnPGU8fNZoiOL4B
 LKVw7WLVhXnvD6vpMPYsd4rjIjnjnCqjFEvM4Jiv+lZlZ58lJ+jSAiL1W78rVhnHOpdPf/g+
 4vSKCnV+UnYHz1T8yHSkNPv7jT75Xbb1oy/Kyu41Tb+ydBQ4ogci+4XP5p+KLec3jLOznV1D
 sSt0+87t6U+4v+lAnqEYb+0dmbWMf2+6E6eZPjH5YqjVhNV/WKTxm/FRZQRcNC/T4nw4u2EN
 ZuTZPwkbD49QAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7oWpTqxBi//WFvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M45uXMRb85azYeGIGYwPjaY4uRk4OCQETiZ9rz7F0MXJxCAksZZTY
 vnUyG0RCTGLSvu3sELawxJ9rXWwQRZ8YJRZ9uQeU4OBgE9CT2LGqEKRGRGAFo8TkE94gNcwC
 r5kkjhx9xwqSEBbwkrjUt4kFxGYRUJV4cuolI0gvr4C9xM7OMIj58hKrNxxgBrE5gcI/p10A
 u0FIwE5i8dGfTBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjJxtx35u2cHY9S74
 EKMAB6MSD69DinasEGtiWXFl7iFGCQ5mJRFe269AId6UxMqq1KL8+KLSnNTiQ4ymQDdNZJYS
 Tc4HRnVeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGSS9vXn+5
 7n9Ckgz7LPlXR18tFriWwvBy8rOvn7s3vCnPilJO0Ejg7txyK9cniaHRoOnD3Jt/Z/WrG1Vz
 tT1V3vtu00nup2UCz6f57xLbu50p7u1n9UDDVeHrp62uMsud3JV22pl1+/Sa6X/5KlinfHsm
 FsAUe9Xhm4Z2+pJf/7lMd86cvNv2qxJLcUaioRZzUXEiAGEcT5KyAgAA
X-CMS-MailID: 20190715124441eucas1p12e1f58587318219a5a2c695faa200b17
X-Msg-Generator: CA
X-RootMTR: 20190715124441eucas1p12e1f58587318219a5a2c695faa200b17
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124441eucas1p12e1f58587318219a5a2c695faa200b17
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124441eucas1p12e1f58587318219a5a2c695faa200b17@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054448_342210_05DC17EE 
X-CRM114-Status: GOOD (  11.40  )
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

Add IDs to MUXes of ACLK200_FSYS, ACLK_FSYS2, PCLK200_FSYS to manage them
from DT.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 5f251279b4c8..6164d0ca75e0 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -622,9 +622,12 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 	MUX(0, "mout_kfc", mout_kfc_p, SRC_KFC, 16, 1),
 
 	MUX(0, "mout_aclk200", mout_group1_p, SRC_TOP0, 8, 2),
-	MUX(0, "mout_aclk200_fsys2", mout_group1_p, SRC_TOP0, 12, 2),
-	MUX(0, "mout_pclk200_fsys", mout_group1_p, SRC_TOP0, 24, 2),
-	MUX(0, "mout_aclk200_fsys", mout_group1_p, SRC_TOP0, 28, 2),
+	MUX(CLK_MOUT_ACLK200_FSYS2, "mout_aclk200_fsys2", mout_group1_p,
+			SRC_TOP0, 12, 2),
+	MUX(CLK_MOUT_PCLK200_FSYS, "mout_pclk200_fsys", mout_group1_p,
+			SRC_TOP0, 24, 2),
+	MUX(CLK_MOUT_ACLK200_FSYS, "mout_aclk200_fsys", mout_group1_p,
+			SRC_TOP0, 28, 2),
 
 	MUX(0, "mout_aclk66", mout_group1_p, SRC_TOP1, 8, 2),
 	MUX(0, "mout_aclk166", mout_group1_p, SRC_TOP1, 24, 2),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
