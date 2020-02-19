Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AFF163F87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:44:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dbNPOVNAFr9kv6jRawHhgdQ13/RqjW9kA4B4NpJJ7Lc=; b=BgeEihAVGkA6MAeeL701h1XwF
	7fI5Fv7aSBzVyUX+QJGv1xSmcexO3BnTHwLdEVp824RItgquZZZG/EQPfDVvSYIFNLboKJx4sxinf
	nRuRD9Nst/ndfwBjEIbbvukW2CUK6EcH4uy7m71hqh5acrvn0Yl5CiHBUVajlEQuTs/PbCeFbCrs5
	ErgbKljRinEHebenE9nbW2D6QM2BLU685AT7TZlnfRG84GSDDJRkHWCO5YcwsJK0T/fxIzfjlhhyM
	IJp0oBNFob3TOwyI0a4JthpuErTvcqkEBe4JbWbKK/18s3t3qot05iVkZMWQyxGxqsVMdFctay7tE
	xNu4HZSfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ky2-00013Z-OQ; Wed, 19 Feb 2020 08:44:26 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Kxu-00012S-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:44:20 +0000
Received: from lhreml706-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id C88BB11341989E321FC8;
 Wed, 19 Feb 2020 08:44:13 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml706-cah.china.huawei.com (10.201.108.47) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 19 Feb 2020 08:44:13 +0000
Received: from [127.0.0.1] (10.210.170.116) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 19 Feb
 2020 08:44:11 +0000
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
To: Joakim Zhang <qiangqing.zhang@nxp.com>, Mark Rutland <mark.rutland@arm.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
 <20200218133943.GF20212@willie-the-truck>
 <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
 <20200218170803.GA9968@lakrids.cambridge.arm.com>
 <cb004f43-b2a4-ae23-9fd3-0f70bd69701b@huawei.com>
 <20200218181331.GB9968@lakrids.cambridge.arm.com>
 <DB7PR04MB46188F06D6CEA1430712E648E6100@DB7PR04MB4618.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <b6781341-3d28-bda8-621b-aeca413dc8ae@huawei.com>
Date: Wed, 19 Feb 2020 08:44:10 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB7PR04MB46188F06D6CEA1430712E648E6100@DB7PR04MB4618.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.210.170.116]
X-ClientProxiedBy: lhreml743-chm.china.huawei.com (10.201.108.193) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_004418_785650_CD49AC06 
X-CRM114-Status: GOOD (  19.21  )
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
Cc: "ak@linux.intel.com" <ak@linux.intel.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>, Linuxarm <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "james.clark@arm.com" <james.clark@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMDIvMjAyMCAwMTo1NSwgSm9ha2ltIFpoYW5nIHdyb3RlOgo+IAo+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0u
Y29tPgo+PiBTZW50OiAyMDIwxOoy1MIxOcjVIDI6MTQKPj4gVG86IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4KPj4gQ2M6IGFrQGxpbnV4LmludGVsLmNvbTsgSm9ha2ltIFpoYW5n
IDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47Cj4+IHN1enVraS5wb3Vsb3NlQGFybS5jb207IHBl
dGVyekBpbmZyYWRlYWQub3JnOyBXaWxsIERlYWNvbgo+PiA8d2lsbEBrZXJuZWwub3JnPjsgTGlu
dXhhcm0gPGxpbnV4YXJtQGh1YXdlaS5jb20+OyBhY21lQGtlcm5lbC5vcmc7Cj4+IGxpbnV4LWtl
cm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFpoYW5nc2hhb2t1biA8emhhbmdzaGFva3VuQGhpc2lsaWNv
bi5jb20+Owo+PiBhbGV4YW5kZXIuc2hpc2hraW5AbGludXguaW50ZWwuY29tOyBtaW5nb0ByZWRo
YXQuY29tOwo+PiBqYW1lcy5jbGFya0Bhcm0uY29tOyBuYW1oeXVuZ0BrZXJuZWwub3JnOyBqb2xz
YUByZWRoYXQuY29tOwo+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IHJv
YmluLm11cnBoeUBhcm0uY29tOyBTdWRlZXAgSG9sbGEKPj4gPHN1ZGVlcC5ob2xsYUBhcm0uY29t
Pgo+PiBTdWJqZWN0OiBSZTogW1BBVENIIFJGQyAwLzddIHBlcmYgcG11LWV2ZW50czogU3VwcG9y
dCBldmVudCBhbGlhc2luZyBmb3IKPj4gc3lzdGVtIFBNVXMKPiAKPiBbLi4uXQo+Pj4gQW5kIHR5
cGljYWxseSBtb3N0IFBNVSBIVyB3b3VsZCBoYXZlIG5vIElEIHJlZywgc28gd2hlcmUgdG8gZXZl
biBnZXQKPj4+IHRoaXMgaWRlbnRpZmljYXRpb24gaW5mbz8gSm9ha2ltIFpoYW5nIHNlZW1zIHRv
IGhhdmUgdGhpcyBwcm9ibGVtIGZvcgo+Pj4gdGhlIGlteDggRERSQyBQTVUgZHJpdmVyLgo+Pgo+
PiBGb3IgaW14OCwgdGhlIERUIGNvbXBhdCBzdHJpbmcgb3IgYWRkaXRpb25hbCBwcm9wZXJ0aWVz
IG9uIHRoZSBERFJDIG5vZGUKPj4gY291bGQgYmUgdXNlZCB0byBpbXBseSB0aGUgaWQuCj4gCj4g
SGkgTWFyaywKPiAKPiBZZXMsIGFjdHVhbGx5IHdlIGNhbiBleHBvc2Ugc29tZXRoaW5nIGxpa2Ug
RERSQ19JRCB0byBpbmRpY2F0ZSBlYWNoIHNwZWNpZmljIEREUiBjb250cm9sbGVyLCB0byBwb2lu
dCBvdXQgdGhlIGZpbHRlciBmZWF0dXJlLgo+IEJ1dCwgZXZlbiB0aGUgU29DcyBpbnRlZ3JhdGVk
IHRoZSBzYW1lIEREUkNfSUQsIGp1c3Qgc2F5IHRoYXQgdGhleSBoYXZlIHRoZSBzYW1lIEREUkMg
Y29udHJvbGxlci4KPiAKPiAgRnJvbSB1c2VyIHNwYWNlLCB0aGUgdXNhZ2UgaXMgZGlmZmVyZW50
LCBmb3IgZXhhbXBsZToKPiAKPiBpLk1YOE1NIGFuZCBpLk1YOE1OLCB0aGV5IHVzZSB0aGUgc2Ft
ZSBkcml2ZXIoRERSQ19JRCkgYW5kIGNvcnRleC1hNTMgaW50ZWdyYXRlZC4KPiAKPiBJZiB3ZSB3
YW50IHRvIG1vbml0b3IgVlBVLCB0aGVpciAqbWFzdGVyIGlkKiBpcyBkaWZmZXJlbnQgZnJvbSBT
b0NzLgo+IE9uIGkuTVg4TU0sIGV2ZW50IGlzIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4
MDgvCj4gT24gaS5NWDhNTiwgZXZlbnQgaXMgaW14OF9kZHIwL2F4aWQtcmVhZCxheGlfaWQ9MHgx
Mi8KPiAKPiBJIHRyeSB0byB3cml0ZSBhIEpTT04gZmlsZSB0byB1c2UgdGhlc2UgZXZlbnRzLCBm
b3Igbm93LCBJIG9ubHkgY2FuIGxvY2F0ZSB0aGUgZmlsZSBhdCB0aGUgZGlyZWN0b3J5OiB0b29s
cy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9hcm0vY29ydGV4LWE1My8KPiAKPiBQZXJmIHRv
b2wgbG9hZHMgYWxsIGV2ZW50cyB3aGVuIENQVUlEIG1hdGNoZWQsIHdoaWNoIGlzIG5vdyB1bnJl
YXNvbmFibGUsIHdlIHdhbnQgcmVsYXRlZCBldmVudHMgYXJlIGxvYWRlZCBmb3Igc3BlY2lmaWMg
U29DLgoKc28gd2UgY291bGQgaGF2ZSBhIGZvbGRlciBsaWtlIC4uLi9hcmNoL2FybTY0L254cC9z
eXN0ZW0gZm9yIHRoZXNlIApKU09Ocy4gVGhlIHBlcmYgdG9vbCBjYW4gYmUgdXBkYXRlZCB0byBo
YW5kbGUgQ1BVIGFuZCBzeXN0ZW0gZXZlbnRzIGluIApzZXBhcmF0ZSBmb2xkZXJzLgoKPiAKPiBB
bGwgZXZlbnRzIHdpbGwgYWxzbyBiZSBsb2FkZWQgaWYgd2UgdXNlIEREUkNfSUQgdG8gbWF0Y2gg
aW4gdGhlIGZ1dHVyZSwgdGhpcyBzZWVtcyB0byBub3QgYmUgYSBnb29kIGlkZWFsLgoKVGhlIGlt
cG9ydGFudCBwYXJ0IGlzIGtub3dpbmcgd2hpY2ggZXZlbnRzIGFyZSBzdXBwb3J0ZWQgcGVyIApp
bXBsZW1lbnRhdGlvbi4gSXMgdGhlcmUgYW55IG1ldGhvZCBpbiB0aGUgZHJpdmVyIG9mIGtub3dp
bmcgdGhlIApzcGVjaWZpYyBpbXBsZW1lbnRhdGlvbiwgbGlrZSBhbnkgRFQgY29tcGF0IHN0cmlu
Zz8gTGVhc3QgcHJlZmVycmVkIApvcHRpb24gd291bGQgYmUgRFQgbWFjaGluZSBJRC4KCj4gCgpK
b2huCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
