Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913E768A01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t0CZ/ZyLWVg7wojm9A08bNjZ5xpy72jUJdKL0yKh2f8=; b=eMbc+LVp9XFtPQ0yMbeGdNRX4W
	tKEZGcezBiaPD9H42zaz3GpWBnETj26gKIprlnGA8F6d3UFhl5ydGtHq2G1vllBD8GJap2quEG8RD
	zJmdTa4PRQNBmOzOwyuHsQ1esWs5Id8ToeVuGWpWLotHPixtlHIgaDxF2wYAtiu6tX+cLrIr+q+15
	//3B6MTrfQyntnYKJScNt0es417zbdcOtvhg5ahxFwEHP5qGRqwQwMnULu8tLDffVcX0aIMUxXwpe
	zzWEz/UGG/UY0lA5jnMVjHDlXhXyoYvhf0Y1pTcCvhokkN25BWy9f/15VJRTpZAB1l6d2lDnsTO6A
	EtWyexWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0UY-0004jM-NW; Mon, 15 Jul 2019 12:54:07 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lh-0003tO-Io
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:59 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124456euoutp02a50bdcd26e8d07c7d1773b6659625d78~xlUtL_JSW0714907149euoutp02g
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124456euoutp02a50bdcd26e8d07c7d1773b6659625d78~xlUtL_JSW0714907149euoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194696;
 bh=1FbxRMR/J2d1fJmmubphL3VmOgAMnSNbd+ERLGAret4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NzS+TRkrjzK71HQGeO2R3IT4qBEGeso4d8hC4zJXWjaRjp9JXU1/NnatHQT/0G+4e
 qckNIWjRrxOYqlpdmUDytdFxFlKFpuO+aeZv1qH96OPGPDIAEKYvK2Bnxkb18T18S0
 dckDiqt5S2e+RTHB4zNqiLOpTNHHlmMdO9UENuhc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124455eucas1p1238f8c5e167902c4113b857feef1fb91~xlUsWj9Re0153501535eucas1p1B;
 Mon, 15 Jul 2019 12:44:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A7.E1.04377.7457C2D5; Mon, 15
 Jul 2019 13:44:55 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124454eucas1p1cd37552b222539b02629cb52e646ae29~xlUrkfwOt0154701547eucas1p1P;
 Mon, 15 Jul 2019 12:44:54 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124454eusmtrp1fc58db158ec4abd8999c07dcb1ba908b~xlUrWYf790488104881eusmtrp1T;
 Mon, 15 Jul 2019 12:44:54 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-04-5d2c7547f768
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0B.07.04140.6457C2D5; Mon, 15
 Jul 2019 13:44:54 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124453eusmtip29d8f9f4e271156d19cb92d2b1172ec37~xlUqeQ_AA1115211152eusmtip2Q;
 Mon, 15 Jul 2019 12:44:53 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 25/50] ARM: dts: exynos: add 300MHz to bus_disp1_fimd in
 Exynos5420
Date: Mon, 15 Jul 2019 14:43:52 +0200
Message-Id: <20190715124417.4787-26-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjuO2dn56gtTtP0w0RhUGSXqSHx0cUUyg4FoQTRBauZBy+5aTtq
 WkFmaXkpxWSpmKZoylrp1hLvmK6UzFuRt7RMpUwtjblIDWvzTPr3vM/zvu/zvB8fhYvrCWcq
 XBHDKhWySInQVlD9aqFrx6HY7UGeZYsEGnraRSBtbiWB+ue/EqjIYC4zx6dx1N1dRaLOpBkS
 DSW6IN14H4F+Znwk0Lu6AiHK7W7C0BPDCInK+nsx1Pv6IPpwvUKIkhsNJGqduUWg5T6twNee
 0RRqADM7kEwyOnWqkHlWeo158aMBY+7q1YAx6lwDyFO2e0PYyPA4Vunhc842LOuRlog2EPHp
 JmUiqBekARsK0t7wt+a9GdtSYroCwGrjMmkRxPQ8gJ+zAnnBCGBpU75wdeJmZyPJC+UATs0V
 YHxhnuhR94M0QFFCWgpr1BctAw50KYCGhWBLD04PYrBhopawCPb0CagbzFnZKqA3waWciRVr
 Eb0f6ma0gHdzg4+rmnELtjHzC6oea4q3JNT3+fD4AJwqz8R4bA+n2vQkj11gx70M650cTLxT
 bN15FY5nPrD27IGtbb2EJTNOu8PKOg+e9oNzowOYhYb0Ojjwfb2Fxs0wu/o+ztMieDtFzHdv
 gfqMHmsAR1iuUVmXM7C58Yb1qbIBrDUNCrOAW/5/s4cAqIETG8vJQ1lup4K9JOVkci5WESo9
 HyXXAfOX6lhum68BdX+CWwBNAclakW/ItiAxIYvjEuQtAFK4xEG0z2SmRCGyhMusMuqsMjaS
 5VrARkogcRJdWTN6WkyHymLYCywbzSpXVYyycU4EXu3ztRNxf4+oJmfsPNFSQ++G1OF+aY62
 KNlYOK46MzRZNfx8qti3lNqdrBfRLw+bmnYdnXUdrveflkeo4rVD2En/gEJmc0RhYIof8i4R
 vOnLKGk/Jg33SK9oHMsbdXT5MqZOkhs67YjA0eNZI57ufopPeXOuJZ6tXuH6xV/fJAIuTOa1
 FVdysn9egNEdTgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7pupTqxBlte8lrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MCcs2shYcYa3o/lrUwLibpYuRk0NCwESi5exe9i5GLg4hgaWMEh3P
 vrBCJMQkJu3bzg5hC0v8udbFBlH0iVHi6YbDzF2MHBxsAnoSO1YVgtSICKxglJh8whukhlng
 NZPEkaPvwAYJC4RJ/Nq6iQnEZhFQlfg95QnYUF4Be4lNbzYyQiyQl1i94QAziM0JFP857QIb
 iC0kYCex+OhPpgmMfAsYGVYxiqSWFuem5xYb6RUn5haX5qXrJefnbmIERs62Yz+37GDsehd8
 iFGAg1GJh9chRTtWiDWxrLgy9xCjBAezkgiv7VegEG9KYmVValF+fFFpTmrxIUZToKMmMkuJ
 JucDozqvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVANjZyfXoZU1
 fa7887fcuumVYOuz/ZNCE//fqY8Fp/mzMcbzpHAuV6vPbUxSN7nZdfGhulGDR8L0vH/M90Jm
 Hq5Pm8hsU/P42aLj3zobbMq3PAqfc+2ktN1srzCuv4+aLfI/nvonvYDF0i30lfb79vWfH08O
 3H2kv8l0tuu+RWbN3w0rVF/UTXJSYinOSDTUYi4qTgQAbYpV/rICAAA=
X-CMS-MailID: 20190715124454eucas1p1cd37552b222539b02629cb52e646ae29
X-Msg-Generator: CA
X-RootMTR: 20190715124454eucas1p1cd37552b222539b02629cb52e646ae29
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124454eucas1p1cd37552b222539b02629cb52e646ae29
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124454eucas1p1cd37552b222539b02629cb52e646ae29@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054457_992929_338E0F4A 
X-CRM114-Status: GOOD (  12.57  )
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

According to the documentation max frequency for ACLK300_DISP1 is 300MHz.
Add an OPP which makes it possible to use the full performance when needed.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 74d014f3eaa6..1097fa758d9e 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1299,6 +1299,9 @@
 			opp01 {
 				opp-hz = /bits/ 64 <200000000>;
 			};
+			opp02 {
+				opp-hz = /bits/ 64 <300000000>;
+			};
 		};
 
 		bus_disp1_opp_table: opp_table14 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
