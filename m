Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FC86CFEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7DRiDfyBdJyPEY8v70hLw38emJnvzJeJ8MNu5V//KnA=; b=u6f6YeNpQdtc9tyjbl83IlOF8L
	9PmOMzSQ51dNcFhMsYuPJSQm2xD7qfJOeke8lNtSkiFngMFNDNHyPFGX7pS2S+EUzT2MEWLYBA/om
	lgEiqz0iUOx+sUdGWZdI5HmbujkcTE33atcQfCI4mw++fHbC52Qv2+PqHi7nEHiOodHbo01GIEUfx
	jDFFZoYOOsCZldoYVooA+YLocfWKSm+mHC2lT6DCVRdW9MJ/6KjDaq5twkKT3jvOZjQgyHb3XNHZc
	qArRzPML2NJ2Bq+jF8wDsl09AMrz01eECxpoI0liluu3stNKHHI/PQAJbR5DGr9/Og2Yi6W6HFL5X
	LLYx7HeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho7UY-0005d9-94; Thu, 18 Jul 2019 14:34:42 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho7Rb-0003fP-Ii
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:31:44 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718143137euoutp01f172d26b2995418ed8dc53e7583ae82a~yhttcO-e_1449614496euoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:31:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190718143137euoutp01f172d26b2995418ed8dc53e7583ae82a~yhttcO-e_1449614496euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563460297;
 bh=hzM4GiHfjYnepbgfpVeiaPSpBr22DtB4iwH1dcGeqrw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CLNASRZ37vjQRmXRDvtLac76syFkctZpwnOSYfJFUgfdk6ipb2MKzbFXbqevos6vm
 6sqF0Y5qkrPjyp3hhtU7F+bHcWoXligh881TqYRhcfBEcAzdzpRdscjG2LA2xS0Ac0
 yXcNTdZSb20jv+Zwb7MuVrwZt2XFcFV71QbQK2j4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718143136eucas1p13389ce4f1d66fe66b209bbf21e1eefdf~yhtst1q8j0452404524eucas1p1s;
 Thu, 18 Jul 2019 14:31:36 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DF.20.04325.8C2803D5; Thu, 18
 Jul 2019 15:31:36 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718143135eucas1p2da5b7842b35327c60667064184619a9f~yhtrxpSsX2849728497eucas1p27;
 Thu, 18 Jul 2019 14:31:35 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190718143135eusmtrp24b5cb245cdbe89dd958311dd3713605f~yhtrjOpKq0338803388eusmtrp2P;
 Thu, 18 Jul 2019 14:31:35 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-df-5d3082c87f3f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 71.B6.04140.7C2803D5; Thu, 18
 Jul 2019 15:31:35 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190718143134eusmtip179e52ba19433ae147a2f44bf22b2128f~yhtq6_bYH1589015890eusmtip1P;
 Thu, 18 Jul 2019 14:31:34 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v2 7/9] soc: samsung: Update the CHIP ID DT binding
 documentation
Date: Thu, 18 Jul 2019 16:30:42 +0200
Message-Id: <20190718143044.25066-8-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190718143044.25066-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKKsWRmVeSWpSXmKPExsWy7djP87onmgxiDZ6s4bLYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wASxSXTUpqTmZZapG+XQJXxrYDB5kKJvJUrDn3
 h72BcTZXFyMnh4SAicTU6U1sXYxcHEICKxgldv7cAeV8YZRY9KOXCcL5zCjxofU3O0zL6ssf
 WSASyxkl+hevZ4JrOdD7gQWkik3AUKL3aB8jiC0iICxxb+lydpAiZoF7TBKnn55lAkkICwRL
 bPwzGcxmEVCVWHj8LpjNK2At8fVVGyPEOnmJ1RsOMIPYnAI2EofvPmUEGSQhMJld4vqetVBF
 LhKfHvyDuk9Y4tXxLVC2jMT/nfOZIBqaGSV6dt9mh3AmMErcP74Aqtta4vDxi6xdjBxA92lK
 rN+lDxF2lFjRsAosLCHAJ3HjrSBImBnInLRtOjNEmFeio00IolpF4veq6UwQtpRE95P/LBAl
 HhLTbyVCAqgfGIybPrJNYJSfhbBrASPjKkbx1NLi3PTUYuO81HK94sTc4tK8dL3k/NxNjMDE
 cvrf8a87GPf9STrEKMDBqMTDG5BrECvEmlhWXJl7iFGCg1lJhPf2S/1YId6UxMqq1KL8+KLS
 nNTiQ4zSHCxK4rzVDA+ihQTSE0tSs1NTC1KLYLJMHJxSDYwqh5Y2cuy8n+v3YAfjs/8f5iu+
 LvszQ2FT6UemlOw50yLnLm1fujrDZNH0rNXbYn+0XhIQTZ22q/vX4bzFd95lTNyp93bPw+Xv
 P3QxCuy/WpOssfDLuUn7mW8la0hn/LP0cJojdDmui1tYXODeA+Eft/m87SbsvOQxRaq+mOVU
 TqHtlJVGuTIuSizFGYmGWsxFxYkAt4+NIygDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKLMWRmVeSWpSXmKPExsVy+t/xu7rHmwxiDc4u5LXYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexrYDB5kKJvJUrDn3h72BcTZXFyMnh4SAicTqyx9Z
 uhi5OIQEljJKdK75w9bFyAGUkJKY36IEUSMs8edaFxtEzSdGiRWvDzKBJNgEDCV6j/Yxgtgi
 QEX3li5nByliFnjFJHF73n+wImGBQIn9V7+wg9gsAqoSC4/fBYvzClhLfH3VxgixQV5i9YYD
 zCA2p4CNxOG7T8HiQkA1s19eY5zAyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYJBv
 O/Zzyw7GrnfBhxgFOBiVeHgDcg1ihVgTy4orcw8xSnAwK4nw3n6pHyvEm5JYWZValB9fVJqT
 WnyI0RToqInMUqLJ+cAIzCuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fE
 wSnVwKg89WWlto+hk4D0Kvavj5UEz2Ye8/W94XUppkYuxOWiG8O/sJojj9oEAkLTWYQWtrMm
 H2TZuCp+ZfTLiv81VVN32XEUahyM5orf1Wotv5AtmPvtP7XJj2aWsecyc+aa/utxuKg0SY3x
 TBTfbtmTQW7V7IVe/6W7DCTmy04/Ly89t+DJ04PrlViKMxINtZiLihMBgSTxIogCAAA=
X-CMS-MailID: 20190718143135eucas1p2da5b7842b35327c60667064184619a9f
X-Msg-Generator: CA
X-RootMTR: 20190718143135eucas1p2da5b7842b35327c60667064184619a9f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143135eucas1p2da5b7842b35327c60667064184619a9f
References: <20190718143044.25066-1-s.nawrocki@samsung.com>
 <CGME20190718143135eucas1p2da5b7842b35327c60667064184619a9f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_073141_037140_2CAB2E11 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation of a new optional "samsung,asv-bin"
property in the chipid device node and documents requirement of
"syscon" compatible string.  These additions are needed to support
Exynos ASV (Adaptive Supply Voltage) feature.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1 (RFC):
 - new patch
---
 .../devicetree/bindings/arm/samsung/exynos-chipid.txt  | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
index 85c5dfd4a720..be3657e6c00c 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
@@ -1,12 +1,18 @@
-SAMSUNG Exynos SoCs Chipid driver.
+SAMSUNG Exynos SoC series CHIPID subsystem
 
 Required properties:
-- compatible : Should at least contain "samsung,exynos4210-chipid".
+- compatible : Should at least contain "samsung,exynos4210-chipid", "syscon".
 
 - reg: offset and length of the register set
 
+Optional properties:
+ - samsung,asv-bin : Adaptive Supply Voltage bin selection. This can be used
+   to determine the ASV bin of an SoC if respective information is missing
+   in the CHIPID registers or in the OTP memory. Possible values: 0...3.
+
 Example:
 	chipid@10000000 {
 		compatible = "samsung,exynos4210-chipid";
 		reg = <0x10000000 0x100>;
+		samsung,asv-bin = <2>;
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
