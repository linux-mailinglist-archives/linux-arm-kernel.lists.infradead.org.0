Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB961EC229
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PbLQcEcZNQbBXfI8wJI463KthnjhfvnJYfFuReSTC3c=; b=lWs/ZCfqIKQxgQLZK859m/wsd
	DgPcCL0OiW52v0xL1wO4EBrrdeD5jI7+dDpG8KxLqwaGavK32XAxoY5X3s6Odkf/QGCtp9JZ2Wzpx
	Z2rTDUzRKb2DsHd8kVvgbeYnfgqFcEA+4WgxgCs0dE6CzLbbo4Uk+wkBkG8pNBFA/uHxrX0rHQs2H
	eXcg9bJx9CaISOBNaeK5VjP6SG9zHaCf9uAxNih8hNg/P+TkfOx/dSjX996KMcUoppCNmx7QZnT/3
	5K8eHCpx+Fs3ki+l6YdvKFCjdpC/mTK8aJqXmqt55CSFgVjLE9HMGa/HxEIetwy/AaVtxLdEs2rTF
	xgqXBXpKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBzS-0007O9-Lj; Tue, 02 Jun 2020 18:50:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBzK-0007Gg-Lh
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 18:50:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 6D3B82A3702
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <e6030957-97dc-5b04-7855-bc14a78164c8@collabora.com>
 <6d9921fc-5c2f-beda-4dcd-66d6970a22fe@redhat.com>
 <09679de4-75d3-1f29-ec5f-8d42c84273dd@collabora.com>
 <f674ba4f-bd83-0877-c730-5dc6ea09ae4b@redhat.com>
 <2d224833-3a7e-bc7c-af15-1f803f466697@collabora.com>
 <aa2ce2ab-e5bc-9cb4-8b53-c1ef9348b646@redhat.com>
 <20200527063430.GJ89269@dtor-ws>
 <88f939cd-1518-d516-59f2-8f627a6a70d2@collabora.com>
 <20200602175241.GO89269@dtor-ws>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <82e9f2ab-a16e-51ee-1413-bedf0122026a@collabora.com>
Date: Tue, 2 Jun 2020 20:50:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200602175241.GO89269@dtor-ws>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_115014_985679_CC36B4D0 
X-CRM114-Status: GOOD (  30.24  )
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
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRG1pdHJ5LAoKVyBkbml1IDAyLjA2LjIwMjAgb8KgMTk6NTIsIERtaXRyeSBUb3Jva2hvdiBw
aXN6ZToKPiBIaSBBbmRyemVqLAo+IAo+IE9uIFR1ZSwgSnVuIDAyLCAyMDIwIGF0IDA2OjU2OjQw
UE0gKzAyMDAsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPj4gSGkgRG1pdHJ5LAo+Pgo+
PiBXIGRuaXUgMjcuMDUuMjAyMCBvwqAwODozNCwgRG1pdHJ5IFRvcm9raG92IHBpc3plOgo+Pj4g
VGhhdCBzYWlkLCBJIHRoaW5rIHRoZSB3YXkgd2Ugc2hvdWxkIGhhbmRsZSBpbmhpYml0L3VuaW5o
aWJpdCwgaXMgdGhhdAo+Pj4gaWYgd2UgaGF2ZSB0aGUgY2FsbGJhY2sgZGVmaW5lZCwgdGhlbiB3
ZSBjYWxsIGl0LCBhbmQgb25seSBjYWxsIG9wZW4gYW5kCj4+PiBjbG9zZSBpZiB1bmluaGliaXQg
b3IgaW5oaWJpdCBhcmUgX25vdF8gZGVmaW5lZC4KPj4+Cj4+Cj4+IElmIEkgdW5kZXJzdGFuZCB5
b3UgY29ycmVjdGx5IHlvdSBzdWdnZXN0IHRvIGNhbGwgZWl0aGVyIGluaGliaXQsCj4+IGlmIHBy
b3ZpZGVkIG9yIGNsb3NlLCBpZiBpbmhpYml0IGlzIG5vdCBwcm92aWRlZCwgYnV0IG5vdCBib3Ro
LAo+PiB0aGF0IGlzLCBpZiBib3RoIGFyZSBwcm92aWRlZCB0aGVuIG9uIHRoZSBpbmhpYml0IHBh
dGggb25seQo+PiBpbmhpYml0IGlzIGNhbGxlZC4gQW5kLCBjb25zZXF1ZW50bHksIHlvdSBzdWdn
ZXN0IHRvIGNhbGwgZWl0aGVyCj4+IHVuaW5oaWJpdCBvciBvcGVuLCBidXQgbm90IGJvdGguIFRo
ZSByZXN0IG9mIG15IG1haWwgbWFrZXMgdGhpcwo+PiBhc3N1bXB0aW9uLCBzbyBraW5kbHkgY29u
ZmlybSBpZiBJIHVuZGVyc3RhbmQgeW91IGNvcnJlY3RseS4KPiAKPiBZZXMsIHRoYXQgaXMgY29y
cmVjdC4gSWYgYSBkcml2ZXIgd2FudHMgcmVhbGx5IGZpbmUtZ3JhaW5lZCBjb250cm9sLCBpdAo+
IHdpbGwgcHJvdmlkZSBpbmhpYml0IChvciBib3RoIGluaGliaXQgYW5kIGNsb3NlKSwgb3RoZXJ3
aXNlIGl0IHdpbGwgcmVseQo+IG9uIGNsb3NlIGluIHBsYWNlIG9mIGluaGliaXQuCj4gCj4+Cj4+
IEluIG15IG9waW5pb24gdGhpcyBpZGVhIHdpbGwgbm90IHdvcmsuCj4+Cj4+IFRoZSBmaXJzdCBx
dWVzdGlvbiBpcyBzaG91bGQgd2UgYmUgYWJsZSB0byBpbmhpYml0IGEgZGV2aWNlCj4+IHdoaWNo
IGlzIG5vdCBvcGVuZWQ/IEluIG15IG9waW5pb24gd2Ugc2hvdWxkLCBpbiBvcmRlciB0byBiZQo+
PiBhYmxlIHRvIGluaGliaXQgYSBkZXZpY2UgaW4gYW50aWNpcGF0aW9uIHdpdGhvdXQgbmVlZGlu
ZyB0bwo+PiBvcGVuIGl0IGZpcnN0Lgo+IAo+IEkgYWdyZWUuCj4gCj4+Cj4+IFRoZW4gd2hhdCBk
b2VzIG9wZW5pbmcgKHdpdGggaW5wdXRfb3Blbl9kZXZpY2UoKSkgYW4gaW5oaWJpdGVkCj4+IGRl
dmljZSBtZWFuPyBTaG91bGQgaXQgc3VjY2VlZCBvciBzaG91bGQgaXQgZmFpbD8KPiAKPiBJdCBz
aG91bGQgc3VjY2VlZC4KPiAKPj4gSWYgaXQgaXMgbm90Cj4+IHRoZSBmaXJzdCBvcGVuaW5nIHRo
ZW4gZWZmZWN0aXZlbHkgaXQgYm9pbHMgZG93biB0byBpbmNyZWFzaW5nCj4+IGRldmljZSdzIGFu
ZCBoYW5kbGUncyBjb3VudGVycywgc28gd2UgY2FuIGFsbG93IGl0IHRvIHN1Y2NlZWQuCj4+IElm
LCBob3dldmVyLCB0aGUgZGV2aWNlIGlzIGJlaW5nIG9wZW5lZCBmb3IgdGhlIGZpcnN0IHRpbWUs
Cj4+IHRoZSAtPm9wZW4oKSBtZXRob2Qgd2FudHMgdG8gYmUgY2FsbGVkLCBidXQgdGhhdCBzb21l
aG93Cj4+IGNvbnRyYWRpY3RzIHRoZSBkZXZpY2UncyBpbmhpYml0ZWQgc3RhdGUuIFNvIGEgbG9n
aWNhbCB0aGluZwo+PiB0byBkbyBpcyB0byBlaXRoZXIgZmFpbCBpbnB1dF9vcGVuX2RldmljZSgp
IG9yIHBvc3Rwb25lIC0+b3BlbigpCj4+IGludm9jYXRpb24gdG8gdGhlIG1vbWVudCBvZiB1bmlu
aGliaXRpbmcgLSBhbmQgdGhlIGxhdHRlciBpcwo+PiB3aGF0IHRoZSBwYXRjaGVzIGluIHRoaXMg
c2VyaWVzIGN1cnJlbnRseSBkby4KPj4KPj4gRmFpbGluZyBpbnB1dF9vcGVuX2RldmljZSgpIGJl
Y2F1c2Ugb2YgdGhlIGluaGliaXRlZCBzdGF0ZSBpcwo+PiBub3QgdGhlIHJpZ2h0IHRoaW5nIHRv
IGRvLiBMZXQgbWUgZXhwbGFpbi4gU3VwcG9zZSB0aGF0IGEgZGV2aWNlCj4+IGlzIGFscmVhZHkg
aW5oaWJpdGVkIGFuZCB0aGVuIGEgbmV3IG1hdGNoaW5nIGhhbmRsZXIgYXBwZWFycwo+PiBpbiB0
aGUgc3lzdGVtLiBNb3N0IGhhbmRsZXJzIChhcG0tcG93ZXIuYywgZXZidWcuYywgaW5wdXQtbGVk
cy5jLAo+PiBtYWNfaGlkLmMsIHN5c3JxLmMsIHZ0L2tleWJvYXJkLmMgYW5kIHJma2lsbC9pbnB1
dC5jKSBkb24ndCBjcmVhdGUKPj4gYW55IGNoYXJhY3RlciBkZXZpY2VzIChvbmx5IGV2ZGV2LmMs
IGpveWRldi5jIGFuZCBtb3VzZWRldi5jIGRvKSwKPj4gc28gZm9yIHRoZW0gaXQgbWFrZXMgbm8g
c2Vuc2UgdG8gZGVsYXkgY2FsbGluZyBpbnB1dF9vcGVuX2RldmljZSgpCj4+IGFuZCBpdCBpcyBj
YWxsZWQgaW4gaGFuZGxlcidzIC0+Y29ubmVjdCgpLiBJZiBpbnB1dF9vcGVuX2RldmljZSgpCj4+
IG5vdyBmYWlscywgd2UgaGF2ZSBsb3N0IHRoZSBvbmx5IGNoYW5jZSBmb3IgdGhpcyAtPmNvbm5l
Y3QoKSB0bwo+PiBzdWNjZWVkLgo+Pgo+PiBTdW1tYXJpemluZywgSU1PIHRoZSB1bmluaGliaXQg
cGF0aCBzaG91bGQgYmUgY2FsbGluZyBib3RoCj4+IC0+b3BlbigpIGFuZCAtPnVuaW5oaWJpdCgp
IChpZiBwcm92aWRlZCksIGFuZCBjb252ZXJzZWx5LCB0aGUgaW5oaWJpdAo+PiBwYXRoIHNob3Vs
ZCBiZSBjYWxsaW5nIGJvdGggLT5pbmhpYml0KCkgYW5kIC0+Y2xvc2UoKSAoaWYgcHJvdmlkZWQp
Lgo+IAo+IFNvIHdoYXQgeW91IGFyZSB0cnlpbmcgdG8gc2F5IGlzIHRoYXQgeW91IHNlZSBpbmhp
Yml0IGFzIHNvbWV0aGluZyB0aGF0Cj4gaXMgZG9uZSBpbiBhZGRpdGlvbiB0byB3aGF0IGhhcHBl
bnMgaW4gY2xvc2UuIEJ1dCB3aGF0IGV4YWN0bHkgZG8geW91Cj4gd2FudCB0byBkbyBpbiBpbmhp
Yml0LCBpbiBhZGRpdGlvbiB0byB3aGF0IGNsb3NlIGlzIGRvaW5nPwoKU2VlIGJlbG93ICgqKS4K
Cj4gCj4gSW4gbXkgdmlldywgaWYgd2Ugd2FudCB0byBoYXZlIGEgZGVkaWNhdGVkIGluaGliaXQg
Y2FsbGJhY2ssIHRoZW4gaXQKPiB3aWxsIGRvIGV2ZXJ5dGhpbmcgdGhhdCBjbG9zZSBkb2VzLCB0
aGV5IGJvdGggYXJlIGF3YXJlIG9mIGVhY2ggb3RoZXIKPiBhbmQgY2FuIHNvcnQgb3V0IHRoZSBz
dGF0ZSB0cmFuc2l0aW9ucyBiZXR3ZWVuIHRoZW0uIEZvciBkcml2ZXJzIHRoYXQgZG8KPiBub3Qg
aGF2ZSBkZWRpY2F0ZWQgaW5oaWJpdC91bmluaGliaXQsIHdlIGNhbiB1c2Ugb3BlbiBhbmQgY2xv
c2UKPiBoYW5kbGVycywgYW5kIGhhdmUgaW5wdXQgY29yZSBzb3J0IG91dCB3aGVuIGVhY2ggc2hv
dWxkIGJlIGNhbGxlZC4gVGhhdAo+IG1lYW5zIHRoYXQgd2Ugc2hvdWxkIG5vdCBjYWxsIGRldi0+
b3BlbigpIGluIGlucHV0X29wZW5fZGV2aWNlKCkgd2hlbgo+IGRldmljZSBpcyBpbmhpYml0ZWQg
KGFuZCBzYW1lIGZvciBkZXYtPmNsb3NlKCkgaW4gaW5wdXRfY2xvc2VfZGV2aWNlKS4KPiBBbmQg
d2hlbiB1bmluaGliaXRpbmcsIHdlIHNob3VsZCBub3QgY2FsbCBkZXYtPm9wZW4oKSB3aGVuIHRo
ZXJlIGFyZSBubwo+IHVzZXJzIGZvciB0aGUgZGV2aWNlLCBhbmQgbm8gZGV2LT5jbG9zZSgpIHdo
ZW4gaW5oaWJpdGluZyB3aXRoIG5vIHVzZXJzLgo+IAo+IERvIHlvdSBzZWUgYW55IHByb2JsZW1z
IHdpdGggdGhpcyBhcHByb2FjaD8KCk15IGNvbmNlcm4gaXMgdGhhdCBpZiBlLmcuIGJvdGggLT5v
cGVuKCkgYW5kIC0+dW5pbmhpYml0KCkgYXJlIHByb3ZpZGVkLAp0aGVuIGluIGNlcnRhaW4gY2ly
Y3Vtc3RhbmNlcyAtPm9wZW4oKSB3b24ndCBiZSBjYWxsZWQ6CgoxLiB1c2VycyA9PSAwCjIuIGlu
aGliaXQgaGFwcGVucwozLiBpbnB1dF9vcGVuX2RldmljZSgpIGhhcHBlbnMsIC0+b3BlbigpIG5v
dCBjYWxsZWQKNC4gdW5pbmhpYml0IGhhcHBlbnMKNS4gYXMgcGFydCBvZiB1bmluaGliaXQgLT51
bmluaGliaXQoKSBpcyBvbmx5IGNhbGxlZCwgYnV0IC0+b3BlbigpIGlzIG5vdC4KClRoZXkgd2F5
IEkgdW5kZXJzdGFuZCB5b3VyIGFuc3dlciBpcyB0aGF0IHdlIGltcGxpY2l0bHkgaW1wb3NlIHJl
cXVpcmVtZW50cwpvbiBkcml2ZXJzIHdoaWNoIGNob29zZSB0byBpbXBsZW1lbnQgZS5nLiBib3Ro
IC0+b3BlbigpIGFuZCAtPnVuaW5oaWJpdCgpOgppbiBzdWNoIGEgY2FzZSAtPnVuaW5oaWJpdCgp
IHNob3VsZCBiZSBkb2luZyBleGFjdGx5IHRoZSBzYW1lIHRoaW5ncyBhcwotPm9wZW4oKSBkb2Vz
LiBXaGljaCBsZWFkcyB0byBhIGNvbmNsdXNpb24gdGhhdCBpbiBwcmFjdGljZSBubyBkcml2ZXJz
CnNob3VsZCBjaG9vc2UgdG8gaW1wbGVtZW50IGJvdGgsIG90aGVyd2lzZSB0aGV5IG11c3QgYmUg
YXdhcmUgdGhhdAotPnVuaW5oaWJpdCgpIGNhbiBiZSBzb21ldGltZXMgY2FsbGVkIGluc3RlYWQg
b2YgLT5vcGVuKCkuIFRoZW4gLT5vcGVuKCkKYmVjb21lcyBzeW5vbnltb3VzIHdpdGggLT51bmlu
aGliaXQoKSwgYW5kIC0+Y2xvc2UoKSB3aXRoIC0+aW5oaWJpdCgpLgpPciwgbWF5YmUsIHRoZW4g
LT5pbmhpYml0KCkgY2FuIGJlIGEgc3VwZXJzZXQgb2YgLT5jbG9zZSgpIGFuZAotPnVuaW5oaWJp
dCgpIGEgc3VwZXJzZXQgb2YgLT5vcGVuKCkuCgpJZiBzdWNoIGFuIGFwcHJvYWNoIGlzIG9rIHdp
dGggeW91LCBpdCBpcyBvayB3aXRoIG1lLCB0b28uCgooKikKQ2FsbGluZyBib3RoIC0+aW5oaWJp
dCgpIGFuZCAtPmNsb3NlKCkgKGlmIHRoZXkgYXJlIHByb3ZpZGVkKSBhbGxvd3MKZHJpdmVycyB0
byBnbyBmYW5jeSBhbmQgZmFpbCBpbmhpYml0aW5nICh3aGljaCBpcyBpbXBvc3NpYmxlIHVzaW5n
Cm9ubHkgLT5jbG9zZSgpIGFzIGl0IGRvZXMgbm90IHJldHVybiBhIHZhbHVlLCBidXQgLT5pbmhp
Yml0KCkgYnkgZGVzaWduCmRvZXMpLiBUaGVuIC0+dW5pbmhpYml0KCkgaXMgbW9zdGx5IGZvciBz
eW1tZXRyeS4KClJlZ2FyZHMsCgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
