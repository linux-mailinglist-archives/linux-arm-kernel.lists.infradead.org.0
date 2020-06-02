Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFD31EC087
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iZ8vX4Epei31Bcq/8tWRBwgltPZQ7WICAlS3jEiINaY=; b=fDjoseuCKLY7hBEWpnHDUW557
	/G0a8P8N/r9Gnfk5U7miwa4I74IlyYb/Vfvx6h1s8ePpmdy+A+wLUedpm/UcqO1E03MoUI2dstxeJ
	ckhIPukj8cYDv+qbpReM4ha5S563c0tOWOPYL4CMqGGo5O21YHqWVN82sZ0OYtwNPByta8LQj82ni
	CcJOiY2gLzCfX3kciN2W5AB+RKLynvIU7Uf3XhiJrbCzWhJbPtJsBRwzgdcHCMtsfsBQhybeqexjP
	IZpSKsXfITHdNPCTOCue8mZMJ12onzviRwSLeWa3KhUSRhMAdDT/blENfxrN/bn234jKPAsf3KQMY
	wCJPJYoxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgADf-00033a-9k; Tue, 02 Jun 2020 16:56:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgADY-000331-Nc
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:56:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id C8CF72A36C9
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
 <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
 <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
 <20200527063430.GJ89269@dtor-ws>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <88f939cd-1518-d516-59f2-8f627a6a70d2@collabora.com>
Date: Tue, 2 Jun 2020 18:56:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200527063430.GJ89269@dtor-ws>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_095649_025012_2C4CAF0A 
X-CRM114-Status: GOOD (  33.70  )
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRG1pdHJ5LAoKVyBkbml1IDI3LjA1LjIwMjAgb8KgMDg6MzQsIERtaXRyeSBUb3Jva2hvdiBw
aXN6ZToKPiBPbiBUdWUsIE1heSAxOSwgMjAyMCBhdCAxMTozNjozNEFNICswMjAwLCBIYW5zIGRl
IEdvZWRlIHdyb3RlOgo+PiBIaSwKPj4KPj4gT24gNS8xOS8yMCAxMTowMiBBTSwgQW5kcnplaiBQ
aWV0cmFzaWV3aWN6IHdyb3RlOgo+Pj4gSGkgSGFucywgSGkgRG1pdHJ5LAo+Pj4KPj4+IFcgZG5p
dSAxOC4wNS4yMDIwIG/CoDE2OjIzLCBIYW5zIGRlIEdvZWRlIHBpc3plOgo+Pj4+IEhpLAo+Pj4K
Pj4+IDxzbmlwPgo+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gU28gSSB3b25kZXIgd2hhdCB0aGlzIHNl
cmllcyBhY3R1YWxseSBhZGRzIGZvciBmdW5jdGlvbmFsaXR5IGZvcgo+Pj4+Pj4+PiB1c2Vyc3Bh
Y2Ugd2hpY2ggY2FuIG5vdCBhbHJlYWR5IGJlIGFjaGlldmVkIHRoaXMgd2F5Pwo+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBJIGFsc28gbm90aWNlZCB0aGF0IHlvdSBrZWVwIHRoZSBkZXZpY2Ugb3BlbiAoZG8g
bm90IGNhbGwgdGhlCj4+Pj4+Pj4+IGlucHV0X2RldmljZSdzIGNsb3NlIGNhbGxiYWNrKSB3aGVu
IGluaGliaXRlZCBhbmQganVzdCB0aHJvdyBhd2F5Cj4+Pj4+Pj4KPj4+Pj4+PiBJJ20gbm90IHN1
cmUgaWYgSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0bHksIGl0IGlzIGNhbGxlZDoKPj4+Pj4+Pgo+
Pj4+Pj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgaW5wdXRfc3RvcChzdHJ1Y3QgaW5wdXRfZGV2ICpk
ZXYpCj4+Pj4+Pj4gK3sKPj4+Pj4+PiArwqDCoMKgIGlmIChkZXYtPnBvbGxlcikKPj4+Pj4+PiAr
wqDCoMKgwqDCoMKgwqAgaW5wdXRfZGV2X3BvbGxlcl9zdG9wKGRldi0+cG9sbGVyKTsKPj4+Pj4+
PiArwqDCoMKgIGlmIChkZXYtPmNsb3NlKQo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBkZXYtPmNs
b3NlKGRldik7Cj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5e
Xl5eXl5eXl5eXl4KPj4+Pj4+PiArc3RhdGljIGludCBpbnB1dF9pbmhpYml0KHN0cnVjdCBpbnB1
dF9kZXYgKmRldikKPj4+Pj4+PiArewo+Pj4+Pj4+ICvCoMKgwqAgaW50IHJldCA9IDA7Cj4+Pj4+
Pj4gKwo+Pj4+Pj4+ICvCoMKgwqAgbXV0ZXhfbG9jaygmZGV2LT5tdXRleCk7Cj4+Pj4+Pj4gKwo+
Pj4+Pj4+ICvCoMKgwqAgaWYgKGRldi0+aW5oaWJpdGVkKQo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oCBnb3RvIG91dDsKPj4+Pj4+PiArCj4+Pj4+Pj4gK8KgwqDCoCBpZiAoZGV2LT51c2Vycykgewo+
Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoZGV2LT5pbmhpYml0KSB7Cj4+Pj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gZGV2LT5pbmhpYml0KGRldik7Cj4+Pj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGdvdG8gb3V0Owo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGlucHV0X3N0b3AoZGV2KTsKPj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgXl5eXl5eXl5eXl5eXl5eXgo+Pj4+Pj4+Cj4+Pj4+Pj4gSXQgd2lsbCBu
b3QgYmUgY2FsbGVkIHdoZW4gZGV2LT51c2VycyBpcyB6ZXJvLCBidXQgaWYgaXQgaXMgemVybywK
Pj4+Pj4+PiB0aGVuIG5vYm9keSBoYXMgb3BlbmVkIHRoZSBkZXZpY2UgeWV0IHNvIHRoZXJlIGlz
IG5vdGhpbmcgdG8gY2xvc2UuCj4+Pj4+Pgo+Pj4+Pj4gQWgsIEkgbWlzc2VkIHRoYXQuCj4+Pj4+
Pgo+Pj4+Pj4gU28gaWYgdGhlIGRldmljZSBpbXBsZW1lbnRzIHRoZSBpbmhpYml0IGNhbGwgYmFj
ayB0aGVuIG9uCj4+Pj4+PiBpbmhpYml0IGl0IHdpbGwgZ2V0IGJvdGggdGhlIGluaGliaXQgYW5k
IGNsb3NlIGNhbGxiYWNrIGNhbGxlZD8KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoYXQncyByaWdodC4g
QW5kIGNvbnZlcnNlbHksIHVwb24gdW5pbmhpYml0IG9wZW4oKSBhbmQgdW5pbmhpYml0KCkKPj4+
Pj4gY2FsbGJhY2tzIHdpbGwgYmUgaW52b2tlZC4gUGxlYXNlIG5vdGUgdGhhdCBqdXN0IGFzIHdp
dGggb3BlbigpL2Nsb3NlKCksCj4+Pj4+IHByb3ZpZGluZyBpbmhpYml0KCkvdW5pbmhpYml0KCkg
aXMgb3B0aW9uYWwuCj4+Pj4KPj4+PiBBY2suCj4+Pj4KPj4+Pj4+IEFuZCB3aGF0IGhhcHBlbnMg
aWYgdGhlIGxhc3QgdXNlciBnb2VzIGF3YXkgYW5kIHRoZSBkZXZpY2UKPj4+Pj4+IGlzIG5vdCBp
bmhpYml0ZWQ/Cj4+Pj4+Cj4+Pj4+IGNsb3NlKCkgaXMgY2FsbGVkIGFzIHVzdWFsbHkuCj4+Pj4K
Pj4+PiBCdXQgbm90IGluaGliaXQsIGhtbSwgc2VlIGJlbG93Lgo+Pj4+Cj4+Pj4+PiBJJ20gdHJ5
aW5nIHRvIHVuZGVyc3RhbmQgaGVyZSB3aGF0IHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIDIK
Pj4+Pj4+IGlzIC8gd2hhdCB0aGUgZ29hbCBvZiBoYXZpbmcgYSBzZXBhcmF0ZSBpbmhpYml0IGNh
bGxiYWNrID8KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IERyaXZlcnMgaGF2ZSB2ZXJ5IGRpZmZlcmVudCBp
ZGVhcyBhYm91dCB3aGF0IGl0IG1lYW5zIHRvIHN1c3BlbmQvcmVzdW1lCj4+Pj4+IGFuZCBvcGVu
L2Nsb3NlLiBUaGUgb3B0aW9uYWwgaW5oaWJpdC91bmluaGliaXQgY2FsbGJhY2tzIGFyZSBtZWFu
dCBmb3IKPj4+Pj4gdGhlIGRyaXZlcnMgdG8ga25vdyB0aGF0IGl0IGlzIHRoaXMgcGFydGljdWxh
ciBhY3Rpb24gZ29pbmcgb24uCj4+Pj4KPj4+PiBTbyB0aGUgaW5oaWJpdCgpIGNhbGxiYWNrIHRy
aWdnZXJzIHRoZSAic3VzcGVuZCIgYmVoYXZpb3IgPwo+Pj4+IEJ1dCBzaG91bGRuJ3QgZHJpdmVy
cyB3aGljaCBhcmUgY2FwYWJsZSBvZiBzdXNwZW5kaW5nIHRoZSBkZXZpY2UKPj4+PiBhbHdheXMg
ZG8gc28gb24gY2xvc2UoKSA/Cj4+Pj4KPj4+PiBTaW5jZSB5b3VyIGN1cnJlbnQgcHJvcG9zYWwg
YWxzbyBjYWxscyBjbG9zZSgpIG9uIGluaGliaXQoKSBJCj4+Pj4gcmVhbGx5IHNlZSBsaXR0bGUg
ZGlmZmVyZW5jZSBiZXR3ZWVuIGFuIGluaGliaXQoKSBhbmQgdGhlIGxhc3QKPj4+PiB1c2VyIG9m
IHRoZSBkZXZpY2UgY2xvc2luZyBpdCBhbmQgSU1ITyB1bmxlc3MgdGhlcmUgaXMgYSBnb29kCj4+
Pj4gcmVhc29uIHRvIGFjdHVhbGx5IGRpZmZlcmVudGlhdGUgdGhlIDIgaXQgd291bGQgYmUgYmV0
dGVyCj4+Pj4gdG8gb25seSBzdGljayB3aXRoIHRoZSBleGlzdGluZyBjbG9zZSgpIGFuZCBpbiBj
YXNlcyB3aGVyZQo+Pj4+IHRoYXQgZG9lcyBub3QgcHV0IHRoZSBkZXZpY2UgaW4gYSBsb3ctcG93
ZXIgbW9kZSB5ZXQsIGZpeAo+Pj4+IHRoZSBleGlzdGluZyBjbG9zZSgpIGNhbGxiYWNrIHRvIGRv
IHRoZSBsb3ctcG93ZXIgbW9kZQo+Pj4+IHNldHRpbmcgaW5zdGVhZCBvZiBhZGRpbmcgYSBuZXcg
Y2FsbGJhY2suCj4+Pj4KPj4+Pj4gRm9yIGluaGliaXQoKSB0aGVyZSdzIG9uZSBtb3JlIGFyZ3Vt
ZW50OiBjbG9zZSgpIGRvZXMgbm90IHJldHVybiBhIHZhbHVlLAo+Pj4+PiBzbyBpdHMgbWVhbmlu
ZyBpcyAiZG8gc29tZSBsYXN0IGNsZWFudXAiIGFuZCBhcyBzdWNoIGl0IGlzIG5vdCBhbGxvd2Vk
Cj4+Pj4+IHRvIGZhaWwgLSB3aGF0ZXZlciBpdHMgZWZmZWN0IGlzLCB3ZSBtdXN0IGRlZW0gaXQg
c3VjY2Vzc2Z1bC4gaW5oaWJpdCgpCj4+Pj4+IGRvZXMgcmV0dXJuIGEgdmFsdWUgYW5kIHNvIGl0
IGlzIGFsbG93ZWQgdG8gZmFpbC4KPj4+Pgo+Pj4+IFdlbGwsIHdlIGNvdWxkIG1ha2UgY2xvc2Uo
KSByZXR1cm4gYW4gZXJyb3IgYW5kIGF0IGxlYXN0IGluIHRoZSBpbmhpYml0KCkKPj4+PiBjYXNl
IHByb3BhZ2F0ZSB0aGF0IHRvIHVzZXJzcGFjZS4gSSB3b25kZXIgaWYgdXNlcnNwYWNlIGlzIGdv
aW5nIHRvCj4+Pj4gZG8gYW55dGhpbmcgdXNlZnVsIHdpdGggdGhhdCBlcnJvciB0aG91Z2guLi4K
PiAKPiBJdCByZWFsbHkgY2FuJ3QgZG8gYW55dGhpbmcuIEhhdmUgeW91IGV2ZXIgc2VlbiB1c2Vy
c3BhY2UgaGFuZGxpbmcKPiBlcnJvcnMgZnJvbSBjbG9zZSgpPyBBbmQgd2hhdCBjYW4gYmUgZG9u
ZT8gQSBwcm9ncmFtIGlzIHRlcm1pbmF0aW5nLCBidXQKPiB0aGUga2VybmVsIHNheXMgIm5vLCB5
b3UgY2xvc2luZyBpbnB1dCBkZXZpY2UgZmFpbGVkLCB5b3UgaGF2ZSB0bwo+IGNvbnRpbnVlIHJ1
bm5pbmcgaW5kZWZpbml0ZWx5Li4uIgo+IAo+Pj4+Cj4+Pj4gSW4gbXkgZXhwZXJpZW5jZSBlcnJv
cnMgZHVyaW5nIGNsZWFudXAvc2h1dGRvd24gYXJlIGJlc3QgbG9nZ2VkCj4+Pj4gKHVzaW5nIGRl
dl9lcnIpIGFuZCBvdGhlcndpc2UgaWdub3JlZCwgc28gdGhhdCB3ZSB0cnkgdG8gY2xlYW4gdXAK
Pj4+PiBhcyBtdWNoIHBvc3NpYmxlLiBVbmxlc3MgdGhlIHZlcnkgZmlyc3Qgc3RlcCBvZiB0aGUg
c2h1dGRvd24gcHJvY2Vzcwo+Pj4+IGZhaWxzIHRoZSBkZXZpY2UgaXMgZ29pbmcgdG8gYmUgaW4g
c29tZSB0d2lsaWdodCB6b25lIHN0YXRlIGFueXdheXMKPj4+PiBhdCB0aGlzIHBvaW50IHdlIG1p
Z2h0IGFzIHdlbGwgdHJ5IHRvIGNsZWFudXAgYXMgbXVjaCBhcyBwb3NzaWJsZS4KPj4+Cj4+PiBX
aGF0IHlvdSBzYXkgbWFrZXMgc2Vuc2UgdG8gbWUuCj4+PiBARG1pdHJ5Pwo+IAo+IEkgd2lsbCBu
b3RlIGhlcmUsIHRoYXQgaW5oaWJpdCBpcyBjbG9zZXIgdG8gc3VzcGVuZCgpIHRoYW4gdG8gY2xv
c2UoKSwKPiBhbmQgd2UgZG8gcmVwb3J0IGVycm9ycyBmb3Igc3VzcGVuZCgpLiBUaGVyZWZvcmUg
d2UgY291bGQgY29uY2VpdmFibHkKPiB0cnkgdG8gaGFuZGxlIGVycm9ycyBpZiBkcml2ZXIgcmVh
bGx5IHdhbnRzIHRvIGJlIGZhbmN5LiBCdXQgSSB0aGluawo+IG1ham9yaXR5IG9mIGNhc2VzIHdp
bGwgYmUgcXVpdGUgaGFwcHkgd2l0aCB1c2luZyBjbG9zZSgpIGFuZCBzaW1wbHkKPiBsb2dnaW5n
IGVycm9ycywgYXMgSGFucyBzYWlkLgo+IAo+IFRoYXQgc2FpZCwgSSB0aGluayB0aGUgd2F5IHdl
IHNob3VsZCBoYW5kbGUgaW5oaWJpdC91bmluaGliaXQsIGlzIHRoYXQKPiBpZiB3ZSBoYXZlIHRo
ZSBjYWxsYmFjayBkZWZpbmVkLCB0aGVuIHdlIGNhbGwgaXQsIGFuZCBvbmx5IGNhbGwgb3BlbiBh
bmQKPiBjbG9zZSBpZiB1bmluaGliaXQgb3IgaW5oaWJpdCBhcmUgX25vdF8gZGVmaW5lZC4KPiAK
CklmIEkgdW5kZXJzdGFuZCB5b3UgY29ycmVjdGx5IHlvdSBzdWdnZXN0IHRvIGNhbGwgZWl0aGVy
IGluaGliaXQsCmlmIHByb3ZpZGVkIG9yIGNsb3NlLCBpZiBpbmhpYml0IGlzIG5vdCBwcm92aWRl
ZCwgYnV0IG5vdCBib3RoLAp0aGF0IGlzLCBpZiBib3RoIGFyZSBwcm92aWRlZCB0aGVuIG9uIHRo
ZSBpbmhpYml0IHBhdGggb25seQppbmhpYml0IGlzIGNhbGxlZC4gQW5kLCBjb25zZXF1ZW50bHks
IHlvdSBzdWdnZXN0IHRvIGNhbGwgZWl0aGVyCnVuaW5oaWJpdCBvciBvcGVuLCBidXQgbm90IGJv
dGguIFRoZSByZXN0IG9mIG15IG1haWwgbWFrZXMgdGhpcwphc3N1bXB0aW9uLCBzbyBraW5kbHkg
Y29uZmlybSBpZiBJIHVuZGVyc3RhbmQgeW91IGNvcnJlY3RseS4KCkluIG15IG9waW5pb24gdGhp
cyBpZGVhIHdpbGwgbm90IHdvcmsuCgpUaGUgZmlyc3QgcXVlc3Rpb24gaXMgc2hvdWxkIHdlIGJl
IGFibGUgdG8gaW5oaWJpdCBhIGRldmljZQp3aGljaCBpcyBub3Qgb3BlbmVkPyBJbiBteSBvcGlu
aW9uIHdlIHNob3VsZCwgaW4gb3JkZXIgdG8gYmUKYWJsZSB0byBpbmhpYml0IGEgZGV2aWNlIGlu
IGFudGljaXBhdGlvbiB3aXRob3V0IG5lZWRpbmcgdG8Kb3BlbiBpdCBmaXJzdC4KClRoZW4gd2hh
dCBkb2VzIG9wZW5pbmcgKHdpdGggaW5wdXRfb3Blbl9kZXZpY2UoKSkgYW4gaW5oaWJpdGVkCmRl
dmljZSBtZWFuPyBTaG91bGQgaXQgc3VjY2VlZCBvciBzaG91bGQgaXQgZmFpbD8gSWYgaXQgaXMg
bm90CnRoZSBmaXJzdCBvcGVuaW5nIHRoZW4gZWZmZWN0aXZlbHkgaXQgYm9pbHMgZG93biB0byBp
bmNyZWFzaW5nCmRldmljZSdzIGFuZCBoYW5kbGUncyBjb3VudGVycywgc28gd2UgY2FuIGFsbG93
IGl0IHRvIHN1Y2NlZWQuCklmLCBob3dldmVyLCB0aGUgZGV2aWNlIGlzIGJlaW5nIG9wZW5lZCBm
b3IgdGhlIGZpcnN0IHRpbWUsCnRoZSAtPm9wZW4oKSBtZXRob2Qgd2FudHMgdG8gYmUgY2FsbGVk
LCBidXQgdGhhdCBzb21laG93CmNvbnRyYWRpY3RzIHRoZSBkZXZpY2UncyBpbmhpYml0ZWQgc3Rh
dGUuIFNvIGEgbG9naWNhbCB0aGluZwp0byBkbyBpcyB0byBlaXRoZXIgZmFpbCBpbnB1dF9vcGVu
X2RldmljZSgpIG9yIHBvc3Rwb25lIC0+b3BlbigpCmludm9jYXRpb24gdG8gdGhlIG1vbWVudCBv
ZiB1bmluaGliaXRpbmcgLSBhbmQgdGhlIGxhdHRlciBpcwp3aGF0IHRoZSBwYXRjaGVzIGluIHRo
aXMgc2VyaWVzIGN1cnJlbnRseSBkby4KCkZhaWxpbmcgaW5wdXRfb3Blbl9kZXZpY2UoKSBiZWNh
dXNlIG9mIHRoZSBpbmhpYml0ZWQgc3RhdGUgaXMKbm90IHRoZSByaWdodCB0aGluZyB0byBkby4g
TGV0IG1lIGV4cGxhaW4uIFN1cHBvc2UgdGhhdCBhIGRldmljZQppcyBhbHJlYWR5IGluaGliaXRl
ZCBhbmQgdGhlbiBhIG5ldyBtYXRjaGluZyBoYW5kbGVyIGFwcGVhcnMKaW4gdGhlIHN5c3RlbS4g
TW9zdCBoYW5kbGVycyAoYXBtLXBvd2VyLmMsIGV2YnVnLmMsIGlucHV0LWxlZHMuYywKbWFjX2hp
ZC5jLCBzeXNycS5jLCB2dC9rZXlib2FyZC5jIGFuZCByZmtpbGwvaW5wdXQuYykgZG9uJ3QgY3Jl
YXRlCmFueSBjaGFyYWN0ZXIgZGV2aWNlcyAob25seSBldmRldi5jLCBqb3lkZXYuYyBhbmQgbW91
c2VkZXYuYyBkbyksCnNvIGZvciB0aGVtIGl0IG1ha2VzIG5vIHNlbnNlIHRvIGRlbGF5IGNhbGxp
bmcgaW5wdXRfb3Blbl9kZXZpY2UoKQphbmQgaXQgaXMgY2FsbGVkIGluIGhhbmRsZXIncyAtPmNv
bm5lY3QoKS4gSWYgaW5wdXRfb3Blbl9kZXZpY2UoKQpub3cgZmFpbHMsIHdlIGhhdmUgbG9zdCB0
aGUgb25seSBjaGFuY2UgZm9yIHRoaXMgLT5jb25uZWN0KCkgdG8Kc3VjY2VlZC4KClN1bW1hcml6
aW5nLCBJTU8gdGhlIHVuaW5oaWJpdCBwYXRoIHNob3VsZCBiZSBjYWxsaW5nIGJvdGgKLT5vcGVu
KCkgYW5kIC0+dW5pbmhpYml0KCkgKGlmIHByb3ZpZGVkKSwgYW5kIGNvbnZlcnNlbHksIHRoZSBp
bmhpYml0CnBhdGggc2hvdWxkIGJlIGNhbGxpbmcgYm90aCAtPmluaGliaXQoKSBhbmQgLT5jbG9z
ZSgpIChpZiBwcm92aWRlZCkuCgpXaGF0J3MgeW91ciBvcGluaW9uPwoKUmVnYXJkcywKCkFuZHJ6
ZWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
