Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E5884DAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NKnXEBjvAFOMpMWOYmSqO7TUgy2PWdJY1xNjfEIz1k=; b=CxDZ3eyjieUISu
	3GxG/Upmayk8f6zLFGeX5OnkXGPR8mDL2t3YD7hCMvlkUNYdHcY6HqtNcV3XuHeRXsX1lbDxsr3er
	Vu8p/isu0F5KEW3OsU8wwPRF5c+O5l/irCoWU9btP3uNndftS2OpA0oddQiRKLqDsGZORqbljPa7P
	aceh9mGEz/+5ElWrx3dHtMzdzp7n+bgXAkM+abl7u/BKkcodpMOfRWSqkTJSAZMp8zjoHXqXds6mY
	XFH17x8Ch8M5bgwEtNzFrP+yrkxeJKhiCNr19fk2Y8TNnvIxMQgry5SlDaABVxyR4qFxYF9JLbkD4
	b35bihX1clGK1tMO1tZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMAL-0002Ts-Th; Wed, 07 Aug 2019 13:39:45 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM9f-0002BH-UW
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:39:05 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190807133900euoutp02aed80fa8f02979a880904a62407d8e11~4p5e8G7-p1773917739euoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  7 Aug 2019 13:39:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190807133900euoutp02aed80fa8f02979a880904a62407d8e11~4p5e8G7-p1773917739euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565185140;
 bh=uK2H2CY5YVkbPXh3EKmhTQmAPpi5mTFt1H3u7NFbf9M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dfdolvnILpUPv2Fi0G89DNTeN8tw3xVqt6N3rCxjpkZAqbaiCxSWLzxbH8Vgj6FCn
 XFnEvDkSXCBT13qVvSF2rWbXESlKuB47C96eGoQIgXJPj23VieHHQbwi95u2MhF9Yq
 oXwKyZ/gGhbLY9FeUSMCdXu3T9ucUwYAWidg/jdQ=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190807133900eucas1p1f1b267ca2046eb60ea4d967a98883c12~4p5eaW0lO1980719807eucas1p1O;
 Wed,  7 Aug 2019 13:39:00 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 3F.F6.04374.374DA4D5; Wed,  7
 Aug 2019 14:38:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190807133859eucas1p22355fae5d369c0c608c410049d82c1be~4p5dkRsq31798017980eucas1p2a;
 Wed,  7 Aug 2019 13:38:59 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190807133858eusmtrp185e7a448805acd8fc6cc069669fee4f6~4p5dV5I_L3034030340eusmtrp13;
 Wed,  7 Aug 2019 13:38:58 +0000 (GMT)
X-AuditID: cbfec7f5-92d689c000001116-11-5d4ad4736c0c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 0A.AE.04166.274DA4D5; Wed,  7
 Aug 2019 14:38:58 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190807133858eusmtip2ee06bef28cdc756550dba938498956a1~4p5ciJdt02016620166eusmtip2v;
 Wed,  7 Aug 2019 13:38:58 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v5 4/4] dt-bindings: devfreq: exynos-bus: remove unused
 property
Date: Wed,  7 Aug 2019 15:38:38 +0200
Message-Id: <20190807133838.14678-5-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807133838.14678-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUhUURj1vmXmaY09R6uLRdKERNJom3hpkaSF1/JDwl+K1VNfKq7Nc60g
 Lc2UNMlKU3MJSzMdd1NLSR3UcM+VykGwrGyUxoWyRJuZN6L/zne+c+45H1wKl6pJa8o/OIxT
 BLOBMpEZUdu22CvnB8967kvUHEAVGWUkGpn/RqJcVQ+JUppWALo/8RNHvb3lYtR9SyNGlRPD
 JBpoyBahuWQVQBm9TRgqVY2J0fORfgx9ii0SIc2fbgzFN6rEaHm4gkBV422i41KmJKcEMJXF
 iSKmquAm0zzzFmNSqosB0z76GmPmKne4it3Njvpwgf4RnMLB+bKZn7L+fOgYFfW4MZeMAa3i
 JGBKQfoQnBnIAknAjJLSRQDOlnbjwjAP4NJsHCEMcwD+fvoPX7W8+DyICYtCAAsfp61Z1FMz
 Ir1KRNvC6owfhhArehdMU6cbRDi9SMDygQrDwpK+ANM0hZgeEzqDVqk0YAl9Eo4mzJJCnA1M
 rHtD6LEpfQouNKYCQWMB3z/5YuBxneZ2TZax3rQYDmgPC/gkzM6bMb5jCafaq41Xb4edafcI
 AUfCr/kpYn05SMcBOJ6gNS6OwNb2fp2Z0gXsgWUNDgLtAjNzszA9DWlzODptIVQwhw9q9Tfq
 aQm8e0cqqOUwZ6XL2GAbTFpRGjEDlVPTRCrYmbnumMx1x2Su5eYBvBhs5cL5IF+OPxjMRdrz
 bBAfHuxr7x0SVAl0v65zuX2hDjQtebUAmgKyjRKTvrOeUpKN4KODWgCkcJmVRB1xxlMq8WGj
 r3GKkEuK8ECObwHbKEK2VXLdZNxDSvuyYVwAx4VyitUtRplaxwBXb4+re9VuG/x+RXIXi2/k
 OJ4rUuWmF8Sn7xzCPzY1D5I2EXI3C/lk/Nwxtnl44/2av1Nu1k67I7F3HSNM/oZHHj19Qy/N
 6+uXrzS+Sv4wuaUqS7vo4tQx1hzaddoxOYX9HlB3otPVNnFIKZ923/xQlWAzhDbF2kX5Woi8
 nDvCnskI3o/db4crePY/twLA0nEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xe7pFV7xiDW78N7LYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl7Fup0/BXY6KaXvnszYwHmbvYuTkkBAwkVh25wpTFyMXh5DAUkaJ31uu
 sEIkpCUaT69mgrCFJf5c62KDKPrEKHHq0HKwIjYBVYktM16CTRIRUJaYfG86M0gRs0Anq8SK
 J0fYQBLCAgES926vYAaxWYAaPq5bBzaVV8BF4kb7J6ht8hKdO3azgNicAq4SX/dOYASxhYBq
 Fh3cCFUvKHFy5hOwGmag+uats5knMArMQpKahSS1gJFpFaNIamlxbnpusaFecWJucWleul5y
 fu4mRmBUbjv2c/MOxksbgw8xCnAwKvHwMlzwihViTSwrrsw9xCjBwawkwnuvzDNWiDclsbIq
 tSg/vqg0J7X4EKMp0BMTmaVEk/OBCSOvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZq
 akFqEUwfEwenVANjhl1iy6rdwos/qir07yiWmrRXsko1w8j4Yt4sfVu1ibO2GZ58lb6tIfFp
 2zHbd16v90xvne0x5/aarD+yV5+veDazf8ZJVrkrvxKXvdjCJTVns5d/t2gDj8PEG57P19c4
 rny8bMlcw7fquYx3P6TsyFx2TD6WmfdNwLyQ4NZpG9YkGAga/k1rVmIpzkg01GIuKk4EAOyN
 ap/gAgAA
X-CMS-MailID: 20190807133859eucas1p22355fae5d369c0c608c410049d82c1be
X-Msg-Generator: CA
X-RootMTR: 20190807133859eucas1p22355fae5d369c0c608c410049d82c1be
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190807133859eucas1p22355fae5d369c0c608c410049d82c1be
References: <20190807133838.14678-1-k.konieczny@partner.samsung.com>
 <CGME20190807133859eucas1p22355fae5d369c0c608c410049d82c1be@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_063904_133581_7C22E94B 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unused DT property "exynos,voltage-tolerance".

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 Documentation/devicetree/bindings/devfreq/exynos-bus.txt | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
index f8e946471a58..e71f752cc18f 100644
--- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
+++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
@@ -50,8 +50,6 @@ Required properties only for passive bus device:
 Optional properties only for parent bus device:
 - exynos,saturation-ratio: the percentage value which is used to calibrate
 			the performance count against total cycle count.
-- exynos,voltage-tolerance: the percentage value for bus voltage tolerance
-			which is used to calculate the max voltage.
 
 Detailed correlation between sub-blocks and power line according to Exynos SoC:
 - In case of Exynos3250, there are two power line as following:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
