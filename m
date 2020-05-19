Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912D41D92E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DFNd2w9fknKQ2qW6ob59UgHISSuT9+V3lqWIAXiZxPU=; b=UnHBWssXgQ52f8Pg+pARM5CVk
	10rCe8MWnHj+lJhGaM5ZGiUfE7og1kyAJ2fzjvutgVmO0PbZ6/No4+Pw63wVWohL5M1Zhahy3oiK7
	T+cdq7pQuWCoiJ2RjfDOMVaN0d4bQzQJvISTY9WBqyKsU4AfRs6UWHYl5nW5w7Nw2kZEgwRqNsOe2
	rfjf5xmrwThJgzK2zUWuYMozvyQnr3c4kyt3yXcvAp68AkI7Vr5B60eZYG3vIdWN6zaa5A39E6HJo
	41rQBf93lV8MRj2cLvvIy4dL5cNBWrjMXqR5ftYzEvd7X05mXo4KxG8Bw/j6eRltyZSdwuH0D2whg
	1Yc+sCX5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jay9d-0002m6-Su; Tue, 19 May 2020 09:03:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jay9S-0002kY-KT
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:03:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 7A8D02A1ED2
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
To: Hans de Goede <hdegoede@redhat.com>, linux-input@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, patches@opensource.cirrus.com,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
Date: Tue, 19 May 2020 11:02:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_020306_936984_8CC0C976 
X-CRM114-Status: GOOD (  31.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Nick Dyer <nick@shmanahar.org>, Benjamin Tissoires <btissoir@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Len Brown <lenb@kernel.org>,
 Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGFucywgSGkgRG1pdHJ5LAoKVyBkbml1IDE4LjA1LjIwMjAgb8KgMTY6MjMsIEhhbnMgZGUg
R29lZGUgcGlzemU6Cj4gSGksCgo8c25pcD4KCj4+Pj4+Cj4+Pj4+IFNvIEkgd29uZGVyIHdoYXQg
dGhpcyBzZXJpZXMgYWN0dWFsbHkgYWRkcyBmb3IgZnVuY3Rpb25hbGl0eSBmb3IKPj4+Pj4gdXNl
cnNwYWNlIHdoaWNoIGNhbiBub3QgYWxyZWFkeSBiZSBhY2hpZXZlZCB0aGlzIHdheT8KPj4+Pj4K
Pj4+Pj4gSSBhbHNvIG5vdGljZWQgdGhhdCB5b3Uga2VlcCB0aGUgZGV2aWNlIG9wZW4gKGRvIG5v
dCBjYWxsIHRoZQo+Pj4+PiBpbnB1dF9kZXZpY2UncyBjbG9zZSBjYWxsYmFjaykgd2hlbiBpbmhp
Yml0ZWQgYW5kIGp1c3QgdGhyb3cgYXdheQo+Pj4+Cj4+Pj4gSSdtIG5vdCBzdXJlIGlmIEkgdW5k
ZXJzdGFuZCB5b3UgY29ycmVjdGx5LCBpdCBpcyBjYWxsZWQ6Cj4+Pj4KPj4+PiArc3RhdGljIGlu
bGluZSB2b2lkIGlucHV0X3N0b3Aoc3RydWN0IGlucHV0X2RldiAqZGV2KQo+Pj4+ICt7Cj4+Pj4g
K8KgwqDCoCBpZiAoZGV2LT5wb2xsZXIpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlucHV0X2Rldl9w
b2xsZXJfc3RvcChkZXYtPnBvbGxlcik7Cj4+Pj4gK8KgwqDCoCBpZiAoZGV2LT5jbG9zZSkKPj4+
PiArwqDCoMKgwqDCoMKgwqAgZGV2LT5jbG9zZShkZXYpOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl4KPj4+PiArc3RhdGljIGludCBpbnB1dF9p
bmhpYml0KHN0cnVjdCBpbnB1dF9kZXYgKmRldikKPj4+PiArewo+Pj4+ICvCoMKgwqAgaW50IHJl
dCA9IDA7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgbXV0ZXhfbG9jaygmZGV2LT5tdXRleCk7Cj4+Pj4g
Kwo+Pj4+ICvCoMKgwqAgaWYgKGRldi0+aW5oaWJpdGVkKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBn
b3RvIG91dDsKPj4+PiArCj4+Pj4gK8KgwqDCoCBpZiAoZGV2LT51c2Vycykgewo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBpZiAoZGV2LT5pbmhpYml0KSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0ID0gZGV2LT5pbmhpYml0KGRldik7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aWYgKHJldCkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+
Pj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlucHV0X3N0b3AoZGV2
KTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXl5eXl5eXl5eXl5e
Cj4+Pj4KPj4+PiBJdCB3aWxsIG5vdCBiZSBjYWxsZWQgd2hlbiBkZXYtPnVzZXJzIGlzIHplcm8s
IGJ1dCBpZiBpdCBpcyB6ZXJvLAo+Pj4+IHRoZW4gbm9ib2R5IGhhcyBvcGVuZWQgdGhlIGRldmlj
ZSB5ZXQgc28gdGhlcmUgaXMgbm90aGluZyB0byBjbG9zZS4KPj4+Cj4+PiBBaCwgSSBtaXNzZWQg
dGhhdC4KPj4+Cj4+PiBTbyBpZiB0aGUgZGV2aWNlIGltcGxlbWVudHMgdGhlIGluaGliaXQgY2Fs
bCBiYWNrIHRoZW4gb24KPj4+IGluaGliaXQgaXQgd2lsbCBnZXQgYm90aCB0aGUgaW5oaWJpdCBh
bmQgY2xvc2UgY2FsbGJhY2sgY2FsbGVkPwo+Pj4KPj4KPj4gVGhhdCdzIHJpZ2h0LiBBbmQgY29u
dmVyc2VseSwgdXBvbiB1bmluaGliaXQgb3BlbigpIGFuZCB1bmluaGliaXQoKQo+PiBjYWxsYmFj
a3Mgd2lsbCBiZSBpbnZva2VkLiBQbGVhc2Ugbm90ZSB0aGF0IGp1c3QgYXMgd2l0aCBvcGVuKCkv
Y2xvc2UoKSwKPj4gcHJvdmlkaW5nIGluaGliaXQoKS91bmluaGliaXQoKSBpcyBvcHRpb25hbC4K
PiAKPiBBY2suCj4gCj4+PiBBbmQgd2hhdCBoYXBwZW5zIGlmIHRoZSBsYXN0IHVzZXIgZ29lcyBh
d2F5IGFuZCB0aGUgZGV2aWNlCj4+PiBpcyBub3QgaW5oaWJpdGVkPwo+Pgo+PiBjbG9zZSgpIGlz
IGNhbGxlZCBhcyB1c3VhbGx5Lgo+IAo+IEJ1dCBub3QgaW5oaWJpdCwgaG1tLCBzZWUgYmVsb3cu
Cj4gCj4+PiBJJ20gdHJ5aW5nIHRvIHVuZGVyc3RhbmQgaGVyZSB3aGF0IHRoZSBkaWZmZXJlbmNl
IGJldHdlZW4gdGhlIDIKPj4+IGlzIC8gd2hhdCB0aGUgZ29hbCBvZiBoYXZpbmcgYSBzZXBhcmF0
ZSBpbmhpYml0IGNhbGxiYWNrID8KPj4+Cj4+Cj4+IERyaXZlcnMgaGF2ZSB2ZXJ5IGRpZmZlcmVu
dCBpZGVhcyBhYm91dCB3aGF0IGl0IG1lYW5zIHRvIHN1c3BlbmQvcmVzdW1lCj4+IGFuZCBvcGVu
L2Nsb3NlLiBUaGUgb3B0aW9uYWwgaW5oaWJpdC91bmluaGliaXQgY2FsbGJhY2tzIGFyZSBtZWFu
dCBmb3IKPj4gdGhlIGRyaXZlcnMgdG8ga25vdyB0aGF0IGl0IGlzIHRoaXMgcGFydGljdWxhciBh
Y3Rpb24gZ29pbmcgb24uCj4gCj4gU28gdGhlIGluaGliaXQoKSBjYWxsYmFjayB0cmlnZ2VycyB0
aGUgInN1c3BlbmQiIGJlaGF2aW9yID8KPiBCdXQgc2hvdWxkbid0IGRyaXZlcnMgd2hpY2ggYXJl
IGNhcGFibGUgb2Ygc3VzcGVuZGluZyB0aGUgZGV2aWNlCj4gYWx3YXlzIGRvIHNvIG9uIGNsb3Nl
KCkgPwo+IAo+IFNpbmNlIHlvdXIgY3VycmVudCBwcm9wb3NhbCBhbHNvIGNhbGxzIGNsb3NlKCkg
b24gaW5oaWJpdCgpIEkKPiByZWFsbHkgc2VlIGxpdHRsZSBkaWZmZXJlbmNlIGJldHdlZW4gYW4g
aW5oaWJpdCgpIGFuZCB0aGUgbGFzdAo+IHVzZXIgb2YgdGhlIGRldmljZSBjbG9zaW5nIGl0IGFu
ZCBJTUhPIHVubGVzcyB0aGVyZSBpcyBhIGdvb2QKPiByZWFzb24gdG8gYWN0dWFsbHkgZGlmZmVy
ZW50aWF0ZSB0aGUgMiBpdCB3b3VsZCBiZSBiZXR0ZXIKPiB0byBvbmx5IHN0aWNrIHdpdGggdGhl
IGV4aXN0aW5nIGNsb3NlKCkgYW5kIGluIGNhc2VzIHdoZXJlCj4gdGhhdCBkb2VzIG5vdCBwdXQg
dGhlIGRldmljZSBpbiBhIGxvdy1wb3dlciBtb2RlIHlldCwgZml4Cj4gdGhlIGV4aXN0aW5nIGNs
b3NlKCkgY2FsbGJhY2sgdG8gZG8gdGhlIGxvdy1wb3dlciBtb2RlCj4gc2V0dGluZyBpbnN0ZWFk
IG9mIGFkZGluZyBhIG5ldyBjYWxsYmFjay4KPiAKPj4gRm9yIGluaGliaXQoKSB0aGVyZSdzIG9u
ZSBtb3JlIGFyZ3VtZW50OiBjbG9zZSgpIGRvZXMgbm90IHJldHVybiBhIHZhbHVlLAo+PiBzbyBp
dHMgbWVhbmluZyBpcyAiZG8gc29tZSBsYXN0IGNsZWFudXAiIGFuZCBhcyBzdWNoIGl0IGlzIG5v
dCBhbGxvd2VkCj4+IHRvIGZhaWwgLSB3aGF0ZXZlciBpdHMgZWZmZWN0IGlzLCB3ZSBtdXN0IGRl
ZW0gaXQgc3VjY2Vzc2Z1bC4gaW5oaWJpdCgpCj4+IGRvZXMgcmV0dXJuIGEgdmFsdWUgYW5kIHNv
IGl0IGlzIGFsbG93ZWQgdG8gZmFpbC4KPiAKPiBXZWxsLCB3ZSBjb3VsZCBtYWtlIGNsb3NlKCkg
cmV0dXJuIGFuIGVycm9yIGFuZCBhdCBsZWFzdCBpbiB0aGUgaW5oaWJpdCgpCj4gY2FzZSBwcm9w
YWdhdGUgdGhhdCB0byB1c2Vyc3BhY2UuIEkgd29uZGVyIGlmIHVzZXJzcGFjZSBpcyBnb2luZyB0
bwo+IGRvIGFueXRoaW5nIHVzZWZ1bCB3aXRoIHRoYXQgZXJyb3IgdGhvdWdoLi4uCj4gCj4gSW4g
bXkgZXhwZXJpZW5jZSBlcnJvcnMgZHVyaW5nIGNsZWFudXAvc2h1dGRvd24gYXJlIGJlc3QgbG9n
Z2VkCj4gKHVzaW5nIGRldl9lcnIpIGFuZCBvdGhlcndpc2UgaWdub3JlZCwgc28gdGhhdCB3ZSB0
cnkgdG8gY2xlYW4gdXAKPiBhcyBtdWNoIHBvc3NpYmxlLiBVbmxlc3MgdGhlIHZlcnkgZmlyc3Qg
c3RlcCBvZiB0aGUgc2h1dGRvd24gcHJvY2Vzcwo+IGZhaWxzIHRoZSBkZXZpY2UgaXMgZ29pbmcg
dG8gYmUgaW4gc29tZSB0d2lsaWdodCB6b25lIHN0YXRlIGFueXdheXMKPiBhdCB0aGlzIHBvaW50
IHdlIG1pZ2h0IGFzIHdlbGwgdHJ5IHRvIGNsZWFudXAgYXMgbXVjaCBhcyBwb3NzaWJsZS4KCldo
YXQgeW91IHNheSBtYWtlcyBzZW5zZSB0byBtZS4KQERtaXRyeT8KCj4gCj4+IEFsbCBpbiBhbGws
IGl0IGlzIHVwIHRvIHRoZSBkcml2ZXJzIHRvIGRlY2lkZSB3aGljaCBjYWxsYmFjayB0aGV5Cj4+
IHByb3ZpZGUuIEJhc2VkIG9uIG15IHdvcmsgc28gZmFyIEkgd291bGQgc2F5IHRoYXQgdGhlcmUg
YXJlIHRlbnMKPj4gb2Ygc2ltcGxlIGNhc2VzIHdoZXJlIG9wZW4oKSBhbmQgY2xvc2UoKSBhcmUg
c3VmZmljaWVudCwgb3V0IG9mIHRvdGFsCj4+IH40MDAgdXNlcnMgb2YgaW5wdXRfYWxsb2NhdGVf
ZGV2aWNlKCk6Cj4+Cj4+ICQgZ2l0IGdyZXAgImlucHV0X2FsbG9jYXRlX2RldmljZSgiIHwgZ3Jl
cCAtdiBeRG9jdW1lbnRhdGlvbiB8IFwKPj4gY3V0IC1mMSAtZDogfCBzb3J0IHwgdW5pcSB8IHdj
Cj4+IMKgwqDCoMKgIDM5MMKgwqDCoMKgIDM5MMKgwqAgMTM0OTYKPiAKPiBTbyBjYW4geW91IGV4
cGxhaW4gYSBiaXQgbW9yZSBhYm91dCB0aGUgY2FzZXMgd2hlcmUgb25seSBoYXZpbmcKPiBvcGVu
L2Nsb3NlIGlzIG5vdCBzdWZmaWNpZW50P8KgIFNvIGZhciBJIGhhdmUgdGhlIGZlZWxpbmcgdGhh
dAo+IHRob3NlIGFyZSBhbGwgd2UgbmVlZCBhbmQgdGhhdCB3ZSByZWFsbHkgZG8gbm90IG5lZWQg
c2VwYXJhdGUKPiBbdW5daW5oaWJpdCBjYWxsYmFja3MuCgpNeSBwcmltYXJ5IGNvbmNlcm4gd2Fz
IG5vdCBiZWluZyBhYmxlIHRvIHByb3BhZ2F0ZSBpbmhpYml0KCkgZXJyb3IKdG8gdXNlcnNwYWNl
LCBhbmQgdGhlbiBpZiB3ZSBoYXZlIGluaGliaXQoKSwgdW5pbmhpYml0KCkgc2hvdWxkIGJlCnRo
ZXJlIGZvciBjb21wbGV0ZW5lc3MuIElmIHByb3BhZ2F0aW5nIHRoZSBlcnJvciB0byB1c2Vyc3Bh
Y2UgY2FuCmJlIG5lZ2xlY3RlZCB0aGVuIHllcywgaXQgc2VlbXMgb3Blbi9jbG9zZSBzaG91bGQg
YmUgc3VmZmljaWVudCwKZXZlbiBtb3JlIGJlY2F1c2UgdGhlIHJlYWwgbWVhbmluZyBvZiAib3Bl
biIgaXMgInByZXBhcmUgdGhlIGRldmljZQpmb3IgZ2VuZXJhdGluZyBpbnB1dCBldmVudHMiLgoK
VG8gdmFsaWRhdGUgdGhlIGlkZWEgb2Ygbm90IGludHJvZHVjaW5nIGluaGliaXQoKS91bmluaGli
aXQoKSBjYWxsYmFja3MKdG8gaW1wbGVtZW50IGRldmljZSBpbmhpYml0aW5nL3VuaW5oaWJpdGlu
ZyBsZXQncyBsb29rIGF0CmRyaXZlcnMvaW5wdXQvbW91c2UvZWxhbl9pMmNfY29yZS5jIChQQVRD
SCA3LzcpOgoKc3RhdGljIGludCBlbGFuX2luaGliaXQoc3RydWN0IGlucHV0X2RldiAqaW5wdXQp
CnsKWy4uLl0KCglyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmRhdGEtPnN5c2ZzX211
dGV4KTsKCWlmIChyZXQpCgkJcmV0dXJuIHJldDsKCglkaXNhYmxlX2lycShjbGllbnQtPmlycSk7
CgoJcmV0ID0gZWxhbl9kaXNhYmxlX3Bvd2VyKGRhdGEpOwoJaWYgKHJldCkKCQllbmFibGVfaXJx
KGNsaWVudC0+aXJxKTsKWy4uLl0KfQoKRmlyc3QsIGNsb3NlKCkgZG9lcyBub3QgZXhpc3QgaW4g
dGhpcyBkcml2ZXIuIE9mIGNvdXJzZSB0aGlzIGNhbiBiZQpmaXhlZC4gVGhlbiBpdCBkb2Vzbid0
IHJldHVybiBhIHZhbHVlLiBUaGVuLCBpZiBlaXRoZXIgdGFraW5nIHRoZQptdXRleCBvciBkaXNh
YmxpbmcgdGhlIHBvd2VyIGZhaWxzLCB0aGUgY2xvc2UoKSBpcyBzdGlsbCBkZWVtZWQKc3VjY2Vz
c2Z1bC4gSXMgaXQgb2s/CkBEbWl0cnk/CgpSZWdhcmRzLAoKQW5kcnplagoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
