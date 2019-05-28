Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152A02C52C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDOTHZ44SLl5Tf9/mKzbuMzsvaIovSVQVT7p2+yIFl4=; b=HGPGSdebyeY4VH
	V6g3mRfpLaZy0jzY/HOQUIevKHi/6T3AMDqceWTtfro/x1BubaiNuPTDpxpbmT0O+2GNRolG5jJPK
	M7ybBGd0Ksrfes/vkq8rq/p37SR64Wcdy053yMCInZYzcIccjDt+8a6Vj7jRcb9KVyBAsi0H6mZpI
	HwIHdE0m3l5FHCpJu0952KwM5bBQYRcr0bNJGzq5eZVUwapLn0Q1mba+Y6iVaWmDXipkA7AjQlxcY
	gaHVzcOlLasdPLjE8TBo8gFPay8eFVrNWze824G3e/sfpcSB8wyHqEFw/+0PLX4uzIlUNKiTdEBaq
	kOTUWOxHrl7SA8xjMk7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVa0c-00060V-1g; Tue, 28 May 2019 11:11:10 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVa0R-0005zr-RX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:11:02 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190528111057euoutp0252ab1376b790f0875849768c4a018921~i1E8wO01a0071800718euoutp02N
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 11:10:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190528111057euoutp0252ab1376b790f0875849768c4a018921~i1E8wO01a0071800718euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559041857;
 bh=ectZ9356M986bSPtqbDiko47auKUE54KtRLrrao1KyQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=cL3eYYscRmWERF4KHzJA49KhAda5b5QTE9nSSqK/rsSxXX66s4KZOBGPBGzbpU4ln
 cQ9WSVG53i90dfwcy2E47LrBWp6GyPlfxTwcQY2VP040JxGXWy+X8qAVEE4J1dYguX
 DFC6EMFiE9TH0bcsg16sOz+5CbCKR1mq2hy0cMok=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190528111057eucas1p24c581eff9b77092ec181f458d03482d8~i1E8akyAG2336023360eucas1p2z;
 Tue, 28 May 2019 11:10:57 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 10.F6.04377.0471DEC5; Tue, 28
 May 2019 12:10:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190528111056eucas1p27cbee0b85e06d05b13cf33321b86680a~i1E7rle2r2128221282eucas1p2q;
 Tue, 28 May 2019 11:10:56 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190528111056eusmtrp1c450e76df98e66960d5d2b7449887ab4~i1E7dnC_X2069920699eusmtrp1V;
 Tue, 28 May 2019 11:10:56 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-b3-5ced1740444a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C9.5A.04146.0471DEC5; Tue, 28
 May 2019 12:10:56 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190528111055eusmtip21c1987512431aa1c745639b734f83649~i1E7KS8gT2199121991eusmtip2Q;
 Tue, 28 May 2019 11:10:55 +0000 (GMT)
Subject: Re: [PATCH] clk: samsung: exynos5433: Use of_clk_get_parent_count()
To: Kefeng Wang <wangkefeng.wang@huawei.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <2a0147a3-2371-7f78-b756-09923b5f6cb2@samsung.com>
Date: Tue, 28 May 2019 13:10:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190525115542.107929-1-wangkefeng.wang@huawei.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprNKsWRmVeSWpSXmKPExsWy7djP87oO4m9jDD6/sbTof/ya2eL8+Q3s
 FpseX2O1mHF+H5NF4+f7jA6sHi1H3rJ6bFrVyeaxeUm9x+dNcgEsUVw2Kak5mWWpRfp2CVwZ
 p/c8Yyq4zVFx+MIDxgbG1exdjJwcEgImEuufvGPuYuTiEBJYwSgxY9lHKOcLo0TvxLVsEM5n
 Rok3U3cxwbR07TjDCpFYziix43ETVNVbRonfLU1gg4UFfCS2nnrDDGKLCJRIPDt6DKybWcBb
 Ys+tTYwgNpuApsTfzTfZQGxeATuJ7v1rweIsAqoS/3evB4uLCkRI3D+2gRWiRlDi5MwnLCA2
 p4CjxLEbF5khZspLNG+dDWWLS9x6Mp8J5CAJgcnsEg9bVzJDnO0icWV3E9QLwhKvjm+BhoCM
 xOnJPSwQdr3E/RUtzBDNHYwSWzfshGq2ljh8/CLQFRxAGzQl1u/Shwg7Sry59oEdJCwhwCdx
 460gxA18EpO2TWeGCPNKdLQJQVQrStw/uxVqoLjE0gtf2SYwKs1C8tksJN/MQvLNLIS9CxhZ
 VjGKp5YW56anFhvlpZbrFSfmFpfmpesl5+duYgQmmdP/jn/ZwbjrT9IhRgEORiUe3gfHX8cI
 sSaWFVfmHmKU4GBWEuG1nfImRog3JbGyKrUoP76oNCe1+BCjNAeLkjhvNcODaCGB9MSS1OzU
 1ILUIpgsEwenVAOj2r/ICKV3IUnXu2Lr/ReFSlYY11e41bNVR//x62jo0bi15GzYMQ3RcG3D
 wrSQ3Uk/lVb3TG/R22U+32Tpi/7ecxoVX/7MKuiRyn17Sbkzz+Tjihkdgfp2Bl6mwZ+SttyT
 zKhMi/YzXsKy/pL4G8OUXwV9xotmivSrfNm4Tv0L288DxyYcn6/EUpyRaKjFXFScCABE6lYw
 LgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLIsWRmVeSWpSXmKPExsVy+t/xe7oO4m9jDG62c1r0P37NbHH+/AZ2
 i02Pr7FazDi/j8mi8fN9RgdWj5Yjb1k9Nq3qZPPYvKTe4/MmuQCWKD2bovzSklSFjPziElul
 aEMLIz1DSws9IxNLPUNj81grI1MlfTublNSczLLUIn27BL2M03ueMRXc5qg4fOEBYwPjavYu
 Rk4OCQETia4dZ1i7GLk4hASWMko83fyGESIhLrF7/ltmCFtY4s+1LjaIoteMEksmXWcFSQgL
 +EhsPfUGrEhEoETi4MGPYFOZBbwl9tzaBDZISGAKo8SbLiMQm01AU+Lv5ptsIDavgJ1E9/61
 YDUsAqoS/3evB4uLCkRInHm/ggWiRlDi5MwnYDangKPEsRsXmSHmq0v8mXcJypaXaN46G8oW
 l7j1ZD7TBEahWUjaZyFpmYWkZRaSlgWMLKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECo2rb
 sZ+bdzBe2hh8iFGAg1GJh/fB8dcxQqyJZcWVuYcYJTiYlUR4bae8iRHiTUmsrEotyo8vKs1J
 LT7EaAr03ERmKdHkfGDE55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi
 4JRqYMw17F/Pr3rfY5tiWaxjreiSaoONFRwnjzh9mddntz/oOXc5Q2dH095UWwaBwzOtM+qv
 hHAmM5Xfr0vd/XfhOS7BWnul4zeenv+VU67nqzpvUmXC7puv+NecXy8s7D6n5dwpdZd5Py9M
 k23+EXfjmOyuo6GipU2td9ztXignLWiydF+jFfpivhJLcUaioRZzUXEiAJ8jKGvAAgAA
X-CMS-MailID: 20190528111056eucas1p27cbee0b85e06d05b13cf33321b86680a
X-Msg-Generator: CA
X-RootMTR: 20190525114732epcas1p3ac5c2205bf004893dc002fe05c3adf7b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190525114732epcas1p3ac5c2205bf004893dc002fe05c3adf7b
References: <CGME20190525114732epcas1p3ac5c2205bf004893dc002fe05c3adf7b@epcas1p3.samsung.com>
 <20190525115542.107929-1-wangkefeng.wang@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_041100_190074_A8E0353E 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUuMDUuMjAxOSAxMzo1NSwgS2VmZW5nIFdhbmcgd3JvdGU6Cj4gVXNlIG9mX2Nsa19nZXRf
cGFyZW50X2NvdW50KCkgaW5zdGVhZCBvZiBvcGVuIGNvZGluZy4KPgo+IFNpZ25lZC1vZmYtYnk6
IEtlZmVuZyBXYW5nIDx3YW5na2VmZW5nLndhbmdAaHVhd2VpLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQzMy5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQzMy5jIGIvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGst
ZXh5bm9zNTQzMy5jCj4gaW5kZXggZGFlMWM5NmRlOTMzLi4xNGUyNTM5MTVjYTQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQzMy5jCj4gKysrIGIvZHJpdmVy
cy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQzMy5jCj4gQEAgLTU1OTAsOCArNTU5MCw4IEBAIHN0
YXRpYyBpbnQgX19pbml0IGV4eW5vczU0MzNfY211X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gIAlkYXRhLT5ucl9jbGtfc2F2ZSA9IGluZm8tPm5yX2Nsa19yZWdzOwo+ICAJ
ZGF0YS0+Y2xrX3N1c3BlbmQgPSBpbmZvLT5zdXNwZW5kX3JlZ3M7Cj4gIAlkYXRhLT5ucl9jbGtf
c3VzcGVuZCA9IGluZm8tPm5yX3N1c3BlbmRfcmVnczsKPiAtCWRhdGEtPm5yX3BjbGtzID0gb2Zf
Y291bnRfcGhhbmRsZV93aXRoX2FyZ3MoZGV2LT5vZl9ub2RlLCAiY2xvY2tzIiwKPiAtCQkJCQkJ
ICAgICIjY2xvY2stY2VsbHMiKTsKPiArCWRhdGEtPm5yX3BjbGtzID0gb2ZfY2xrX2dldF9wYXJl
bnRfY291bnQoZGV2LT5vZl9ub2RlKTsKPiArCj4gIAlpZiAoZGF0YS0+bnJfcGNsa3MgPiAwKSB7
Cj4gIAkJZGF0YS0+cGNsa3MgPSBkZXZtX2tjYWxsb2MoZGV2LCBzaXplb2Yoc3RydWN0IGNsayAq
KSwKPiAgCQkJCQkgICBkYXRhLT5ucl9wY2xrcywgR0ZQX0tFUk5FTCk7CgpSZXZpZXdlZC1ieTog
QW5kcnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KCsKgLS0KUmVnYXJkcwpBbmRyemVq
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
