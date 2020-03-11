Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D676F181F7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 18:29:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G9bqX5OdX0G88yO/DzomjJlPYKS8UL0wqcrG/S2L+Rg=; b=cjpdpsu4bIHcIxMKb2IUtjfki
	1u/ZpgA1W8odL8ipSZpBrBhe6zq/dx6DKBqH55LkgZDiih/KLSmVG6JS6wnOCpriEfXFv5OMtGkcs
	3LYHJUao/Dm4GrU//k3FjaDho+lwmKnczNEpjYtia+ncSSUb0zCae2mbdq9zjGe3+ZaSd+Fu3srGq
	Z0OKiELYd7TGx9fl1W0GdbQygsT9fGM/nsh6GnHHcPkeRKU7JsZccM51HUviAt/7zQsXDRj25rGdY
	lphadAyBLbwhgwJ4q6DN/PpwhOUiX/w7uH39j0CtLelHU7tn9uzoKFHj+T7NGrZlgkA16aCmb7nls
	7CnVgoBVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5Ax-0006RQ-RT; Wed, 11 Mar 2020 17:29:47 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5Al-0006O5-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 17:29:37 +0000
Received: from LHREML714-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 05A68A14CC24C52DF43E;
 Wed, 11 Mar 2020 17:29:19 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML714-CAH.china.huawei.com (10.201.108.37) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 11 Mar 2020 17:29:18 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 11 Mar
 2020 17:29:18 +0000
Subject: Re: arm64 system corruption on linux-next?
To: Robin Murphy <robin.murphy@arm.com>, "linux-next@vger.kernel.org"
 <linux-next@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Linuxarm <linuxarm@huawei.com>
References: <8c018ee5-de2a-d948-fcae-feaf1303e160@huawei.com>
 <38086674-4d19-e828-cc75-0e7775ccdc23@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <ecf34768-5ab7-0d4f-9cda-ea4a18b5d5fc@huawei.com>
Date: Wed, 11 Mar 2020 17:29:17 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <38086674-4d19-e828-cc75-0e7775ccdc23@arm.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml735-chm.china.huawei.com (10.201.108.86) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_102936_039165_A3BCB127 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDMvMjAyMCAxNTowNCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IEhpIEpvaG4sCj4gCj4g
T24gMTAvMDMvMjAyMCA2OjM4IHBtLCBKb2huIEdhcnJ5IHdyb3RlOgo+PiBIaSBhbGwsCj4+Cj4+
IE9uIG15IGFybTY0IEh1YXdlaSBEMDYgZGV2IGJvYXJkLCBJIHNlZSB0aGlzIG9uIHNvbWV0aW1l
cyBvbiAKPj4gbGludXgtbmV4dCAyMDIwMDMxMCBqdXN0IGFzIHRoZSBib290IGNvbXBsZXRlczoK
Pj4KPj4gW8KgwqAgNDguNDUyNjc0XSBwY2llcG9ydCAwMDAwOmI0OjAxLjA6IEFkZGluZyB0byBp
b21tdSBncm91cCA0MAo+PiBbwqDCoCA0OC40NzM0MjZdIHJ0Yy1lZmkgcnRjLWVmaS4wOiBzZXR0
aW5nIHN5c3RlbSBjbG9jayB0byAKPj4gMjAyMC0wMy0xMFQxODozMToyOSBVVEMgKDE1ODM4NjUw
ODkpCj4+IFvCoMKgIDQ4LjQ3MzQyNl0gcnRjLWVmaSBydGMtZWZpLjA6IHNldHRpbmcgc3lzdGVt
IGNsb2NrIHRvIAo+PiAyMDIwLTAzLTEwVDE4OjMxOjI5IFVUQyAoMTU4Mzg2NTA4OSkKPj4gW8Kg
wqAgNDguNDg2NzU1XSBoaWQtZ2VuZXJpYyAwMDAzOjEyRDE6MDAwMy4wMDAxOiBpbnB1dDogVVNC
IEhJRCB2MS4xMCAKPj4gS2V5Ym9hcmQgW0tleWJvYXJkL01vdXNlIEtWTSAxLjEuMF0gb24gdXNi
LTAwMDA6N2E6MDEuMC0xLjEvaW5wdXQwCj4+IFvCoMKgIDQ4LjQ4Njc1NV0gaGlkLWdlbmVyaWMg
MDAwMzoxMkQxOjAwMDMuMDAwMTogaW5wdXQ6IFVTQiBISUQgdjEuMTAgCj4+IEtleWJvYXJkIFtL
ZXlib2FyZC9Nb3VzZSBLVk0gMS4xLjBdIG9uIHVzYi0wMDAwOjdhOjAxLjAtMS4xL2lucHV0MAo+
PiBbwqDCoCA0OC40OTEwMzNdIEFMU0EgZGV2aWNlIGxpc3Q6Cj4+IFvCoMKgIDQ4QSBkZXZpY2Ug
bGlzdDoKPj4gW8KgwqAgNDguNTIyMzA0XcKgwqAgTm8gc291bmRjYXJkcyBmb3VuZC4KPj4gW8Kg
wqAgNDguNTIyMzA0XcKgwqAgTm8gc291bmRjYXJkcyBmb3VuZC4KPj4gW8KgwqAgNDguNTI2MzE5
XSBpbnB1dDogS2V5Ym9hcmQvTW91c2UgS1ZNIDEuMS4wIGFzIAo+PiAvZGV2aWNlcy9wY2kwMDAw
OjdhLzAwMDA6N2E6MDEuMC91c2IxLzEtMS8xLTEuMS8xLTEuMToxLjEvMDAwMzoxMkQxOjAwMDMu
MDAwMi9pbnB1dC9pbnB1dDIgCj4+Cj4+IFvCoMKgIDQ4LjUyNjMxOV0gaW5wdXQ6IEtleWJvYXJk
L01vdXNlIEtWTSAxLjEuMCBhcyAKPj4gL2RldmljZXMvcGNpMDAwMDo3YS8wMDAwOjdhOjAxLjAv
dXNiMS8xLTEvMS0xLjEvMS0xLjE6MS4xLzAwMDM6MTJEMTowMDAzLjAwMDIvaW5wdXQvaW5wdXQy
IAo+Pgo+PiBbfFV6Cj4+IO+/ve+/ve+/vXAgWDRuMEpqINCsSCxwfnd277+9Xjvvv71+VHTvv71r
77+9du+/ve+/vSLvv73vv73Cse+/vQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIO+/vXJa77+9LO+/
vSDvv70g77+977+9SGvvv73vv70KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHY377+9QyAo77+977+977+977+9IAo+PiDVue+/vUVe77+9LSB6
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCj4+IO+/vQo+PiDCse+/vSDCoO+/vSDvv73vv73vv70g77+9
XCDvv73vv73vv71wIFg0bjBKaiBw77+9SCxwfnd277+9XjsrflR077+9a++/vXbvv70gIu+/vQo+
PiB377+9Yu+/ve+/ve+/vVDvv71r77+9aO+/vVDvv73vv70u77+9cO+/ve+/ve+/vU7vv71QIFDv
v71Y77+977+9Oe+/vSAw77+9IO+/vWvvv71o77+9UO+/vWku77+9cO+/ve+/ve+/vU7vv73vv70m
77+977+977+977+977+9LsKs77+9alDvv71W77+9diAKPj4gdO+/vVnvv73vv70q77+9du+/ve+/
ve+/ve+/vSDvv71GOe+/vQo+Pgo+Pgo+PiBUaGUgc3lzdGVtIGlzIHN0aWxsIGFsaXZlLCBhcyBr
ZXlwcmVzc2VzIHJlc3BvbmQgd2l0aCBnYXJiYWdlLgo+IAoKSGkgUm9iaW4sCgo+IEZXSVcsIHRo
YXQgbG9va3MgZXZlcnkgYml0IGxpa2Ugc29tZXRoaW5nIGNoYW5naW5nIHRoZSBVQVJUIGJhdWQg
cmF0ZSAKPiB1bmRlciB0aGUgY29uc29sZSdzIGZlZXQsIGVpdGhlciBleHBsaWNpdGx5LCBvciBp
bXBsaWNpdGx5IGJ5IG1lc3NpbmcgCj4gd2l0aCB0aGUgaW5wdXQgY2xvY2sgYmVoaW5kIHRoZSBk
cml2ZXIncyBiYWNrLgoKTWF5YmUsIGJ1dCBJIGRpZG4ndCB0aGluayB0aGF0IHRoZSBrZXJuZWwg
d291bGQga25vdyBhYm91dCB0aGUgVUFSVCAKY2xvY2sgZm9yIEFDUEktYmFzZWQgRlcuCgpBbnl3
YXksIHRvZGF5J3MgbGludXgtbmV4dCBkb2VzIG5vdCBzZWVtIHRvIGhhdmUgdGhlIGlzc3VlIGZy
b20gbXkgCmxpbWl0ZWQgdGVzdGluZy4gSSdsbCBrZWVwIGFuIGV5ZSBvdXQuCgpDaGVlcnMsCkpv
aG4KCj4gCj4gUm9iaW4uCj4gCj4+Cj4+IEZ1bGwgZG1lc2c6Cj4+IGh0dHBzOi8vcGFzdGViaW4u
Y29tL0MyWHkweVVXCj4+Cj4+Cj4+IHY1LjYtcmM0IGlzIG9rIGZyb20gbXkgYXR0ZW1wdHMuCj4+
Cj4+IEFueW9uZSBlbHNlIHNlZSBzdWNoIGFuIGlzc3VlPwo+Pgo+PiBUaGFua3MsCj4+IEpvaG4K
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo+IC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
