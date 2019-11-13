Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F295FA7DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 05:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Subject:To:MIME-Version:From:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcDm8x/sBNresCxIu9LUq/Sonfy7kuf6Koq+5aCwW5o=; b=QFWZ+vRytkoT6M
	Gz3wlJmLZrarQb2rmzblnLJNE0sVxqQp+WRhJM3NKUy/jG/jctjNBHydVMWkbaqOgkDWElTzvmrOD
	oYVUoERnq6QowM9GWuoxXVr3tXZ4VcPjP3QJDBkSa2vsbNha1zqylRzWJjfwumV1KqT/jq0mADusI
	ZUVVxkXACwqsXRK1Mx7jv4PnKPSzq4wYCTjdiKg5KTUMfxrSsqqg8cdE2ABXJBeRtbwnd3E8nKd/y
	zsy0RYEBwFaHuybYf9ZdnxhA6IXhre2VD9Ba1NC0dr8WGykw+60cIMtUDdFpS80gHNWjCb/tm78dD
	UQBS+ifsz+IGl9ucNlnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUk2D-0007fK-QJ; Wed, 13 Nov 2019 04:13:37 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUk23-0007ef-Kc
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 04:13:29 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191113041324epoutp022679ecac1a1eb0d7c4982cf629cbb796~WnZn8AN3n2648426484epoutp020
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 04:13:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191113041324epoutp022679ecac1a1eb0d7c4982cf629cbb796~WnZn8AN3n2648426484epoutp020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573618404;
 bh=mJFA/njgmP4obhVAaTLVxm27YK22M38R7AAIgIdwODE=;
 h=Date:From:Reply-To:To:CC:Subject:In-Reply-To:References:From;
 b=pU86+m866MOt67BrCGH4n2oGel0AQuVz8It5Qdu6OKxG6/HezxJK8AHOJ2d9sCYQA
 9fUF59gVHOQSNNij9NjdFv9HG1JeKKYBOBWLMa4ZU4Q4zyJ5Ol/+NcTmfAlhQzcB0n
 T10iNBIGAIxhm5xuK9mxk1c7T8PRjcGoRGbPXp8A=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191113041324epcas1p4fed4f63a3c2c8f2eb1aca61bb4446daf~WnZnm0RY30892708927epcas1p4j;
 Wed, 13 Nov 2019 04:13:24 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.153]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47CWSJ2YxPzMqYkc; Wed, 13 Nov
 2019 04:13:20 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 1F.C6.04135.0E28BCD5; Wed, 13 Nov 2019 13:13:20 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191113041319epcas1p3869db73a60fe98be01c5c65149a709c9~WnZjXSql-0607606076epcas1p3Y;
 Wed, 13 Nov 2019 04:13:19 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191113041319epsmtrp2d208b704cd4fe15d818169d1abc89a39~WnZjWqNuv1978319783epsmtrp2g;
 Wed, 13 Nov 2019 04:13:19 +0000 (GMT)
X-AuditID: b6c32a36-7e3ff70000001027-08-5dcb82e0ca3f
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5B.CC.25663.FD28BCD5; Wed, 13 Nov 2019 13:13:19 +0900 (KST)
Received: from [10.113.221.222] (unknown [10.113.221.222]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191113041319epsmtip251dbdd65ca070b8cdd09d837cdcbca9e~WnZjFf1qx1180111801epsmtip2Y;
 Wed, 13 Nov 2019 04:13:19 +0000 (GMT)
Message-ID: <5DCB8380.3070304@samsung.com>
Date: Wed, 13 Nov 2019 13:16:00 +0900
From: Seung-Woo Kim <sw0312.kim@samsung.com>
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:16.0) Gecko/20121011
 Thunderbird/16.0.1
MIME-Version: 1.0
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: perf: Report arm pc registers for compat perf
In-Reply-To: <20191112094037.GA32269@lakrids.cambridge.arm.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMJsWRmVeSWpSXmKPExsWy7bCmvu6DptOxBrv3C1i8X9bDaLHp8TVW
 i8u75rBZLL1+kclix7yDjBYtd0wd2DzWzFvD6LFpVSebx+Yl9R59W1YxenzeJBfAGpVtk5Ga
 mJJapJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQO0X0mhLDGnFCgU
 kFhcrKRvZ1OUX1qSqpCRX1xiq5RakJJTYFmgV5yYW1yal66XnJ9rZWhgYGQKVJiQndGy/BRL
 wQSxin/bnzM3MB4T7GLk5JAQMJH40nibtYuRi0NIYAejxII706GcT4wSu/+vZYZwvjFK/L6/
 kAWmZdaBz1CJvYwSl7feY4Rw3jNKzFu9GKyKV0BL4vqh5WA2i4CqxPuWbewgNpuAjsT+Jb9Z
 QWwhAQWJC1tnsIHYogJhEjMO9jNC9ApKnJz5BKxXREBdomfXFxaQBcwCXYwSa9+/ZgJJCAt4
 Smzt3gNWxClgLzHl7CSwOLOAvETz1tlg50kI3GaTuDX7PzvE3S4Sbe9mQ9nCEq+Ob4GypSQ+
 v9vLBmFXS2yf8JMdormDUaKnvRHqaWOJ/UsnA23gANqgKbF+lz5EWFFi5++5jBCL+STefe1h
 BSmREOCV6GgTgihRkdh5dBIbRFhKYtaGYIiwh8Syg0tYJzAqzkLy8iwkH8xC2LWAkXkVo1hq
 QXFuemqxYYERchRvYgQnSC2zHYyLzvkcYhTgYFTi4ZVYeCpWiDWxrLgy9xCjBAezkgjvjooT
 sUK8KYmVValF+fFFpTmpxYcYTYGxM5FZSjQ5H5i880riDU2NjI2NLUwMzUwNDZXEeR2XL40V
 EkhPLEnNTk0tSC2C6WPi4JRqYFw6b3PteetrPysT4vJYpnD0F8rnKNsrfCnfyuXU2/z9HZ/Y
 x1NXMrL+yv8x350/USBBNVyhvca+uyBIxu/6kf2y69c289+PP7ZOtTrviaLLzSrPzrzSlYYd
 P5p/XeuYEL50839x5myFj6H89QLRkicCPl2x9vo/473dljNXm6ewHpnzus0tV4mlOCPRUIu5
 qDgRAIQzAsOmAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrALMWRmVeSWpSXmKPExsWy7bCSvO79ptOxBh+7ZC3eL+thtNj0+Bqr
 xeVdc9gsll6/yGSxY95BRouWO6YObB5r5q1h9Ni0qpPNY/OSeo++LasYPT5vkgtgjeKySUnN
 ySxLLdK3S+DKaFl+iqVggljFv+3PmRsYjwl2MXJySAiYSMw68Jm5i5GLQ0hgN6PEibVTmCAS
 UhJzv21n7GLkALKFJQ4fLoaoecso8eDdTUaQGl4BLYnrh5azgNgsAqoS71u2sYPYbAI6EvuX
 /GYFsYUEFCQubJ3BBmKLCoRI/Pp4hRWiV1Di5MwnYL0iAuoSPbu+sIAsYBboZpSY3/IVLCEs
 4CmxtXsPC8Tm04wSV6dtAOvmFLCXmHJ2EhPIdcxA3evnCYGEmQXkJZq3zmaewCg0C8mOWQhV
 s5BULWBkXsUomVpQnJueW2xYYJSXWq5XnJhbXJqXrpecn7uJERwPWlo7GE+ciD/EKMDBqMTD
 e2DeqVgh1sSy4srcQ4wSHMxKIrw7Kk7ECvGmJFZWpRblxxeV5qQWH2KU5mBREueVzz8WKSSQ
 nliSmp2aWpBaBJNl4uCUamBMarrl/utGAGO/cm/+RGFWsdeLNa58r652ZOnK7yuRfipgGFJp
 /0yTmd1UROt32sKA8wee7dovw8tUsTaUU0zJ4AWvzzluITmN94LWWhPvq3iaHXt5+p370X7l
 07q6EzsivP6ExaZXdczS2HHgs8jNJeVhJiYhn7J3JMc63968U9xkkeVvcyWW4oxEQy3mouJE
 AEKcHMyDAgAA
X-CMS-MailID: 20191113041319epcas1p3869db73a60fe98be01c5c65149a709c9
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191112005902epcas1p2d9dfa6a29f2c57669b1c1eb58517016d
References: <CGME20191112005902epcas1p2d9dfa6a29f2c57669b1c1eb58517016d@epcas1p2.samsung.com>
 <1573520501-29195-1-git-send-email-sw0312.kim@samsung.com>
 <20191112094037.GA32269@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_201327_917432_877CFAE3 
X-CRM114-Status: GOOD (  25.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: sw0312.kim@samsung.com
Cc: sungguk.na@samsung.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyayBSdXRsYW5kLAoKT24gMjAxOeuFhCAxMeyblCAxMuydvCAxODo0MCwgTWFyayBSdXRs
YW5kIHdyb3RlOgo+IE9uIFR1ZSwgTm92IDEyLCAyMDE5IGF0IDEwOjAxOjQxQU0gKzA5MDAsIFNl
dW5nLVdvbyBLaW0gd3JvdGU6Cj4+IElmIHBlcmYgaXMgYnVpbHQgYXMgYXJtIDMyLWJpdCwgaXQg
b25seSByZWFkcyAxNSByZWdpc3RlcnMgYXMgYXJtCj4+IDMyLWJpdCByZWdpc3RlciBtYXAgYW5k
IHRoaXMgYnJlYWtzIGR3YXJmIGNhbGwtY2hhaW4gaW4gY29tcGF0Cj4+IHBlcmYgYmVjYXVzZSBw
YyByZWdpc3RlciBpbmZvcm1hdGlvbiBpcyBub3QgZmlsbGVkLgo+PiBSZXBvcnQgYXJtIHBjIHJl
Z2lzdGVycyBmb3IgMzItYml0IGNvbXBhdCBwZXJmLgo+Pgo+PiBXaXRob3V0IHRoaXMsIGFybSAz
Mi1iaXQgcGVyZiBkd2FyZiBjYWxsLWdyYXBoIHNob3dzIGJlbG93Cj4+IHZlcmJvc2UgbWVzc2Fn
ZToKPj4gICB1bndpbmQ6IHJlZyAxNSwgdmFsIDAKPj4gICB1bndpbmQ6IHJlZyAxMywgdmFsIGZm
YmM2MzYwCj4+ICAgdW53aW5kOiBubyBtYXAgZm9yIDAKPj4KPj4gU2lnbmVkLW9mZi1ieTogU2V1
bmctV29vIEtpbSA8c3cwMzEyLmtpbUBzYW1zdW5nLmNvbT4KPj4gLS0tCj4+ICBhcmNoL2FybTY0
L2tlcm5lbC9wZXJmX3JlZ3MuYyB8ICAgIDIgKysKPj4gIDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9r
ZXJuZWwvcGVyZl9yZWdzLmMgYi9hcmNoL2FybTY0L2tlcm5lbC9wZXJmX3JlZ3MuYwo+PiBpbmRl
eCAwYmJhYzYxLi5kNDE3MmU3IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9wZXJm
X3JlZ3MuYwo+PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9wZXJmX3JlZ3MuYwo+PiBAQCAtMjQs
NiArMjQsOCBAQCB1NjQgcGVyZl9yZWdfdmFsdWUoc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIGludCBp
ZHgpCj4+ICAJCQlyZXR1cm4gcmVncy0+Y29tcGF0X3NwOwo+PiAgCQlpZiAoKHUzMilpZHggPT0g
UEVSRl9SRUdfQVJNNjRfTFIpCj4+ICAJCQlyZXR1cm4gcmVncy0+Y29tcGF0X2xyOwo+PiArCQlp
ZiAoKHUzMilpZHggPT0gMTUpIC8qIFBFUkZfUkVHX0FSTV9QQyAqLwo+PiArCQkJcmV0dXJuIHJl
Z3MtPnBjOwo+PiAgCX0KPiAKPiBUaGlzIGRvZXNuJ3QgbG9vayBxdWl0ZSByaWdodCB0byBtZSwg
c2luY2UgcGVyZl9yZWdzX3ZhbHVlKCkgaXMKPiBjb25zdW1pbmcgdGhlIGFybTY0IGluZGV4IGZv
ciBhbGwgb3RoZXIgcmVnaXN0ZXJzIChlLmcuIHRoZSBMUiwgaW4gdGhlCj4gcGF0Y2ggY29udGV4
dCkuCj4gCj4gaS5lLiB0aGlzIGlzIGRlc2lnbmVkIGZvciBhIG5hdGl2ZSBhcm02NCBjYWxsZXIs
IGFuZCB0aGUgZml4dXAgYWxsb3dzIGl0Cj4gdG8gdmlldyBhIGNvbXBhdCB0YXNrJ3MgcmVnaXN0
ZXJzIGFzLWlmIGl0IHdlcmUgbmF0aXZlLgo+IAo+IEhvdyBkb2VzIHRoaXMgd29yayBmb3IgYSBu
YXRpdmUgYXJtNjQgcGVyZiBpbnZvY2F0aW9uIHdpdGggYSBjb21wYXQKPiB0YXNrPyBJIGFzc3Vt
ZSBpdCBjb25zdW1lcnMgcmVncy0+cGMsIGFuZCB3b3JrcyBhcyBleHBlY3RlZD8KCkluIG5hdGl2
ZSBhcm02NCBwZXJmLCBjb21wYXQgdGFzayByZWdpc3RlcnMgYXJlIHNldCBhcyBhcm02NCByZWdp
c3RlcgptYXAsIGFuZCBzcCwgbHIsIGFuZCBwYyBhcmUgc2V0IHByb3Blcmx5LiBCdXQgY29tcGF0
X3NwIGlzIGZyb20gcmVnc1sxM10KYW5kIGNvbXBhdF9sciBpcyBmcm9tIHJlZ3NbMTRdLCBzbyBz
YW1lIHJlZ2lzdGVyIHZhbHVlcyBhcmUgc2V0IGZvcgpyZWdzWzEzXS9lZ3MtPnNwIGFuZCByZWdz
WzE0XS9yZWdzLT5sci4gV2l0aCB0aGlzIGNoYW5nZSwgaXQgc2V0cwpyZWdzWzE1XSBzYW1lIHdp
dGggcmVncy0+cGMsIGJ1dCB0aGUgcmVnaXN0ZXIgaXMgbm90IHVzZSBhdCBsZWFzdCBmb3IKYXJt
IDMyLWJpdCBjb21wYXQgYmluYXJ5IGNhbGxjaGFpbiwgc28gbm8gaXNzdWUgYXMgZmFyIGFzIEkg
dW5kZXJzdG9vZAphbmQgdGVzdGVkLgoKPiAKPiBJIHN1c3BlY3Qgd2UgbmVlZCBzZXBhcmF0ZSBu
YXRpdmUgYW5kIGNvbXBhdCBmb3JtcyBvZiB0aGlzIGZ1bmN0aW9uLCBidXQKPiB0aGVuIGl0J3Mg
bm90IGVudGlyZWx5IGNsZWFyIGhvdyB0aGlzIHNob3VsZCB3b3JrIC0tIGhvdyBkb2VzIHRoaXMg
d29yawo+IGZvciBhIGNvbXBhdCBwZXJmIGFuYWx5c2luZyBhIG5hdGl2ZSBhcm02NCBiaW5hcnk/
CgpJIGRpZG4ndCBleHBlY3QgbmF0aXZlIGFybTY0IGJpbmFyeSBjYWxsY2hhaW4gaXMgcG9zc2li
bGUgdG8gZ2V0IGZyb20KYXJtIDMyLWJpdCBwZXJmLgoKSW4gbXkgdGVzdCB3aXRoIDMyLWJpdCBj
b21wYXQgcGVyZiwgaXQgc2V0cyBwZXJmCmV2ZW50LT5hdHRyLnNhbXBsZV9yZWdzX3VzZXIgYXMg
MHhmZmZmLCB3aGljaCBpcyBtYXRjaGVkIHdpdGggMzItYml0CmFybSwgYnV0IGluIGFybTY0IHBl
cmYgcGFydCwgaXQgY2Fubm90IGJlIGFjY2Vzc2VkLiBJZiB0aGVyZSBpcyB3YXkgdG8KY2hlY2sg
aXQsIGl0IGlzIHBvc3NpYmxlIHRvIHNldCBkaWZmZXJlbmNlIHJlZ2lzdGVyIGZvcm0uIEFueXdh
eSwgaW4gdGhlCmNhc2UsIG5hdGl2ZSBhcm02NCByZWdpc3RlciBtYXAgaXMgc3RpbGwgbm90IGZ1
bGx5IHJlcG9ydGVkIHRvIDMyLWJpdApjb21wYXQgcGVyZi4KCgpUaGFua3MsCi0gU2V1bmctV29v
IEtpbQoKPiAKPiBUaGFua3MsCj4gTWFyay4KPiAKPiAKCi0tIApTZXVuZy1Xb28gS2ltClNhbXN1
bmcgUmVzZWFyY2gKLS0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
