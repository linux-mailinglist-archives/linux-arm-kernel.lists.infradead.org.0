Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4443BB7646
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=Fqjux2X0NFm1jtyLeuCknn+V46CAuBtpJA/tT4AKcO4=; b=dr
	rYZC8jQHdltx8E6iK2+hSNXbkzNA/6WRN6pVtMwRDBmApIsPfpHDULDghggclIib4OujgaU6uPppt
	HsBu6N9AfMPD+Jtyp69sL2OC4qZL9dnMWWAmdb6rNn5+oPYhp3+9JClS2JXhzVkqCFqSwHrtR50pZ
	I3w2MmKpG7G2rtv62cT+m+4Vfr9GvC3uMPH8gBl+HzdGqm+r+01p1XSwnrgARTBZuDCyCk+ir7s0c
	FNBp7kg9mvaA5OxLZLzlQGbq1vEVvqMaLmoS8W3iF61K7nshiEOEpv5WMm3jIml5tcO7iAW7Tbm+y
	Aylp6vZRb3OZe2gi5E6+7bonOmlzHv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsip-0001Z6-LZ; Thu, 19 Sep 2019 09:27:31 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsiH-0001Az-9H
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:26:59 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919092653euoutp02efbf21f946270d5887596be30f88ac40~FzMolPqpf1020610206euoutp02p
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 09:26:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190919092653euoutp02efbf21f946270d5887596be30f88ac40~FzMolPqpf1020610206euoutp02p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568885213;
 bh=xMgegydTj1VyjtJMSlQNdpjkJ9FHauOHBGUiS06xb+k=;
 h=From:To:Cc:Subject:Date:References:From;
 b=j5tkUKL0oGjaT4Sa8M0HT/WjLgXDzhLevHIEgMMekKKlnGbbkKvt2L4jlSviBYkMk
 VfhUuKYZAbstC8K6M4NI+OKHannlUg/vIZjzKy1Zj503zndjqW1lXZLrQSeXskU+Tx
 5MSG0v72fsvIK7hU1fWQOZ+A8d8lqf73x6XaB0ew=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190919092652eucas1p146a6438833f2b7837de81c491ff25e8c~FzMn00FD03057630576eucas1p14;
 Thu, 19 Sep 2019 09:26:52 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 26.BE.04309.CD9438D5; Thu, 19
 Sep 2019 10:26:52 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919092652eucas1p2715611db7a0b0c4cc79956311e01c35a~FzMm7_JNw0197101971eucas1p2C;
 Thu, 19 Sep 2019 09:26:52 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919092651eusmtrp1388058d2816f3078f44dbc3d529337fc~FzMmtcVCN1357513575eusmtrp1O;
 Thu, 19 Sep 2019 09:26:51 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-f3-5d8349dcba50
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 35.25.04166.BD9438D5; Thu, 19
 Sep 2019 10:26:51 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919092650eusmtip11435e05346dd810ba269b0402294f2b7~FzMl8JRRi1630716307eusmtip1V;
 Thu, 19 Sep 2019 09:26:50 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] Exynos5 DMC minor fixes
Date: Thu, 19 Sep 2019 11:26:39 +0200
Message-Id: <20190919092641.4407-1-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRmVeSWpSXmKPExsWy7djPc7p3PJtjDeZd0bTYOGM9q8X1L89Z
 LV7/m85iMf/IOVaL/sevmS3On9/AbnG26Q27xa0GGYtNj6+xWlzeNYfN4nPvEUaLGef3MVms
 PXKX3WLp9YtMFrcbV7BZtO49wm5x+E07q8W3E48YHYQ81sxbw+ixc9Zddo9NqzrZPDYvqff4
 +PQWi8fBd3uYPPq2rGL0+LxJLoAjissmJTUnsyy1SN8ugStj8+6L7AVT2CvezWhnb2D8ydrF
 yMEhIWAisWRtQhcjF4eQwApGia4zj9kgnC+MEk9+b2WBcD4zSrR2gWQgOpa2m0LElzNK3LnS
 zQrX0dB5gBmkiE1AT2LHqsIuRk4OEYHFjBLfDkeB2MwCF5gkTq+UBbGFBfQlJj3qYQEpZxFQ
 lTjwPBIkzCtgJ9F1cDEbiC0hIC+xegPIRC4gex+7RFvPJyaIhIvEzYcPWSFsYYlXx7ewQ9gy
 Eqcng8wEsYslGnoXMkLYNRKP++dC1VhLHD5+Eex7ZgFNifW79CHCjhL9S7qYIV7kk7jxVhDi
 Yj6JSdumQ4V5JTrahCCqNSS29FyAOkZMYvmaaVDDPSQez98NZgsJxEp8bt3OPIFRbhbCrgWM
 jKsYxVNLi3PTU4uN8lLL9YoTc4tL89L1kvNzNzECU9Hpf8e/7GDc9SfpEKMAB6MSD+8P9aZY
 IdbEsuLK3EOMEhzMSiK8c0yBQrwpiZVVqUX58UWlOanFhxilOViUxHmrGR5ECwmkJ5akZqem
 FqQWwWSZODilGhhNAvd0HJO/n1G/aaqZrc2qxbtuc4ulyjJaPA9leCT09E2uEfOuvV43j5mU
 zvgZs8GFP7VIr/WVxISZzoeKtjV6eDCdqc1fsKztjutzc69mli1PEz/s2dT+Xmiuy4fNTQYm
 PXvuTtw2Y0Fp0/n/CWsvyyuJrtT9yjFbgYt39tOXZU784Z1CPW1KLMUZiYZazEXFiQBUMrMR
 QQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4Xd3bns2xBud+6lhsnLGe1eL6l+es
 Fq//TWexmH/kHKtF/+PXzBbnz29gtzjb9Ibd4laDjMWmx9dYLS7vmsNm8bn3CKPFjPP7mCzW
 HrnLbrH0+kUmi9uNK9gsWvceYbc4/Kad1eLbiUeMDkIea+atYfTYOesuu8emVZ1sHpuX1Ht8
 fHqLxePguz1MHn1bVjF6fN4kF8ARpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtl
 ZKqkb2eTkpqTWZZapG+XoJexefdF9oIp7BXvZrSzNzD+ZO1i5OCQEDCRWNpu2sXIxSEksJRR
 om/JfeYuRk6guJjEpH3b2SFsYYk/17rYIIo+MUp8XbsLrJlNQE9ix6pCkLiIwHJGiWOr3jKD
 OMwCD5gkLs49xgjSLSygLzHpUQ8LSAOLgKrEgeeRIGFeATuJroOL2SAWyEus3nCAeQIjzwJG
 hlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBsbDt2M/NOxgvbQw+xCjAwajEw/tDvSlWiDWx
 rLgy9xCjBAezkgjvHFOgEG9KYmVValF+fFFpTmrxIUZToN0TmaVEk/OBcZpXEm9oamhuYWlo
 bmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoHRfe5U+YJTj6OkWzuTTEwdNhxImZJ3
 bMXnpRt3RLE+3daTUxmV+3T7vovnWVvXcfGYhhaev1HXsVpoUpdVuopMbkBPfAbvxrCrLkuf
 /N/xNJFr893FagYmVuf6Hh+cd1JR9+fCbMWPERvuH/Zxray6uD+AaYK0LrN5jInmTT+jwjae
 rsTAvZ1KLMUZiYZazEXFiQAHHfzXmwIAAA==
X-CMS-MailID: 20190919092652eucas1p2715611db7a0b0c4cc79956311e01c35a
X-Msg-Generator: CA
X-RootMTR: 20190919092652eucas1p2715611db7a0b0c4cc79956311e01c35a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919092652eucas1p2715611db7a0b0c4cc79956311e01c35a
References: <CGME20190919092652eucas1p2715611db7a0b0c4cc79956311e01c35a@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_022657_538243_06F186EA 
X-CRM114-Status: GOOD (  10.42  )
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, b.zolnierkie@samsung.com,
 krzk@kernel.org, Lukasz Luba <l.luba@partner.samsung.com>,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 kgene@kernel.org, s.nawrocki@samsung.com, myungjoo.ham@samsung.com,
 dan.carpenter@oracle.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This is a follow up patch set for the Exynos5 Dynamic Memory Controller
driver v13 [1]. The patches are for Krzysztof's branch [2]
for-v5.4-5.5/memory-samsung-dmc
and/or linux-next where Dan Carpenter reported the issue (patch 1/2).
There are a few fixes captured during static analysis and a new
binding for 'samsung,K3QF2F20DB' LPDDR3 memory.

Regards,
Lukasz Luba

[1] https://lkml.org/lkml/2019/8/21/283
[2] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=for-v5.4-5.5/memory-samsung-dmc

Lukasz Luba (2):
  memory: samsung: exynos5422-dmc: Fix kfree() of devm-allocated memory
    and missing static
  dt-bindings: ddr: Add bindings for Samsung LPDDR3 memories

 Documentation/devicetree/bindings/ddr/lpddr3.txt | 10 +++++++---
 drivers/memory/samsung/exynos5422-dmc.c          |  6 ++----
 2 files changed, 9 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
