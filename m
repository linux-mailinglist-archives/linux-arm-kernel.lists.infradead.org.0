Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97E16CFF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y4iORxCcEvGo8k5hS7L6zYu8odr+ErQzjj6QNvExghk=; b=OM8ZVYlTgj1ulTA//4esBS4AhG
	iWPskapyrIU8IsyUMI02vHhCBOVxbqj+tgezmjxOxyRyx8dy3/fyoQqahXe2dEXrgRIudKucd/Pnb
	fs05vnb1J1pBwaF6nyCJcdGKTUVXgSM9BahCf7KS3SCGi/b+BpiwV21pW8oXi7xXSiM0GkAT47RsZ
	jZf6U504MdseWLPv0d5Rps+sErR8jX0h8vrMp12Ht8l1m2I7+rzXLL2UDRJPD24KFg08u71FJap43
	qsoc3fDnnLqNhc1MI/VUeNpqWTXlToSjDzHy5ZYNAbgovCqxu79MoW9ssnv6kJK5dQMfWrfOkACxg
	Z0niirFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho7VC-00067F-My; Thu, 18 Jul 2019 14:35:22 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho7Rc-0003h7-Sw
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:31:44 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718143139euoutp02393f7ad5775f936ef9a146cbe599d218~yhtvlyE163113231132euoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:31:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190718143139euoutp02393f7ad5775f936ef9a146cbe599d218~yhtvlyE163113231132euoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563460299;
 bh=Bi2GA2UVqT1Tvo91yYqOKkUfUxxCOns6Sb2hHqEpoC0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BIQr/+0+//b4olqSIyt/ZGPh6JBd98TwINLygvwniF0WN6v/FExfQaIAwBfKiE1fr
 Tksp6oasmdBwxqtZP/9cBhfCFP84zCzJXIH5ZnYIHDUvPqx5tNNNcZ6T2H99cT0ufl
 97g3GgbjC+FK0O7LQATvtGnWIoHUbkdkcwepO2zk=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190718143139eucas1p2de24e702ff1b2fe63134d4d1e372da41~yhtvHUZaN3227832278eucas1p2y;
 Thu, 18 Jul 2019 14:31:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C2.30.04325.AC2803D5; Thu, 18
 Jul 2019 15:31:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190718143138eucas1p127542c4cb8416cee9af6a95f4bc98366~yhtuM56N50448804488eucas1p1q;
 Thu, 18 Jul 2019 14:31:38 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190718143137eusmtrp17d8058aea5c4fb7fec06942e8d574220~yhtt_zfpc1949819498eusmtrp1E;
 Thu, 18 Jul 2019 14:31:37 +0000 (GMT)
X-AuditID: cbfec7f5-fbbf09c0000010e5-e9-5d3082cac3a5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 1D.3E.04146.9C2803D5; Thu, 18
 Jul 2019 15:31:37 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190718143137eusmtip170b431c23792f5ca9887094eb9d7c910~yhttZNAUx1530115301eusmtip15;
 Thu, 18 Jul 2019 14:31:37 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v2 9/9] ARM: dts: Add samsung,asv-bin property for
 odroidxu3-lite
Date: Thu, 18 Jul 2019 16:30:44 +0200
Message-Id: <20190718143044.25066-10-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190718143044.25066-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfUhTURz1bu/L5YvnHHmzUBkaJOYHZjzIpMI/Bv0jKEbFqJUPtbYpe87S
 qCRd5tJpGmoqJZFMXvk1za9Iw00Hii6LQjKnYaKmC0lDRam2vVn/nd85v3PPuZdLCMVVaACR
 oc5mNGqFUoqJkK7hrfEjI3ej5FELXDTdXtOK0k8t4yhdNrcspG22Npw2zX1C6Q999Ri9VmoB
 dI2tX0A3W6Zx+tmrdZzWvbHgtHmlCKU7Zoexk6TMxBVjso7nd2SGTg7I1kyBich5UVwqo8zI
 YTSR8ZdE6Zt6A541id2o7ypC8oEF1QNvAlJHYbHdCPRARIipJgDfP3II+GEdwPrtTYwf1gA0
 9FqEu5adja8ILxgBNLZ34/8spkrXYd4ERkXD0iGDG0soP2hvNLqXhJRdAEfnxwQuwY9Kgp91
 i4gLI1QorJqtdLciqTi40NML+Lgg+KLtrTva28mbp+fdbSFViUND4YiAX0qAuoFxz5X84Hdr
 J87jg3C0sgThDQUAlryewvmhHMAZa4Mn4jg0WyecbsLZ7zBs7Yvk6VPQatsQuGhI7YWTDl8X
 LXTCiq5qIU+T8P49Mb8dAre5ak+dAPjg2x+ExzLYolv3vGMZgAUt1Wg5CKr9H9YAAAf8GS2r
 SmPYGDVzPYJVqFitOi3iSqbKBJy/ZfS39VcP6N+5PAgoAkh9yERVlFyMKnLYXNUggIRQKiGn
 liLlYjJVkZvHaDIvarRKhh0EBwhE6k/e9Jq9IKbSFNnMNYbJYjS7qoDwDsgHEUMvlfMVXkXa
 IKy0u8phPgOyf5yOrS9dvcqZs7ZCP/qq0RnybPKJPDY2NEVSux/eCpQ3nvvZNqDfV3jskHb5
 Nhe6N2V6dS1j0xFib2pdNK6G1w1RYUu9ze/04bKu3ong4oROju3P0gcnPdzz+AnqU7GSPKf6
 opfUlccTYzFShE1XRIcJNaziL+mCPwYpAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCLMWRmVeSWpSXmKPExsVy+t/xu7onmwxiDV4vNLfYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexo+uPvaCG2wVc7a1szQwHmHtYuTkkBAwkfjz/SFL
 FyMXh5DAUkaJV+8WAiU4gBJSEvNblCBqhCX+XOtiA7GFBD4xSpw+4gxiswkYSvQe7WMEsUWA
 au4tXc4OModZ4BWTxO15/5lAEsICgRLzmx6AFbEIqEpMezAZbDGvgI3E8x07GSEWyEus3nCA
 GcTmBIofvvuUEWKZtcTsl9cYJzDyLWBkWMUoklpanJueW2yoV5yYW1yal66XnJ+7iREY4tuO
 /dy8g/HSxuBDjAIcjEo8vAG5BrFCrIllxZW5hxglOJiVRHhvv9SPFeJNSaysSi3Kjy8qzUkt
 PsRoCnTURGYp0eR8YPzllcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+Lg
 lGpgLKnpP9dy7XSktRtziuLJmjksurEFYntvMrA6zE7WlNl8YNYJJyWtRReOVP+MMXop58uy
 weH7H621rdcDVn92P6tV/spaY87xHK5FMWGBWy/xbHKuztjg2nTOX2C1vHjOo4w3G9syJjxN
 KYjpqhYQ3/c+uIrBqfbPMQ2JyZI296/kv7FPmMWpxFKckWioxVxUnAgAWIGyPocCAAA=
X-CMS-MailID: 20190718143138eucas1p127542c4cb8416cee9af6a95f4bc98366
X-Msg-Generator: CA
X-RootMTR: 20190718143138eucas1p127542c4cb8416cee9af6a95f4bc98366
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143138eucas1p127542c4cb8416cee9af6a95f4bc98366
References: <20190718143044.25066-1-s.nawrocki@samsung.com>
 <CGME20190718143138eucas1p127542c4cb8416cee9af6a95f4bc98366@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_073141_410744_81F8982B 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

The Exynos5422 SoC used on Odroid XU3 Lite boards belongs to
a special ASV bin but this information cannot be read from the
CHIPID block registers. Add samsung,asv-bin property for XU3
Lite to ensure the ASV bin is properly determined.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1 (RFC):
 - new patch
---
 arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts b/arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts
index c19b5a51ca44..a31ca2ef750f 100644
--- a/arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts
+++ b/arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts
@@ -26,6 +26,10 @@
 	status = "disabled";
 };
 
+&chipid {
+	samsung,asv-bin = <2>;
+};
+
 &pwm {
 	/*
 	 * PWM 0 -- fan
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
