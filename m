Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3BBEFC50
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 12:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uKOTsjkMgLP3EdZqVxJV1ji3/BAcoL5LEeLRBGtNJeE=; b=ShqiyOdDmJKYlAlZ+MQ5DavfB
	GKkXWZ1MKmeQ5dxpTPplCCt3jPUUmD4FVynecEdeTT+WZ/fp8rSnM9XLKZA24RdEdZcrZwz/vujNU
	AX5z6vOD2Np/Cce6LvTrUnECyEyKWYeQMpX7XO+KPOUQhJfZbp0r9SCyrrh8BixAlzq1bDOoZr6rs
	HKXR0SjfWKC1bWO8+xZeID8LFVjLkTsQI/BLTt94sqDZQAoHynDH8y2x4795hnlW6PaNJrgsyHbJJ
	NfksA53yPt2d27YDu5eHE5o7IHAJ0sUYKrHQ4Ywqgiq/SwF/BzPXkl5NgSwnC0cmbU/vrHDUxq5xc
	R0pZH8eSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwy1-0005X5-Vc; Tue, 05 Nov 2019 11:25:45 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwxu-0005WU-91
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 11:25:40 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA5BPSg5130466;
 Tue, 5 Nov 2019 05:25:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572953128;
 bh=AEgu6ZAqguAaapbiiV7DzXt549748ZM/kqwt+MmCmro=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=I+dmdAeFunPri/YD5MjnkDjm/DGTwJ0EE/cOVYCF7gW9G7dS0nPoS33WZKb21kjp9
 dqrNhCh9ih8XYfrF/71cOZ6R8naU+EM0szTnHAmygD3K1FDcOir6evjeXmuRMswWRa
 mq7mH/5vOVOPYGwfAjxsN+NA914Hm0VQTUMRxCqg=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA5BPRGQ111123
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 Nov 2019 05:25:27 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 5 Nov
 2019 05:25:12 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 5 Nov 2019 05:25:12 -0600
Received: from [10.250.98.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA5BPOH6112622;
 Tue, 5 Nov 2019 05:25:25 -0600
Subject: Re: [PATCH v4 07/15] dmaengine: ti: k3 PSI-L remote endpoint
 configuration
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-8-peter.ujfalusi@ti.com>
 <bbe8e13f-b865-a352-7960-31b2865e5421@ti.com>
 <aca16f7e-1807-188e-8beb-8a086af2869b@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <fbd57252-6782-c038-dced-03b3d776de64@ti.com>
Date: Tue, 5 Nov 2019 13:25:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <aca16f7e-1807-188e-8beb-8a086af2869b@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_032538_402735_39FFD0A2 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8xMS8yMDE5IDEyOjI3LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiAKPiAKPiBPbiAw
NS8xMS8yMDE5IDEyLjAwLCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToKPj4gSGkgUGV0ZXIsCj4+
Cj4+IE9uIDAxLzExLzIwMTkgMTA6NDEsIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+Pj4gSW4gSzMg
YXJjaGl0ZWN0dXJlIHRoZSBETUEgb3BlcmF0ZXMgd2l0aGluIHRocmVhZHMuIE9uZSBlbmQgb2Yg
dGhlIHRocmVhZAo+Pj4gaXMgVURNQVAsIHRoZSBvdGhlciBpcyBvbiB0aGUgcGVyaXBoZXJhbCBz
aWRlLgo+Pj4KPj4+IFRoZSBVRE1BUCBjaGFubmVsIGNvbmZpZ3VyYXRpb24gZGVwZW5kcyBvbiB0
aGUgbmVlZHMgb2YgdGhlIHJlbW90ZQo+Pj4gZW5kcG9pbnQgYW5kIGl0IGNhbiBiZSBkaWZmZXIg
ZnJvbSBwZXJpcGhlcmFsIHRvIHBlcmlwaGVyYWwuCj4+Pgo+Pj4gVGhpcyBwYXRjaCBhZGRzIGRh
dGFiYXNlIGZvciBhbTY1NCBhbmQgajcyMWUgYW5kIHNtYWxsIEFQSSB0byBmZXRjaCB0aGUKPj4+
IFBTSS1MIGVuZHBvaW50IGNvbmZpZ3VyYXRpb24gZnJvbSB0aGUgZGF0YWJhc2Ugd2hpY2ggc2hv
dWxkIG9ubHkgdXNlZCBieQo+Pj4gdGhlIERNQSBkcml2ZXIocykuCj4+Pgo+Pj4gQW5vdGhlciBB
UEkgaXMgYWRkZWQgZm9yIG5hdGl2ZSBwZXJpcGhlcmFscyB0byBnaXZlIHBvc3NpYmlsaXR5IHRv
Cj4+PiBwYXNzIG5ldwo+Pj4gY29uZmlndXJhdGlvbiBmb3IgdGhlIHRocmVhZHMgdGhleSBhcmUg
dXNpbmcsIHdoaWNoIGlzIG5lZWRlZCB0byBiZQo+Pj4gYWJsZSB0bwo+Pj4gaGFuZGxlIGNoYW5n
ZXMgY2F1c2VkIGJ5IGRpZmZlcmVudCBmaXJtd2FyZSBsb2FkZWQgZm9yIHRoZSBwZXJpcGhlcmFs
IGZvcgo+Pj4gZXhhbXBsZS4KPj4KPj4gSSBoYXZlIG5vIG9iamVjdGlvbiB0byB0aGlzIGFwcHJv
YWNoLCBidXQgLi4uCj4+Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBl
dGVyLnVqZmFsdXNpQHRpLmNvbT4KPj4+IC0tLQo+Pj4gIMKgIGRyaXZlcnMvZG1hL3RpL0tjb25m
aWfCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKwo+Pj4gIMKgIGRyaXZlcnMvZG1hL3RpL01ha2Vm
aWxlwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+PiAgwqAgZHJpdmVycy9kbWEvdGkvazMtcHNp
bC1hbTY1NC5jIHwgMTcyICsrKysrKysrKysrKysrKysrKysrKysrKysrCj4+PiAgwqAgZHJpdmVy
cy9kbWEvdGkvazMtcHNpbC1qNzIxZS5jIHwgMjE5ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+Pj4gIMKgIGRyaXZlcnMvZG1hL3RpL2szLXBzaWwtcHJpdi5owqAgfMKgIDM5ICsr
KysrKwo+Pj4gIMKgIGRyaXZlcnMvZG1hL3RpL2szLXBzaWwuY8KgwqDCoMKgwqDCoCB8wqAgOTcg
KysrKysrKysrKysrKysrCj4+PiAgwqAgaW5jbHVkZS9saW51eC9kbWEvazMtcHNpbC5owqDCoMKg
IHzCoCA0NyArKysrKysrCj4+PiAgwqAgNyBmaWxlcyBjaGFuZ2VkLCA1NzggaW5zZXJ0aW9ucygr
KQo+Pj4gIMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS90aS9rMy1wc2lsLWFtNjU0
LmMKPj4+ICDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtcHNpbC1qNzIx
ZS5jCj4+PiAgwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hL3RpL2szLXBzaWwtcHJp
di5oCj4+PiAgwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hL3RpL2szLXBzaWwuYwo+
Pj4gIMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L2RtYS9rMy1wc2lsLmgKPj4+
Cj4+Cj4+IFsuLi5dCj4+Cj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEvazMtcHNp
bC5oIGIvaW5jbHVkZS9saW51eC9kbWEvazMtcHNpbC5oCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi4xNmU5YzhjNmY4MzkKPj4+IC0tLSAvZGV2L251bGwK
Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hL2szLXBzaWwuaAo+Pj4gQEAgLTAsMCArMSw0NyBA
QAo+Pj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovCj4+PiArLyoKPj4+
ICsgKsKgIENvcHlyaWdodCAoQykgMjAxOSBUZXhhcyBJbnN0cnVtZW50cyBJbmNvcnBvcmF0ZWQg
LQo+Pj4gaHR0cDovL3d3dy50aS5jb20KPj4+ICsgKi8KPj4+ICsKPj4+ICsjaWZuZGVmIEszX1BT
SUxfSF8KPj4+ICsjZGVmaW5lIEszX1BTSUxfSF8KPj4+ICsKPj4+ICsjaW5jbHVkZSA8bGludXgv
dHlwZXMuaD4KPj4+ICsKPj4+ICsjZGVmaW5lIEszX1BTSUxfRFNUX1RIUkVBRF9JRF9PRkZTRVQg
MHg4MDAwCj4+PiArCj4+PiArc3RydWN0IGRldmljZTsKPj4+ICsKPj4+ICsvKiBDaGFubmVsIFRo
cm91Z2hwdXQgTGV2ZWxzICovCj4+PiArZW51bSB1ZG1hX3RwX2xldmVsIHsKPj4+ICvCoMKgwqAg
VURNQV9UUF9OT1JNQUwgPSAwLAo+Pj4gK8KgwqDCoCBVRE1BX1RQX0hJR0ggPSAxLAo+Pj4gK8Kg
wqDCoCBVRE1BX1RQX1VMVFJBSElHSCA9IDIsCj4+PiArwqDCoMKgIFVETUFfVFBfTEFTVCwKPj4+
ICt9Owo+Pj4gKwo+Pj4gK2VudW0gcHNpbF9lbmRwb2ludF90eXBlIHsKPj4+ICvCoMKgwqAgUFNJ
TF9FUF9OQVRJVkUgPSAwLAo+Pj4gK8KgwqDCoCBQU0lMX0VQX1BETUFfWFksCj4+PiArwqDCoMKg
IFBTSUxfRVBfUERNQV9NQ0FOLAo+Pj4gK8KgwqDCoCBQU0lMX0VQX1BETUFfQUFTUkMsCj4+PiAr
fTsKPj4+ICsKPj4+ICtzdHJ1Y3QgcHNpbF9lbmRwb2ludF9jb25maWcgewo+Pj4gK8KgwqDCoCBl
bnVtIHBzaWxfZW5kcG9pbnRfdHlwZSBlcF90eXBlOwo+Pj4gKwo+Pj4gK8KgwqDCoCB1bnNpZ25l
ZCBwa3RfbW9kZToxOwo+Pj4gK8KgwqDCoCB1bnNpZ25lZCBub3RkcGt0OjE7Cj4+PiArwqDCoMKg
IHVuc2lnbmVkIG5lZWRzX2VwaWI6MTsKPj4+ICvCoMKgwqAgdTMyIHBzZF9zaXplOwo+Pj4gK8Kg
wqDCoCBlbnVtIHVkbWFfdHBfbGV2ZWwgY2hhbm5lbF90cGw7Cj4+PiArCj4+PiArwqDCoMKgIC8q
IFBETUEgcHJvcGVydGllcywgdmFsaWQgZm9yIFBTSUxfRVBfUERNQV8qICovCj4+PiArwqDCoMKg
IHVuc2lnbmVkIHBkbWFfYWNjMzI6MTsKPj4+ICvCoMKgwqAgdW5zaWduZWQgcGRtYV9idXJzdDox
Owo+Pj4gK307Cj4+PiArCj4+PiAraW50IHBzaWxfc2V0X25ld19lcF9jb25maWcoc3RydWN0IGRl
dmljZSAqZGV2LCBjb25zdCBjaGFyICpuYW1lLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3RydWN0IHBzaWxfZW5kcG9pbnRfY29uZmlnICplcF9jb25maWcpOwo+Pj4gKwo+Pj4g
KyNlbmRpZiAvKiBLM19QU0lMX0hfICovCj4+Pgo+Pgo+PiBJIHNlZSBubyB1c2VyIG5vdyBvZiB0
aGlzIHB1YmxpYyBpbnRlcmZhY2UsIHNvIEkgdGhpbmsgaXQgYmV0dGVyIHRvIGRyb3AKPj4gaXQg
dW50aWwKPj4gdGhlcmUgd2lsbCBiZSByZWFsIHVzZXIgb2YgaXQuCj4gCj4gVGhlIHNhbWUgYXJn
dW1lbnQgaXMgdmFsaWQgZm9yIHRoZSBnbHVlIGxheWVyIDspCj4gCj4gVGhpcyBpcyBvbmx5IGdv
aW5nIHRvIGJlIHVzZWQgYnkgbmF0aXZlIFBTSS1MIGRldmljZXMgYW5kIHRoZQo+IHBzaWxfZW5k
cG9pbnRfY29uZmlnIGlzIGdvaW5nIHRvIGJlIGV4dGVuZGVkIHRvIGZhY2lsaXRhdGUgdGhlaXIg
bmVlZHMKPiB0byBnaXZlIGluZm9ybWF0aW9uIHRvIHRoZSBETUEgZHJpdmVyIG9uIGhvdyB0byBz
ZXQgdGhpbmdzIHVwLgo+IAo+IEkgd291bGQgcmF0aGVyIGF2b2lkIGNodXJuIGxhdGVyIG9uIHRo
YW4gYWRkaW5nIHRoZSBzdXBwb3J0IGZyb20gdGhlIHN0YXJ0Lgo+IAo+IFRoZSBwb2ludCBpcyB0
aGF0IHRoZSBQU0ktTCBlbmRwb2ludCBjb25maWd1cmF0aW9uIGlzIHBhcnQgb2YgdGhlIFBTSS1M
Cj4gcGVyaXBoZXJhbCBhbmQgYmFzZWQgb24gZmFjdG9ycyB0aGVzZSBjb25maWd1cmF0aW9ucyBt
aWdodCBkaWZmZXIgZnJvbQo+IHRoZSBkZWZhdWx0IG9uZS4gRm9yIGV4YW1wbGUgaWYgd2Ugd2Fu
dCB0byBtZXJnZSB0aGUgdHdvIHBoeXNpY2FsIHJ4Cj4gY2hhbm5lbCBmb3Igc2EydWwgKHNvIHRo
ZXkgdXNlIHRoZSBzYW1lIHJmbG93KSBvciBvdGhlciB0aGluZ3Mgd2UgKEkpCj4gY2FuIG5vdCBm
b3Jlc2VlIHlldC4KPiBPciBpZiBkaWZmZXJlbnQgZmlybXdhcmUgaXMgbG9hZGVkIGZvciB0aGVt
IGFuZCBpdCBhZmZlY3RzIHRoZWlyIFBTSS1MCj4gY29uZmlndXJhdGlvbi4KCk9rLiBJdCdzIHVw
IHRvIHlvdS4KCm90aGVyd2lzZToKUmV2aWV3ZWQtYnk6IEdyeWdvcmlpIFN0cmFzaGtvIDxncnln
b3JpaS5zdHJhc2hrb0B0aS5jb20+CgotLSAKQmVzdCByZWdhcmRzLApncnlnb3JpaQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
