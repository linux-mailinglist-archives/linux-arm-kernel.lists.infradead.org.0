Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EBBEDFDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:18:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EayE6gCMwFTS5NWe0sZxtsqp82/b2CZxeZr7YGRKxRU=; b=NV+qkHqCTojgS+ew4iexCw1EH
	XTSqgoRhu859p7llVrHuVC8/SvaRfZqm1c29bsxc1hJYqpnsyjbtgrgm4Y8W/76lQfXrm7cKwWvD/
	r5zc+2BzW6Prv00IIFttbSJAMS3pqHp1tPqBeRaZtq2IczfCuIay7tJa/R4mSdKj5WkBkMMTCVzNj
	BosRxkvMif9VS/0G5iaxPpN6fcx0wwRCbBOJP48ycad39Qh5vhjtIYa2aFUrDQbJ0O4au6F6iPs30
	2vIaqxrUhQ+92GnQXTN0ocdiCj9gzzml4r81lduquntUQudPYRmmA+dVIXslKbmKdSPMX4q/k6dCH
	hcm9o5YuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbJL-0006Eu-8j; Mon, 04 Nov 2019 12:18:19 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbJD-0006Ct-IF
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 12:18:13 +0000
Received: from lhreml703-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 10DD0AD4A230D753F85C;
 Mon,  4 Nov 2019 12:18:03 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml703-cah.china.huawei.com (10.201.108.44) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 4 Nov 2019 12:18:02 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Mon, 4 Nov 2019
 12:18:02 +0000
Subject: Re: arm64 iommu groups issue
From: John Garry <john.garry@huawei.com>
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>, "Will
 Deacon" <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, "Guohanjun (Hanjun Guo)"
 <guohanjun@huawei.com>
References: <9625faf4-48ef-2dd3-d82f-931d9cf26976@huawei.com>
 <4768c541-ebf4-61d5-0c5e-77dee83f8f94@arm.com>
 <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
Message-ID: <abea92b0-7e6c-a3c8-fef3-bc8aabe93436@huawei.com>
Date: Mon, 4 Nov 2019 12:18:01 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_041811_746718_07A97523 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, iommu <iommu@lists.linux-foundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KwoKT24gMTkvMDkvMjAxOSAxNTozNSwgSm9obiBHYXJyeSB3cm90ZToKPiBPbiAxOS8wOS8yMDE5
IDE0OjI1LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+PiBXaGVuIHRoZSBwb3J0IGV2ZW50dWFsbHkg
cHJvYmVzIGl0IGdldHMgYSBuZXcsIHNlcGFyYXRlIGdyb3VwLgo+Pj4KPj4+IFRoaXMgYWxsIHNl
ZW1zIHRvIGJlIGFzIHRoZSBidWlsdC1pbiBtb2R1bGUgaW5pdCBvcmRlcmluZyBpcyBhcwo+Pj4g
Zm9sbG93czogcGNpZXBvcnQgZHJ2LCBzbW11IGRydiwgbWx4NSBkcnYKPj4+Cj4+PiBJIG5vdGlj
ZSB0aGF0IGlmIEkgYnVpbGQgdGhlIG1seDUgZHJ2IGFzIGEga28gYW5kIGluc2VydCBhZnRlciBi
b290LAo+Pj4gYWxsIGZ1bmN0aW9ucyArIHBjaWVwb3J0IGFyZSBpbiB0aGUgc2FtZSBncm91cDoK
Pj4+Cj4+PiBbwqDCoCAxMS41MzAwNDZdIGhpc2lfc2FzX3YyX2h3IEhJU0kwMTYyOjAxOiBBZGRp
bmcgdG8gaW9tbXUgZ3JvdXAgMAo+Pj4gW8KgwqAgMTcuMzAxMDkzXSBobnNfZHNhZiBISVNJMDBC
MjowMDogQWRkaW5nIHRvIGlvbW11IGdyb3VwIDEKPj4+IFvCoMKgIDE4Ljc0MzYwMF0gZWhjaS1w
bGF0Zm9ybSBQTlAwRDIwOjAwOiBBZGRpbmcgdG8gaW9tbXUgZ3JvdXAgMgo+Pj4gW8KgwqAgMjAu
MjEyMjg0XSBwY2llcG9ydCAwMDAyOmY4OjAwLjA6IEFkZGluZyB0byBpb21tdSBncm91cCAzCj4+
PiBbwqDCoCAyMC4zNTYzMDNdIHBjaWVwb3J0IDAwMDQ6ODg6MDAuMDogQWRkaW5nIHRvIGlvbW11
IGdyb3VwIDQKPj4+IFvCoMKgIDIwLjQ5MzMzN10gcGNpZXBvcnQgMDAwNTo3ODowMC4wOiBBZGRp
bmcgdG8gaW9tbXUgZ3JvdXAgNQo+Pj4gW8KgwqAgMjAuNzAyOTk5XSBwY2llcG9ydCAwMDBhOjEw
OjAwLjA6IEFkZGluZyB0byBpb21tdSBncm91cCA2Cj4+PiBbwqDCoCAyMC44NTkxODNdIHBjaWVw
b3J0IDAwMGM6MjA6MDAuMDogQWRkaW5nIHRvIGlvbW11IGdyb3VwIDcKPj4+IFvCoMKgIDIwLjk5
NjE0MF0gcGNpZXBvcnQgMDAwZDozMDowMC4wOiBBZGRpbmcgdG8gaW9tbXUgZ3JvdXAgOAo+Pj4g
W8KgwqAgMjEuMTUyNjM3XSBzZXJpYWwgMDAwMjpmOTowMC4wOiBBZGRpbmcgdG8gaW9tbXUgZ3Jv
dXAgMwo+Pj4gW8KgwqAgMjEuMzQ2OTkxXSBzZXJpYWwgMDAwMjpmOTowMC4xOiBBZGRpbmcgdG8g
aW9tbXUgZ3JvdXAgMwo+Pj4gW8KgIDEwMC43NTQzMDZdIG1seDVfY29yZSAwMDBhOjExOjAwLjA6
IEFkZGluZyB0byBpb21tdSBncm91cCA2Cj4+PiBbwqAgMTAxLjQyMDE1Nl0gbWx4NV9jb3JlIDAw
MGE6MTE6MDAuMTogQWRkaW5nIHRvIGlvbW11IGdyb3VwIDYKPj4+IFvCoCAyOTIuNDgxNzE0XSBt
bHg1X2NvcmUgMDAwYToxMTowMC4yOiBBZGRpbmcgdG8gaW9tbXUgZ3JvdXAgNgo+Pj4gW8KgIDI5
My4yODEwNjFdIG1seDVfY29yZSAwMDBhOjExOjAwLjM6IEFkZGluZyB0byBpb21tdSBncm91cCA2
Cj4+Pgo+Pj4gVGhpcyBkb2VzIHNlZW0gbGlrZSBhIHByb2JsZW0gZm9yIGFybTY0IHBsYXRmb3Jt
cyB3aGljaCBkb24ndCBzdXBwb3J0Cj4+PiBBQ1MsIHlldCBlbmFibGUgYW4gU01NVS4gTWF5YmUg
YWxzbyBhIHByb2JsZW0gZXZlbiBpZiB0aGV5IGRvIHN1cHBvcnQKPj4+IEFDUy4KPj4+Cj4+PiBP
cGluaW9uPwo+Pgo+IAo+IEhpIFJvYmluLAo+IAo+PiBZZWFoLCB0aGlzIGlzIGxlc3MgdGhhbiBp
ZGVhbC4KPiAKPiBGb3Igc3VyZS4gT3VyIHByb2R1Y3Rpb24gRDA1IGJvYXJkcyBkb24ndCBzaGlw
IHdpdGggdGhlIFNNTVUgZW5hYmxlZCBpbiAKPiBCSU9TLCBidXQgaXQgd291bGQgYmUgc2xpZ2h0
bHkgY29uY2VybmluZyBpbiB0aGlzIHJlZ2FyZCBpZiB0aGV5IGRpZC4KPiAKPiAgPiBPbmUgd2F5
IHRvIGJvZGdlIGl0IG1pZ2h0IGJlIHRvIG1ha2UKPj4gcGNpX2RldmljZV9ncm91cCgpIGFsc28g
d2FsayBkb3dud2FyZHMgdG8gc2VlIGlmIGFueSBub24tQUNTLWlzb2xhdGVkCj4+IGNoaWxkcmVu
IGFscmVhZHkgaGF2ZSBhIGdyb3VwLCByYXRoZXIgdGhhbiBhc3N1bWluZyB0aGF0IGdyb3VwcyBn
ZXQKPj4gYWxsb2NhdGVkIGluIGhpZXJhcmNoaWNhbCBvcmRlciwgYnV0IHRoYXQncyBmYXIgZnJv
bSBpZGVhbC4KPiAKPiBBZ3JlZS4KPiAKPiBNeSBvd24gd29ya2Fyb3VuZCB3YXMgdG8gaGFjayB0
aGUgbWVudGlvbmVkIGlvcnQgY29kZSB0byBkZWZlciB0aGUgUEYgCj4gcHJvYmUgaWYgdGhlIHBh
cmVudCBwb3J0IGhhZCBhbHNvIHlldCB0byBwcm9iZS4KPiAKPj4KPj4gVGhlIHVuZGVybHlpbmcg
aXNzdWUgaXMgdGhhdCwgZm9yIGhpc3RvcmljYWwgcmVhc29ucywgT0YvSU9SVC1iYXNlZAo+PiBJ
T01NVSBkcml2ZXJzIGhhdmUgZW5kZWQgdXAgd2l0aCBncm91cCBhbGxvY2F0aW9uIGJlaW5nIHRp
ZWQgdG8gZW5kcG9pbnQKPj4gZHJpdmVyIHByb2JpbmcgdmlhIHRoZSBkbWFfY29uZmlndXJlKCkg
bWVjaGFuaXNtIChsb25nIHN0b3J5IHNob3J0LAo+PiBkcml2ZXIgcHJvYmUgaXMgdGhlIG9ubHkg
dGhpbmcgd2hpY2ggY2FuIGJlIGRlbGF5ZWQgaW4gb3JkZXIgdG8gd2FpdCBmb3IKPj4gYSBzcGVj
aWZpYyBJT01NVSBpbnN0YW5jZSB0byBiZSByZWFkeSkuSG93ZXZlciwgaW4gdGhlIG1lYW50aW1l
LCB0aGUKPj4gSU9NTVUgQVBJIGludGVybmFscyBoYXZlIGV2b2x2ZWQgc3VmZmljaWVudGx5IHRo
YXQgSSB0aGluayB0aGVyZSdzIGEgd2F5Cj4+IHRvIHJlYWxseSBwdXQgdGhpbmdzIHJpZ2h0IC0g
SSBoYXZlIHRoZSBzcGFyayBvZiBhbiBpZGVhIHdoaWNoIEknbGwgdHJ5Cj4+IHRvIHNrZXRjaCBv
dXQgQVNBUC4uLgo+Pgo+IAo+IE9LLCBncmVhdC4KPiAKPiBUaGFua3MsCj4gSm9obgo+IAo+PiBS
b2Jpbi4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
