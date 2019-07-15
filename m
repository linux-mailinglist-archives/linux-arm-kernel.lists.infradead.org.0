Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA22D68A04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hn2/Hu/ehHOaeht1/tmImhL9EWydR8aUtMWHiRIp434=; b=OP+vqMkD/8en7XIw+i5FhTyb/B
	t6zlie6XHSVcwL1l+FMjy1WefLxoSQbRWU8t7XSIDIrgzteSi37FihMUD3VhCLKx0/WRkHWos16my
	5dWW6MymuYwKKwxBZie5F4YORKQrL8hjBao+Xu+0+MqOkIw9SSEYMYQDxTH7byv8JyYL8/HMVziLM
	MpDU1pVAqP0i8sqZmw6+NKh4yxbb0RUSZWGFjuGBgc/fhzTY61GxAQg9dBbPhmvdRiq56z0Uw2iCM
	95UNuXVjnPdAeyNQGp6KmviOLA6wrYBu3uQo664Abge9ye0/Deg4bsEjAGQyPiHXDii0cbbuC3IZx
	iB1iKpiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0VA-0005G7-0U; Mon, 15 Jul 2019 12:54:44 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Ll-0003wa-Ff
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:04 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124500euoutp02d54c27381643762bafd1e7370cdb03c2~xlUwx4A8w0715707157euoutp02o
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124500euoutp02d54c27381643762bafd1e7370cdb03c2~xlUwx4A8w0715707157euoutp02o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194700;
 bh=SeLY0HG9yaaAZHLgVuO21pV4NxGAllfMnu7a12xfvsc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q3GUQR3MSsTfybK6mCOccSZn9FG86+4v9GvDhYd/HAFhXDm62wy7XQsaQNKlHkayb
 JyfgNl157fn1kmG2URwn66kJRek5BTlF8wj5nFTcqZzQ7X+iABdHjl3M+f74WRKBbz
 q794RmU6WEROizht5zDzOMjS4mEx2h6MRmN/Eylo=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124459eucas1p2686212b74cac35c4e757022c3d8d4170~xlUv8xaZM1386513865eucas1p2T;
 Mon, 15 Jul 2019 12:44:59 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 90.C0.04325.A457C2D5; Mon, 15
 Jul 2019 13:44:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124458eucas1p2df56f2e0c7a1a0a9144a4d5fbdb471a9~xlUvNDqHS1544915449eucas1p2M;
 Mon, 15 Jul 2019 12:44:58 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124458eusmtrp150d2c2800a2eeb2195e069b3d6a26994~xlUvMdTUv0488104881eusmtrp1q;
 Mon, 15 Jul 2019 12:44:58 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-ef-5d2c754a8795
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 08.50.04146.A457C2D5; Mon, 15
 Jul 2019 13:44:58 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124457eusmtip2a9440eae66016e32fc1769bab1efecdb~xlUuZpbyO1115311153eusmtip2d;
 Mon, 15 Jul 2019 12:44:57 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 30/50] ARM: dts: exynos: add bus_isp266 into Exynos5800
Date: Mon, 15 Jul 2019 14:43:57 +0200
Message-Id: <20190715124417.4787-31-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLKsWRmVeSWpSXmKPExsWy7djP87pepTqxBhuP21jcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6MWV32BWvZK16u3sHawNjO1sXIySEh
 YCJxf/MkIJuLQ0hgBaPE/H0LWCCcL4wSG79tZYdwPjNKrF3czw7T0tA1C6plOaPE9gMPEFo+
 rzgAVMXBwSagJ7FjVSFIg4jAEkaJIz+TQGqYBW4ySex5spMVJCEs4CWxdeJdsENYBFQldr1a
 wwxi8wrYS3z938IEsU1eYvWGA2BxTqD4z2kXwDZLCJxilzi/cwMjRJGLxNyHMB8JS7w6vgXq
 VBmJ05N7WCDsYomG3oVQ9TUSj/vnQtVYSxw+fpEV5GhmAU2J9bv0IcKOEve7GxhBwhICfBI3
 3gqChJmBzEnbpjNDhHklOtqEIKo1JLb0XIC6WExi+ZppUMM9JGbfvcwECZ5JjBK7Py9gmcAo
 Pwth2QJGxlWM4qmlxbnpqcXGeanlesWJucWleel6yfm5mxiBier0v+NfdzDu+5N0iFGAg1GJ
 h9chRTtWiDWxrLgy9xCjBAezkgiv7VegEG9KYmVValF+fFFpTmrxIUZpDhYlcd5qhgfRQgLp
 iSWp2ampBalFMFkmDk6pBsbUhZxLXCQ3tHh9rNE+7fs01V6/z6Hzs/bJVIX0H16LnDjqZz1I
 rigrkeiSfymjlaVS/qhpU2T53Z9iqRNubnp74oZmo85kK3GDyt9WGneWR6q+7KrYufi1QJrf
 IlH7J0eUjj388/3H2Q+ac1I7ukyPVO5VsdDWyD2rPldvst0U5l3Ox2TLC5VYijMSDbWYi4oT
 ASX/krFQAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7pepTqxBif3SVrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MWV32BWvZK16u3sHawNjO1sXIySEhYCLR0DULyObiEBJYyijx4Pd0
 RoiEmMSkfdvZIWxhiT/XuqCKPjFKLNr7Hsjh4GAT0JPYsaoQpEZEYAWjxOQT3iA1zAKvmSSO
 HH3HCpIQFvCS2DrxLtg2FgFViV2v1jCD2LwC9hJf/7cwQSyQl1i94QBYnBMo/nPaBbB6IQE7
 icVHfzJNYORbwMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzByth37uXkH46WNwYcYBTgY
 lXh4HVK0Y4VYE8uKK3MPMUpwMCuJ8Np+BQrxpiRWVqUW5ccXleakFh9iNAU6aiKzlGhyPjCq
 80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MGbO65b/PTXWzvKP
 cN/Gv8tfT5t89/6+yZPzvDfbPzLLZArlzf+e/Me9PobzuKJjQ8Tlno9OCfbNrJcO5EVsdsx7
 s1lT4I5KN0vSo7glbJMuChSYL9n2pkaCm2Xqj6UMFw+Jtr/Im3Nwx6wcvUmXm0S+5WwWYDGW
 NQjfHpd1kXNm7vzfTFfdipRYijMSDbWYi4oTAfBc6NWyAgAA
X-CMS-MailID: 20190715124458eucas1p2df56f2e0c7a1a0a9144a4d5fbdb471a9
X-Msg-Generator: CA
X-RootMTR: 20190715124458eucas1p2df56f2e0c7a1a0a9144a4d5fbdb471a9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124458eucas1p2df56f2e0c7a1a0a9144a4d5fbdb471a9
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124458eucas1p2df56f2e0c7a1a0a9144a4d5fbdb471a9@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054502_783577_361C8656 
X-CRM114-Status: GOOD (  13.21  )
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

The Exynos5420 SoC had one clock for two lines while Exynos5422/5800 have
dedicated clock tree for the ACLK266_ISP. The max frequency is 300MHz so
it shares the OPP table with bus_gen. The bus is added here and is enabled
in .dts file for proper board.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5800.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5800.dtsi b/arch/arm/boot/dts/exynos5800.dtsi
index 57d3b319fd65..3b9200db43b6 100644
--- a/arch/arm/boot/dts/exynos5800.dtsi
+++ b/arch/arm/boot/dts/exynos5800.dtsi
@@ -131,3 +131,13 @@
 &mfc {
 	compatible = "samsung,mfc-v8";
 };
+
+&soc {
+		bus_isp266: bus_isp266 {
+			compatible = "samsung,exynos-bus";
+			clocks = <&clock CLK_DOUT_ACLK266_ISP>;
+			clock-names = "bus";
+			operating-points-v2 = <&bus_gen_opp_table>;
+			status = "disabled";
+		};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
