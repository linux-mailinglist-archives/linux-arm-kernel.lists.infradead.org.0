Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 583B676408
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6ILkiZ9fF3B8LmpE4JX/MIiWetvaTGAjhnlO48cZcY=; b=McM/CbsdFs8sdD
	kjajb7np2G6WJRTfwQs2j82xQPnRWMu5TykPaZ/NygOHw0FoEp1WxJhR1cMAfuVkyXYpJRlgCUcRG
	AiW7MKhXdgZnBIplfTqIXMeQXcLQWpy4ZtD/+mvjCFZJAvlPvO1fsdiLNRWGHkMyuYcdaYCkzd5y4
	J5KQxnqWS9ql8PLMlkZFwUsA/jmOl0/7MWPEmNRxwFy0Am+ZSFo7n1bKh0Mzgv4sMNR3JyBDlleTG
	3NicUGQlDlZc4umI8iOHnFbInScl7Deu8nK4d5WofkAKfYgSpao3iCOVnanpF4RbbJbkcFs9A/0c0
	MRAL8pnzmef7IHVGnupw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxyU-0008Vo-Bs; Fri, 26 Jul 2019 11:01:22 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxyH-0008UY-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:01:11 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190726110106epoutp04bf1101c64b53ab0cf1fbc07d4b2f2218~08AMXM7ep2764527645epoutp04K
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 11:01:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190726110106epoutp04bf1101c64b53ab0cf1fbc07d4b2f2218~08AMXM7ep2764527645epoutp04K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564138866;
 bh=kcE3GR2TU8uayVxoqH3p+KC+NazB5aH2KDMPv6Ni+zs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=oNLtgUtdcnkXLULaWkLiDNqQ0AMAAlQ5BgRp4OCeu9UkJdn7ZTyxuC1DID9DuippJ
 6yb2Df8fMVSqa5CsNKYdHFEKmWM2dZN6BQB/byRCofuMUJIXNipVCdd0H8zQ25tcQz
 sKPyRHoYcl1TvKeWhuUSjPCctwwoUVCPTw+0SIAw=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190726110106epcas1p4515c63070edf78d9f02390f05d2b934e~08AL_ZNwC3048430484epcas1p4J;
 Fri, 26 Jul 2019 11:01:06 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.152]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 45w5jX128mzMqYkY; Fri, 26 Jul
 2019 11:01:04 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 69.00.04085.07DDA3D5; Fri, 26 Jul 2019 20:01:04 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190726110103epcas1p10cc201a13c99ffa8497329d70b7d2520~08AJeN-kU2936629366epcas1p1w;
 Fri, 26 Jul 2019 11:01:03 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190726110103epsmtrp11fc4f1aea89fcff8fce9276745333a6e~08AJdWKQM0394803948epsmtrp1y;
 Fri, 26 Jul 2019 11:01:03 +0000 (GMT)
X-AuditID: b6c32a39-cebff70000000ff5-02-5d3add70e81b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1F.FA.03706.F6DDA3D5; Fri, 26 Jul 2019 20:01:03 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190726110103epsmtip1e2a115c4e055c4b7f82188e52a79fd35~08AJNGAGj2769327693epsmtip1K;
 Fri, 26 Jul 2019 11:01:03 +0000 (GMT)
Subject: Re: [RFC PATCH 04/11] devfreq: exynos-bus: Clean up code
To: Krzysztof Kozlowski <krzk@kernel.org>, cwchoi00@gmail.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <2871b90b-f8e6-13c0-0e0b-66ce70e3ec86@samsung.com>
Date: Fri, 26 Jul 2019 20:04:24 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfsD0XFs2hM64Kf0eG2G+xhWef3QZKjk9NU2ECzgQeqsA@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGJsWRmVeSWpSXmKPExsWy7bCmrm7BXatYg+nP2SwOHdvKbvHsqLbF
 /CPnWC2ufH3PZjF97yY2i0n3J7BYnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbe4
 3biCzWLG5JdsDnweO2fdZffYtKqTzePOtT1sHve7jzN5bF5S73Hw3R4mj74tqxg9Pm+SC+CI
 yrbJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy8QnQdcvMATpbSaEs
 MacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgWaBXnJhbXJqXrpecn2tlaGBgZApUmJCd
 8WzlOZaChY4V1w+vYmtg3KzbxcjBISFgIrFiqn8XIxeHkMAORokJU1rYIJxPjBLHJjxnhHC+
 MUrc694L5HCCdUz+1MUKkdjLKLF5fzcThPOeUeL9jd3sIFXCAo4S17tOgdkiArYSu2fPYwEp
 YhZYySKxruMd2Cg2AS2J/S9usIHY/AKKEld/PAaL8wrYSVz7u5EVxGYRUJWYvmgxmC0qECHx
 6cFhVogaQYmTM5+wgNicAoES7+5vAbOZBcQlbj2ZzwRhy0s0b53NDLJYQmAXu8TsfS+YIH5w
 kTh+/hgLhC0s8er4FnYIW0riZX8blF0tsfLkETaI5g5GiS37L7BCJIwl9i+dzAQKPmYBTYn1
 u/QhwooSO3/PZYRYzCfx7msPKySEeSU62oQgSpQlLj+4C3WCpMTi9k62CYxKs5C8MwvJC7OQ
 vDALYdkCRpZVjGKpBcW56anFhgWmyNG9iRGcprUsdzAeO+dziFGAg1GJh/fCcstYIdbEsuLK
 3EOMEhzMSiK8W3cAhXhTEiurUovy44tKc1KLDzGaAkN7IrOUaHI+MIfklcQbmhoZGxtbmBia
 mRoaKonzLvxhESskkJ5YkpqdmlqQWgTTx8TBKdXAeJJxE7PG4WjL3G1vfq7z77u/aFuVqm37
 T5/lCS0Xz6eKv8ibba3BcV3/yO+0Y7XHUxrj361T2Hups3bJ8WVnv+8p05sjkcbblXhh0s3w
 2oMKKod9mT6/EDJm2McYGN2YtfpR1gPtLbJltwoOLRWcdfQg++bAlQeZXl1XuxPdv+SQ1pv1
 c87OX6HEUpyRaKjFXFScCADcYXDr6QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIIsWRmVeSWpSXmKPExsWy7bCSnG7+XatYgyXnZCwOHdvKbvHsqLbF
 /CPnWC2ufH3PZjF97yY2i0n3J7BYnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbe4
 3biCzWLG5JdsDnweO2fdZffYtKqTzePOtT1sHve7jzN5bF5S73Hw3R4mj74tqxg9Pm+SC+CI
 4rJJSc3JLEst0rdL4Mp4tvIcS8FCx4rrh1exNTBu1u1i5OSQEDCRmPypi7WLkYtDSGA3o8TK
 E59YIBKSEtMuHmXuYuQAsoUlDh8uhqh5yyjxdcM9dpAaYQFHietdp8BsEQFbid2z57GAFDEL
 rGaROLPhPxNEx20mib7jU5hBqtgEtCT2v7jBBmLzCyhKXP3xmBHE5hWwk7j2dyMriM0ioCox
 fdFiMFtUIELi8I5ZUDWCEidnPgG7jlMgUOLd/S1gNrOAusSfeZeYIWxxiVtP5jNB2PISzVtn
 M09gFJ6FpH0WkpZZSFpmIWlZwMiyilEytaA4Nz232LDAMC+1XK84Mbe4NC9dLzk/dxMjOGK1
 NHcwXl4Sf4hRgINRiYdXY5VlrBBrYllxZe4hRgkOZiUR3q07gEK8KYmVValF+fFFpTmpxYcY
 pTlYlMR5n+YdixQSSE8sSc1OTS1ILYLJMnFwSjUwrvSz4W9O8XhVusyYWaDk8IUp7C8CT9Tu
 kfN+Ov2w7JO965feLP7CITVhnkOkmux+yWItJfcVT6oOvJwoUlgYvrb39d76iNRjvJHX49tf
 ZR+p9Nv/4tsCF5WNnqejzrVyHtsWyHP3cTjvHxEZp1nx93iLqngOlvd7B0izP13aULdze5uW
 nvZWJZbijERDLeai4kQANKPnUdQCAAA=
X-CMS-MailID: 20190726110103epcas1p10cc201a13c99ffa8497329d70b7d2520
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22
References: <CGME20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-5-a.swigon@partner.samsung.com>
 <CAGTfZH3Z334D3OKpBOGSfS9RoHkOX-s_2M858z1Ye2NoMtVh4g@mail.gmail.com>
 <CAJKOXPfsD0XFs2hM64Kf0eG2G+xhWef3QZKjk9NU2ECzgQeqsA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_040109_926432_DE5DBE90 
X-CRM114-Status: GOOD (  29.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Inki Dae <inki.dae@samsung.com>,
 devicetree <devicetree@vger.kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDcuIDI2LiDsmKTtm4QgNzo0NSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBP
biBUaHUsIDI1IEp1bCAyMDE5IGF0IDE0OjUxLCBDaGFud29vIENob2kgPGN3Y2hvaTAwQGdtYWls
LmNvbT4gd3JvdGU6Cj4+Cj4+IDIwMTnrhYQgN+yblCAyNOydvCAo7IiYKSDsmKTsoIQgODowNywg
QXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+64uY7J20IOyekeyE
sToKPj4+Cj4+PiBUaGlzIHBhdGNoIGFkZHMgbWlub3IgaW1wcm92ZW1lbnRzIHRvIHRoZSBleHlu
b3MtYnVzIGRyaXZlci4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvZGV2ZnJlcS9l
eHlub3MtYnVzLmMgfCA0OSArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+
ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pCj4+Pgo+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2Rl
dmZyZXEvZXh5bm9zLWJ1cy5jCj4+PiBpbmRleCA0YmI4M2I5NDViZjcuLjQxMjUxMWNhNzcwMyAx
MDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+ICsrKyBiL2Ry
aXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+IEBAIC0xNSwxMSArMTUsMTAgQEAKPj4+ICAj
aW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4+PiAgI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgo+
Pj4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPj4+IC0jaW5jbHVkZSA8bGludXgvb2ZfZGV2
aWNlLmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4+PiAgI2luY2x1ZGUgPGxpbnV4L3Bt
X29wcC5oPgo+Pj4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4+ICAjaW5j
bHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+Cj4+PiAtI2luY2x1ZGUgPGxpbnV4L3Ns
YWIuaD4KPj4+Cj4+PiAgI2RlZmluZSBERUZBVUxUX1NBVFVSQVRJT05fUkFUSU8gICAgICAgNDAK
Pj4+ICAjZGVmaW5lIERFRkFVTFRfVk9MVEFHRV9UT0xFUkFOQ0UgICAgICAyCj4+PiBAQCAtMjU2
LDcgKzI1NSw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2Yoc3RydWN0
IGRldmljZV9ub2RlICpucCwKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzKQo+Pj4gIHsKPj4+ICAgICAgICAgc3RydWN0IGRl
dmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4+PiAtICAgICAgIGludCBpLCByZXQsIGNvdW50LCBzaXpl
Owo+Pj4gKyAgICAgICBpbnQgaSwgcmV0LCBjb3VudDsKPj4+Cj4+PiAgICAgICAgIC8qIEdldCB0
aGUgcmVndWxhdG9yIHRvIHByb3ZpZGUgZWFjaCBidXMgd2l0aCB0aGUgcG93ZXIgKi8KPj4+ICAg
ICAgICAgYnVzLT5yZWd1bGF0b3IgPSBkZXZtX3JlZ3VsYXRvcl9nZXQoZGV2LCAidmRkIik7Cj4+
PiBAQCAtMjgzLDggKzI4Miw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vf
b2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPj4+ICAgICAgICAgfQo+Pj4gICAgICAgICBidXMt
PmVkZXZfY291bnQgPSBjb3VudDsKPj4+Cj4+PiAtICAgICAgIHNpemUgPSBzaXplb2YoKmJ1cy0+
ZWRldikgKiBjb3VudDsKPj4+IC0gICAgICAgYnVzLT5lZGV2ID0gZGV2bV9remFsbG9jKGRldiwg
c2l6ZSwgR0ZQX0tFUk5FTCk7Cj4+PiArICAgICAgIGJ1cy0+ZWRldiA9IGRldm1fa2NhbGxvYyhk
ZXYsIGNvdW50LCBzaXplb2YoKmJ1cy0+ZWRldiksIEdGUF9LRVJORUwpOwo+Pj4gICAgICAgICBp
ZiAoIWJ1cy0+ZWRldikgewo+Pj4gICAgICAgICAgICAgICAgIHJldCA9IC1FTk9NRU07Cj4+PiAg
ICAgICAgICAgICAgICAgZ290byBlcnJfcmVndWxhdG9yOwo+Pj4gQEAgLTM4OCw3ICszODYsNyBA
QCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpi
dXMsCj4+PiAgICAgICAgIG9uZGVtYW5kX2RhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2Yo
Km9uZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVMKTsKPj4+ICAgICAgICAgaWYgKCFvbmRlbWFuZF9k
YXRhKSB7Cj4+PiAgICAgICAgICAgICAgICAgcmV0ID0gLUVOT01FTTsKPj4+IC0gICAgICAgICAg
ICAgICBnb3RvIGVycjsKPj4+ICsgICAgICAgICAgICAgICBnb3RvIG91dDsKPj4+ICAgICAgICAg
fQo+Pj4gICAgICAgICBvbmRlbWFuZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOwo+Pj4gICAgICAg
ICBvbmRlbWFuZF9kYXRhLT5kb3duZGlmZmVyZW50aWFsID0gNTsKPj4+IEBAIC00MDAsMTQgKzM5
OCwxNCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3Nf
YnVzICpidXMsCj4+PiAgICAgICAgIGlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewo+Pj4gICAg
ICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZmcmVxIGRldmljZVxu
Iik7Cj4+PiAgICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+Pj4g
LSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+Pj4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+
Pj4gICAgICAgICB9Cj4+Pgo+Pj4gICAgICAgICAvKiBSZWdpc3RlciBvcHBfbm90aWZpZXIgdG8g
Y2F0Y2ggdGhlIGNoYW5nZSBvZiBPUFAgICovCj4+PiAgICAgICAgIHJldCA9IGRldm1fZGV2ZnJl
cV9yZWdpc3Rlcl9vcHBfbm90aWZpZXIoZGV2LCBidXMtPmRldmZyZXEpOwo+Pj4gICAgICAgICBp
ZiAocmV0IDwgMCkgewo+Pj4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRv
IHJlZ2lzdGVyIG9wcCBub3RpZmllclxuIik7Cj4+PiAtICAgICAgICAgICAgICAgZ290byBlcnI7
Cj4+PiArICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4+PiAgICAgICAgIH0KPj4+Cj4+PiAgICAg
ICAgIC8qCj4+PiBAQCAtNDE3LDE2ICs0MTUsMTYgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3By
b2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+Pj4gICAgICAgICByZXQgPSBleHlu
b3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7Cj4+PiAgICAgICAgIGlmIChyZXQgPCAwKSB7Cj4+PiAg
ICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5hYmxlIGRldmZyZXEtZXZl
bnQgZGV2aWNlc1xuIik7Cj4+PiAtICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+PiArICAgICAg
ICAgICAgICAgZ290byBvdXQ7Cj4+PiAgICAgICAgIH0KPj4+Cj4+PiAgICAgICAgIHJldCA9IGV4
eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7Cj4+PiAgICAgICAgIGlmIChyZXQgPCAwKSB7Cj4+PiAg
ICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gc2V0IGV2ZW50IHRvIGRldmZy
ZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4+PiAtICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+PiAr
ICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4+PiAgICAgICAgIH0KPj4+Cj4+PiAtZXJyOgo+Pj4g
K291dDoKPj4+ICAgICAgICAgcmV0dXJuIHJldDsKPj4+ICB9Cj4+Pgo+Pj4gQEAgLTQ0NiwyNyAr
NDQ0LDI4IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1
Y3QgZXh5bm9zX2J1cyAqYnVzLAo+Pj4gICAgICAgICBwYXJlbnRfZGV2ZnJlcSA9IGRldmZyZXFf
Z2V0X2RldmZyZXFfYnlfcGhhbmRsZShkZXYsIDApOwo+Pj4gICAgICAgICBpZiAoSVNfRVJSKHBh
cmVudF9kZXZmcmVxKSkgewo+Pj4gICAgICAgICAgICAgICAgIHJldCA9IC1FUFJPQkVfREVGRVI7
Cj4+PiAtICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+PiArICAgICAgICAgICAgICAgZ290byBv
dXQ7Cj4+PiAgICAgICAgIH0KPj4+Cj4+PiAgICAgICAgIHBhc3NpdmVfZGF0YSA9IGRldm1fa3ph
bGxvYyhkZXYsIHNpemVvZigqcGFzc2l2ZV9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4+PiAgICAgICAg
IGlmICghcGFzc2l2ZV9kYXRhKSB7Cj4+PiAgICAgICAgICAgICAgICAgcmV0ID0gLUVOT01FTTsK
Pj4+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPj4+ICsgICAgICAgICAgICAgICBnb3RvIG91
dDsKPj4+ICAgICAgICAgfQo+Pj4gICAgICAgICBwYXNzaXZlX2RhdGEtPnBhcmVudCA9IHBhcmVu
dF9kZXZmcmVxOwo+Pj4KPj4+ICAgICAgICAgLyogQWRkIGRldmZyZXEgZGV2aWNlIGZvciBleHlu
b3MgYnVzIHdpdGggcGFzc2l2ZSBnb3Zlcm5vciAqLwo+Pj4gLSAgICAgICBidXMtPmRldmZyZXEg
PSBkZXZtX2RldmZyZXFfYWRkX2RldmljZShkZXYsIHByb2ZpbGUsIERFVkZSRVFfR09WX1BBU1NJ
VkUsCj4+PiArICAgICAgIGJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRl
diwgcHJvZmlsZSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIERFVkZSRVFfR09WX1BBU1NJVkUsCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBwYXNzaXZlX2RhdGEpOwo+Pj4gICAgICAgICBpZiAoSVNf
RVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKPj4+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwKPj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2IHdpdGgg
cGFzc2l2ZSBnb3Zlcm5vclxuIik7Cj4+PiAgICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihi
dXMtPmRldmZyZXEpOwo+Pj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+Pj4gKyAgICAgICAg
ICAgICAgIGdvdG8gb3V0Owo+Pj4gICAgICAgICB9Cj4+Pgo+Pj4gLWVycjoKPj4+ICtvdXQ6Cj4+
PiAgICAgICAgIHJldHVybiByZXQ7Cj4+PiAgfQo+Pj4KPj4+IEBAIC00ODQsMTEgKzQ4MywxMSBA
QCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPj4+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4+ICAgICAgICAgfQo+Pj4K
Pj4+IC0gICAgICAgYnVzID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqYnVzKSwg
R0ZQX0tFUk5FTCk7Cj4+PiArICAgICAgIGJ1cyA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigq
YnVzKSwgR0ZQX0tFUk5FTCk7Cj4+PiAgICAgICAgIGlmICghYnVzKQo+Pj4gICAgICAgICAgICAg
ICAgIHJldHVybiAtRU5PTUVNOwo+Pj4gICAgICAgICBtdXRleF9pbml0KCZidXMtPmxvY2spOwo+
Pj4gLSAgICAgICBidXMtPmRldiA9ICZwZGV2LT5kZXY7Cj4+PiArICAgICAgIGJ1cy0+ZGV2ID0g
ZGV2Owo+Pj4gICAgICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBidXMpOwo+Pj4KPj4+
ICAgICAgICAgLyogUGFyc2UgdGhlIGRldmljZS10cmVlIHRvIGdldCB0aGUgcmVzb3VyY2UgaW5m
b3JtYXRpb24gKi8KPj4+IEBAIC01MDIsNyArNTAxLDcgQEAgc3RhdGljIGludCBleHlub3NfYnVz
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiAgICAgICAgICAgICAgICAg
Z290byBlcnI7Cj4+PiAgICAgICAgIH0KPj4+Cj4+PiAtICAgICAgIG5vZGUgPSBvZl9wYXJzZV9w
aGFuZGxlKGRldi0+b2Zfbm9kZSwgImRldmZyZXEiLCAwKTsKPj4+ICsgICAgICAgbm9kZSA9IG9m
X3BhcnNlX3BoYW5kbGUobnAsICJkZXZmcmVxIiwgMCk7Cj4+PiAgICAgICAgIGlmIChub2RlKSB7
Cj4+PiAgICAgICAgICAgICAgICAgb2Zfbm9kZV9wdXQobm9kZSk7Cj4+PiAgICAgICAgICAgICAg
ICAgcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShidXMsIHByb2ZpbGUpOwo+
Pj4gQEAgLTU0NywxMiArNTQ2LDEwIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19yZXN1bWUoc3Ry
dWN0IGRldmljZSAqZGV2KQo+Pj4gICAgICAgICBpbnQgcmV0Owo+Pj4KPj4+ICAgICAgICAgcmV0
ID0gZXh5bm9zX2J1c19lbmFibGVfZWRldihidXMpOwo+Pj4gLSAgICAgICBpZiAocmV0IDwgMCkg
ewo+Pj4gKyAgICAgICBpZiAocmV0IDwgMCkKPj4+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRl
diwgImZhaWxlZCB0byBlbmFibGUgdGhlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4+PiAt
ICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4+IC0gICAgICAgfQo+Pj4KPj4+IC0gICAgICAg
cmV0dXJuIDA7Cj4+PiArICAgICAgIHJldHVybiByZXQ7Cj4+PiAgfQo+Pj4KPj4+ICBzdGF0aWMg
aW50IGV4eW5vc19idXNfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+PiBAQCAtNTYxLDEy
ICs1NTgsMTAgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3N1c3BlbmQoc3RydWN0IGRldmljZSAq
ZGV2KQo+Pj4gICAgICAgICBpbnQgcmV0Owo+Pj4KPj4KPj4gTkFDSy4KPiAKPiBJbnN0ZWFkIG9m
IHNpbXBsZSBuYWNrIHlvdSBzaG91bGQgZXhwbGFpbiB3aGF0IGlzIHdyb25nIHdpdGggcHJvcG9z
ZWQKPiBhcHByb2FjaC4gVGhlIGV4aXN0aW5nIGNvZGUgY291bGQgYmUgaW1wcm92ZWQgYW5kIHRo
aXMgcGF0Y2ggY2xlYXJseQo+IGltcHJvdmVzIHRoZSByZWFkYWJpbGl0eS4gImVyciIgbGFiZWwg
aXMgY29uZnVzaW5nIGlmIGl0IGlzIHVzZWQgZm9yCj4gY29ycmVjdCBleGl0IHBhdGguIFRoZSBs
YXN0ICJpZigpIHJldHVybiIgYmxvY2sgaXMgc3ViamVjdGl2ZSAtIGJ1dAo+IHRoZW4gZXhwbGFp
biBleGFjdGx5IHdoeSB5b3UgcHJlZmVyIG9uZSBvdmVyIGFub3RoZXIuIE5vIGp1c3QgIm5hY2si
Cj4gZm9yIHBlb3BsZXMgY29udHJpYnV0aW9ucy4KCk9LLiBTb3JyeSBmb3IgbXkgbGFjayBjb21t
ZW50LgoKQWN0dWFsbHksIEkgcHJlZmVyICdlcnInIGluc3RlYWQgb2YgJ291dCcgYmVjYXVzZSBq
dW1wIHRvICdlcnInCnN0YXRlbWVudCBwb2ludCB3aGVuIGZhaWxlZCB0byBjYWxsIHNvbWUgZnVu
Y3Rpb25zLiBJbiBteSBjYXNlLAonZXJyJyBpcyBwcm9wZXIgd2l0aG91dCBhbnkgcHJvYmxlbS4K
Cgo+IAo+Pj4gICAgICAgICByZXQgPSBleHlub3NfYnVzX2Rpc2FibGVfZWRldihidXMpOwo+Pj4g
LSAgICAgICBpZiAocmV0IDwgMCkgewo+Pj4gKyAgICAgICBpZiAocmV0IDwgMCkKPj4+ICAgICAg
ICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBkaXNhYmxlIHRoZSBkZXZmcmVxLWV2
ZW50IGRldmljZXNcbiIpOwo+Pj4gLSAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4+PiAtICAg
ICAgIH0KCldoZW4gaGFwcGVuIGVycm9yIGJ5IGZ1bmN0aW9uIGNhbGwsIEkgdGhpbmsgdGhhdCBo
YXZlIHRvIHByaW50CnRoZSBlcnJvciBsb2csIGp1c3QgcmV0dXJuIG9yIGp1bXAgc29tZSBwb2lu
dCBsaWtlICdlcnInCmZvciByZXN0b3JpbmcgdGhlIHByZXZpb3VzIHN0YXRlLgoKQnV0LCBpbiB0
aGlzIGNhc2UsIGV2ZW4gaWYgaGFwcGVuIHRoZSBlcnJvciwgdGhlIGV4Y2VwdGlvbiBoYW5kbGlu
ZwpvZiBleHlub3NfYnVzX2Rpc2FibGVfZWRldigpIGp1c3QgcHJpbnRzIHRoZSBlcnJvciBsb2cg
d2l0aG91dCByZXR1cm4uCgpJIGtuZXcgdGhhdCB0aGlzIGl0IGlzIHBvc3NpYmxlIGJlY2F1c2Ug
dGhlIGV4eW5vc19idXNfZGlzYWJsZV9lZGV2KGJ1cykKd2FzIGNhbGxlZCBhdCB0aGUgZW5kIG9m
IGZ1bmN0aW9uLiBCdXQsIEkgd2FudCB0byBrZWVwIHRoZSBzYW1lIHN0eWxlCmZvciBleGNlcHRp
b24gaGFuZGxpbmcgaWYgdGhlcmUgYXJlIG5vIGFueSBjcml0aWNhbCBiZW5lZml0cy4KCj4+Pgo+
Pj4gLSAgICAgICByZXR1cm4gMDsKPj4+ICsgICAgICAgcmV0dXJuIHJldDsKPj4+ICB9Cj4+PiAg
I2VuZGlmCj4+Pgo+Pj4gLS0KPj4+IDIuMTcuMQo+Pj4KPj4KPj4gTkFDSy4KPj4KPj4gQXMgSSBh
bHJlYWR5IGNvbW1lbnRlZCwgSXQgaGFzIG5ldmVyIGFueSBiZW5lZml0Lgo+PiBJIHRoaW5rIHRo
YXQgaXQgaXMgbm90IHVzZnVsLiBQbGVhc2UgZHJvcCBpdC4KPiAKPiBUaGUgYmVuZWZpdCBmb3Ig
bWUgaXMgY2xlYXIgLSBtYWtlcyB0aGUgY29kZSBlYXNpZXIgdG8gdW5kZXJzdGFuZC4KPiAKPiBC
ZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4gCj4gCgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndv
byBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
