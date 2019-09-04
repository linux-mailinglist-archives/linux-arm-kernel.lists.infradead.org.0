Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AEFA7E55
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 10:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=bU74YenbCl2a55Z1o6YyhS2SqC0U6KFxBWnnKRQZ3A4=; b=QF
	BuWR++1W5Y5T4HeRvjNPGX3i9C58LSzRNiMvENj7jA1IBz9+DE7ZG70HTajfOgu85RBfmpKdHZwSe
	+yQm0FX4i0c+b54UtFU287Cm0ci1uqGLqyIIltKZg/XVf1+z2A5oCAfVugYaV3Beb7XrKNS9teF2L
	rgW1faSrhgbPmmRWb6tJDgaIXvSn5xDwi9zGfmJeFGxRIdtbJ9dRoGm03PEqsioYTk5hxEmd1lE1x
	broX7/oajrOzgn+uc4Isa8tk1rZf6X9SfzNkhDAYHPcQmrJTJLR8bK6Fb+oJSHoNRiDdBRob7ztr7
	Lzc7ORbqzn7yycUu1vsDjoHIBcGhQHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Qzc-0005KI-ED; Wed, 04 Sep 2019 08:50:20 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5QzO-0004cJ-GF
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 08:50:08 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190904085003euoutp02ca8a31b9e364f22e147d4e07e153d40b~BMBMHQcrg0740007400euoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Sep 2019 08:50:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190904085003euoutp02ca8a31b9e364f22e147d4e07e153d40b~BMBMHQcrg0740007400euoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567587003;
 bh=oFELJroshQNF4iZzaTQ4WEiPwJyriiHbT/qS8Y1Zw5w=;
 h=From:To:Cc:Subject:Date:References:From;
 b=mJcssIyA8MtTg4R3iLUkqXq4NIiPnAfcwXh6TUqOLMMSEJqlgfdJ+G0oWq2mF2acL
 IlerBrhjONoiI8k4MIurzJQppOp9k9ouJTSou/F1ch8SMVBvFIldsxpjgCUXU7usZm
 GcDRrCkibl+YyGfkkWRqGKiagFnIDmpvDKi3YCtY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190904085002eucas1p13375705fd581ff15b671a52fcace2093~BMBLjH07g1184411844eucas1p1P;
 Wed,  4 Sep 2019 08:50:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E9.B5.04309.ABA7F6D5; Wed,  4
 Sep 2019 09:50:02 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190904085001eucas1p2b3a120d6206983d47f0084b872042342~BMBKk7EMP2069820698eucas1p2A;
 Wed,  4 Sep 2019 08:50:01 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190904085001eusmtrp2dbf6fde957038a388fbc2f28d014a760~BMBKkUx1F0734707347eusmtrp2z;
 Wed,  4 Sep 2019 08:50:01 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-d0-5d6f7aba6c14
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D3.B1.04166.9BA7F6D5; Wed,  4
 Sep 2019 09:50:01 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190904085001eusmtip2984d536707372df5001e4fc75d7719aa~BMBKHgLYI1995319953eusmtip2Y;
 Wed,  4 Sep 2019 08:50:01 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH] soc: samsung: chipid: Make exynos_chipid_early_init() static
Date: Wed,  4 Sep 2019 10:49:51 +0200
Message-Id: <20190904084951.28971-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAIsWRmVeSWpSXmKPExsWy7djPc7q7qvJjDT7s07LYOGM9q0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLH2yF12i8Nv2lkdODw2repk89i8pN6jb8sqRo/Pm+QC
 WKK4bFJSczLLUov07RK4Mjrut7EWvGKt+L77NGMDYwNrFyMnh4SAiUTX6mNANheHkMAKRonX
 sy8xQThfGCXe/FrAAuF8ZpToPTOLGaZlx9UVUC3LGSXWTtvLDNdy7PcjdpAqNgFDid6jfYwg
 toiAsMS9pcvZQYqYBR4xSjS1bGcBSQgL+Ev8mrwIzGYRUJU4vOMiE4jNK2AtcfnOcUaIdfIS
 qzccANsgIXCdTeLszaNQp7tInGw8zwZhC0u8Or6FHcKWkfi/cz4TREMzo0TP7tvsEM4ERon7
 xxdAjbWWOHz8ItAkDqCbNCXW79KHCDtKHPx6mAUkLCHAJ3HjrSBImBnInLRtOjNEmFeio00I
 olpF4veq6UwQtpRE95P/LBC2h8S7bVvAzhQSiJX4N62FdQKj3CyEXQsYGVcxiqeWFuempxYb
 5aWW6xUn5haX5qXrJefnbmIEpoPT/45/2cG460/SIUYBDkYlHt4dfnmxQqyJZcWVuYcYJTiY
 lUR4Q/fkxArxpiRWVqUW5ccXleakFh9ilOZgURLnrWZ4EC0kkJ5YkpqdmlqQWgSTZeLglGpg
 XHj1mprZ9t35/3en1K4T7rKN3XGGX22bT3JZy/ctnw1v2AcacJY8v/K+MULnucJCPtMF7xsn
 vDJZc+tMx5NFVTazb3AqC39zV/CJC355z+nZjXVO34P5r2uwVnp9XrZxS+SJiJvqUUynzQVi
 s+e8/vzmZt7TWUbO9QdLtDTM10pKJtyTelCwTImlOCPRUIu5qDgRAMZjjp8DAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMLMWRmVeSWpSXmKPExsVy+t/xe7o7q/JjDfpfmFpsnLGe1aL/8Wtm
 i/PnN7BbbHp8jdXi8q45bBYzzu9jslh75C67xeE37awOHB6bVnWyeWxeUu/Rt2UVo8fnTXIB
 LFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GR33
 21gLXrFWfN99mrGBsYG1i5GTQ0LARGLH1RVANheHkMBSRokvD9exdTFyACWkJOa3KEHUCEv8
 udbFBmILCXxilHh9LQHEZhMwlOg92scIYosA1dxbupwdZA6zwAtGiY7Di5hAEsICvhKP3y8E
 a2YRUJU4vOMiWJxXwFri8p3jjBAL5CVWbzjAPIGRZwEjwypGkdTS4tz03GJDveLE3OLSvHS9
 5PzcTYzAANx27OfmHYyXNgYfYhTgYFTi4d3hlxcrxJpYVlyZe4hRgoNZSYQ3dE9OrBBvSmJl
 VWpRfnxRaU5q8SFGU6DlE5mlRJPzgdGRVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7
 NbUgtQimj4mDU6qBsf/epj6V1XqSzFzHV3HcqZK1MNyW6+/V4LizMW/hzKyVs9ma72hyO3VH
 Ki3hFN7eq/GP58GmlKDJlcar6xNDJ3n0LTO7sk1s2o4HHPH61n6bcnjb3k/kO+q4aAufiGtq
 oqmqcvnDHfYXpyeprf1xO4/Zh+0h6+Zsxqkv1pwyPvW2KHVRQamXEktxRqKhFnNRcSIA7u3g
 VlYCAAA=
X-CMS-MailID: 20190904085001eucas1p2b3a120d6206983d47f0084b872042342
X-Msg-Generator: CA
X-RootMTR: 20190904085001eucas1p2b3a120d6206983d47f0084b872042342
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190904085001eucas1p2b3a120d6206983d47f0084b872042342
References: <CGME20190904085001eucas1p2b3a120d6206983d47f0084b872042342@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_015006_757337_108DEB63 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing static qualifier to the chipid initcall function.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 drivers/soc/samsung/exynos-chipid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index c55a47cfe617..25562dd0b206 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -45,7 +45,7 @@ static const char * __init product_id_to_soc_id(unsigned int product_id)
 	return NULL;
 }
 
-int __init exynos_chipid_early_init(void)
+static int __init exynos_chipid_early_init(void)
 {
 	struct soc_device_attribute *soc_dev_attr;
 	struct soc_device *soc_dev;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
