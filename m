Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7921515D90D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TxxNHs3F1UGMDmIwWrGpdlYatJLXh97omyWXnV8+ZM0=; b=WgOpVrHtq6xUrtUf6uYqjeqiI
	Jp7KNQpNd4mABQFKU+/iPK5PfHabKW7JxNsNFQkgpEgl887pTQe5LTOhXUEiXbmx796056eS7u1gP
	0wukBWPEMJYV68gJnhrlfq95rb63w2VhOiMXLGPJpyC76fx73hXSdj/HjSgPouu35p0UBwfDo+GOI
	QtlJs9aRMVzbOEUdaAEP8CZMTl3WQtlgyJwE69zLMBmxVGrLbC7lwMNVJNtPwVQTkfTXS/4JmG6TU
	dTwmE8V59jsCM3k91efmDK3uV9uiKe8a+VJ40D+6vLAhqDwJ2VMR2UP0ms/a5HOt55Cser/pvk/UF
	zyPhIaP1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2beh-00017f-RN; Fri, 14 Feb 2020 14:09:19 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2beZ-00016K-OY
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:09:14 +0000
Received: from lhreml704-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 32D03A8611647239498F;
 Fri, 14 Feb 2020 14:09:04 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml704-cah.china.huawei.com (10.201.108.45) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 14 Feb 2020 14:09:03 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 14 Feb
 2020 14:09:03 +0000
Subject: Re: arm64 iommu groups issue
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>, "Will
 Deacon" <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, "Guohanjun (Hanjun Guo)"
 <guohanjun@huawei.com>
References: <9625faf4-48ef-2dd3-d82f-931d9cf26976@huawei.com>
 <4768c541-ebf4-61d5-0c5e-77dee83f8f94@arm.com>
 <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
 <ddc7eaff-c3f9-4304-9b4e-75eff2c66cd5@huawei.com>
 <be464e2a-03d5-0b2e-24ee-96d0d14fd739@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <35fc8d13-b1c1-6a9e-4242-284da7f00764@huawei.com>
Date: Fri, 14 Feb 2020 14:09:02 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <be464e2a-03d5-0b2e-24ee-96d0d14fd739@arm.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_060911_948846_82EC570A 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Saravana Kannan <saravanak@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, iommu <iommu@lists.linux-foundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pj4KPj4gQEAgLTI0MjAsNiArMjQyMSwxMCBAQCB2b2lkIHBjaV9kZXZpY2VfYWRkKHN0cnVjdCBw
Y2lfZGV2ICpkZXYsIHN0cnVjdAo+PiBwY2lfYnVzICpidXMpCj4+ICAgwqDCoMKgwqAgLyogU2V0
IHVwIE1TSSBJUlEgZG9tYWluICovCj4+ICAgwqDCoMKgwqAgcGNpX3NldF9tc2lfZG9tYWluKGRl
dik7Cj4+Cj4+ICvCoMKgwqAgcGFyZW50ID0gZGV2LT5kZXYucGFyZW50Owo+PiArwqDCoMKgIGlm
IChwYXJlbnQgJiYgcGFyZW50LT5idXMgPT0gJnBjaV9idXNfdHlwZSkKPj4gK8KgwqDCoMKgwqDC
oMKgIGRldmljZV9saW5rX2FkZCgmZGV2LT5kZXYsIHBhcmVudCwgRExfRkxBR19BVVRPUFJPQkVf
Q09OU1VNRVIpOwo+PiArCj4+ICAgwqDCoMKgwqAgLyogTm90aWZpZXIgY291bGQgdXNlIFBDSSBj
YXBhYmlsaXRpZXMgKi8KPj4gICDCoMKgwqDCoCBkZXYtPm1hdGNoX2RyaXZlciA9IGZhbHNlOwo+
PiAgIMKgwqDCoMKgIHJldCA9IGRldmljZV9hZGQoJmRldi0+ZGV2KTsKPj4gLS0gCj4+Cj4+IFRo
aXMgd291bGQgd29yaywgYnV0IHRoZSBwcm9ibGVtIGlzIHRoYXQgaWYgdGhlIHBvcnQgZHJpdmVy
IGZhaWxzIGluCj4+IHByb2JpbmcgLSBhbmQgbm90IGp1c3QgZm9yIC1FUFJPQkVfREVGRVIgLSB0
aGVuIHRoZSBjaGlsZCBkZXZpY2Ugd2lsbAo+PiBuZXZlciBwcm9iZS4gVGhpcyB2ZXJ5IHRoaW5n
IGhhcHBlbnMgb24gbXkgZGV2IGJvYXJkLiBIb3dldmVyIHdlIGNvdWxkCj4+IGV4cGFuZCB0aGUg
ZGV2aWNlIGxpbmtzIEFQSSB0byBjb3ZlciB0aGlzIHNvcnQgb2Ygc2NlbmFyaW8uCj4gCj4gWWVz
LCB0aGF0J3MgYW4gdW5kZXNpcmFibGUgaXNzdWUsIGJ1dCBpbiBmYWN0IEkgdGhpbmsgaXQncyBt
b3N0bHkKPiBpbmRpY2F0aXZlIHRoYXQgaW52b2x2aW5nIGRyaXZlcnMgaW4gc29tZXRoaW5nIHdo
aWNoIGlzIGRlc2lnbmVkIHRvCj4gaGFwcGVuIGF0IGEgbGV2ZWwgYmVsb3cgZHJpdmVycyBpcyBz
dGlsbCBmdW5kYW1lbnRhbGx5IHdyb25nIGFuZCBkb29tZWQKPiB0byBiZSBmcmFnaWxlIGF0IGJl
c3QuCgpSaWdodCwgYW5kIGV2ZW4gd29yc2UgaXMgdGhhdCBpdCByZWxpZXMgb24gdGhlIHBvcnQg
ZHJpdmVyIGV2ZW4gZXhpc3RpbmcgCmF0IGFsbC4KCkFsbCB0aGlzIGlvbW11IGdyb3VwIGFzc2ln
bm1lbnQgc2hvdWxkIGJlIHRha2VuIG91dHNpZGUgZGV2aWNlIGRyaXZlciAKcHJvYmUgcGF0aHMu
CgpIb3dldmVyIHdlIGNvdWxkIHN0aWxsIGNvbnNpZGVyIGRldmljZSBsaW5rcyBmb3Igc3luYydp
bmcgdGhlIFNNTVUgYW5kIAplYWNoIGRldmljZSBwcm9iaW5nLgoKPiAKPiBBbm90aGVyIHRob3Vn
aHQgdGhhdCBjcm9zc2VzIG15IG1pbmQgaXMgdGhhdCB3aGVuIHBjaV9kZXZpY2VfZ3JvdXAoKQo+
IHdhbGtzIHVwIHRvIHRoZSBwb2ludCBvZiBBQ1MgaXNvbGF0aW9uIGFuZCBkb2Vzbid0IGZpbmQg
YW4gZXhpc3RpbmcKPiBncm91cCwgaXQgY2FuIHN0aWxsIGluZmVyIHRoYXQgZXZlcnl0aGluZyBp
dCB3YWxrZWQgcGFzdCAqc2hvdWxkKiBiZSBwdXQKPiBpbiB0aGUgc2FtZSBncm91cCBpdCdzIHRo
ZW4gZXZlbnR1YWxseSBnb2luZyB0byByZXR1cm4uIFVuZm9ydHVuYXRlbHkgSQo+IGNhbid0IHNl
ZSBhbiBvYnZpb3VzIHdheSBmb3IgaXQgdG8gYWN0IG9uIHRoYXQga25vd2xlZGdlLCB0aG91Z2gs
IHNpbmNlCj4gcmVjdXJzaXZlIGlvbW11X3Byb2JlX2RldmljZSgpIGlzIHVubGlrZWx5IHRvIGVu
ZCB3ZWxsLgoKSSdkIGJlIGluY2xpbmVkIG5vdCB0byBjaGFuZ2UgdGhhdCBjb2RlLgoKPiAKPj4g
QXMgZm9yIGFsdGVybmF0aXZlcywgaXQgbG9va3MgcHJldHR5IGRpZmZpY3VsdCB0byBtZSB0byBk
aXNhc3NvY2lhdGUgdGhlCj4+IGdyb3VwIGFsbG9jYXRpb24gZnJvbSB0aGUgZG1hX2NvbmZpZ3Vy
ZSBwYXRoLgo+IAo+IEluZGVlZCBpdCdzIG5vbi10cml2aWFsLCBidXQgaXQgcmVhbGx5IGRvZXMg
bmVlZCBjbGVhbmluZyB1cCBhdCBzb21lIHBvaW50Lgo+IAo+IEhhdmluZyBqdXN0IGhhZCB5ZXQg
YW5vdGhlciBzcGFyaywgZG9lcyBzb21ldGhpbmcgbGlrZSB0aGUgdW50ZXN0ZWQKPiBzdXBlci1o
YWNrIGJlbG93IHdvcmsgYXQgYWxsPyAKCkkgdHJpZWQgaXQgYW5kIGl0IGRvZXNuJ3QgKHlldCkg
d29yay4KClNvIHdoZW4gd2UgdHJ5IAppb21tdV9idXNfcmVwbGF5KCktPmFkZF9pb21tdV9ncm91
cCgpLT5pb21tdV9wcm9iZV9kZXZpY2UoKS0+YXJtX3NtbXVfYWRkX2RldmljZSgpLAp0aGUgaW9t
bXVfZndzcGVjIGlzIHN0aWxsIE5VTEwgZm9yIHRoYXQgZGV2aWNlIC0gdGhpcyBpcyBub3Qgc2V0
IHVudGlsIApsYXRlciB3aGVuIHRoZSBkZXZpY2UgZHJpdmVyIGlzIGdvaW5nIHRvIGZpbmFsbHkg
cHJvYmUgaW4gCmlvcnRfaW9tbXVfeGxhdGUoKS0+aW9tbXVfZndzcGVjX2luaXQoKSwgYW5kIGl0
J3MgdG9vIGxhdGUuLi4KCkFuZCB0aGlzIGxvb2tzIHRvIGJlIHRoZSByZWFzb24gZm9yIHdoaWNo
IGN1cnJlbnQgCmlvbW11X2J1c19pbml0KCktPmJ1c19mb3JfZWFjaF9kZXZpY2UoLi4uLCBhZGRf
aW9tbXVfZ3JvdXApIGZhaWxzIGFsc28uCgpPbiB0aGlzIGN1cnJlbnQgY29kZSBtZW50aW9uZWQs
IHRoZSBwcmluY2lwbGUgb2YgdGhpcyBzZWVtcyB3cm9uZyB0byBtZSAKLSB3ZSBjYWxsIGJ1c19m
b3JfZWFjaF9kZXZpY2UoLi4uLCBhZGRfaW9tbXVfZ3JvdXApIGZvciB0aGUgZmlyc3QgU01NVSAK
aW4gdGhlIHN5c3RlbSB3aGljaCBwcm9iZXMsIGJ1dCB3ZSBhdHRlbXB0IHRvIGFkZF9pb21tdV9n
cm91cCgpIGZvciBhbGwgCmRldmljZXMgb24gdGhlIGJ1cywgZXZlbiB0aG91Z2ggdGhlIFNNTVUg
Zm9yIHRoYXQgZGV2aWNlIG1heSB5ZXQgdG8gaGF2ZSAKcHJvYmVkLgoKVGhhbmtzLApKb2huCgpJ
IGRvdWJ0IGl0J3MgYSB2aWFibGUgZGlyZWN0aW9uIHRvIHRha2UgaW4KPiBpdHNlbGYsIGJ1dCBp
dCBjb3VsZCBiZSBmb29kIGZvciB0aG91Z2h0IGlmIGl0IGF0IGxlYXN0IHByb3ZlcyB0aGUgY29u
Y2VwdC4KPiAKPiBSb2Jpbi4KPiAKPiAtLS0tLT44LS0tLS0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pb21tdS9hcm0tc21tdS12My5jIGIvZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jCj4gaW5k
ZXggYWEzYWMyYTAzODA3Li41NTRjZGU3NmM3NjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9pb21t
dS9hcm0tc21tdS12My5jCj4gKysrIGIvZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jCj4gQEAg
LTM4NDEsMjAgKzM4NDEsMjAgQEAgc3RhdGljIGludCBhcm1fc21tdV9zZXRfYnVzX29wcyhzdHJ1
Y3QgaW9tbXVfb3BzCj4gKm9wcykKPiAgICAJaW50IGVycjsKPiAKPiAgICAjaWZkZWYgQ09ORklH
X1BDSQo+IC0JaWYgKHBjaV9idXNfdHlwZS5pb21tdV9vcHMgIT0gb3BzKSB7Cj4gKwlpZiAoMSkg
ewo+ICAgIAkJZXJyID0gYnVzX3NldF9pb21tdSgmcGNpX2J1c190eXBlLCBvcHMpOwo+ICAgIAkJ
aWYgKGVycikKPiAgICAJCQlyZXR1cm4gZXJyOwo+ICAgIAl9Cj4gICAgI2VuZGlmCj4gICAgI2lm
ZGVmIENPTkZJR19BUk1fQU1CQQo+IC0JaWYgKGFtYmFfYnVzdHlwZS5pb21tdV9vcHMgIT0gb3Bz
KSB7Cj4gKwlpZiAoMSkgewo+ICAgIAkJZXJyID0gYnVzX3NldF9pb21tdSgmYW1iYV9idXN0eXBl
LCBvcHMpOwo+ICAgIAkJaWYgKGVycikKPiAgICAJCQlnb3RvIGVycl9yZXNldF9wY2lfb3BzOwo+
ICAgIAl9Cj4gICAgI2VuZGlmCj4gLQlpZiAocGxhdGZvcm1fYnVzX3R5cGUuaW9tbXVfb3BzICE9
IG9wcykgewo+ICsJaWYgKDEpIHsKPiAgICAJCWVyciA9IGJ1c19zZXRfaW9tbXUoJnBsYXRmb3Jt
X2J1c190eXBlLCBvcHMpOwo+ICAgIAkJaWYgKGVycikKPiAgICAJCQlnb3RvIGVycl9yZXNldF9h
bWJhX29wczsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pb21tdS5jIGIvZHJpdmVycy9p
b21tdS9pb21tdS5jCj4gaW5kZXggNjYwZWVhOGQxZDJmLi5iODFhZTJiNGQ0ZmIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9pb21tdS9pb21tdS5jCj4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdS5j
Cj4gQEAgLTE1NDIsNiArMTU0MiwxNCBAQCBzdGF0aWMgaW50IGlvbW11X2J1c19pbml0KHN0cnVj
dCBidXNfdHlwZSAqYnVzLAo+IGNvbnN0IHN0cnVjdCBpb21tdV9vcHMgKm9wcykKPiAgICAJcmV0
dXJuIGVycjsKPiAgICB9Cj4gCj4gK3N0YXRpYyBpbnQgaW9tbXVfYnVzX3JlcGxheShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEpCj4gK3sKPiArCWlmIChkZXYtPmlvbW11X2dyb3VwKQo+
ICsJCXJldHVybiAwOwo+ICsKPiArCXJldHVybiBhZGRfaW9tbXVfZ3JvdXAoZGV2LCBkYXRhKTsK
PiArfQo+ICsKPiAgICAvKioKPiAgICAgKiBidXNfc2V0X2lvbW11IC0gc2V0IGlvbW11LWNhbGxi
YWNrcyBmb3IgdGhlIGJ1cwo+ICAgICAqIEBidXM6IGJ1cy4KPiBAQCAtMTU2NCw2ICsxNTcyLDkg
QEAgaW50IGJ1c19zZXRfaW9tbXUoc3RydWN0IGJ1c190eXBlICpidXMsIGNvbnN0Cj4gc3RydWN0
IGlvbW11X29wcyAqb3BzKQo+ICAgIAkJcmV0dXJuIDA7Cj4gICAgCX0KPiAKPiArCWlmIChidXMt
PmlvbW11X29wcyA9PSBvcHMpCj4gKwkJcmV0dXJuIGJ1c19mb3JfZWFjaF9kZXYoYnVzLCBOVUxM
LCBOVUxMLCBpb21tdV9idXNfcmVwbGF5KTsKPiArCj4gICAgCWlmIChidXMtPmlvbW11X29wcyAh
PSBOVUxMKQo+ICAgIAkJcmV0dXJuIC1FQlVTWTsKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
