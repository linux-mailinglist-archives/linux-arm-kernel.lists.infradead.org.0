Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6002632E84
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSDUx08YbV6r4BEg1pGCrxH5mcX7S84Ivc29mQ0V9II=; b=fyAb1t4mH2fsbM
	pgFkRkEKchcFG+DCAMYGQAjkrLC/OeMK+b1KZeh+5bBYDs0Yf5rYQvDi7VSJ3xAfzTKYJ/F+u9TC7
	koV16S9q7ZVpi3WkTRl7jsOaFcP2ktbebM+he5J8NGVKjGBL9SKkmAs+recRDqFpfxPCrVFjPq8CE
	wL2SIleIIBjBvfsvfx9ko9+QsWk8s9kKLeZ3NeG+xfksmC5K6kHm382OYB+gu3KM0lZxITHg2yo1A
	kthdmSESG+zK44YQVv+tKIOv3qPoIFmKebxGK/O09sFU+yA2UDKMSJqge7BlhHW+9fsQiVV3rGPoZ
	zDnTChUoVBz+KkQvIfdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXl2V-0006dX-Vw; Mon, 03 Jun 2019 11:22:07 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXl2N-0006co-IN; Mon, 03 Jun 2019 11:22:01 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x53BLvO4103825;
 Mon, 3 Jun 2019 06:21:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559560917;
 bh=2YhNwIo/l7wzWRuENxexmzy1sBuFHUF6M4OhGWZhKHk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=u5Ozm140iDprwkX1UzkHx925k7VJNDiqRJNRhNvieaj5M96uC5sI++R47WHGxmQZI
 HmZYqqLR29A71GOw4j75zdPLA8lOFWZBEjswNo4ekHoNUjeaA/WdZOJs32KFOQrwxZ
 XIDZKGypdW3mhKGS4cq8vsh0kEd9FS40dmckYH/4=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x53BLvq2041821
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 3 Jun 2019 06:21:57 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 3 Jun
 2019 06:21:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 3 Jun 2019 06:21:57 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x53BLqLo075595;
 Mon, 3 Jun 2019 06:21:53 -0500
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Caesar Wang <wxt@rock-chips.com>, Douglas Anderson <dianders@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>
References: <20190507234857.81414-1-dianders@chromium.org>
 <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
Date: Mon, 3 Jun 2019 16:50:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_042159_732592_368E2E4C 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, hl@rock-chips.com,
 dbasehore@chromium.org, linux-kernel@vger.kernel.org,
 Huang Jiachai <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 "nickey.yang \(nickey.yang@rock-chips.com\)" <nickey.yang@rock-chips.com>,
 mka@chromium.org, ryandcase@chromium.org, groeck@chromium.org,
 wzz <wzz@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyMC8wNS8xOSAxOjM0IFBNLCBDYWVzYXIgV2FuZyB3cm90ZToKPiBIaSBEb3VnLAo+
IAo+IEZvciBub3cswqAgbm9ib2R5IG9mIHJvY2tjaGlwIGlzIHJlc3BvbnNpYmxlIGZvciB0aGlz
IGRyaXZlci4KPiBDYzogTmlja2V5LCBaYWluLCBIamMKPiAKPiAKPiBPbiA1LzgvMTkgNzo0OCBB
TSwgRG91Z2xhcyBBbmRlcnNvbiB3cm90ZToKPj4gV2hpbGUgdGVzdGluZyBhIG5ld2VyIGtlcm5l
bCBvbiByazMyODgtYmFzZWQgQ2hyb21lYm9va3MgSSBmb3VuZCB0aGF0Cj4+IHRoZSBwb3dlciBk
cmF3IGluIHN1c3BlbmQgd2FzIGhpZ2hlciBvbiBuZXdlciBrZXJuZWxzIGNvbXBhcmVkIHRvIHRo
ZQo+PiBkb3duc3RyZWFtIENocm9tZSBPUyAzLjE0IGtlcm5lbC7CoCBTcGVjaWZpY2FsbHkgdGhl
IHBvd2VyIG9mIGFuCj4+IHJrMzI4OC12ZXlyb24tamVycnkgYm9hcmQgdGhhdCBJIHRlc3RlZCAo
YXMgbWVhc3VyZWQgYnkgdGhlIHNtYXJ0Cj4+IGJhdHRlcnkpIHdhcyB+MTYgbUEgb24gQ2hyb21l
IE9TIDMuMTQgYW5kIH4yMSBtQSBvbiBhIG5ld2VyIGtlcm5lbC4KPj4KPj4gSSB0cmFja2VkIHRo
ZSByZWdyZXNzaW9uIGRvd24gdG8gdGhlIGZhY3QgdGhhdCB0aGUgIkRQIFBIWSIgZHJpdmVyCj4+
IGRpZG4ndCBleGlzdCBpbiBvdXIgZG93bnN0cmVhbSAzLjE0LsKgIFdlIHJlbGllZCBvbiB0aGUg
ZURQIGRyaXZlciB0bwo+PiB0dXJuIG9uIHRoZSBjbG9jayBhbmQgcmVsaWVkIG9uIHRoZSBmYWN0
IHRoYXQgdGhlIHBvd2VyIGZvciB0aGUgUEhZCj4+IHdhcyBkZWZhdWx0IHR1cm5lZCBvbi4KPj4K
Pj4gU3BlY2lmaWNhbGx5IHRoZSB0aGluZyB0aGF0IGNhdXNlZCB0aGUgcG93ZXIgcmVncmVzc2lv
biB3YXMgdHVybmluZwo+PiB0aGUgZURQIFBIWSBfb2ZmXy7CoCBQcmVzdW1hYmx5IHRoZXJlIGlz
IHNvbWUgc29ydCBvZiBwb3dlciBsZWFrIGluIHRoZQo+PiBzeXN0ZW0gYW5kIHdoZW4gd2UgdHVy
biB0aGUgUEhZIG9mZiBzb21ldGhpbmcgaXMgbGVhY2hpbmcgcG93ZXIgZnJvbQo+PiBzb21ldGhp
bmcgZWxzZSBhbmQgY2F1c2luZyBleGNlc3NpdmUgcG93ZXIgZHJhdy4KPj4KPj4gRG9pbmcgYSBz
ZWFyY2ggdGhyb3VnaCBkZXZpY2UgdHJlZXMgc2hvd3MgdGhhdCB0aGlzIFBIWSBpcyBvbmx5IGV2
ZXIKPj4gdXNlZCBvbiByazMyODguwqAgUHJlc3VtYWJseSB0aGlzIHBvd2VyIGxlYWsgaXMgcHJl
c2VudCBvbiBhbGwKPj4gcmszMjg4LVNvQ3MgcnVubmluZyB1cHN0cmVhbSBMaW51eCBzbyBsZXQn
cyBqdXN0IHdoYWNrIHRoZSBkcml2ZXIgdG8KPj4gbWFrZSBzdXJlIHdlIG5ldmVyIHR1cm4gb2Zm
IHBvd2VyLsKgIFdlJ2xsIHN0aWxsIGxlYXZlIHRoZSBwYXJ0cyB0aGF0Cj4+IHR1cm4gX29uXyB0
aGUgcG93ZXIgYW5kIGdyYWIgdGhlIGNsb2NrLCB0aG91Z2guCj4+Cj4+IE5PVEVTOgo+PiBBKSBJ
ZiBzb21lb25lIGNhbiBpZGVudGlmeSB3aGF0IHRoaXMgcG93ZXIgbGVhayBpcyBhbmQgZml4IGl0
IGluIHNvbWUKPj4gwqDCoMKgIG90aGVyIHdheSB3ZSBjYW4gcmV2ZXJ0IHRoaXMgcGF0Y2guCj4+
IEIpIElmIHNvbWVvbmUgY2FuIHNob3cgdGhhdCB0aGVpciBwYXJ0aWN1bGFyIGJvYXJkIGRvZXNu
J3QgaGF2ZSB0aGlzCj4+IMKgwqDCoCBwb3dlciBsZWFrIChtYXliZSB0aGV5IGhhdmUgcmFpbHMg
aG9va2VkIHVwIGRpZmZlcmVudGx5Pykgd2UgY2FuCj4+IMKgwqDCoCBwZXJoYXBzIGFkZCBhIGRl
dmljZSB0cmVlIHByb3BlcnR5IGluZGljYXRpbmcgdGhhdCBmb3Igc29tZSBib2FyZHMKPj4gwqDC
oMKgIGl0J3MgT0sgdG8gdHVybiB0aGlzIHJhaWwgb2ZmLsKgIEkgZG9uJ3Qgd2FudCB0byBhZGQg
dGhpcyBwcm9wZXJ0eQo+PiDCoMKgwqAgdW50aWwgSSBrbm93IG9mIGEgYm9hcmQgdGhhdCBuZWVk
cyBpdC4KPj4KPj4gRml4ZXM6IGZkOTY4OTczZGU5NSAoInBoeTogQWRkIGRyaXZlciBmb3Igcm9j
a2NoaXAgRGlzcGxheSBQb3J0IFBIWSIpCj4+IFNpZ25lZC1vZmYtYnk6IERvdWdsYXMgQW5kZXJz
b24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPiAKPiAKPiBSZXZpZXdlZC1ieTogQ2Flc2FyIFdh
bmcgPHd4dEByb2NrLWNoaXBzLmNvbT4KPiAKPj4gLS0tCj4+IEFzIGZhciBhcyBJIGtub3cgWWFr
aXIgKHRoZSBvcmlnaW5hbCBhdXRob3IpIGlzIG5vIGxvbmdlciBhdCBSb2NrY2hpcC4KPj4gSSd2
ZSBhZGRlZCBhIGZldyBvdGhlciBSb2NrY2hpcCBwZW9wbGUgYW5kIGhvcGVmdWxseSBvbmUgb2Yg
dGhlbSBjYW4KPj4gaGVscCBkaXJlY3QgZXZlbiBpZiB0aGV5J3JlIG5vdCBkaXJlY3RseSByZXNw
b25zaWJsZS4KPj4KPj4gwqAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWRwLmMg
fCAxMSArKysrKysrLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLWRwLmMKPj4gYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtZHAu
Ywo+PiBpbmRleCA4YjI2N2E3NDY1NzYuLjEwYmJjZDY5ZDZmNSAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWRwLmMKPj4gKysrIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLWRwLmMKPj4gQEAgLTM1LDcgKzM1LDcgQEAgc3RydWN0IHJv
Y2tjaGlwX2RwX3BoeSB7Cj4+IMKgIHN0YXRpYyBpbnQgcm9ja2NoaXBfc2V0X3BoeV9zdGF0ZShz
dHJ1Y3QgcGh5ICpwaHksIGJvb2wgZW5hYmxlKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0
IHJvY2tjaGlwX2RwX3BoeSAqZHAgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPj4gLcKgwqDCoCBp
bnQgcmV0Owo+PiArwqDCoMKgIGludCByZXQgPSAwOwo+PiDCoCDCoMKgwqDCoMKgIGlmIChlbmFi
bGUpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IHJlZ21hcF93cml0ZShkcC0+Z3JmLCBH
UkZfU09DX0NPTjEyLAo+PiBAQCAtNTAsOSArNTAsMTIgQEAgc3RhdGljIGludCByb2NrY2hpcF9z
ZXRfcGh5X3N0YXRlKHN0cnVjdCBwaHkgKnBoeSwgYm9vbAo+PiBlbmFibGUpCj4+IMKgwqDCoMKg
wqAgfSBlbHNlIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNsa19kaXNhYmxlX3VucHJlcGFyZShk
cC0+cGh5XzI0bSk7Cj4+IMKgIC3CoMKgwqDCoMKgwqDCoCByZXQgPSByZWdtYXBfd3JpdGUoZHAt
PmdyZiwgR1JGX1NPQ19DT04xMiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBHUkZfRURQX1BIWV9TSUREUV9ISVdPUkRfTUFTSyB8Cj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgR1JGX0VEUF9QSFlfU0lERFFfT0ZGKTsKPj4gK8KgwqDCoMKg
wqDCoMKgIC8qCj4+ICvCoMKgwqDCoMKgwqDCoMKgICogSW50ZW50aW9uYWxseSBkb24ndCB0dXJu
IFNJRERRIG9mZiB3aGVuIGRpc2FibGluZwo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIHRoZSBQSFku
wqAgVGhlcmUgaXMgYSBwb3dlciBsZWFrIG9uIHJrMzI4OCBhbmQKPj4gK8KgwqDCoMKgwqDCoMKg
wqAgKiBzdXNwZW5kIHBvd2VyIF9pbmNyZWFzZXNfIGJ5IDUgbUEgaWYgeW91IHR1cm4gdGhpcwo+
PiArwqDCoMKgwqDCoMKgwqDCoCAqIG9mZi4KPj4gK8KgwqDCoMKgwqDCoMKgwqAgKi8KCkNhbiBz
b21lb25lIGluIFJvY2tjaGlwIHRyeSB0byBmaW5kIHRoZSByb290LWNhdXNlIG9mIHRoZSBpc3N1
ZT8gS2VlcGluZyB0aGUKUEhZIG9mZiBzaG91bGRuJ3QgaW5jcmVhc2UgcG93ZXIgZHJhdy4KClRo
YW5rcwpLaXNob24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
