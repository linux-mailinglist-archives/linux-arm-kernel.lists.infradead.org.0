Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E9C1F5601
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 15:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=txshox7onPug/ztAqt2j8I7zeKVavNueZMpry4d2ISI=; b=Fr18CC3r/JS8r8SL8qe2AJJPr
	v1wgQMCPbCTrJxsz3JYDQ7EdI3ligKeA1hoNAPBnaCJ1ETxa2jiJ1czv4o5SDbvreNKz+9roABsQO
	4sNuzEN3zxkC5xXTVjOzesFZo9zUjzK3LpaoHt6Y7yPvO50kMBoDvT74FKg/8KbVswc4eXnNdcRc8
	Lsxl4LIkbUnz9iTR4PsATXD1F8wVYsGLmcNcT+utRqc5oLbUHBND8XZIKQqj70zqJoW9ymWnAZSWE
	NC5Xpzk/ymedFjnreAGwAubCS38h8neBBnPkJdIYIjx8CfhpKdof2TFskJEdgRCZ30moHfv3pihhJ
	dWMiW573Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj0yx-00035i-FE; Wed, 10 Jun 2020 13:41:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj0yn-00035J-V2
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 13:41:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4A6BC2A46E5
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
To: Hans de Goede <hdegoede@redhat.com>, "Rafael J. Wysocki"
 <rafael@kernel.org>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
 <6136f26c-e090-e025-af55-4c5f3a6aec92@collabora.com>
 <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <2d5fd063-66bc-c707-4041-84a17c0a7d04@collabora.com>
Date: Wed, 10 Jun 2020 15:41:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <3e61c9c1-b211-da9f-c55b-b44eb6522f2a@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_064122_257214_B658134D 
X-CRM114-Status: GOOD (  32.98  )
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

SGkgSGFucywKClcgZG5pdSAxMC4wNi4yMDIwIG/CoDE1OjIxLCBIYW5zIGRlIEdvZWRlIHBpc3pl
Ogo+IEhpLAo+IAo+IE9uIDYvMTAvMjAgMzoxMiBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdy
b3RlOgo+PiBIaSBBbGwsCj4+Cj4+IFcgZG5pdSAxMC4wNi4yMDIwIG/CoDEyOjM4LCBSYWZhZWwg
Si4gV3lzb2NraSBwaXN6ZToKPj4+IE9uIFdlZCwgSnVuIDEwLCAyMDIwIGF0IDExOjUwIEFNIEhh
bnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gSGkgQWxs
LAo+Pj4+Cj4+Pj4gT24gNi84LzIwIDE6MjIgUE0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90
ZToKPj4+Pj4gVGhpcyBpcyBhIHF1aWNrIHJlc3BpbiBvZiB2Mywgd2l0aCBqdXN0IHR3byBzbWFs
bCBjaGFuZ2VzLCBwbGVhc2Ugc2VlCj4+Pj4+IHRoZSBjaGFuZ2Vsb2cgYmVsb3cuCj4+Pj4+Cj4+
Pj4+IFVzZXJzcGFjZSBtaWdodCB3YW50IHRvIGltcGxlbWVudCBhIHBvbGljeSB0byB0ZW1wb3Jh
cmlseSBkaXNyZWdhcmQgaW5wdXQKPj4+Pj4gZnJvbSBjZXJ0YWluIGRldmljZXMuCj4+Pj4+Cj4+
Pj4+IEFuIGV4YW1wbGUgdXNlIGNhc2UgaXMgYSBjb252ZXJ0aWJsZSBsYXB0b3AsIHdob3NlIGtl
eWJvYXJkIGNhbiBiZSBmb2xkZWQKPj4+Pj4gdW5kZXIgdGhlIHNjcmVlbiB0byBjcmVhdGUgdGFi
bGV0LWxpa2UgZXhwZXJpZW5jZS4gVGhlIHVzZXIgdGhlbiBtdXN0IGhvbGQKPj4+Pj4gdGhlIGxh
cHRvcCBpbiBzdWNoIGEgd2F5IHRoYXQgaXQgaXMgZGlmZmljdWx0IHRvIGF2b2lkIHByZXNzaW5n
IHRoZSBrZXlib2FyZAo+Pj4+PiBrZXlzLiBJdCBpcyB0aGVyZWZvcmUgZGVzaXJhYmxlIHRvIHRl
bXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dCBmcm9tIHRoZQo+Pj4+PiBrZXlib2FyZCwgdW50aWwg
aXQgaXMgZm9sZGVkIGJhY2suIFRoaXMgb2J2aW91c2x5IGlzIGEgcG9saWN5IHdoaWNoIHNob3Vs
ZAo+Pj4+PiBiZSBrZXB0IG91dCBvZiB0aGUga2VybmVsLCBidXQgdGhlIGtlcm5lbCBtdXN0IHBy
b3ZpZGUgc3VpdGFibGUgbWVhbnMgdG8KPj4+Pj4gaW1wbGVtZW50IHN1Y2ggYSBwb2xpY3kuCj4+
Pj4KPj4+PiBGaXJzdCBvZiBhbGwgc29ycnkgdG8gc3RhcnQgYSBzb21ld2hhdCBuZXcgZGlzY3Vz
c2lvbiBhYm91dCB0aGlzCj4+Pj4gd2hpbGUgdGhpcyBwYXRjaCBzZXQgaXMgYWxzbyBzb21ld2hh
dCBmYXIgYWxvbmcgaW4gdGhlIHJldmlldyBwcm9jZXNzLAo+Pj4+IGJ1dCBJIGJlbGlldmUgd2hh
dCBJIGRpc2N1c3MgYmVsb3cgbmVlZHMgdG8gYmUgdGFrZW4gaW50byBhY2NvdW50Lgo+Pj4+Cj4+
Pj4gWWVzdGVyZGF5IEkgaGF2ZSBiZWVuIGxvb2tpbmcgaW50byB3aHkgYW4gQXN1cyBUMTAxSEEg
d291bGQgbm90IHN0YXkKPj4+PiBzdXNwZW5kZWQgd2hlbiB0aGUgTElEIGlzIGNsb3NlZC4gVGhl
IGNhdXNlIGlzIHRoYXQgdGhlIFVTQiBISUQgbXVsdGktdG91Y2gKPj4+PiB0b3VjaHBhZCBpbiB0
aGUgYmFzZSBvZiB0aGUgZGV2aWNlIHN0YXJ0cyBzZW5kaW5nIGV2ZW50cyB3aGVuIHRoZSBzY3Jl
ZW4KPj4+PiBnZXRzIGNsb3NlIHRvIHRoZSB0b3VjaHBhZCAoc28gd2hlbiB0aGUgTElEIGlzIGZ1
bGx5IGNsb3NlZCkgYW5kIHRoZXNlCj4+Pj4gZXZlbnRzIGFyZSBjYXVzaW5nIGEgd2FrZXVwIGZy
b20gc3VzcGVuZC4gSElEIG11bHRpLXRvdWNoIGRldmljZXMKPj4+PiBkbyBoYXZlIGEgd2F5IHRv
IHRlbGwgdGhlbSB0byBmdWxseSBzdG9wIHNlbmRpbmcgZXZlbnRzLCBhbHNvIGRpc2FibGluZwo+
Pj4+IHRoZSBVU0IgcmVtb3RlIHdha2V1cCB0aGUgZGV2aWNlIGlzIGRvaW5nLiBUaGUgcXVlc3Rp
b24gaXMgd2hlbiB0byB0ZWxsCj4+Pj4gaXQgdG8gbm90IHNlbmQgZXZlbnRzIHRob3VnaCAuLi4K
Pj4+Pgo+Pj4+IFNvIG5vdyBJJ3ZlIGJlZW4gdGhpbmtpbmcgYWJvdXQgaG93IHRvIGZpeCB0aGlz
IGFuZCBJIGJlbGlldmUgdGhhdCB0aGVyZQo+Pj4+IGlzIHNvbWUgaW50ZXJhY3Rpb24gYmV0d2Vl
biB0aGlzIHByb2JsZW0gYW5kIHRoaXMgcGF0Y2gtc2V0Lgo+Pj4+Cj4+Pj4gVGhlIHByb2JsZW0g
SSdtIHNlZWluZyBvbiB0aGUgVDEwMUhBIGlzIGFib3V0IHdha2V1cHMsIHNvIHRoZSBxdWVzdGlv
bgo+Pj4+IHdoaWNoIEkgd2FudCB0byBkaXNjdXNzIGlzOgo+Pj4+Cj4+Pj4gMS4gSG93IGRvZXMg
aW5oaWJpdGluZyBpbnRlcmFjdCB3aXRoIGVuYWJsaW5nIC8KPj4+PiBkaXNhYmxpbmcgdGhlIGRl
dmljZSBhcyBhIHdha2V1cCBzb3VyY2UgPwo+Pj4+Cj4+Pj4gMi4gU2luY2Ugd2UgaGF2ZSBub3cg
bWFkZSBpbmhpYml0aW5nIGVxdWFsIG9wZW4vY2xvc2UgaG93IGRvZXMgb3Blbi9jbG9zZQo+Pj4+
IGludGVyYWN0IHdpdGggYSBkZXZpY2UgYmVpbmcgYSB3YWtldXAgc291cmNlID8KPj4+Pgo+Pj4+
IEFuZCBteSBvd24gaW5pdGlhbCAodG8gYmUgZGlzY3Vzc2VkKSBhbnN3ZXJzIHRvIHRoZXNlIHF1
ZXN0aW9uczoKPj4+Pgo+Pj4+IDEuIEl0IHNlZW1zIHRvIG1lIHRoYXQgd2hlbiBhIGRldmljZSBp
cyBpbmhpYml0ZWQgaXQgc2hvdWxkIG5vdCBiZSBhCj4+Pj4gd2FrZXVwIHNvdXJjZSwgc28gd2hl
cmUgcG9zc2libGUgYSBpbnB1dC1kZXZpY2UtZHJpdmVyIHNob3VsZCBkaXNhYmxlCj4+Pj4gYSBk
ZXZpY2UncyB3YWtldXAgY2FwYWJpbGl0aWVzIG9uIHN1c3BlbmQgaWYgaW5oaWJpdGVkCj4+Pgo+
Pj4gSWYgImluaGliaXQiIG1lYW5zICJkbyBub3QgZ2VuZXJhdGUgYW55IGV2ZW50cyBnb2luZyBm
b3J3YXJkIiwgdGhlbgo+Pj4gdGhpcyBtdXN0IGFsc28gY292ZXIgd2FrZXVwIGV2ZW50cywgc28g
SSBhZ3JlZS4KPj4KPj4gSSBhZ3JlZSwgdG9vLgo+Pgo+Pj4KPj4+PiAyLiBUaGlzIG9uZSBpcyB0
cmlja2llciBJIGRvbid0IHRoaW5rIHdlIGhhdmUgcmVhbGx5IGNsZWFybHkgc3BlY2lmaWVkCj4+
Pj4gYW55IGJlaGF2aW9yIGhlcmUuIFRoZSBkZWZhdWx0IGJlaGF2aW9yIG9mIG1vc3QgZHJpdmVy
cyBzZWVtcyB0byBiZQo+Pj4+IHVzaW5nIHNvbWV0aGluZyBsaWtlIHRoaXMgaW4gdGhlaXIgc3Vz
cGVuZCBjYWxsYmFjazoKPj4+Pgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZGV2aWNlX21h
eV93YWtldXAoZGV2KSkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVu
YWJsZV9pcnFfd2FrZShkYXRhLT5pcnEpOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlIGlm
IChpbnB1dC0+dXNlcnMpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBm
b29fc3RvcF9yZWNlaXZpbmdfZXZlbnRzKGRhdGEpOwo+Pj4+Cj4+Pj4gU2luY2UgdGhpcyBpcyB3
aGF0IG1vc3QgZHJpdmVycyBzZWVtIHRvIGRvIEkgYmVsaWV2ZSB3ZSBzaG91bGQga2VlcAo+Pj4+
IHRoaXMgYXMgaXMgYW5kIHRoYXQgd2Ugc2hvdWxkIGp1c3QgY2xlYXJseSBkb2N1bWVudCB0aGF0
IGlmIHRoZQo+Pj4+IGlucHV0X2RldmljZSBoYXMgdXNlcnMgKGhhcyBiZWVuIG9wZW5lZCkgb3Ig
bm90IGRvZXMgbm90IG1hdHRlcgo+Pj4+IGZvciBpdHMgd2FrZXVwIGJlaGF2aW9yLgo+Pj4+Cj4+
Pj4gQ29tYmluaW5nIHRoZXNlIDIgYW5zd2VycyBsZWFkcyB0byB0aGlzIG5ldyBwc2V1ZG8gY29k
ZSB0ZW1wbGF0ZQo+Pj4+IGZvciBhbiBpbnB1dC1kZXZpY2UncyBzdXNwZW5kIG1ldGhvZDoKPj4+
Pgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgLyoKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKiBJZiBp
bmhpYml0ZWQgd2UgaGF2ZSBhbHJlYWR5IGRpc2FibGVkIGV2ZW50cyBhbmQKPj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgKiB3ZSBkbyBOT1Qgd2FudCB0byBzZXR1cCB0aGUgZGV2aWNlIGFzIHdha2Ug
c291cmNlLgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAg
aWYgKGlucHV0LT5pbmhpYml0ZWQpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIDA7Cj4+Cj4+IFJpZ2h0LCBpZiBhIGRldmljZSBpcyBpbmhpYml0ZWQgaXQgc2hv
dWxkbid0IGJlY29tZSBhIHdha2V1cCBzb3VyY2UsCj4+IGJlY2F1c2UgdGhhdCB3b3VsZCBjb250
cmFkaWN0IHRoZSBwdXJwb3NlIG9mIGJlaW5nIGluaGliaXRlZC4KPiAKPiBBY2suIE5vdGUgSSBk
byB0aGluayB0aGF0IHdlIG5lZWQgdG8gZG9jdW1lbnQgdGhpcyAoYW5kIG1vcmUKPiBpbiBnZW5l
cmFsIHRoZSBhbnN3ZXIgdG8gYm90aCBxdWVzdGlvbnMgZnJvbSBhYm92ZSkgY2xlYXJseSBzbwo+
IHRoYXQgZ29pbmcgZm9yd2FyZCBpZiB0aGVyZSBhcmUgYW55IHF1ZXN0aW9ucyBhYm91dCBob3cg
dGhpcyBpcwo+IHN1cHBvc2VkIHRvIHdvcmsgd2UgY2FuIGp1c3QgcG9pbnQgdG8gdGhlIGRvY3Mu
Cj4gCj4gQ2FuIHlvdSBkbyBhIGZvbGxvdy11cCBwYXRjaCwgb3IgaW5jbHVkZSBhIHBhdGNoIGlu
IHlvdXIgbmV4dAo+IHZlcnNpb24gd2hpY2ggZG9jdW1lbnRzIHRoaXMgKG9uY2Ugd2UgYWdyZWUg
b24gd2hhdCAidGhpcyIKPiBleGFjdGx5IGlzKSA/CgpTdXJlIEkgY2FuLiBKdXN0IG5lZWQgdG8g
a25vdyB3aGVuICJ0aGlzIiBiZWNvbWVzIHN0YWJsZSBlbm91Z2ggOykKSWYgdGhpcyBzZXJpZXMg
b3RoZXJ3aXNlIGxvb2tzIG1hdHVyZSBlbm91Z2ggSSB3b3VsZCBvcHQgZm9yIGEKZm9sbG93LXVw
IHBhdGNoLgoKPiAKPj4+Pgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZGV2aWNlX21heV93
YWtldXAoZGV2KSkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJs
ZV9pcnFfd2FrZShkYXRhLT5pcnEpOwo+Pgo+PiBXaGF0IHdvdWxkIGl0IG1lYW4gdG8gYmVjb21l
IGEgd2FrZXVwIHNvdXJjZSBpZiB0aGVyZSBhcmUgbm8gdXNlcnMsCj4+IG9yIG5vYm9keSBoYXMg
ZXZlciBvcGVuZWQgdGhlIGRldmljZT8gVGhlcmUgYXJlIG5vIGludGVyZXN0ZWQKPj4gaW5wdXQg
aGFuZGxlcnMgKHVzZXJzKSBzbyB3aGF0J3MgdGhlIHBvaW50IG9mIGJlY29taW5nIGEgd2FrZXVw
Cj4+IHNvdXJjZT8gV2h5IHdvdWxkIHRoZSBzeXN0ZW0gbmVlZCB0byB3YWtlIHVwPwo+IAo+IFdl
bGwgdGhpcyBpcyB3aGF0IHdlIGhhdmUgYmVlbiBkb2luZyBzbyBmYXIsIHNvIGFyZ3VhYmx5IHdl
Cj4gbmVlZCB0byBrZWVwIGRvaW5nIGl0IHRvIGF2b2lkIHJlZ3Jlc3Npb25zIC8gYnJlYWtpbmcg
b3VyIEFCSS4KPiAKPiBMZXRzIGZvciBleGFtcGxlIHRha2UgYSBsYXB0b3AsIHdoZXJlIHdoZW4g
c3VzcGVuZGVkIHRoZQo+IHBvd2VyLWJ1dHRvbiBpcyB0aGUgb25seSB2YWxpZCB3YWtldXAtc291
cmNlIGFuZCB0aGlzIGlzCj4gcnVubmluZyBnb29kIG9sZCBzbGFja3dhcmUgd2l0aCBmdndtMiBv
ciB3aW5kb3dtYWtlciBhcwo+ICJkZXNrdG9wIGVudmlyb25tZW50IiwgdGhlbiBsaWtlbHkgbm8g
cHJvY2VzcyB3aWxsIGhhdmUKPiB0aGUgcG93ZXItYnV0dG9uIGlucHV0IGV2ZGV2IG5vZGUgb3Bl
bi7CoCBTdGlsbCB3ZSBzaG91bGQKPiB3YWtldXAgdGhlIGxhcHRvcCBvbiB0aGUgcG93ZXItYnV0
dG9uIHByZXNzLCBvdGhlcndpc2UKPiBpdCB3aWxsIG5ldmVyIHdha2V1cC4KPiAKClRydWUsIHRo
YW5rcyBmb3IgZXhwbGFpbmluZy4KCj4gTm90ZSBJIGFncmVlIHdpdGggeW91IHRoYXQgdGhlIHdh
eSB0aGlzIHdvcmtzIGlzIG5vdAo+IGlkZWFsLCBJIGp1c3QgZG8gbm90IHRoaW5rIHRoYXQgd2Ug
Y2FuIGNoYW5nZSBpdC4KPiAKClJlZ2FyZHMsCgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
