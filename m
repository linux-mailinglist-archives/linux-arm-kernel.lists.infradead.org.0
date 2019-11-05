Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331F5EFB09
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:26:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fWMSHJ3B0ueVVqtWPmD3M1SBwGgST1j62MMbVRagvk=; b=iqk2lMCnr6abeA
	Nb8nCKBq6LamgYYVlIHtz3GIirC+bTGqLelDInnl53KII+PWe5BPj+aVKyvYcZhdCC5jdC5CgPnt4
	rfTAtrC7IjGfyCxjgq1y9g58RqFwOyDtHOI3uKdxoI8B+VqVsEeMyqmADoRV8tapWSRadpOMhCuZr
	gTT6rVzWtCnZ1KoTOISiRfUqB/JQXP2fNHqTS8/PIuOrvyVxBpmYHtlVOmq3/PNhux6ovRL0Jw2hm
	YQOlOl9jtjLbnMdgWXadCjTX0yt5rGIzgej1SG/skFDCDuclmhR37pgAyp0oenvJnhqxAHxbLQZzT
	2UB3Sn6EHoGisGb/P4Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRw2f-00029G-PB; Tue, 05 Nov 2019 10:26:29 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRw2W-00028f-Br
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:26:22 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA5AQD21017658;
 Tue, 5 Nov 2019 04:26:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572949573;
 bh=IFucLBCBxa8OwPq1KzmlD9yZTlwYiToruI+3JUHGiQA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=JZQwP52V5JvRwsFemlFb4p/8+JMAqv3MOJbXlLvUW7XqUngO12OIY4uusDE1XUxBI
 rufN6hEUhznbr3LM/g92kJyl36QIqtUor2VAtee+WvlubWR2++JINDIXgPegygdgGS
 jpWuX5X5wz28a589KmQ1wWiVZQmBH5uz8tKcASO0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA5AQCW0111739
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 Nov 2019 04:26:13 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 5 Nov
 2019 04:25:56 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 5 Nov 2019 04:25:56 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA5AQ62u097059;
 Tue, 5 Nov 2019 04:26:07 -0600
Subject: Re: [PATCH v4 07/15] dmaengine: ti: k3 PSI-L remote endpoint
 configuration
To: Grygorii Strashko <grygorii.strashko@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-8-peter.ujfalusi@ti.com>
 <bbe8e13f-b865-a352-7960-31b2865e5421@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <aca16f7e-1807-188e-8beb-8a086af2869b@ti.com>
Date: Tue, 5 Nov 2019 12:27:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bbe8e13f-b865-a352-7960-31b2865e5421@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_022620_489329_3DD18B41 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8xMS8yMDE5IDEyLjAwLCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToKPiBIaSBQZXRl
ciwKPiAKPiBPbiAwMS8xMS8yMDE5IDEwOjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gSW4g
SzMgYXJjaGl0ZWN0dXJlIHRoZSBETUEgb3BlcmF0ZXMgd2l0aGluIHRocmVhZHMuIE9uZSBlbmQg
b2YgdGhlIHRocmVhZAo+PiBpcyBVRE1BUCwgdGhlIG90aGVyIGlzIG9uIHRoZSBwZXJpcGhlcmFs
IHNpZGUuCj4+Cj4+IFRoZSBVRE1BUCBjaGFubmVsIGNvbmZpZ3VyYXRpb24gZGVwZW5kcyBvbiB0
aGUgbmVlZHMgb2YgdGhlIHJlbW90ZQo+PiBlbmRwb2ludCBhbmQgaXQgY2FuIGJlIGRpZmZlciBm
cm9tIHBlcmlwaGVyYWwgdG8gcGVyaXBoZXJhbC4KPj4KPj4gVGhpcyBwYXRjaCBhZGRzIGRhdGFi
YXNlIGZvciBhbTY1NCBhbmQgajcyMWUgYW5kIHNtYWxsIEFQSSB0byBmZXRjaCB0aGUKPj4gUFNJ
LUwgZW5kcG9pbnQgY29uZmlndXJhdGlvbiBmcm9tIHRoZSBkYXRhYmFzZSB3aGljaCBzaG91bGQg
b25seSB1c2VkIGJ5Cj4+IHRoZSBETUEgZHJpdmVyKHMpLgo+Pgo+PiBBbm90aGVyIEFQSSBpcyBh
ZGRlZCBmb3IgbmF0aXZlIHBlcmlwaGVyYWxzIHRvIGdpdmUgcG9zc2liaWxpdHkgdG8KPj4gcGFz
cyBuZXcKPj4gY29uZmlndXJhdGlvbiBmb3IgdGhlIHRocmVhZHMgdGhleSBhcmUgdXNpbmcsIHdo
aWNoIGlzIG5lZWRlZCB0byBiZQo+PiBhYmxlIHRvCj4+IGhhbmRsZSBjaGFuZ2VzIGNhdXNlZCBi
eSBkaWZmZXJlbnQgZmlybXdhcmUgbG9hZGVkIGZvciB0aGUgcGVyaXBoZXJhbCBmb3IKPj4gZXhh
bXBsZS4KPiAKPiBJIGhhdmUgbm8gb2JqZWN0aW9uIHRvIHRoaXMgYXBwcm9hY2gsIGJ1dCAuLi4K
PiAKPj4KPj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRp
LmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZG1hL3RpL0tjb25maWfCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgIDMgKwo+PiDCoCBkcml2ZXJzL2RtYS90aS9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgIHzC
oMKgIDEgKwo+PiDCoCBkcml2ZXJzL2RtYS90aS9rMy1wc2lsLWFtNjU0LmMgfCAxNzIgKysrKysr
KysrKysrKysrKysrKysrKysrKysKPj4gwqAgZHJpdmVycy9kbWEvdGkvazMtcHNpbC1qNzIxZS5j
IHwgMjE5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoCBkcml2ZXJzL2Rt
YS90aS9rMy1wc2lsLXByaXYuaMKgIHzCoCAzOSArKysrKysKPj4gwqAgZHJpdmVycy9kbWEvdGkv
azMtcHNpbC5jwqDCoMKgwqDCoMKgIHzCoCA5NyArKysrKysrKysrKysrKysKPj4gwqAgaW5jbHVk
ZS9saW51eC9kbWEvazMtcHNpbC5owqDCoMKgIHzCoCA0NyArKysrKysrCj4+IMKgIDcgZmlsZXMg
Y2hhbmdlZCwgNTc4IGluc2VydGlvbnMoKykKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZG1hL3RpL2szLXBzaWwtYW02NTQuYwo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9kbWEvdGkvazMtcHNpbC1qNzIxZS5jCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2RtYS90aS9rMy1wc2lsLXByaXYuaAo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9k
bWEvdGkvazMtcHNpbC5jCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L2Rt
YS9rMy1wc2lsLmgKPj4KPiAKPiBbLi4uXQo+IAo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9kbWEvazMtcHNpbC5oIGIvaW5jbHVkZS9saW51eC9kbWEvazMtcHNpbC5oCj4+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMTZlOWM4YzZmODM5Cj4+IC0tLSAv
ZGV2L251bGwKPj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEvazMtcHNpbC5oCj4+IEBAIC0wLDAg
KzEsNDcgQEAKPj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovCj4+ICsv
Kgo+PiArICrCoCBDb3B5cmlnaHQgKEMpIDIwMTkgVGV4YXMgSW5zdHJ1bWVudHMgSW5jb3Jwb3Jh
dGVkIC0KPj4gaHR0cDovL3d3dy50aS5jb20KPj4gKyAqLwo+PiArCj4+ICsjaWZuZGVmIEszX1BT
SUxfSF8KPj4gKyNkZWZpbmUgSzNfUFNJTF9IXwo+PiArCj4+ICsjaW5jbHVkZSA8bGludXgvdHlw
ZXMuaD4KPj4gKwo+PiArI2RlZmluZSBLM19QU0lMX0RTVF9USFJFQURfSURfT0ZGU0VUIDB4ODAw
MAo+PiArCj4+ICtzdHJ1Y3QgZGV2aWNlOwo+PiArCj4+ICsvKiBDaGFubmVsIFRocm91Z2hwdXQg
TGV2ZWxzICovCj4+ICtlbnVtIHVkbWFfdHBfbGV2ZWwgewo+PiArwqDCoMKgIFVETUFfVFBfTk9S
TUFMID0gMCwKPj4gK8KgwqDCoCBVRE1BX1RQX0hJR0ggPSAxLAo+PiArwqDCoMKgIFVETUFfVFBf
VUxUUkFISUdIID0gMiwKPj4gK8KgwqDCoCBVRE1BX1RQX0xBU1QsCj4+ICt9Owo+PiArCj4+ICtl
bnVtIHBzaWxfZW5kcG9pbnRfdHlwZSB7Cj4+ICvCoMKgwqAgUFNJTF9FUF9OQVRJVkUgPSAwLAo+
PiArwqDCoMKgIFBTSUxfRVBfUERNQV9YWSwKPj4gK8KgwqDCoCBQU0lMX0VQX1BETUFfTUNBTiwK
Pj4gK8KgwqDCoCBQU0lMX0VQX1BETUFfQUFTUkMsCj4+ICt9Owo+PiArCj4+ICtzdHJ1Y3QgcHNp
bF9lbmRwb2ludF9jb25maWcgewo+PiArwqDCoMKgIGVudW0gcHNpbF9lbmRwb2ludF90eXBlIGVw
X3R5cGU7Cj4+ICsKPj4gK8KgwqDCoCB1bnNpZ25lZCBwa3RfbW9kZToxOwo+PiArwqDCoMKgIHVu
c2lnbmVkIG5vdGRwa3Q6MTsKPj4gK8KgwqDCoCB1bnNpZ25lZCBuZWVkc19lcGliOjE7Cj4+ICvC
oMKgwqAgdTMyIHBzZF9zaXplOwo+PiArwqDCoMKgIGVudW0gdWRtYV90cF9sZXZlbCBjaGFubmVs
X3RwbDsKPj4gKwo+PiArwqDCoMKgIC8qIFBETUEgcHJvcGVydGllcywgdmFsaWQgZm9yIFBTSUxf
RVBfUERNQV8qICovCj4+ICvCoMKgwqAgdW5zaWduZWQgcGRtYV9hY2MzMjoxOwo+PiArwqDCoMKg
IHVuc2lnbmVkIHBkbWFfYnVyc3Q6MTsKPj4gK307Cj4+ICsKPj4gK2ludCBwc2lsX3NldF9uZXdf
ZXBfY29uZmlnKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqbmFtZSwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHBzaWxfZW5kcG9pbnRfY29uZmlnICplcF9j
b25maWcpOwo+PiArCj4+ICsjZW5kaWYgLyogSzNfUFNJTF9IXyAqLwo+Pgo+IAo+IEkgc2VlIG5v
IHVzZXIgbm93IG9mIHRoaXMgcHVibGljIGludGVyZmFjZSwgc28gSSB0aGluayBpdCBiZXR0ZXIg
dG8gZHJvcAo+IGl0IHVudGlsCj4gdGhlcmUgd2lsbCBiZSByZWFsIHVzZXIgb2YgaXQuCgpUaGUg
c2FtZSBhcmd1bWVudCBpcyB2YWxpZCBmb3IgdGhlIGdsdWUgbGF5ZXIgOykKClRoaXMgaXMgb25s
eSBnb2luZyB0byBiZSB1c2VkIGJ5IG5hdGl2ZSBQU0ktTCBkZXZpY2VzIGFuZCB0aGUKcHNpbF9l
bmRwb2ludF9jb25maWcgaXMgZ29pbmcgdG8gYmUgZXh0ZW5kZWQgdG8gZmFjaWxpdGF0ZSB0aGVp
ciBuZWVkcwp0byBnaXZlIGluZm9ybWF0aW9uIHRvIHRoZSBETUEgZHJpdmVyIG9uIGhvdyB0byBz
ZXQgdGhpbmdzIHVwLgoKSSB3b3VsZCByYXRoZXIgYXZvaWQgY2h1cm4gbGF0ZXIgb24gdGhhbiBh
ZGRpbmcgdGhlIHN1cHBvcnQgZnJvbSB0aGUgc3RhcnQuCgpUaGUgcG9pbnQgaXMgdGhhdCB0aGUg
UFNJLUwgZW5kcG9pbnQgY29uZmlndXJhdGlvbiBpcyBwYXJ0IG9mIHRoZSBQU0ktTApwZXJpcGhl
cmFsIGFuZCBiYXNlZCBvbiBmYWN0b3JzIHRoZXNlIGNvbmZpZ3VyYXRpb25zIG1pZ2h0IGRpZmZl
ciBmcm9tCnRoZSBkZWZhdWx0IG9uZS4gRm9yIGV4YW1wbGUgaWYgd2Ugd2FudCB0byBtZXJnZSB0
aGUgdHdvIHBoeXNpY2FsIHJ4CmNoYW5uZWwgZm9yIHNhMnVsIChzbyB0aGV5IHVzZSB0aGUgc2Ft
ZSByZmxvdykgb3Igb3RoZXIgdGhpbmdzIHdlIChJKQpjYW4gbm90IGZvcmVzZWUgeWV0LgpPciBp
ZiBkaWZmZXJlbnQgZmlybXdhcmUgaXMgbG9hZGVkIGZvciB0aGVtIGFuZCBpdCBhZmZlY3RzIHRo
ZWlyIFBTSS1MCmNvbmZpZ3VyYXRpb24uCgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlu
bGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2lu
ZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
