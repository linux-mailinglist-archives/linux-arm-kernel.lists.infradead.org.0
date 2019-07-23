Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DFE7182A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRhBkvV84djKkpF99AFSYApHSGphWXeBp7uUtwwAs0A=; b=GFQXBfI9ykZ3oJ
	1zJF9Oiv/jASJIykTPJqLfF6r4nzcd+yGJaOR2Xfp6alIV6AL+X1dHfm1koTe/X+PSfnP8iLJNYa0
	DmR1kaClir2hQfIZYIOCm4MfdJ7NRsE4qqgPPeDW5d8QfbLM4645Lgm173of+SJD9BgUHRUbXov2P
	fxO2fi4OKg1kr8mTfoXqH5Cl/1WF0fp7YuhVI7Av9V31rTfXd8GJW4uBOSbnuOnPYupNA6cQsq+gC
	IwKtf7t/LD/a33N5CPu+fzyMegLBbqF7mA0fZutn5FGgaVgH9WCEq+yoc1d/xJXSOiubomta0GhET
	XGi4LLu6f3R08sCrauZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptoe-0003U8-O8; Tue, 23 Jul 2019 12:22:48 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmQ-0001mi-Mn
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122027euoutp02a1611b25b7af335e8871375043bb44d9~0CJneiMzz3179531795euoutp02V
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190723122027euoutp02a1611b25b7af335e8871375043bb44d9~0CJneiMzz3179531795euoutp02V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884427;
 bh=zWW1b2/PIBAroYQDAGRfN0QElK9yhnrQqfnDmdwgYB0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lXxrR4HLmaBv3AYFL0vv+6CAQtXmk8MNizb1Gq9Aty/rG26dNINmzIapvbeO0SV6G
 LMJlHfWrPdAT+Tvxpmyty4aT6dYmUKJde2RYK4VK2HhT7CEbiFHzeGGO5zn8o7ENdA
 9G0qQhbroR9Cc5stzHrFeDv9kc326uIs2HuFnXIE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190723122027eucas1p21409f43eaeb7b5a1d63972aca1a6fdd0~0CJnJTm171005510055eucas1p2W;
 Tue, 23 Jul 2019 12:20:27 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 93.5B.04298.A8BF63D5; Tue, 23
 Jul 2019 13:20:26 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122026eucas1p2acf705de2a47ba54f383d916f5383144~0CJmfDE3K1104811048eucas1p2Z;
 Tue, 23 Jul 2019 12:20:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122026eusmtrp175c94b91714185ab48d0a353c2736375~0CJmUTcr02491824918eusmtrp1i;
 Tue, 23 Jul 2019 12:20:26 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-82-5d36fb8ab9c8
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FC.D8.04140.A8BF63D5; Tue, 23
 Jul 2019 13:20:26 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122025eusmtip2472d7ca264b169f99c872f4d08623443~0CJlnMgmE1852218522eusmtip2B;
 Tue, 23 Jul 2019 12:20:25 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 06/11] icc: Relax requirement in of_icc_get_from_provider()
Date: Tue, 23 Jul 2019 14:20:11 +0200
Message-Id: <20190723122016.30279-7-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRT2t7t7dx3NrtPwpFI5kshSU1IuKJHRH7eIzAr/SESnXlScD3Z9
 ZAUtK1MzNRf5yFTCV5v5WCpmFqnLIVbDt1Q+wsSK0kzFypDmrpb/fd855/u+c+CQmNSI25PR
 cYmsMk6ukBFiYUv3L6Nr1op38AFtiS/d2d0sohsL63F6ZHEGp8v0b3B6cGmOoAue6Qg6fyJP
 SBuNDSJaNzWM0wNtJQS9cEuP6ELjcwH9SD8mot9dqSHoQvVn4vBWRqfJJJj3w+0EM3HTIGAe
 V1xmOmbbBUxOkwYxC7odp0TnxL4RrCI6mVW6HwoVR2lLmwUJM8T56tcjuAqN41nIkgTqIAzV
 laMsJCalVA0C7Z9MnCeLCCaXvhM8WUBQ9ukO2pBMff0p5BvVCDoeNqN/kpLqftHaFEEdg+zb
 rWYvW0qPQF0+Z5ZglMZEllvMXjZUABQWTJpXEVLO0Fg1j61hCeUHc9PjGJ+3E7QNL8zYkjoC
 WS9vEPyMNfQUfRSuYcw0c7X5HrYWANS8CH5XakxEZCJH4e76pTbwxdAk4rEj9KqzhTzmYPrJ
 BM5LVQh0Vfr1XB/oMvSZGqTJfy/Ut7nzZT8w1M2Yy0BZweg3a34DK8hvKcD4sgQy0qU8dIHy
 lSBeCJCmHV73ZqCsSoXnIafiTacUbzql+H9sOcI0yI5N4mIjWc4jjk1x4+SxXFJcpFt4fKwO
 md6sd9XwoxUt9Yd1IopEsi2ShnavYCkuT+ZSYzsRkJjMVhKg8g6WSiLkqRdYZXyIMknBcp3I
 gRTK7CQXLSaDpFSkPJGNYdkEVrnRFZCW9ipk57qU45pWVOn/yic3PGMwxdNv+wcndVfQ8fse
 4TIH+4yxWdzzelitv3XpKSbQoSDK+e2efV0KZVNiUVu+yrrjWozAYi5q91TFCcWyV7uTu9eu
 PLvA/HSP0ydzw0NsXLb5Djx1RA9GnWt7+s4MVchXy0iBRH0pNNVdjJ8NoKf2B8iEXJTcwwVT
 cvK/gh+yHGIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xe7pdv81iDZb/5LU4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexup5
 W5kKnrNVLD97nbWB8R5rFyMnh4SAicTjNz9Yuhi5OIQEljJKXD7ayQKRkJD4uP4GVJGwxJ9r
 XWwQRZ8YJc7MecwEkmAT8JTombiDFSQhInCKUWLr8nNgVcwCmxgl7h6fyA5SJSzgL/HjxG2w
 sSwCqhIbl31kBrF5BRwl3j+9xwyxQl5i9YYDYDangJNE19F2NhBbCKhm2/bXjBD1ghInZz4B
 msMBtEBdYv08IZAwM1Br89bZzBMYBWchqZqFUDULSdUCRuZVjCKppcW56bnFRnrFibnFpXnp
 esn5uZsYgXG67djPLTsYu94FH2IU4GBU4uHdsMc0Vog1say4MvcQowQHs5IIb2CDWawQb0pi
 ZVVqUX58UWlOavEhRlOg1yYyS4km5wNTSF5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU
 7NTUgtQimD4mDk6pBsbiuo33mbmqM/nc2J0eTVtxrufVjEkL9sSlCmqVTLKr4TGYK/jVX0Kz
 3DVH02diitQM44Xuv7/EfJc6+WnpxJzcPed/3Tp2P/KIWbbnwxUb99Uvck/ee7DU7J+F/p22
 Q59rnp1dZs4lqOopISr7YStPn7DS2Z9q8dX7Nd0zsh74rMvSsWfbJ6bEUpyRaKjFXFScCADU
 5vqx6QIAAA==
X-CMS-MailID: 20190723122026eucas1p2acf705de2a47ba54f383d916f5383144
X-Msg-Generator: CA
X-RootMTR: 20190723122026eucas1p2acf705de2a47ba54f383d916f5383144
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122026eucas1p2acf705de2a47ba54f383d916f5383144
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122026eucas1p2acf705de2a47ba54f383d916f5383144@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052030_883333_5C67DA4F 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 cw00.choi@samsung.com, myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCByZWxheGVzIHRoZSBjb25kaXRpb24gaW4gb2ZfaWNjX2dldF9mcm9tX3Byb3Zp
ZGVyKCkgc28gdGhhdCBpdAppcyBubyBsb25nZXIgcmVxdWlyZWQgdG8gc2V0ICNpbnRlcmNvbm5l
Y3QtY2VsbHMgPSA8MT4gaW4gdGhlIERULiBJbiBjYXNlCm9mIHRoZSBkZXZmcmVxIGRyaXZlciBm
b3IgZXh5bm9zLWJ1cywgI2ludGVyY29ubmVjdC1jZWxscyBpcyBhbHdheXMgemVyby4KClNpZ25l
ZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgot
LS0KIGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW50ZXJj
b25uZWN0L2NvcmUuYyBiL2RyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYwppbmRleCBkNTY2YWUw
YjY2YzAuLjI1NTZmZDZkMTg2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29y
ZS5jCisrKyBiL2RyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYwpAQCAtMjc5LDcgKzI3OSw3IEBA
IHN0cnVjdCBpY2Nfbm9kZSAqb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKHN0cnVjdCBvZl9waGFu
ZGxlX2FyZ3MgKnNwZWMpCiAJc3RydWN0IGljY19ub2RlICpub2RlID0gRVJSX1BUUigtRVBST0JF
X0RFRkVSKTsKIAlzdHJ1Y3QgaWNjX3Byb3ZpZGVyICpwcm92aWRlcjsKIAotCWlmICghc3BlYyB8
fCBzcGVjLT5hcmdzX2NvdW50ICE9IDEpCisJaWYgKCFzcGVjKQogCQlyZXR1cm4gRVJSX1BUUigt
RUlOVkFMKTsKIAogCW11dGV4X2xvY2soJmljY19sb2NrKTsKLS0gCjIuMTcuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
