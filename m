Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E81689F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jmd/6RUsN3g3WAWhUHBA1TRsYFfCkq+WJ1CvLhGy0hg=; b=qrTBBLexQJ/M30ETA/MCWfn0Js
	cmpOB/h08cnk0O48XWMq1pBcZBKhBp6e2xi8Fck9+FD23dGjXQCh+Da2smbwHvJtGs/hRQUjq9n6B
	Q1N2xwQAjYLMyHoFbWRX+cpT9HDE1xfVkGzdKjPjF17lqFTyD/f9ljOH+QcWRvdcVpAr6Klm6d17R
	YEEG7A7sLWX1c5b4CjTYx5Hx6yUPdMtso6FJyjRQ6NQn+tSwcUHZ7Zw7HjsJIK7QOT0wabnYQjE1s
	l3auLWigtgGL96od2ZLKuUKm4sgw6aM7lOfNRL3mBPnv5IrQeIGdBMs29e+jUNtcDt73nNwlJ624v
	CNusGVog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0QP-0000GI-7F; Mon, 15 Jul 2019 12:49:49 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LW-0003jR-R3
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:48 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124445euoutp02100da47d17667da9581ac6ff863b54af~xlUjL_Ulo0714907149euoutp02O
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124445euoutp02100da47d17667da9581ac6ff863b54af~xlUjL_Ulo0714907149euoutp02O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194685;
 bh=wvAn/Pd40QWaTn4Vruzx23GcrbKmatIE/03uKpdDkM4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oB8SLNOKZ8Hh5S+MrArKkECIWnsy25DGenfOsa5wVB2vY/wQQj3gqJjsvqgMKkvdx
 9ryAdZHDzp7Uz15o4NNsk2xIKYMG3ZD0PESf1cMwkrIODTF8X3uxYZ9rVwlK7mHfiR
 qGWxIbSS4nYvDUcC3fUXHhIoKyGw4l5IiUfwdT50=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124444eucas1p2f20893ae6c81a7b0612bdfb4a83822b3~xlUiYkEa23211132111eucas1p2F;
 Mon, 15 Jul 2019 12:44:44 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9C.D1.04377.C357C2D5; Mon, 15
 Jul 2019 13:44:44 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124443eucas1p1adf02a02bf77448f2277ddd5fe5e895b~xlUhYafL80571105711eucas1p1y;
 Mon, 15 Jul 2019 12:44:43 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124443eusmtrp1215e22c07e1e231f684ac87931560e45~xlUhKFCNU0462004620eusmtrp1I;
 Mon, 15 Jul 2019 12:44:43 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-e4-5d2c753cc344
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F7.40.04146.B357C2D5; Mon, 15
 Jul 2019 13:44:43 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124442eusmtip24c1b0a2ae870b0926918e355a950ed76~xlUgV_qEO1184611846eusmtip2W;
 Mon, 15 Jul 2019 12:44:42 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 12/50] clk: add ID to PWM MUX in Exynos5420
Date: Mon, 15 Jul 2019 14:43:39 +0200
Message-Id: <20190715124417.4787-13-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSezBUURzHO3v37l7GmtsyOSNRO9NEijL+OI1HTMqa/qg/NGMyJit3MCza
 a5Ue02qSMrTCoCjMMJ55LO2sTUZrPUqs1yDpIcJITCGjUHu7a/rve77fz/n+zjlzCEyoxW2J
 qNgEShYriRHxzLnqzvW+w57yQyFHxgds0HhtH44a8utwNLoyi6MivXGpnPqKIYOhno96by3w
 0bjCDqmmRnD0Pf0Djoa0hTyUb2jloKf693xUNjrAQQOvT6J3yRU8lPJCz0ftC6k42hpp4PpY
 iWue1ADx0lgKX6yquscTN5beFL9cbOGI7zdVAfGyyv4s/7y5ZzgVE5VIyVy9Q80jMwsKsHgV
 cWVjbRZXgGJ+GjAjIOkOe/40Y2nAnBCSFQCm5i0BJhCSKwAafgA2WAZQqe7nbu/Y+FjEZaFy
 AGvnDrCQcUO9Ws1JAwTBI12gpuoSw1iTpQDq18MYBiPfcmDLdDPOBFakN5zoWvs3jUvuh4Md
 TClBCMjjcLUwkZ3lAKvr2zBGmxnt9dx+HtMDyT4+zN8sAAwPST+41evB8lZwvqvJdDM72JOd
 bjozDRUZJYDV1+GU8rGJ8YDtXQM4U4ORTrBO68ravnCrMAdj2y3h2LedjI0ZZZY6z2QL4N07
 QpZ2hE3p/RxW74LlNbmmcjEcyXluesEsAFuWBnmZwOHR/2HFAFQBG0pOSyMo2i2WuuxCS6S0
 PDbC5WKcVAWMP6pnq2tFA7QbYTpAEkBkIfAJdw4R4pJEOkmqA5DARNYCr1WjJQiXJF2lZHEX
 ZPIYitaB3QRXZCO4tuNTsJCMkCRQ0RQVT8m2Uw5hZqsAjnNnLN5oHk46lk10o9Bgp6GgTSVp
 8Svqi32A4ETlaWWQZoZXuSzTBK6mtE1qSzJknvTMcFntKX+3+ZpzXtl7fwcu+i58fqVz79zT
 Ha+ftlaog/1b5UPV+yxxeRg+7OHsafnsxvqYn91Ex0+3YwnWRT3RAbc7N2obc9QxyQ9K4kVc
 OlJy9CAmoyV/Aft0QLpNAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7rWpTqxBpfviVjcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MCbNnMxds4qj48/05awPjAvYuRk4OCQETiT/357N0MXJxCAksZZRY
 0PadESIhJjFp33aoImGJP9e62CCKPjFKdB2dxtTFyMHBJqAnsWNVIUiNiMAKRonJJ7xBapgF
 XjNJHDn6jhUkISxgJ3HnOMRQFgFViUtHQbZxcPAK2Et8nVMGMV9eYvWGA8wgNidQ+Oe0C2wg
 thBQ6+KjP5kmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERg524793LyD8dLG4EOM
 AhyMSjy8DinasUKsiWXFlbmHGCU4mJVEeG2/AoV4UxIrq1KL8uOLSnNSiw8xmgLdNJFZSjQ5
 HxjVeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGOtvXT6fPFnJ
 nf1t/NK02pLIAzdPluucrDCNXpiVsUD3dqLhkxUX6sO2ypz6aOd0xsdQ+tc9pVirgET3qZdv
 iytfCXVjKT3AFctQOovv4cuyZOHVEgsYP2u4nV4SOOmeiNf52/r71rRWfpt9kC9sihT303dM
 +42NNsgxPVeMm9oUmhh8aKkPvxJLcUaioRZzUXEiAN3Zx0WyAgAA
X-CMS-MailID: 20190715124443eucas1p1adf02a02bf77448f2277ddd5fe5e895b
X-Msg-Generator: CA
X-RootMTR: 20190715124443eucas1p1adf02a02bf77448f2277ddd5fe5e895b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124443eucas1p1adf02a02bf77448f2277ddd5fe5e895b
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124443eucas1p1adf02a02bf77448f2277ddd5fe5e895b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054447_232441_DDDAFB24 
X-CRM114-Status: GOOD (  12.89  )
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

Add ID to PWM MUX to manage it from DT to reflect proper topology.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 7bf74401c4e7..7f8221527633 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -772,7 +772,7 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 	MUX(CLK_MOUT_UART1, "mout_uart1", mout_group2_p, SRC_PERIC0, 8, 3),
 	MUX(CLK_MOUT_UART2, "mout_uart2", mout_group2_p, SRC_PERIC0, 12, 3),
 	MUX(CLK_MOUT_UART3, "mout_uart3", mout_group2_p, SRC_PERIC0, 16, 3),
-	MUX(0, "mout_pwm", mout_group2_p, SRC_PERIC0, 24, 3),
+	MUX(CLK_MOUT_PWM, "mout_pwm", mout_group2_p, SRC_PERIC0, 24, 3),
 	MUX(0, "mout_spdif", mout_spdif_p, SRC_PERIC0, 28, 3),
 	MUX(0, "mout_audio0", mout_audio0_p, SRC_PERIC1, 8, 3),
 	MUX(0, "mout_audio1", mout_audio1_p, SRC_PERIC1, 12, 3),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
