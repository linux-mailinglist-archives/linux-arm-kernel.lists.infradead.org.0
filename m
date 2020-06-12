Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451181F7579
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9FNirNH3DFkeu/cxhh7h6WOrl97PrSrTlxNxJd54/zQ=; b=gLW5e13a6xoaNstHF49pHb8G8
	GOPCIzpKom9uCp27aVuM9Mz1q/AJkRTTaQSONvunIJttpxQ+ypMQ/jgG+DOePgHh8nGA6YAVkH+Go
	7Dnx2DxIRGwPbeUDJ3DnVOmRQGZT9PgV/m/KyFk4UNDDteWKrjGWAJNJQ7rsr7pfc73PJcnJ+jo1m
	nILFG+hddlxzGYCKNrZFhLjb9Dlp8XItry6c+6+MRNUfg0qQ5akxrMFJmj+SN0zOanDP47AP1c+nn
	2CUQQswL88KCQQmLfQv9zUiXkvX1TQZXKpYjx3EJKEw47P/qeV7De830ZGq97563M6kVJdQp1GACK
	Ac/tp8PbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfMC-0007Q9-2L; Fri, 12 Jun 2020 08:48:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfM1-0007P8-5c
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:48:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id ADEDA2A52ED
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
To: Hans de Goede <hdegoede@redhat.com>, "Rafael J. Wysocki"
 <rafael@kernel.org>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
 <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
 <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
 <2d5fd063-66bc-c707-4041-84a17c0a7d04@collabora.com>
 <40988408-8f36-3a52-6439-34084de6b129@redhat.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <16342ec8-2c8e-d030-b253-0db534f04ba6@collabora.com>
Date: Fri, 12 Jun 2020 10:47:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <40988408-8f36-3a52-6439-34084de6b129@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_014801_472289_72DF1B68 
X-CRM114-Status: GOOD (  30.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

SGkgSGFucywKClcgZG5pdSAxMi4wNi4yMDIwIG/CoDEwOjMwLCBIYW5zIGRlIEdvZWRlIHBpc3pl
Ogo+IEhpLAo+IAo+IE9uIDYvMTAvMjAgMzo0MSBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdy
b3RlOgo+PiBIaSBIYW5zLAo+Pgo+PiBXIGRuaXUgMTAuMDYuMjAyMCBvwqAxNToyMSwgSGFucyBk
ZSBHb2VkZSBwaXN6ZToKPj4+IEhpLAo+Pj4KPj4+IE9uIDYvMTAvMjAgMzoxMiBQTSwgQW5kcnpl
aiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+Pj4+IEhpIEFsbCwKPj4+Pgo+Pj4+IFcgZG5pdSAxMC4w
Ni4yMDIwIG/CoDEyOjM4LCBSYWZhZWwgSi4gV3lzb2NraSBwaXN6ZToKPj4+Pj4gT24gV2VkLCBK
dW4gMTAsIDIwMjAgYXQgMTE6NTAgQU0gSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4gSGkgQWxsLAo+Pj4+Pj4KPj4+Pj4+IE9uIDYvOC8yMCAx
OjIyIFBNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+Pj4+Pj4gVGhpcyBpcyBhIHF1
aWNrIHJlc3BpbiBvZiB2Mywgd2l0aCBqdXN0IHR3byBzbWFsbCBjaGFuZ2VzLCBwbGVhc2Ugc2Vl
Cj4+Pj4+Pj4gdGhlIGNoYW5nZWxvZyBiZWxvdy4KPj4+Pj4+Pgo+Pj4+Pj4+IFVzZXJzcGFjZSBt
aWdodCB3YW50IHRvIGltcGxlbWVudCBhIHBvbGljeSB0byB0ZW1wb3JhcmlseSBkaXNyZWdhcmQg
aW5wdXQKPj4+Pj4+PiBmcm9tIGNlcnRhaW4gZGV2aWNlcy4KPj4+Pj4+Pgo+Pj4+Pj4+IEFuIGV4
YW1wbGUgdXNlIGNhc2UgaXMgYSBjb252ZXJ0aWJsZSBsYXB0b3AsIHdob3NlIGtleWJvYXJkIGNh
biBiZSBmb2xkZWQKPj4+Pj4+PiB1bmRlciB0aGUgc2NyZWVuIHRvIGNyZWF0ZSB0YWJsZXQtbGlr
ZSBleHBlcmllbmNlLiBUaGUgdXNlciB0aGVuIG11c3QgaG9sZAo+Pj4+Pj4+IHRoZSBsYXB0b3Ag
aW4gc3VjaCBhIHdheSB0aGF0IGl0IGlzIGRpZmZpY3VsdCB0byBhdm9pZCBwcmVzc2luZyB0aGUg
a2V5Ym9hcmQKPj4+Pj4+PiBrZXlzLiBJdCBpcyB0aGVyZWZvcmUgZGVzaXJhYmxlIHRvIHRlbXBv
cmFyaWx5IGRpc3JlZ2FyZCBpbnB1dCBmcm9tIHRoZQo+Pj4+Pj4+IGtleWJvYXJkLCB1bnRpbCBp
dCBpcyBmb2xkZWQgYmFjay4gVGhpcyBvYnZpb3VzbHkgaXMgYSBwb2xpY3kgd2hpY2ggc2hvdWxk
Cj4+Pj4+Pj4gYmUga2VwdCBvdXQgb2YgdGhlIGtlcm5lbCwgYnV0IHRoZSBrZXJuZWwgbXVzdCBw
cm92aWRlIHN1aXRhYmxlIG1lYW5zIHRvCj4+Pj4+Pj4gaW1wbGVtZW50IHN1Y2ggYSBwb2xpY3ku
Cj4+Pj4+Pgo+Pj4+Pj4gRmlyc3Qgb2YgYWxsIHNvcnJ5IHRvIHN0YXJ0IGEgc29tZXdoYXQgbmV3
IGRpc2N1c3Npb24gYWJvdXQgdGhpcwo+Pj4+Pj4gd2hpbGUgdGhpcyBwYXRjaCBzZXQgaXMgYWxz
byBzb21ld2hhdCBmYXIgYWxvbmcgaW4gdGhlIHJldmlldyBwcm9jZXNzLAo+Pj4+Pj4gYnV0IEkg
YmVsaWV2ZSB3aGF0IEkgZGlzY3VzcyBiZWxvdyBuZWVkcyB0byBiZSB0YWtlbiBpbnRvIGFjY291
bnQuCj4+Pj4+Pgo+Pj4+Pj4gWWVzdGVyZGF5IEkgaGF2ZSBiZWVuIGxvb2tpbmcgaW50byB3aHkg
YW4gQXN1cyBUMTAxSEEgd291bGQgbm90IHN0YXkKPj4+Pj4+IHN1c3BlbmRlZCB3aGVuIHRoZSBM
SUQgaXMgY2xvc2VkLiBUaGUgY2F1c2UgaXMgdGhhdCB0aGUgVVNCIEhJRCBtdWx0aS10b3VjaAo+
Pj4+Pj4gdG91Y2hwYWQgaW4gdGhlIGJhc2Ugb2YgdGhlIGRldmljZSBzdGFydHMgc2VuZGluZyBl
dmVudHMgd2hlbiB0aGUgc2NyZWVuCj4+Pj4+PiBnZXRzIGNsb3NlIHRvIHRoZSB0b3VjaHBhZCAo
c28gd2hlbiB0aGUgTElEIGlzIGZ1bGx5IGNsb3NlZCkgYW5kIHRoZXNlCj4+Pj4+PiBldmVudHMg
YXJlIGNhdXNpbmcgYSB3YWtldXAgZnJvbSBzdXNwZW5kLiBISUQgbXVsdGktdG91Y2ggZGV2aWNl
cwo+Pj4+Pj4gZG8gaGF2ZSBhIHdheSB0byB0ZWxsIHRoZW0gdG8gZnVsbHkgc3RvcCBzZW5kaW5n
IGV2ZW50cywgYWxzbyBkaXNhYmxpbmcKPj4+Pj4+IHRoZSBVU0IgcmVtb3RlIHdha2V1cCB0aGUg
ZGV2aWNlIGlzIGRvaW5nLiBUaGUgcXVlc3Rpb24gaXMgd2hlbiB0byB0ZWxsCj4+Pj4+PiBpdCB0
byBub3Qgc2VuZCBldmVudHMgdGhvdWdoIC4uLgo+Pj4+Pj4KPj4+Pj4+IFNvIG5vdyBJJ3ZlIGJl
ZW4gdGhpbmtpbmcgYWJvdXQgaG93IHRvIGZpeCB0aGlzIGFuZCBJIGJlbGlldmUgdGhhdCB0aGVy
ZQo+Pj4+Pj4gaXMgc29tZSBpbnRlcmFjdGlvbiBiZXR3ZWVuIHRoaXMgcHJvYmxlbSBhbmQgdGhp
cyBwYXRjaC1zZXQuCj4+Pj4+Pgo+Pj4+Pj4gVGhlIHByb2JsZW0gSSdtIHNlZWluZyBvbiB0aGUg
VDEwMUhBIGlzIGFib3V0IHdha2V1cHMsIHNvIHRoZSBxdWVzdGlvbgo+Pj4+Pj4gd2hpY2ggSSB3
YW50IHRvIGRpc2N1c3MgaXM6Cj4+Pj4+Pgo+Pj4+Pj4gMS4gSG93IGRvZXMgaW5oaWJpdGluZyBp
bnRlcmFjdCB3aXRoIGVuYWJsaW5nIC8KPj4+Pj4+IGRpc2FibGluZyB0aGUgZGV2aWNlIGFzIGEg
d2FrZXVwIHNvdXJjZSA/Cj4+Pj4+Pgo+Pj4+Pj4gMi4gU2luY2Ugd2UgaGF2ZSBub3cgbWFkZSBp
bmhpYml0aW5nIGVxdWFsIG9wZW4vY2xvc2UgaG93IGRvZXMgb3Blbi9jbG9zZQo+Pj4+Pj4gaW50
ZXJhY3Qgd2l0aCBhIGRldmljZSBiZWluZyBhIHdha2V1cCBzb3VyY2UgPwo+Pj4+Pj4KPj4+Pj4+
IEFuZCBteSBvd24gaW5pdGlhbCAodG8gYmUgZGlzY3Vzc2VkKSBhbnN3ZXJzIHRvIHRoZXNlIHF1
ZXN0aW9uczoKPj4+Pj4+Cj4+Pj4+PiAxLiBJdCBzZWVtcyB0byBtZSB0aGF0IHdoZW4gYSBkZXZp
Y2UgaXMgaW5oaWJpdGVkIGl0IHNob3VsZCBub3QgYmUgYQo+Pj4+Pj4gd2FrZXVwIHNvdXJjZSwg
c28gd2hlcmUgcG9zc2libGUgYSBpbnB1dC1kZXZpY2UtZHJpdmVyIHNob3VsZCBkaXNhYmxlCj4+
Pj4+PiBhIGRldmljZSdzIHdha2V1cCBjYXBhYmlsaXRpZXMgb24gc3VzcGVuZCBpZiBpbmhpYml0
ZWQKPj4+Pj4KPj4+Pj4gSWYgImluaGliaXQiIG1lYW5zICJkbyBub3QgZ2VuZXJhdGUgYW55IGV2
ZW50cyBnb2luZyBmb3J3YXJkIiwgdGhlbgo+Pj4+PiB0aGlzIG11c3QgYWxzbyBjb3ZlciB3YWtl
dXAgZXZlbnRzLCBzbyBJIGFncmVlLgo+Pj4+Cj4+Pj4gSSBhZ3JlZSwgdG9vLgo+Pj4+Cj4+Pj4+
Cj4+Pj4+PiAyLiBUaGlzIG9uZSBpcyB0cmlja2llciBJIGRvbid0IHRoaW5rIHdlIGhhdmUgcmVh
bGx5IGNsZWFybHkgc3BlY2lmaWVkCj4+Pj4+PiBhbnkgYmVoYXZpb3IgaGVyZS4gVGhlIGRlZmF1
bHQgYmVoYXZpb3Igb2YgbW9zdCBkcml2ZXJzIHNlZW1zIHRvIGJlCj4+Pj4+PiB1c2luZyBzb21l
dGhpbmcgbGlrZSB0aGlzIGluIHRoZWlyIHN1c3BlbmQgY2FsbGJhY2s6Cj4+Pj4+Pgo+Pj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIGlmIChkZXZpY2VfbWF5X3dha2V1cChkZXYpKQo+Pj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbmFibGVfaXJxX3dha2UoZGF0YS0+aXJx
KTsKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlIGlmIChpbnB1dC0+dXNlcnMpCj4+Pj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvb19zdG9wX3JlY2VpdmluZ19l
dmVudHMoZGF0YSk7Cj4+Pj4+Pgo+Pj4+Pj4gU2luY2UgdGhpcyBpcyB3aGF0IG1vc3QgZHJpdmVy
cyBzZWVtIHRvIGRvIEkgYmVsaWV2ZSB3ZSBzaG91bGQga2VlcAo+Pj4+Pj4gdGhpcyBhcyBpcyBh
bmQgdGhhdCB3ZSBzaG91bGQganVzdCBjbGVhcmx5IGRvY3VtZW50IHRoYXQgaWYgdGhlCj4+Pj4+
PiBpbnB1dF9kZXZpY2UgaGFzIHVzZXJzIChoYXMgYmVlbiBvcGVuZWQpIG9yIG5vdCBkb2VzIG5v
dCBtYXR0ZXIKPj4+Pj4+IGZvciBpdHMgd2FrZXVwIGJlaGF2aW9yLgo+Pj4+Pj4KPj4+Pj4+IENv
bWJpbmluZyB0aGVzZSAyIGFuc3dlcnMgbGVhZHMgdG8gdGhpcyBuZXcgcHNldWRvIGNvZGUgdGVt
cGxhdGUKPj4+Pj4+IGZvciBhbiBpbnB1dC1kZXZpY2UncyBzdXNwZW5kIG1ldGhvZDoKPj4+Pj4+
Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIC8qCj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKiBJ
ZiBpbmhpYml0ZWQgd2UgaGF2ZSBhbHJlYWR5IGRpc2FibGVkIGV2ZW50cyBhbmQKPj4+Pj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCAqIHdlIGRvIE5PVCB3YW50IHRvIHNldHVwIHRoZSBkZXZpY2UgYXMg
d2FrZSBzb3VyY2UuCj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4+Pj4+IMKgwqDCoMKg
wqDCoMKgwqAgaWYgKGlucHV0LT5pbmhpYml0ZWQpCj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+Pgo+Pj4+IFJpZ2h0LCBpZiBhIGRldmljZSBpcyBp
bmhpYml0ZWQgaXQgc2hvdWxkbid0IGJlY29tZSBhIHdha2V1cCBzb3VyY2UsCj4+Pj4gYmVjYXVz
ZSB0aGF0IHdvdWxkIGNvbnRyYWRpY3QgdGhlIHB1cnBvc2Ugb2YgYmVpbmcgaW5oaWJpdGVkLgo+
Pj4KPj4+IEFjay4gTm90ZSBJIGRvIHRoaW5rIHRoYXQgd2UgbmVlZCB0byBkb2N1bWVudCB0aGlz
IChhbmQgbW9yZQo+Pj4gaW4gZ2VuZXJhbCB0aGUgYW5zd2VyIHRvIGJvdGggcXVlc3Rpb25zIGZy
b20gYWJvdmUpIGNsZWFybHkgc28KPj4+IHRoYXQgZ29pbmcgZm9yd2FyZCBpZiB0aGVyZSBhcmUg
YW55IHF1ZXN0aW9ucyBhYm91dCBob3cgdGhpcyBpcwo+Pj4gc3VwcG9zZWQgdG8gd29yayB3ZSBj
YW4ganVzdCBwb2ludCB0byB0aGUgZG9jcy4KPj4+Cj4+PiBDYW4geW91IGRvIGEgZm9sbG93LXVw
IHBhdGNoLCBvciBpbmNsdWRlIGEgcGF0Y2ggaW4geW91ciBuZXh0Cj4+PiB2ZXJzaW9uIHdoaWNo
IGRvY3VtZW50cyB0aGlzIChvbmNlIHdlIGFncmVlIG9uIHdoYXQgInRoaXMiCj4+PiBleGFjdGx5
IGlzKSA/Cj4+Cj4+IFN1cmUgSSBjYW4uIEp1c3QgbmVlZCB0byBrbm93IHdoZW4gInRoaXMiIGJl
Y29tZXMgc3RhYmxlIGVub3VnaCA7KQo+PiBJZiB0aGlzIHNlcmllcyBvdGhlcndpc2UgbG9va3Mg
bWF0dXJlIGVub3VnaCBJIHdvdWxkIG9wdCBmb3IgYQo+PiBmb2xsb3ctdXAgcGF0Y2guCj4gCj4g
RldJVyBhZnRlciBteSBmbGlwLWZsb3AgdG8gYWdyZWVpbmcgd2l0aCBEbWl0cnkgdGhhdCB0aGUg
Mgo+IChpbmhpYml0IHZzIHdha2V1cCkgc2hvdWxkIGJlIGNvbXBsZXRlbHkgb3J0aG9nb25hbCB0
aGlzIG5ldwo+IHBvbGljeSBpcyBzdGFibGUvbWF0dXJlIGZyb20gbXkgcG92IChhbmQgY29uc2lz
dGVudCB3aXRoIGhvdwo+IHdlIGhhbmRsZSB3YWtldXAgdnMgaW5wdXRfZGV2LT51c2VycykuCj4g
Cj4gSSBzdGlsbCB0aGluayBpdCB3b3VsZCBiZSBnb29kIHRvIGRvIGEgZm9sbG93LXVwIGRvY3Vt
ZW50YXRpb24KPiBwYXRjaCBkb2N1bWVudGluZyB0aGF0IHRoZXNlIChhbmQgZXNwLiBpbmhpYml0
KSBhcmUgb3J0aG9nb25hbC4KPiAKPiBUaGlzIHdpbGwgbWVhbiBmb3IgZXhhbXBsZSB0aGF0IGlm
IGEgZGV2aWNlIGlzIGluaGliaXQgYnV0Cj4gc3RpbGwgd2FrZXVwIGVuYWJsZWQgYW5kIHRoZSBk
ZXZpY2UncyBjbG9zZSBtZXRob2Qgc2lsZW5jZXMKPiB0aGUgZGV2aWNlcywgdGhhdCBpdCBuZWVk
cyB0byBiZSB1bnNpbGVuY2VkIGluIHN1c3BlbmQuCj4gVGhpcyBtaWdodCBiZSB3b3J0aCBtZW50
aW9uaW5nIGluIHRoZSBkb2NzIGV2ZW4gdGhvdWdoCj4gZHJpdmVycyB3aGljaCBzaWxlbmNlIHRo
ZSBkZXZpY2Ugb24gY2xvc2Ugc2hvdWxkIGFscmVhZHkKPiB1bnNpbGVuY2UgdGhlIGRldmljZSBv
biBzdXNwZW5kIHdoZW4gaXQgaXMgd2FrZXVwLWVuYWJsZWQuCj4gCj4gTm90ZSBtYXliZSB3ZSBz
aG91bGQgZ2l2ZSBpdCBhIGNvdXBsZSBvZiBkYXlzIGZvciBvdGhlcnMgdG8KPiBnaXZlIHRoZWly
IG9waW5pb24gYmVmb3JlIHlvdSBzdWJtaXQgdGhlIGZvbGxvdy11cCBkb2N1bWVudGF0aW9uCj4g
cGF0Y2guCj4gCgpUcnVlLiBJIHdpbGwgc2VuZCBzb21ldGhpbmcgYWZ0ZXIgdGhlIHdlZWtlbmQu
CgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
