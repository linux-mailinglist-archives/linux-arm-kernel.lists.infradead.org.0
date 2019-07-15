Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5F268A17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KAUufafeIoTWQtyOgb0EGyK5LTKjgBVBT0AZbA6Cn5A=; b=W4b5uwGe/3CYUuHWxO6N0Qt3LY
	7z1cJkVtU523AiMThK6GHvmKZU+mHIPkFDwDGLX90dJDufIs8lrFhrs4+igvfMoLIddg25hthB6U0
	irdYgQymg0596uhUKi9XPTFjbqKJR0yCWWy3CVZTbsDdRdwNFr8Z51D1X9+0QxEh0eDi2TSXvW/Vf
	qrIhBOG++XYkC0iRCG0DiAcMLT11xA6hf/JiPFbe6bSpUroICbskxWZuyLmuWykf2lqQUFF7D+JDY
	xw+g3BO2D9t8maEmyKQJgWLVWu7RRGF9JFIa7DkUGcJbXfECmvyd52Sed4YhESpRwIB3VD9OQqFZp
	rrmyv/3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0YC-0000fM-Cb; Mon, 15 Jul 2019 12:57:52 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Ls-0004LZ-8X
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:12 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124505euoutp0118d4adbd39797af5bca72f1eb905c985~xlU1wX7mG1984619846euoutp01M
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124505euoutp0118d4adbd39797af5bca72f1eb905c985~xlU1wX7mG1984619846euoutp01M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194705;
 bh=bIsmRuRdvJ8EbuC+n2fz8iI0NHVPMowCRF1Znsiftpg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WFrqWCgeMZP9prj997TOoqJ87729eo3Kg56nAhp5Shw26hH10ipbyXWEV5Y4CbbjI
 eNK03BQc2ZGo6K5ROt0Ij4mIO2jaSHWJQQJJm1380jyY3hWqbM08A6bYWM5AceuVUg
 FiMvCmTVr8wiKzQMvnQ06qAT7dXCa99619IHhxWI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124504eucas1p19e1d3ccaee92e9d0e5b1154e36b05818~xlU0__aE40156501565eucas1p1d;
 Mon, 15 Jul 2019 12:45:04 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id EE.E1.04377.0557C2D5; Mon, 15
 Jul 2019 13:45:04 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124503eucas1p1d41112e5c10c4fd21c7aada7bdf8e513~xlU0LFWeB3191231912eucas1p1w;
 Mon, 15 Jul 2019 12:45:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124503eusmtrp197ef79627a7a52201423ca507d63adab~xlUz81pvz0488104881eusmtrp1C;
 Mon, 15 Jul 2019 12:45:03 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-20-5d2c75502339
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id BD.50.04146.F457C2D5; Mon, 15
 Jul 2019 13:45:03 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124502eusmtip2937b99c3cde708c7bc721964cc3e63c5~xlUzFewR11101111011eusmtip2U;
 Mon, 15 Jul 2019 12:45:02 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 36/50] ARM: dts: exynos: change ACLK100_NOC config in
 Exynos5422
Date: Mon, 15 Jul 2019 14:44:03 +0200
Message-Id: <20190715124417.4787-37-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDKsWRmVeSWpSXmKPExsWy7djP87oBpTqxBnPPiVvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6Mf90nWApOsVV8evGOuYHxFGsXIyeH
 hICJxKzF34BsLg4hgRWMEhd/rGeCcL4wSiz5NpcRwvnMKHHu5TF2mJYz95YxQySWM0o83zOb
 Ga6lpWki0DAODjYBPYkdqwpBGkQEljBKHPmZBFLDLHCTSWLPk51gy4UFQiXmTz3JBGKzCKhK
 3D55gaWLkZ2DV8Be4kYNxC55idUbDjCD2JxA0Z/TLrCBjJEQuMQu8b3jF9RBLhJ9S99B2cIS
 r45vgbJlJE5P7mGBsIslGnoXMkLYNRKP++dC1VhLHD5+EexkZgFNifW79CHCjhKXz59hBwlL
 CPBJ3HgrCBJmBjInbZvODBHmlehoE4Ko1pDY0nOBCcIWk1i+ZhrUcA+J/XPesUECZxKjxIKL
 15knMMrPQli2gJFxFaN4amlxbnpqsVFearlecWJucWleul5yfu4mRmCaOv3v+JcdjLv+JB1i
 FOBgVOLhdUjRjhViTSwrrsw9xCjBwawkwmv7FSjEm5JYWZValB9fVJqTWnyIUZqDRUmct5rh
 QbSQQHpiSWp2ampBahFMlomDU6qBUSjc2zviSdm6I8v3ac9v1kpw+BKTHZXhX5JTWbCet+ve
 Nk7xPUtqP+qZ7uDt+y1aN3uxotIce9c5r/Zb3WPeOe3kjkLdW14LnI1OH3mwu3Ofp4JLlN6l
 zhMPy/Ls8xfJ/rmrliBx+/LS07O4Wid9vbOjXnpCVUv66ZcruDylne49K/+TvPfjXiWW4oxE
 Qy3mouJEAGR+od9PAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7r+pTqxBhenyFjcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Mf90nWApOsVV8evGOuYHxFGsXIyeHhICJxJl7y5i7GLk4hASWMkr8
 2bCXDSIhJjFp33Z2CFtY4s+1LjaIok+MEu8nNAJ1c3CwCehJ7FhVCFIjIrCCUWLyCW+QGmaB
 10wSR46+A9sgLBAscf3tWhYQm0VAVeL2yQtANjsHr4C9xI0aiPHyEqs3HGAGsTmBoj+nXQA7
 QUjATmLx0Z9MExj5FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMm23Hfm7ewXhpY/Ah
 RgEORiUeXocU7Vgh1sSy4srcQ4wSHMxKIry2X4FCvCmJlVWpRfnxRaU5qcWHGE2BTprILCWa
 nA+M6bySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYwR+U8YeeWT
 FvjzrXg4+VztuRLFrb/tS561/GWq1Nr77PquXZsXNrR5lJ3hiAwM0Lu5UrIzgv+P6X5vjXgV
 5ZfmKWelP3seVZmddnWSoIz2tODqCaINF6+vPHFlZlrv6xmt+abLf4gHtM+u1W1eHzwn6+8z
 r5OW79IMtt+RnPWyWanl37yJKROVWIozEg21mIuKEwFtIRqXsQIAAA==
X-CMS-MailID: 20190715124503eucas1p1d41112e5c10c4fd21c7aada7bdf8e513
X-Msg-Generator: CA
X-RootMTR: 20190715124503eucas1p1d41112e5c10c4fd21c7aada7bdf8e513
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124503eucas1p1d41112e5c10c4fd21c7aada7bdf8e513
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124503eucas1p1d41112e5c10c4fd21c7aada7bdf8e513@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054508_843696_7A5FBA80 
X-CRM114-Status: GOOD (  10.21  )
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

This patch changes NOC100 bus to proper parent and proper rate. The OPPs
have been align to reflect this parent and its clock rate.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index aaf18653d8ac..d460041f716c 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -58,6 +58,10 @@
 
 &bus_noc {
 	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK100_NOC>,
+			  <&clock CLK_DOUT_ACLK100_NOC>;
+	assigned-clock-parents = <&clock CLK_FF_DOUT_SPLL2>;
+	assigned-clock-rates = <0>, <100000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
