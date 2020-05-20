Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D7A1DAD1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKto80Er7oO/4RV6PL8g4Up/XGWXVD2wIfQAhEvl4X4=; b=Rc+HWUshwWQtQ1
	Mdepf1MwXLqtzK9b6lclz9ghVcTbC/9WFpjAt2C5xehAfMtt1Z22OYvHFcCq2kZhqEA8K6YEcc7q8
	mzbt3gZ4BKTBG721nK1jAJI50xhAOq1pg1HL63eeZAxAr6DBEekWl0S5WvpfnmyUkzM5xwUzLbf1u
	ek7seOU1RtHqOdoj6c26hw8LS6dUCV+3gtPer6D5CJ5v2+IQo1EtxAEiU8/zJSOoUgCUySixZvgj0
	Jn3MGsC0ROOLxp4DclT+Ugp9kRD+be6G1eqG8oqjTghTYRb3uOxavxexc7t/i3YXJn6Dqm59RiB7L
	LAgdL8XNO6EDktdh4TPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJwC-0004G9-AE; Wed, 20 May 2020 08:18:52 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJw0-0004FV-Jp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:18:42 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200520081832euoutp01d9244ed0c0e299bf6117f09e21d5db6c~QrqmpriwR2780027800euoutp01W
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:18:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200520081832euoutp01d9244ed0c0e299bf6117f09e21d5db6c~QrqmpriwR2780027800euoutp01W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589962712;
 bh=ofqge9eLurcw12bkh9bRZU2bEi4+BPAAQ1dx+dpIZQI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=YvT6s8mKd0OKIQJfx84xXHF7ZsyXKEG7LHQ1XVrITcieAmJq97kZdCZNM5F/2iarM
 4qBPwRF5VnDvvT5qy1Xgh0wBTxXZoGHuOg0zakNUZdGLtQk29L5kywf0vcpLkq0J/j
 qB4RQHFVCeJb5mPPGKefcmkOCPomRmBl9upI8Uk8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200520081831eucas1p106cf83e4f00015b72f80e760a0eceee4~QrqmQw4uq2188421884eucas1p1i;
 Wed, 20 May 2020 08:18:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 53.2B.60698.7D7E4CE5; Wed, 20
 May 2020 09:18:31 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200520081831eucas1p2fef65ce5e9847e051f0c9d13e03c1892~QrqlzlBHK1468714687eucas1p21;
 Wed, 20 May 2020 08:18:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200520081831eusmtrp2e900a7aed40971e6833b817be2124e31~QrqlysWqC0267902679eusmtrp2j;
 Wed, 20 May 2020 08:18:31 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-09-5ec4e7d7ab51
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C8.D1.08375.7D7E4CE5; Wed, 20
 May 2020 09:18:31 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200520081830eusmtip20b394f0405bf25bf73ffaca23c8ea528~Qrqk4AggG2560225602eusmtip2h;
 Wed, 20 May 2020 08:18:30 +0000 (GMT)
Subject: Re: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
To: =?UTF-8?Q?=c5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, Matt Mackall
 <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann
 <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Florian Fainelli
 <f.fainelli@gmail.com>, Markus Elfring <elfring@users.sourceforge.net>,
 Matthias Brugger <mbrugger@suse.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, Stephan
 Mueller <smueller@chronox.de>
From: Kamil Konieczny <k.konieczny@samsung.com>
Message-ID: <a257d9fe-0a6d-8dd5-cdaf-5b3e7fdf3391@samsung.com>
Date: Wed, 20 May 2020 10:18:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519212552.11671-2-l.stelmach@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sf0zMYRzee9+fF9e+neizamy3RTFCmXfH/C7fjT/848dY5eiroiu7k59/
 aFJcl7RLo6M5+l1yue5uYirnCKkbwmFpdpFYNv1Ahbj7Mv33vM/zed7n87x7WUJeRAezKWn7
 BE2aKlVB+5H2eyOuuS96nfHzq4vn4J+Gewy+ds5M4bpTd0ns0lUSePSzk8FZpWYa6z+G4tOe
 TwR2ueoZ/NJRhbDF85zC3W9GJPjpjQs0PudqkmBTYQ+FTfZ8hN8VN9D4c20PwkVtdSRuva8j
 VgTyY6MGxBu722l+oLNTwjcauxi+1NJM8/aWMN5So6P55pIrDN9QdpTPt9YgPr+vHvFm6zOS
 P/bwBMUPWqZv8N/qtzRRSE3ZL2gil233S7Z1Wai9lZMOdpTqUSZqk+YiKQtcNDQP32RykR8r
 56oQ5D2rJr2CnBtCkD2cLAqDCB4d7/gjsD5HdkWCyFci6MhppsRDP4JftlHa657CrYVL7grS
 KwRyfRTUl1/3CQSHwWarZbyY5iLhdvsDX5yMWwZu02sfT3JhcEk/4sNTuS0wbvD8nQmAB8U9
 vi2k3FIw6JTilUHwqueiRMQzIMt2nvDmAtfJQvWXJlLsuQYsDU6JiKfAx1YrI+JQGG/0mr2G
 LARtmUWMeMhDcGvISotTS2DwSwvtTSa4CDDfiBTpleAceEyLz+IP7v4AcQl/MNjPEiItg5M5
 cnE6DHof5v1dIQRyx69SBUhhnNDMOKGOcUId4/9cEyJrUJCQoVUnCdqoNOHAPK1Krc1IS5q3
 M11tQX8+a9uv1uHrqOnHDgfiWKSYLHM33omXU6r92kNqBwKWUATKCj444uWyRNWhw4ImPUGT
 kSpoHSiEJRVBsqjLfXFyLkm1T9gjCHsFzT9VwkqDM1HxrIGxEiVrlTO7aj2eb+bu8YtSXbJm
 29vhmNZFm9/bo1ULXhNPlNsG+BhWMmMwMJipyywv2hSr7zJt3L163eL6XXX5oZ15eHF6hDM6
 /IrBvGF50211b5x+5xD1Jqns+7Sase2rFimPuHPKrdXlH7jCnFPhQseaM5fXz1xofPk1VkFq
 k1ULZhMareo3HdwD56gDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTcRjG+++cnU1rdZwz/5ldPCCS4OY03V8xqQ/ioQ92QyordehBLbfF
 OVO0L2oiOiVvEeiy1Czvpc5NKipzecnmDTNvZQYqlppBBuGlTB2B3x6e5/m9vC+8QkxczXcS
 xqm1DKtWxlOELW752/XZY2S2PdxzpU6E/hR2ClBTUQMfPb7VgaN+XRWGVhbbBSi9ooFAOXPO
 KG9qHkP9/Y0CNGauBsgwNcxHk5+Xeej98xICFfW/4qGy29N8VNaSC9BMcTOBFuumAbpjeYyj
 rrc67LiEXl0pBLR+spegfw4N8ehn+gkBXWFoJeiW1660oVZH0K336gV088MUOtdYC+jcb42A
 bjB+wOmb7zL59JLh4OndYdIAVpOgZQ7HajjtMeqSHHlJ5X5I6nXUTyr3Vlzx9/KhZIEB0Ux8
 XCLDygIjpbGmCQP/etXOpL6KHJAKLDbZQCiE5FGYURmRDWyFYvIRgB8XBohsYLPh74dpljqe
 VdvDteFswlqaB3B0bGGrZE8Gw/LRSnwzkJDf+XCu0IhvBhiJoMlUJ7ASSwDOWFoFmwFBymBb
 b/dWSUQGwtGyj1s+TrrC8pzlLe1AXoBLbe2EtWMHu4un8c1VbcgAWKjzt853g2v3BzGrdoTj
 06U8qz4E0013sXwg1m+j9dsQ/TZEvw0pA3gtkDAJnCpGxcmlnFLFJahjpFEalQFsfElL53Lz
 UzDYdM4MSCGgdok8X7wJF/OViVyyygygEKMkovyv5nCxKFqZfINhNRFsQjzDmYHPxm0FmJND
 lGbj59TaCLmPXIH85ApvhbcvohxFWWTbZTEZo9Qy1xjmOsP+53hCG6dUcHXyx5eePSnEjvPe
 QTWueoeOLA9Hg0tvZtSUOvhAdOXAvi7qlDHHfjFswr2nL+R3zUXpmdV10/qsNtYtFNYPjWae
 oEM70jJd9LqlI+TeT6kDIbpxNsMOeb3Me5K0crbE+UGkMSTIF8kkySPl9ePnWZl4NeRgyqpk
 rfTXyQIFReFcrFLujrGc8h84CK51OwMAAA==
X-CMS-MailID: 20200520081831eucas1p2fef65ce5e9847e051f0c9d13e03c1892
X-Msg-Generator: CA
X-RootMTR: 20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <20200519212552.11671-1-l.stelmach@samsung.com>
 <CGME20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17@eucas1p2.samsung.com>
 <20200519212552.11671-2-l.stelmach@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_011840_785710_D786A702 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4wNS4yMDIwIDIzOjI1LCDFgXVrYXN6IFN0ZWxtYWNoIHdyb3RlOgo+IFRoZSB2
YWx1ZSB3YXMgZXN0aW1hZGVkIHdpdGggZWFfaWlkWzFdIHVzaW5nIG9uIDEwNDg1NzYwIGJ5dGVz
IHJlYWQgZnJvbQo+IHRoZSBSTkcgdmlhIC9kZXYvaHdybmcuIFRoZSBtaW4tZW50cm9weSB2YWx1
ZSBjYWxjdWxhdGVkIHVzaW5nIHRoZSBtb3N0Cj4gY29tbW9uIHZhbHVlIGVzdGltYXRlIChOSVNU
IFNQIDgwMC05MFBbMl0sIHNlY3Rpb24gNi4zLjEpIHdhcyA3Ljk2NDQ2NC4KPiAKPiBbMV0gaHR0
cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS91cmw/az0zMTZmM2Q3OS02Y2Y5ODQwZS0zMTZlYjYz
Ni0wY2M0N2EzMTJhYjAtNWYxMTlmNzI5YjNkZGMxMSZxPTEmdT1odHRwcyUzQSUyRiUyRmdpdGh1
Yi5jb20lMkZ1c25pc3Rnb3YlMkZTUDgwMC05MEJfRW50cm9weUFzc2Vzc21lbnQKClRoaXMgbGlu
ayBsb29rcyB1Z2x5IGFuZCBkbyBub3QgcHJvdGVjdCBhbnl0aGluZy4KQ2FuIHlvdSBqdXN0IGN1
dCBvdXQgdGhhdCAicHJvdGVjdDIiIHRoaW5nIGFuZCBwdXQgcHJvcGVyIGRpcmVjdCBsaW5rIHRv
IGdpdGh1YiA/Cgo+IFsyXSBodHRwczovL2NzcmMubmlzdC5nb3YvcHVibGljYXRpb25zL2RldGFp
bC9zcC84MDAtOTBiL2ZpbmFsCj4gCj4gU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8
bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9p
cHJvYy1ybmcyMDAuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9pcHJvYy1ybmcyMDAuYyBiL2Ry
aXZlcnMvY2hhci9od19yYW5kb20vaXByb2Mtcm5nMjAwLmMKPiBpbmRleCAzMmQ5ZmU2MWEyMjUu
Ljk1NjY5ZWNlMDUwZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaHdfcmFuZG9tL2lwcm9j
LXJuZzIwMC5jCj4gKysrIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9pcHJvYy1ybmcyMDAuYwo+
IEBAIC0xOTksNiArMTk5LDcgQEAgc3RhdGljIGludCBpcHJvY19ybmcyMDBfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCXByaXYtPnJuZy5yZWFkID0gaXByb2Nfcm5nMjAw
X3JlYWQsCj4gIAlwcml2LT5ybmcuaW5pdCA9IGlwcm9jX3JuZzIwMF9pbml0LAo+ICAJcHJpdi0+
cm5nLmNsZWFudXAgPSBpcHJvY19ybmcyMDBfY2xlYW51cCwKPiArCXByaXYtPnJuZy5xdWFsaXR5
ID0gMTAwMCwKPiAgCj4gIAkvKiBSZWdpc3RlciBkcml2ZXIgKi8KPiAgCXJldCA9IGRldm1faHdy
bmdfcmVnaXN0ZXIoZGV2LCAmcHJpdi0+cm5nKTsKPiAKCi0tIApCZXN0IHJlZ2FyZHMsCkthbWls
IEtvbmllY3pueQpTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
