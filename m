Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E621F5578
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 15:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J69wsHUvQNuyugoGvcd66GnXKhPoY3PGrR+4+5SlN44=; b=Np8kX54sBrMe/pom4VALJSawi
	aWF+po0ZBlPqWA9Mswu1poItkeQXmnGk5+3OzK5TyeR7fnb1py1L2edfXMQmHMDzl9US23tG0oxf8
	x9SX79bp+K5aj7h3/ckb1r27El7FqZxbtHvlzZQyBO5sVLAFlsLAnhzCt+a7xNsN8W2sLJkcoSyz3
	ZiR+m5v9WqKKm592qZQvKUthDFU2uoi4Q3Q/q3guRx1kn58UcGSugXduG7mHY5HtRqjLPI8aVietL
	4JEvxO1QUvLuF1RfT/Rg1qniHmXdgXwy8npqrwqB+ExB9Nv9W3izqnOaJmY4U8DGR2KwWGBciuZ90
	lMwaiLlUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj0XB-00022q-Vk; Wed, 10 Jun 2020 13:12:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj0Wz-00022K-Qy
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 13:12:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id DE8CE2A44F8
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
Date: Wed, 10 Jun 2020 15:12:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_061238_141669_B3B0DF43 
X-CRM114-Status: GOOD (  39.09  )
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
Cc: Collabora Kernel ML <kernel@collabora.com>, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Linux Samsung SoC <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxsLAoKVyBkbml1IDEwLjA2LjIwMjAgb8KgMTI6MzgsIFJhZmFlbCBKLiBXeXNvY2tpIHBp
c3plOgo+IE9uIFdlZCwgSnVuIDEwLCAyMDIwIGF0IDExOjUwIEFNIEhhbnMgZGUgR29lZGUgPGhk
ZWdvZWRlQHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBIaSBBbGwsCj4+Cj4+IE9uIDYvOC8yMCAx
OjIyIFBNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+PiBUaGlzIGlzIGEgcXVpY2sg
cmVzcGluIG9mIHYzLCB3aXRoIGp1c3QgdHdvIHNtYWxsIGNoYW5nZXMsIHBsZWFzZSBzZWUKPj4+
IHRoZSBjaGFuZ2Vsb2cgYmVsb3cuCj4+Pgo+Pj4gVXNlcnNwYWNlIG1pZ2h0IHdhbnQgdG8gaW1w
bGVtZW50IGEgcG9saWN5IHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dAo+Pj4gZnJvbSBj
ZXJ0YWluIGRldmljZXMuCj4+Pgo+Pj4gQW4gZXhhbXBsZSB1c2UgY2FzZSBpcyBhIGNvbnZlcnRp
YmxlIGxhcHRvcCwgd2hvc2Uga2V5Ym9hcmQgY2FuIGJlIGZvbGRlZAo+Pj4gdW5kZXIgdGhlIHNj
cmVlbiB0byBjcmVhdGUgdGFibGV0LWxpa2UgZXhwZXJpZW5jZS4gVGhlIHVzZXIgdGhlbiBtdXN0
IGhvbGQKPj4+IHRoZSBsYXB0b3AgaW4gc3VjaCBhIHdheSB0aGF0IGl0IGlzIGRpZmZpY3VsdCB0
byBhdm9pZCBwcmVzc2luZyB0aGUga2V5Ym9hcmQKPj4+IGtleXMuIEl0IGlzIHRoZXJlZm9yZSBk
ZXNpcmFibGUgdG8gdGVtcG9yYXJpbHkgZGlzcmVnYXJkIGlucHV0IGZyb20gdGhlCj4+PiBrZXli
b2FyZCwgdW50aWwgaXQgaXMgZm9sZGVkIGJhY2suIFRoaXMgb2J2aW91c2x5IGlzIGEgcG9saWN5
IHdoaWNoIHNob3VsZAo+Pj4gYmUga2VwdCBvdXQgb2YgdGhlIGtlcm5lbCwgYnV0IHRoZSBrZXJu
ZWwgbXVzdCBwcm92aWRlIHN1aXRhYmxlIG1lYW5zIHRvCj4+PiBpbXBsZW1lbnQgc3VjaCBhIHBv
bGljeS4KPj4KPj4gRmlyc3Qgb2YgYWxsIHNvcnJ5IHRvIHN0YXJ0IGEgc29tZXdoYXQgbmV3IGRp
c2N1c3Npb24gYWJvdXQgdGhpcwo+PiB3aGlsZSB0aGlzIHBhdGNoIHNldCBpcyBhbHNvIHNvbWV3
aGF0IGZhciBhbG9uZyBpbiB0aGUgcmV2aWV3IHByb2Nlc3MsCj4+IGJ1dCBJIGJlbGlldmUgd2hh
dCBJIGRpc2N1c3MgYmVsb3cgbmVlZHMgdG8gYmUgdGFrZW4gaW50byBhY2NvdW50Lgo+Pgo+PiBZ
ZXN0ZXJkYXkgSSBoYXZlIGJlZW4gbG9va2luZyBpbnRvIHdoeSBhbiBBc3VzIFQxMDFIQSB3b3Vs
ZCBub3Qgc3RheQo+PiBzdXNwZW5kZWQgd2hlbiB0aGUgTElEIGlzIGNsb3NlZC4gVGhlIGNhdXNl
IGlzIHRoYXQgdGhlIFVTQiBISUQgbXVsdGktdG91Y2gKPj4gdG91Y2hwYWQgaW4gdGhlIGJhc2Ug
b2YgdGhlIGRldmljZSBzdGFydHMgc2VuZGluZyBldmVudHMgd2hlbiB0aGUgc2NyZWVuCj4+IGdl
dHMgY2xvc2UgdG8gdGhlIHRvdWNocGFkIChzbyB3aGVuIHRoZSBMSUQgaXMgZnVsbHkgY2xvc2Vk
KSBhbmQgdGhlc2UKPj4gZXZlbnRzIGFyZSBjYXVzaW5nIGEgd2FrZXVwIGZyb20gc3VzcGVuZC4g
SElEIG11bHRpLXRvdWNoIGRldmljZXMKPj4gZG8gaGF2ZSBhIHdheSB0byB0ZWxsIHRoZW0gdG8g
ZnVsbHkgc3RvcCBzZW5kaW5nIGV2ZW50cywgYWxzbyBkaXNhYmxpbmcKPj4gdGhlIFVTQiByZW1v
dGUgd2FrZXVwIHRoZSBkZXZpY2UgaXMgZG9pbmcuIFRoZSBxdWVzdGlvbiBpcyB3aGVuIHRvIHRl
bGwKPj4gaXQgdG8gbm90IHNlbmQgZXZlbnRzIHRob3VnaCAuLi4KPj4KPj4gU28gbm93IEkndmUg
YmVlbiB0aGlua2luZyBhYm91dCBob3cgdG8gZml4IHRoaXMgYW5kIEkgYmVsaWV2ZSB0aGF0IHRo
ZXJlCj4+IGlzIHNvbWUgaW50ZXJhY3Rpb24gYmV0d2VlbiB0aGlzIHByb2JsZW0gYW5kIHRoaXMg
cGF0Y2gtc2V0Lgo+Pgo+PiBUaGUgcHJvYmxlbSBJJ20gc2VlaW5nIG9uIHRoZSBUMTAxSEEgaXMg
YWJvdXQgd2FrZXVwcywgc28gdGhlIHF1ZXN0aW9uCj4+IHdoaWNoIEkgd2FudCB0byBkaXNjdXNz
IGlzOgo+Pgo+PiAxLiBIb3cgZG9lcyBpbmhpYml0aW5nIGludGVyYWN0IHdpdGggZW5hYmxpbmcg
Lwo+PiBkaXNhYmxpbmcgdGhlIGRldmljZSBhcyBhIHdha2V1cCBzb3VyY2UgPwo+Pgo+PiAyLiBT
aW5jZSB3ZSBoYXZlIG5vdyBtYWRlIGluaGliaXRpbmcgZXF1YWwgb3Blbi9jbG9zZSBob3cgZG9l
cyBvcGVuL2Nsb3NlCj4+IGludGVyYWN0IHdpdGggYSBkZXZpY2UgYmVpbmcgYSB3YWtldXAgc291
cmNlID8KPj4KPj4gQW5kIG15IG93biBpbml0aWFsICh0byBiZSBkaXNjdXNzZWQpIGFuc3dlcnMg
dG8gdGhlc2UgcXVlc3Rpb25zOgo+Pgo+PiAxLiBJdCBzZWVtcyB0byBtZSB0aGF0IHdoZW4gYSBk
ZXZpY2UgaXMgaW5oaWJpdGVkIGl0IHNob3VsZCBub3QgYmUgYQo+PiB3YWtldXAgc291cmNlLCBz
byB3aGVyZSBwb3NzaWJsZSBhIGlucHV0LWRldmljZS1kcml2ZXIgc2hvdWxkIGRpc2FibGUKPj4g
YSBkZXZpY2UncyB3YWtldXAgY2FwYWJpbGl0aWVzIG9uIHN1c3BlbmQgaWYgaW5oaWJpdGVkCj4g
Cj4gSWYgImluaGliaXQiIG1lYW5zICJkbyBub3QgZ2VuZXJhdGUgYW55IGV2ZW50cyBnb2luZyBm
b3J3YXJkIiwgdGhlbgo+IHRoaXMgbXVzdCBhbHNvIGNvdmVyIHdha2V1cCBldmVudHMsIHNvIEkg
YWdyZWUuCgpJIGFncmVlLCB0b28uCgo+IAo+PiAyLiBUaGlzIG9uZSBpcyB0cmlja2llciBJIGRv
bid0IHRoaW5rIHdlIGhhdmUgcmVhbGx5IGNsZWFybHkgc3BlY2lmaWVkCj4+IGFueSBiZWhhdmlv
ciBoZXJlLiBUaGUgZGVmYXVsdCBiZWhhdmlvciBvZiBtb3N0IGRyaXZlcnMgc2VlbXMgdG8gYmUK
Pj4gdXNpbmcgc29tZXRoaW5nIGxpa2UgdGhpcyBpbiB0aGVpciBzdXNwZW5kIGNhbGxiYWNrOgo+
Pgo+PiAgICAgICAgICAgaWYgKGRldmljZV9tYXlfd2FrZXVwKGRldikpCj4+ICAgICAgICAgICAg
ICAgICAgIGVuYWJsZV9pcnFfd2FrZShkYXRhLT5pcnEpOwo+PiAgICAgICAgICAgZWxzZSBpZiAo
aW5wdXQtPnVzZXJzKQo+PiAgICAgICAgICAgICAgICAgICBmb29fc3RvcF9yZWNlaXZpbmdfZXZl
bnRzKGRhdGEpOwo+Pgo+PiBTaW5jZSB0aGlzIGlzIHdoYXQgbW9zdCBkcml2ZXJzIHNlZW0gdG8g
ZG8gSSBiZWxpZXZlIHdlIHNob3VsZCBrZWVwCj4+IHRoaXMgYXMgaXMgYW5kIHRoYXQgd2Ugc2hv
dWxkIGp1c3QgY2xlYXJseSBkb2N1bWVudCB0aGF0IGlmIHRoZQo+PiBpbnB1dF9kZXZpY2UgaGFz
IHVzZXJzIChoYXMgYmVlbiBvcGVuZWQpIG9yIG5vdCBkb2VzIG5vdCBtYXR0ZXIKPj4gZm9yIGl0
cyB3YWtldXAgYmVoYXZpb3IuCj4+Cj4+IENvbWJpbmluZyB0aGVzZSAyIGFuc3dlcnMgbGVhZHMg
dG8gdGhpcyBuZXcgcHNldWRvIGNvZGUgdGVtcGxhdGUKPj4gZm9yIGFuIGlucHV0LWRldmljZSdz
IHN1c3BlbmQgbWV0aG9kOgo+Pgo+PiAgICAgICAgICAvKgo+PiAgICAgICAgICAgKiBJZiBpbmhp
Yml0ZWQgd2UgaGF2ZSBhbHJlYWR5IGRpc2FibGVkIGV2ZW50cyBhbmQKPj4gICAgICAgICAgICog
d2UgZG8gTk9UIHdhbnQgdG8gc2V0dXAgdGhlIGRldmljZSBhcyB3YWtlIHNvdXJjZS4KPj4gICAg
ICAgICAgICovCj4+ICAgICAgICAgIGlmIChpbnB1dC0+aW5oaWJpdGVkKQo+PiAgICAgICAgICAg
ICAgICAgIHJldHVybiAwOwoKUmlnaHQsIGlmIGEgZGV2aWNlIGlzIGluaGliaXRlZCBpdCBzaG91
bGRuJ3QgYmVjb21lIGEgd2FrZXVwIHNvdXJjZSwKYmVjYXVzZSB0aGF0IHdvdWxkIGNvbnRyYWRp
Y3QgdGhlIHB1cnBvc2Ugb2YgYmVpbmcgaW5oaWJpdGVkLgoKPj4KPj4gICAgICAgICAgIGlmIChk
ZXZpY2VfbWF5X3dha2V1cChkZXYpKQo+PiAgICAgICAgICAgICAgICAgICBlbmFibGVfaXJxX3dh
a2UoZGF0YS0+aXJxKTsKCldoYXQgd291bGQgaXQgbWVhbiB0byBiZWNvbWUgYSB3YWtldXAgc291
cmNlIGlmIHRoZXJlIGFyZSBubyB1c2VycywKb3Igbm9ib2R5IGhhcyBldmVyIG9wZW5lZCB0aGUg
ZGV2aWNlPyBUaGVyZSBhcmUgbm8gaW50ZXJlc3RlZAppbnB1dCBoYW5kbGVycyAodXNlcnMpIHNv
IHdoYXQncyB0aGUgcG9pbnQgb2YgYmVjb21pbmcgYSB3YWtldXAKc291cmNlPyBXaHkgd291bGQg
dGhlIHN5c3RlbSBuZWVkIHRvIHdha2UgdXA/Cgo+PiAgICAgICAgICAgZWxzZSBpZiAoaW5wdXQt
PnVzZXJzKQo+PiAgICAgICAgICAgICAgICAgICBmb29fc3RvcF9yZWNlaXZpbmdfZXZlbnRzKGRh
dGEpOwo+Pgo+PiAjIyMKPiAKPiBTb3VuZHMgcmVhc29uYWJsZSB0byBtZS4KPiAKPj4gQSBkaWZm
ZXJlbnQsIGJ1dCByZWxhdGVkIGlzc3VlIGlzIGhvdyB0byBtYWtlIGRldmljZXMgYWN0dWFsbHkg
dXNlIHRoZQo+PiBuZXcgaW5oaWJpdCBzdXBwb3J0IG9uIHRoZSBidWlsdGluIGtleWJvYXJkICsg
dG91Y2hwYWQgd2hlbiBzYXkgdGhlIGxpZAo+PiBpcyBjbG9zZWQuICAgQXJndWFibHkgdGhpcyBp
cyBhbiB1c2Vyc3BhY2UgcHJvYmxlbSwgYnV0IGl0IGlzIGEgdHJpY2t5Cj4+IG9uZS4gQ3VycmVu
dGx5IG9uIG1vc3QgbW9kZXJuIExpbnV4IGRpc3RyaWJ1dGlvbnMgc3VzcGVuZC1vbi1saWQtY2xv
c2UKPj4gaXMgaGFuZGxlZCBieSBzeXN0ZW1kLWxvZ2luZCBhbmQgbW9zdCBtb2Rlcm4gZGVza3Rv
cC1lbnZpcm9ubWVudHMgYXJlCj4+IGhhcHB5IHRvIGhhdmUgbG9naW5kIGhhbmRsZSB0aGlzIGZv
ciB0aGVtLgo+Pgo+PiBCdXQgbW9zdCBrbm93bGVkZ2UgYWJvdXQgaW5wdXQgZGV2aWNlcyBhbmQg
ZS5nLiBoZXVyaXNpdGljcyB0byBkZWNpZGUKPj4gaWYgYSB0b3VjaHBhZCBpcyBpbnRlcm5hbCBv
ciBleHRlcm5hbCBhcmUgcGFydCBvZiBsaWJpbnB1dC4gTm93IHdlIGNvdWxkCj4+IGhhdmUgbGli
aW5wdXQgdXNlIHRoZSBuZXcgaW5oaWJpdCBzdXBwb3J0ICgxKSwgYnV0IHRoZW4gd2hlbiB0aGUg
bGlkCj4+IGNsb3NlcyB3ZSBnZXQgcmFjZSBiZXR3ZWVuIHdoYXRldmVyIHByb2Nlc3MgaXMgdXNp
bmcgbGliaW5wdXQgdHJ5aW5nCj4+IHRvIGluaGliaXQgdGhlIHRvdWNocGFkICh3aGljaCBtdXN0
IGJlIGRvbmUgYmVmb3JlIHRvIHN1c3BlbmQgdG8gZGlzYWJsZQo+PiBpdCBhcyB3YWtldXAgc291
cmNlKSBhbmQgbG9naW5kIHRyeWluZyB0byBzdXNwZW5kIHRoZSBzeXN0ZW0uCj4+Cj4+IE9uZSBz
b2x1dGlvbiBoZXJlIHdvdWxkIGJlIHRvIG1vdmUgdGhlIHNldHRpbmcgb2YgdGhlIGluaGliaXQg
c3lzZnMKPj4gYXR0ciBpbnRvIGxvZ2luZCwgYnV0IHRoYXQgcmVxdWlyZXMgYWRkaW5nIGEgd2hv
bGUgYnVuY2ggb2YgZXh0cmEKPj4ga25vd2xlZGdlIHRvIGxvZ2luZCB3aGljaCBkb2VzIG5vdCBy
ZWFsbHkgYmVsb25nIHRoZXJlIElNSE8uCj4+Cj4+IEkndmUgYmVlbiB0aGlua2luZyBhIGJpdCBh
Ym91dCB0aGlzIGFuZCB0byBtZSBpdCBzZWVtcyB0aGF0IHRoZSBrZXJuZWwKPj4gaXMgaW4gdGhl
IGlkZWFsIHBvc2l0aW9uIHRvIGF1dG9tYXRpY2FsbHkgaW5oaWJpdCBzb21lIGRldmljZXMgd2hl
bgo+PiBzb21lIEVWX1NXIHRyYW5zaXRpb25zIGZyb20gMC0+MSAoYW5kIHVuaW5oaWJpdCBhZ2Fp
biBvbiAxLT4wKS4gVGhlCj4+IGlzc3VlIGhlcmUgaXMgdG8gY2hvc2Ugb24gd2hpY2ggZGV2aWNl
cyB0byBlbmFibGUgdGhpcy4gSSBiZWxpZXZlCj4+IHRoYXQgdGhlIGF1dG8gaW5oaWJpdCBvbiBz
b21lIHN3aXRjaGVzIG1lY2hhbmlzbSBpcyBiZXN0IGRvbmUgaW5zaWRlCj4+IHRoZSBrZXJuZWwg
KGRpc2FibGVkIGJ5IGRlZmF1bHQpIGFuZCB0aGVuIHdlIGNhbiBoYXZlIGEgc3lzZnMKPj4gYXR0
ciBjYWxsZWQgYXV0b19pbmhpYml0X2V2X3N3X21hc2sgd2hpY2ggY2FuIGJlIHNldCB0byBlLmcu
Cj4+ICgxIDw8IFNXX0xJRCkgdG8gbWFrZSB0aGUga2VybmVsIGF1dG8taW5oaWJpdCB0aGUgaW5w
dXQtZGV2aWNlIHdoZW5ldmVyCj4+IHRoZSBsaWQgaXMgY2xvc2VkLCBvciB0byAoKDEgPDwgU1df
TElEKSB8ICgxIDw8IFNXX1RBQkxFVF9NT0RFKSkgdG8KPj4gaW5oaWJpdCBib3RoIHdoZW4gdGhl
IGxpZCBpcyBjbG9zZWQgb3Igd2hlbiBzd2l0Y2hlZCB0byB0YWJsZXQgbW9kZS4KPiAKPiBJIGFn
cmVlIHRoYXQgdGhlIGtlcm5lbCBpcyB0aGUgcmlnaHQgcGxhY2UgdG8gaGFuZGxlIHRoaXMsIGJ1
dCBpdAo+IHJlcXVpcmVzIHNvbWUgZXh0cmEga25vd2xlZGdlIGFib3V0IGRlcGVuZGVuY2llcyBi
ZXR3ZWVuIGRldmljZXMuCj4gCj4gSXQnZCBiZSBraW5kIG9mIGxpa2UgcG93ZXIgcmVzb3VyY2Vz
IGluIEFDUEksIHNvIGZvciBlYWNoIHN0YXRlIG9mIGEKPiAibWFzdGVyIiBkZXZpY2UgKGluIHBy
aW5jaXBsZSwgdGhlcmUgbWF5IGJlIG1vcmUgc3RhdGVzIG9mIGl0IHRoYW4KPiBqdXN0IHR3bykg
dGhlcmUgd291bGQgYmUgYSBsaXN0IG9mICJkZXBlbmRlbnQiIGludHB1dCBkZXZpY2VzIHRoYXQK
PiBuZWVkIHRvIGJlIGluaGliaXRlZCB3aGVuIHRoZSAibWFzdGVyIiBkZXZpY2UgZ29lcyBpbnRv
IHRoYXQgc3RhdGUuCj4gCj4+IFRoaXMgY291bGQgdGhlbiBiZSBjb21iaW5lZCB3aXRoIGEgdXNl
cnNwYWNlIHV0aWxpdHkgcnVuIGZyb20gYW4KPj4gdWRldiBydWxlIHdoaWNoIG1ha2VzIHRoZSBh
Y3R1YWwgZGVjaXNpb24gd2hhdCBhdXRvX2luaGliaXRfZXZfc3dfbWFzawo+PiBzaG91bGQgYmUg
c2V0IGZvciBhIGdpdmVuIGlucHV0IGRldmljZS4KPj4KPj4gVGhpcyB3aWxsIHB1dCB0aGUgbWVj
aGFuaXNtIGZvciB3aGF0IHdlIHdhbnQgaW5zaWRlIHRoZSBrZXJuZWwgYW5kCj4+IGxlYXZlcyB0
aGUgcG9saWN5IG9uIHdoaWNoIHN3aXRjaGVzIHdlIHdhbnQgdGhpcyBmb3Igb3V0IG9mIHRoZQo+
PiBrZXJuZWwuCj4+Cj4+IE5vdGUgYWRkaW5nIHRoaXMgbmV3IGF1dG9faW5oaWJpdF9ldl9zd19t
YXNrIHN5c2ZzIGF0dHIgZmFsbHMKPj4gc29tZXdoYXQgb3V0c2lkZSB0aGUgY29udGV4dCBvZiB0
aGlzIHBhdGNoc2V0IGFuZCBjb3VsZCBiZSBkb25lCj4+IGFzIGEgZm9sbG93IHVwIHRvIHRoaXMg
cGF0Y2gtc2V0LgoKWWVzLCBwbGVhc2UgOykKCkJ1dCBJIGRvIGJlbGlldmUgdGhhdCB3ZSBuZWVk
IHRvCj4+IGZpZ3VyZSBvdXQgaG93IChub24gQ2hyb21lT1MpIHVzZXJzcGFjZSBjYW4gLyB3aWxs
IHVzZSB0aGUgbmV3IGluaGliaXQKPj4gaW50ZXJmYWNlIGJlZm9yZSBtZXJnaW5nIGl0LgoKT2Yg
Y291cnNlLgoKUmVnYXJkcywKCkFuZHJ6ZWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
