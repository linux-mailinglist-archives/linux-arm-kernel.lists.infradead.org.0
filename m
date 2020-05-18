Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34711D7A61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y7stXIn/+5P19v+34RmDPyc5P63+DdmL7TQwxGVKBKQ=; b=t8OS64Q2JF8IK0WdMcK58czmo
	o+oJMBtqi5wbegrgv9azrIT82ss8vMsq5Tc2garrQ/otMxoWHPDawM/1GM1cSqw8HGZmu3n8rNS8o
	+1xKyVGtaSqK1DS4HFLzhE+giHUQb+UXKd3YlW0Yx582MqAI3d1voUkG7IBJC05uQGcs5BnfXZkb6
	8iaJaJgQF2JhujjNr7pNXQGY17gba3X+6h2xFdJhhK8TemNeap7opCrTHJL8RCdTf0vowoHc4ulN4
	Xr47mLSvRgtMgPr/JwcCHaqURZQVEJ3hg0IDnWQ4iV+IAnqlUUSZKRuraSvCYCA44FoJ46F/pt5fS
	Q/uuXzYxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jag97-00021R-53; Mon, 18 May 2020 13:49:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jag8v-00020F-9c
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:49:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id DF0382A0A3B
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
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
Date: Mon, 18 May 2020 15:49:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_064921_601802_4C231161 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

SGkgSGFucywKClcgZG5pdSAxOC4wNS4yMDIwIG/CoDE0OjI0LCBIYW5zIGRlIEdvZWRlIHBpc3pl
Ogo+IEhpLAo+IAo+IE9uIDUvMTgvMjAgMTI6NDggUE0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3
cm90ZToKPj4gSGkgSGFucywKPj4KPj4gVyBkbml1IDE1LjA1LjIwMjAgb8KgMjA6MTksIEhhbnMg
ZGUgR29lZGUgcGlzemU6Cj4+PiBIaSBBbmRyZXpqLAo+Pj4KPj4+IE9uIDUvMTUvMjAgNjo0OSBQ
TSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+Pj4+IFVzZXJzcGFjZSBtaWdodCB3YW50
IHRvIGltcGxlbWVudCBhIHBvbGljeSB0byB0ZW1wb3JhcmlseSBkaXNyZWdhcmQgaW5wdXQKPj4+
PiBmcm9tIGNlcnRhaW4gZGV2aWNlcywgaW5jbHVkaW5nIG5vdCB0cmVhdGluZyB0aGVtIGFzIHdh
a2V1cCBzb3VyY2VzLgo+Pj4+Cj4+Pj4gQW4gZXhhbXBsZSB1c2UgY2FzZSBpcyBhIGxhcHRvcCwg
d2hvc2Uga2V5Ym9hcmQgY2FuIGJlIGZvbGRlZCB1bmRlciB0aGUKPj4+PiBzY3JlZW4gdG8gY3Jl
YXRlIHRhYmxldC1saWtlIGV4cGVyaWVuY2UuIFRoZSB1c2VyIHRoZW4gbXVzdCBob2xkIHRoZSBs
YXB0b3AKPj4+PiBpbiBzdWNoIGEgd2F5IHRoYXQgaXQgaXMgZGlmZmljdWx0IHRvIGF2b2lkIHBy
ZXNzaW5nIHRoZSBrZXlib2FyZCBrZXlzLiBJdAo+Pj4+IGlzIHRoZXJlZm9yZSBkZXNpcmFibGUg
dG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0IGZyb20gdGhlIGtleWJvYXJkLAo+Pj4+IHVu
dGlsIGl0IGlzIGZvbGRlZCBiYWNrLiBUaGlzIG9idmlvdXNseSBpcyBhIHBvbGljeSB3aGljaCBz
aG91bGQgYmUga2VwdAo+Pj4+IG91dCBvZiB0aGUga2VybmVsLCBidXQgdGhlIGtlcm5lbCBtdXN0
IHByb3ZpZGUgc3VpdGFibGUgbWVhbnMgdG8gaW1wbGVtZW50Cj4+Pj4gc3VjaCBhIHBvbGljeS4K
Pj4+Cj4+PiBBY3R1YWxseSBsaWJpbnB1dCBhbHJlYWR5IGJpbmRzIHRvZ2V0aGVyIChpbnNpZGUg
bGliaW5wdXQpIFNXX1RBQkxFVF9NT0RFCj4+PiBnZW5lcmF0aW5nIGV2ZGV2IG5vZGVzIGFuZCBl
LmcuIGludGVybmFsIGtleWJvYXJkcyBvbiBkZXZpY2VzIHdpdGggMzYwwrAKPj4+IGhpbmdlcyBm
b3IgdGhpcyByZWFzb24uIGxpYmlucHV0IHNpbXBseSBjbG9zZXMgdGhlIC9kZXYvaW5wdXQvZXZl
bnQjCj4+PiBub2RlIHdoZW4gZm9sZGVkIGFuZCByZS1vcGVucyBpdCB3aGVuIHRoZSBrZXlib2Fy
ZCBzaG91bGQgYmVjb21lIGFjdGl2ZQo+Pj4gYWdhaW4uIFRodXMgbm90IG9ubHkgc3VwcHJlc3Nl
cyBldmVudHMgYnV0IGFsbG93cyBlLmcuIHRvdWNocGFkcyB0bwo+Pj4gZW50ZXIgcnVudGltZSBz
dXNwZW5kIG1vZGUgd2hpY2ggc2F2ZXMgcG93ZXIuIFR5cGljYWxseSBjbG9zaW5nIHRoZQo+Pj4g
L2Rldi9pbnB1dC9ldmVudCMgbm9kZSB3aWxsIGFsc28gZGlzYWJsZSB0aGUgZGV2aWNlIGFzIHdh
a2V1cCBzb3VyY2UuCj4+Pgo+Pj4gU28gSSB3b25kZXIgd2hhdCB0aGlzIHNlcmllcyBhY3R1YWxs
eSBhZGRzIGZvciBmdW5jdGlvbmFsaXR5IGZvcgo+Pj4gdXNlcnNwYWNlIHdoaWNoIGNhbiBub3Qg
YWxyZWFkeSBiZSBhY2hpZXZlZCB0aGlzIHdheT8KPj4+Cj4+PiBJIGFsc28gbm90aWNlZCB0aGF0
IHlvdSBrZWVwIHRoZSBkZXZpY2Ugb3BlbiAoZG8gbm90IGNhbGwgdGhlCj4+PiBpbnB1dF9kZXZp
Y2UncyBjbG9zZSBjYWxsYmFjaykgd2hlbiBpbmhpYml0ZWQgYW5kIGp1c3QgdGhyb3cgYXdheQo+
Pgo+PiBJJ20gbm90IHN1cmUgaWYgSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0bHksIGl0IGlzIGNh
bGxlZDoKPj4KPj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnB1dF9zdG9wKHN0cnVjdCBpbnB1dF9k
ZXYgKmRldikKPj4gK3sKPj4gK8KgwqDCoCBpZiAoZGV2LT5wb2xsZXIpCj4+ICvCoMKgwqDCoMKg
wqDCoCBpbnB1dF9kZXZfcG9sbGVyX3N0b3AoZGV2LT5wb2xsZXIpOwo+PiArwqDCoMKgIGlmIChk
ZXYtPmNsb3NlKQo+PiArwqDCoMKgwqDCoMKgwqAgZGV2LT5jbG9zZShkZXYpOwo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXl5eXl5eXl5eXl5eCj4+ICtzdGF0aWMgaW50
IGlucHV0X2luaGliaXQoc3RydWN0IGlucHV0X2RldiAqZGV2KQo+PiArewo+PiArwqDCoMKgIGlu
dCByZXQgPSAwOwo+PiArCj4+ICvCoMKgwqAgbXV0ZXhfbG9jaygmZGV2LT5tdXRleCk7Cj4+ICsK
Pj4gK8KgwqDCoCBpZiAoZGV2LT5pbmhpYml0ZWQpCj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIG91
dDsKPj4gKwo+PiArwqDCoMKgIGlmIChkZXYtPnVzZXJzKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBp
ZiAoZGV2LT5pbmhpYml0KSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IGRldi0+
aW5oaWJpdChkZXYpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+PiArwqDCoMKgwqDCoMKgwqAg
fQo+PiArwqDCoMKgwqDCoMKgwqAgaW5wdXRfc3RvcChkZXYpOwo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBeXl5eXl5eXl5eXl5eXl5eCj4+Cj4+IEl0IHdpbGwgbm90IGJlIGNh
bGxlZCB3aGVuIGRldi0+dXNlcnMgaXMgemVybywgYnV0IGlmIGl0IGlzIHplcm8sCj4+IHRoZW4g
bm9ib2R5IGhhcyBvcGVuZWQgdGhlIGRldmljZSB5ZXQgc28gdGhlcmUgaXMgbm90aGluZyB0byBj
bG9zZS4KPiAKPiBBaCwgSSBtaXNzZWQgdGhhdC4KPiAKPiBTbyBpZiB0aGUgZGV2aWNlIGltcGxl
bWVudHMgdGhlIGluaGliaXQgY2FsbCBiYWNrIHRoZW4gb24KPiBpbmhpYml0IGl0IHdpbGwgZ2V0
IGJvdGggdGhlIGluaGliaXQgYW5kIGNsb3NlIGNhbGxiYWNrIGNhbGxlZD8KPiAKClRoYXQncyBy
aWdodC4gQW5kIGNvbnZlcnNlbHksIHVwb24gdW5pbmhpYml0IG9wZW4oKSBhbmQgdW5pbmhpYml0
KCkKY2FsbGJhY2tzIHdpbGwgYmUgaW52b2tlZC4gUGxlYXNlIG5vdGUgdGhhdCBqdXN0IGFzIHdp
dGggb3BlbigpL2Nsb3NlKCksCnByb3ZpZGluZyBpbmhpYml0KCkvdW5pbmhpYml0KCkgaXMgb3B0
aW9uYWwuCgo+IEFuZCB3aGF0IGhhcHBlbnMgaWYgdGhlIGxhc3QgdXNlciBnb2VzIGF3YXkgYW5k
IHRoZSBkZXZpY2UKPiBpcyBub3QgaW5oaWJpdGVkPwoKY2xvc2UoKSBpcyBjYWxsZWQgYXMgdXN1
YWxseS4KCj4gCj4gSSdtIHRyeWluZyB0byB1bmRlcnN0YW5kIGhlcmUgd2hhdCB0aGUgZGlmZmVy
ZW5jZSBiZXR3ZWVuIHRoZSAyCj4gaXMgLyB3aGF0IHRoZSBnb2FsIG9mIGhhdmluZyBhIHNlcGFy
YXRlIGluaGliaXQgY2FsbGJhY2sgPwo+IAoKRHJpdmVycyBoYXZlIHZlcnkgZGlmZmVyZW50IGlk
ZWFzIGFib3V0IHdoYXQgaXQgbWVhbnMgdG8gc3VzcGVuZC9yZXN1bWUKYW5kIG9wZW4vY2xvc2Uu
IFRoZSBvcHRpb25hbCBpbmhpYml0L3VuaW5oaWJpdCBjYWxsYmFja3MgYXJlIG1lYW50IGZvcgp0
aGUgZHJpdmVycyB0byBrbm93IHRoYXQgaXQgaXMgdGhpcyBwYXJ0aWN1bGFyIGFjdGlvbiBnb2lu
ZyBvbi4KCkZvciBpbmhpYml0KCkgdGhlcmUncyBvbmUgbW9yZSBhcmd1bWVudDogY2xvc2UoKSBk
b2VzIG5vdCByZXR1cm4gYSB2YWx1ZSwKc28gaXRzIG1lYW5pbmcgaXMgImRvIHNvbWUgbGFzdCBj
bGVhbnVwIiBhbmQgYXMgc3VjaCBpdCBpcyBub3QgYWxsb3dlZAp0byBmYWlsIC0gd2hhdGV2ZXIg
aXRzIGVmZmVjdCBpcywgd2UgbXVzdCBkZWVtIGl0IHN1Y2Nlc3NmdWwuIGluaGliaXQoKQpkb2Vz
IHJldHVybiBhIHZhbHVlIGFuZCBzbyBpdCBpcyBhbGxvd2VkIHRvIGZhaWwuCgpBbGwgaW4gYWxs
LCBpdCBpcyB1cCB0byB0aGUgZHJpdmVycyB0byBkZWNpZGUgd2hpY2ggY2FsbGJhY2sgdGhleQpw
cm92aWRlLiBCYXNlZCBvbiBteSB3b3JrIHNvIGZhciBJIHdvdWxkIHNheSB0aGF0IHRoZXJlIGFy
ZSB0ZW5zCm9mIHNpbXBsZSBjYXNlcyB3aGVyZSBvcGVuKCkgYW5kIGNsb3NlKCkgYXJlIHN1ZmZp
Y2llbnQsIG91dCBvZiB0b3RhbAp+NDAwIHVzZXJzIG9mIGlucHV0X2FsbG9jYXRlX2RldmljZSgp
OgoKJCBnaXQgZ3JlcCAiaW5wdXRfYWxsb2NhdGVfZGV2aWNlKCIgfCBncmVwIC12IF5Eb2N1bWVu
dGF0aW9uIHwgXApjdXQgLWYxIC1kOiB8IHNvcnQgfCB1bmlxIHwgd2MKICAgICAzOTAgICAgIDM5
MCAgIDEzNDk2CgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
