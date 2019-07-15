Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC2868A20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RAP0pC1D3SJ9tWoCMDPSQxHYV67belyRJvVjx8SMryM=; b=ZxY1q8j4CvpUPuEogRFvFdLznd
	buVVbgTCEZ5wM+Kb+FGn2+IwYrEf7cvJ4BomJFlYJapuHMCCbyJj5pVdsIp0oXlDAe0UjTJDOM2qn
	gdsXkkln6Nj/49YpBek6lOeH6G4aTMzXyAakWnnrnKc29SPXoCjyWzpwTx6L2fPrr2v8Hk4v6Xy0B
	/GmBo3vYu6Mm5LqBpzD9O7CPUjRiRuUQ2whYa9beyTtDvxC/3jNNKokUCzjnIWJ5v3vWzFY7pK1K4
	EGLB0nVQ5nIISKr5xdj1uM9zqhHQzIGBroaLC1Y26pws/2Yxktc7U9kaFHD83ypCCaaNR7GAseRmj
	gGW+z95g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0aM-0002NA-18; Mon, 15 Jul 2019 13:00:06 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lw-0004co-KA
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:15 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124509euoutp013e38cd5782eb6c3c120202efae8604ad~xlU5KiE_m1950319503euoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124509euoutp013e38cd5782eb6c3c120202efae8604ad~xlU5KiE_m1950319503euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194709;
 bh=n9AhB7aGZTT5hZs6nEyn2FJO5PAlgdwzqj/W1h2+0R8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hCljCIs64yRKsA9M1QMt+M7eMsDpo0s+iJ4/RohzgJxrzak7rN6M5nlQX+hVjK+UM
 Yojkz1A+FG1Gfr95s0GTuFnnvmiPw3tJjAzAIQeBEl3ZUN5vG5foZG3moNGgyXTB8n
 0yofzg6erA8v8QelJUUFxI1qevRjaeP4qjuNA6Tw=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124508eucas1p2369cd4871b6c009b9fd10d5e069341e7~xlU4ZGEXs2439124391eucas1p2q;
 Mon, 15 Jul 2019 12:45:08 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1D.C0.04325.4557C2D5; Mon, 15
 Jul 2019 13:45:08 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124507eucas1p17793ab35cd6a64fc5626b751e7f095ee~xlU3ahDBG3056930569eucas1p1t;
 Mon, 15 Jul 2019 12:45:07 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124507eusmtrp12da439c79e879c1ff5e5106b63bd73d2~xlU3MRUWP0488104881eusmtrp1Z;
 Mon, 15 Jul 2019 12:45:07 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-0e-5d2c75548359
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 00.27.04140.2557C2D5; Mon, 15
 Jul 2019 13:45:06 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124506eusmtip264234280107d475e0a174fa130039d34~xlU2WQx7a0528005280eusmtip23;
 Mon, 15 Jul 2019 12:45:06 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 40/50] ARM: dts: exynos: change parent and rate of
 bus_gen in Exynos5422
Date: Mon, 15 Jul 2019 14:44:07 +0200
Message-Id: <20190715124417.4787-41-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSxVYRzHe865557DXJ0u8UyW7S5LFEmzp3fW21Gz1bTWMtXFGZa37nFF
 JbIpmZAapoTFiCtvNyGsuEuRtyxcjSnCykvyslTons6t/vv8vr/v7+X57aFwaT1hQQUEh7GK
 YHmgTGwoqnq52L7lhHKz19bedhz1P24nUHlGKYF658YIlK3RhcnDX3DU0VFGorbYCRL1x1ii
 iuEeAs0kDhKou/a+GGV0NGCoRDNAovzeLgx1tRxE768VilFcvYZETRM3CLTcUy5yMWFUD1SA
 me6LI5mKoptipjIvmnkxVYcxSeoiwMxWrD9Gnjbc7csGBoSzCoe95wz9W1ZyiNBnZERX8gIW
 A4rFCcCAgvR2qO0bAAnAkJLShQDOJ62QQjAHYErrgj6YBXBhXosnAOpPyfjSYUEvALDlaQP+
 r+K1Sk3yJjFtD6uLLvAjTOk8ADWL3rwHp7UYrBupIfiECe0FEwtVJM8i2hp+HK/BeJbQ+2Bm
 aSYQ9rOCxWXPcZ4NdPpiWqeYbwTptyScqRwVCaYDsGNoHBfYBH5uVpMCW8LWO4l6DwdjbuXq
 m16Bw8lZes8u2NTcRfBL4/QmWFrrIMiuMFdVQAgPNoZ9k2t4GddhalW6/g4SGH9dKrhtoDqx
 ExPYDBao0vTNGbg42K+/biqA43Gx4hRglfl/WA4ARcCcVXJBfiznFMxetOfkQZwy2M/eJySo
 Aug+Vety83w1aPjl3QhoCsiMJC6+dl5SQh7ORQY1AkjhMlPJnnmdJPGVR15iFSFnFcpAlmsE
 6yiRzFxyedWQp5T2k4ex51k2lFX8zWKUgUUMcP1R8jDpUbh7YCl51UOa7pYfnSZrX/1V+X3n
 IZIpW47q8Y22O7PD4tOROjMjELF0e5u7tfOb/f11oz4bp+eaHKa+oeMWG+5Nr+2cHY1vjaIz
 3Zw8lzG23PGutuyJ7cjkT2ebd21w7JQoRGqlfeVv2e1Ra2wffTQ/S16TfXLog4lSJuL85Y62
 uIKT/wZ6lp+mUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7pBpTqxBi2XrCxurTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamS
 vp1NSmpOZllqkb5dgl7Gqf8LWAt2s1dc7P/G1MC4mq2LkYNDQsBE4sVf9y5GTg4hgaWMErOO
 64LYEgJiEpP2bWeHsIUl/lzrAirnAqr5xCixa+cSRpBeNgE9iR2rCkFqRARWMEpMPuENUsMs
 8JpJ4sjRd6wgCWGBaInP1/6B2SwCqhKPXuxkArF5BewlZq2fxQixQF5i9YYDzCA2J1D857QL
 bBAH2UksPvqTaQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBcbPt2M8tOxi73gUf
 YhTgYFTi4XVI0Y4VYk0sK67MPcQowcGsJMJr+xUoxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKi
 yfnAmM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cCoer8q/Vy+
 59RMXn69vHf6Ud4Llx+bbvCovTL8aL3PxtgrfTPSQ4/IN+yOybEzu3fv17MtXT7zXA+s1pkS
 /eCrUj5Px+Za3QLmZzo84dMsTu6r3Hfw/RqB39Ytvx9W/bxwwMJDVUNe9fqH15NfZh4LCuDj
 ODqlv0bE+2fG/RzJhx+XKdfO6tVUYinOSDTUYi4qTgQAwEnjorECAAA=
X-CMS-MailID: 20190715124507eucas1p17793ab35cd6a64fc5626b751e7f095ee
X-Msg-Generator: CA
X-RootMTR: 20190715124507eucas1p17793ab35cd6a64fc5626b751e7f095ee
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124507eucas1p17793ab35cd6a64fc5626b751e7f095ee
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124507eucas1p17793ab35cd6a64fc5626b751e7f095ee@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054513_095813_9E8653B6 
X-CRM114-Status: GOOD (  10.74  )
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

The bus_gen OPP table has been aligned to the new parent rate. This patch
sets the proper parent and picks the init frequency before the devfreq
governor starts working. It sets also parent rate (MPLL to 600MHz).

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 6225d044d01c..75664ff6d966 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -102,6 +102,10 @@
 
 &bus_gen {
 	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK266>,
+			  <&clock CLK_DOUT_ACLK266>, <&clock CLK_FOUT_MPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_MPLL>;
+	assigned-clock-rates = <0>, <300000000>,<600000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
