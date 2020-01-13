Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29255139237
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:31:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imCOfY/aDr/uW+r0jXd1187ke6oD1A/G/u2QPO6l18o=; b=rvVe9OzY2pGQxQ
	u75BbxPYWC2kLkQzRGmIGQyu8MiUxFHUZyq0vZqPzA/pfNe63mQ+PZzWyrMm5niXwC02hwvwpZi4P
	tZmz/lPMwCRMXwC7rI2wkuvkzAUNWpSDNH9r1d0xRKClxTM8bLHLpM96jnWEUA9Pan6UFUUA/DLvK
	cIxKEI5Uzp9I8PfGhmE0Br8+SjbigrCYCHHawqkCui0Y8zZ3XptergH29VAYnOUjR/m1BnAvlA3sT
	xTP9bBNYwr/q+A6oVkr4bjgZWy/T4t6oAPag7yTmN3h5H2og8pMUu5nkzGODF9oVlE7e367mJuIhJ
	GLYcVT8WQK6S9g3x4N6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzo6-0008Mu-Om; Mon, 13 Jan 2020 13:31:02 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqznt-0008Kc-7p; Mon, 13 Jan 2020 13:30:51 +0000
Received: from [192.168.2.10] ([62.249.185.68])
 by smtp-cloud9.xs4all.net with ESMTPA
 id qzngi2FHLT6sRqznjiTpoc; Mon, 13 Jan 2020 14:30:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578922241; bh=WIUz0xTfwtLyoV2LJEwr1Uk9Zk7Luj7PT5AamxbjESc=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=T5AhSX1P4skXfJwhEsR52BqtUgD/WUR4yOBETHIsTDUICKEuY1mB+o8lJMd0oJYhJ
 PazS8RgYbWheq5Oqmo6rUSHhsJyavyL98ZdkSdKJhPmpnYjyg4yJyN9RtbhLZ/isXO
 1WVgDdPH1+dxGd1q/1Khsyo4JI03YenGhYAXVGoDkP9DsQZWEe6BiIh1IlajZPP/Uf
 E2r1mt6V92cgS+LvvwwjJoBefFNC4OzR4tCc+aeYIdwEvig9JSLYxcRiO+px8fdCF6
 GX75Ll7rZ91vGeixkuSomh4vsKKq43/u5yDmYyMA95C9G5HwBYxLtMiklHLR9lBzOg
 I2ypwmDnl8UPg==
Subject: Re: [PATCH v2 3/3] media: platform: meson-ao-cec-g12a: add wakeup
 support
To: guillaume La Roque <glaroque@baylibre.com>, narmstrong@baylibre.com,
 mchehab@kernel.org, khilman@baylibre.com, devicetree@vger.kernel.org
References: <20191213132956.11074-1-glaroque@baylibre.com>
 <20191213132956.11074-4-glaroque@baylibre.com>
 <cccc0cda-7403-1378-40c8-291b11bf868a@xs4all.nl>
 <0a07b5cc-a7dc-2983-89de-a1894ae6a469@baylibre.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <75278f35-c4c2-90bc-cc54-8c3b5bbdd7e1@xs4all.nl>
Date: Mon, 13 Jan 2020 14:30:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0a07b5cc-a7dc-2983-89de-a1894ae6a469@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAg7k4oa41o5OS0rku6ta94gSDgjExAsJ4lPqKm3rl9aL2mf4mm15Fi/g76iZp6EgzdJ9XDyb/ZSPJMq5sPKU7pihjfa0LuVk29TobWKXfAfSefmeKDb
 zaQFxiVnQ5l3xBs42icgedD7Ry5LegTl+Pfs9kz1Qxs4UrcWx2iKewbBF3++d9bPRU7qUc6R0vJaaHAX5GZWZn4LpvJSLZtdcHYH0JUKK6p4VAONGqO4R27v
 D7GClt/LyO+Bfkb3QBj+yNaKc9Akhmd9eW9EVOG4gfQ9H1RP0+WlBnUmdylTXgQ3tkmOF/d5z+kaKLteSvVSDaHTz52DDTMTGWo8MW4+eURAjltRLLSSBvK1
 V9CHGcYtcY9LOF3uS813o4CctPg7y/B6T7DyyC33jyzFIx0fWXifinJHTWQCzqQn08CFc6hvMHo3ZkFyvsyLPmAWL95ZSula3TKH7634bjz+p4K+m+gMHi0o
 mcCMLuWhT5K/v2WPGL8e+3KXmdCq679m+P5DBA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_053049_440683_3D42E957 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.22 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8xMC8yMCA0OjA2IFBNLCBndWlsbGF1bWUgTGEgUm9xdWUgd3JvdGU6Cj4gSGkgSGFucywK
PiAKPiBPbiAxLzcvMjAgMzozNiBQTSwgSGFucyBWZXJrdWlsIHdyb3RlOgo+PiBIaSBHdWlsbGF1
bWUsCj4+Cj4+IE9uIDEyLzEzLzE5IDI6MjkgUE0sIEd1aWxsYXVtZSBMYSBSb3F1ZSB3cm90ZToK
Pj4+IGFkZCByZWdpc3RlciBjb25maWd1cmF0aW9uIHRvIGFjdGl2YXRlIHdha2V1cCBmZWF0dXJl
IGluIGJsMzAxCj4+Pgo+Pj4gVGVzdGVkLWJ5OiBLZXZpbiBIaWxtYW4gPGtoaWxtYW5AYmF5bGli
cmUuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIExhIFJvcXVlIDxnbGFyb3F1ZUBi
YXlsaWJyZS5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lc29uL2Fv
LWNlYy1nMTJhLmMgfCAzMyArKysrKysrKysrKysrKysrKysrKysrCj4+PiAgMSBmaWxlIGNoYW5n
ZWQsIDMzIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9tZXNvbi9hby1jZWMtZzEyYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZXNv
bi9hby1jZWMtZzEyYS5jCj4+PiBpbmRleCA4OTE1MzMwNjBkNDkuLjg1ODUwYjk3NDEyNiAxMDA2
NDQKPj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVzb24vYW8tY2VjLWcxMmEuYwo+
Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZXNvbi9hby1jZWMtZzEyYS5jCj4+PiBA
QCAtMjUsNiArMjUsNyBAQAo+Pj4gICNpbmNsdWRlIDxtZWRpYS9jZWMuaD4KPj4+ICAjaW5jbHVk
ZSA8bWVkaWEvY2VjLW5vdGlmaWVyLmg+Cj4+PiAgI2luY2x1ZGUgPGxpbnV4L2Nsay1wcm92aWRl
ci5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+Cj4+PiAgCj4+PiAgLyogQ0VD
IFJlZ2lzdGVycyAqLwo+Pj4gIAo+Pj4gQEAgLTE2OCw2ICsxNjksMTggQEAKPj4+ICAKPj4+ICAj
ZGVmaW5lIENFQ0JfV0FLRVVQQ1RSTAkJMHgzMQo+Pj4gIAo+Pj4gKyNkZWZpbmUgQ0VDQl9GVU5D
X0NGR19SRUcJCTB4QTAKPj4+ICsjZGVmaW5lIENFQ0JfRlVOQ19DRkdfTUFTSwkJR0VOTUFTSyg2
LCAwKQo+Pj4gKyNkZWZpbmUgQ0VDQl9GVU5DX0NGR19DRUNfT04JCTB4MDEKPj4+ICsjZGVmaW5l
IENFQ0JfRlVOQ19DRkdfT1RQX09OCQkweDAyCj4+PiArI2RlZmluZSBDRUNCX0ZVTkNfQ0ZHX0FV
VE9fU1RBTkRCWQkweDA0Cj4+PiArI2RlZmluZSBDRUNCX0ZVTkNfQ0ZHX0FVVE9fUE9XRVJfT04J
MHgwOAo+Pj4gKyNkZWZpbmUgQ0VDQl9GVU5DX0NGR19BTEwJCTB4MmYKPj4+ICsjZGVmaW5lIENF
Q0JfRlVOQ19DRkdfTk9ORQkJMHgwCj4+PiArCj4+PiArI2RlZmluZSBDRUNCX0xPR19BRERSX1JF
RwkweEE0Cj4+PiArI2RlZmluZSBDRUNCX0xPR19BRERSX01BU0sJR0VOTUFTSygyMiwgMTYpCj4+
PiArCj4+PiAgc3RydWN0IG1lc29uX2FvX2NlY19nMTJhX2RhdGEgewo+Pj4gIAkvKiBTZXR1cCB0
aGUgaW50ZXJuYWwgQ0VDQl9DVFJMMiByZWdpc3RlciAqLwo+Pj4gIAlib29sCQkJCWN0cmwyX3Nl
dHVwOwo+Pj4gQEAgLTE3Nyw2ICsxOTAsNyBAQCBzdHJ1Y3QgbWVzb25fYW9fY2VjX2cxMmFfZGV2
aWNlIHsKPj4+ICAJc3RydWN0IHBsYXRmb3JtX2RldmljZQkJKnBkZXY7Cj4+PiAgCXN0cnVjdCBy
ZWdtYXAJCQkqcmVnbWFwOwo+Pj4gIAlzdHJ1Y3QgcmVnbWFwCQkJKnJlZ21hcF9jZWM7Cj4+PiAr
CXN0cnVjdCByZWdtYXAJCQkqcmVnbWFwX2FvX3N5c2N0cmw7Cj4+PiAgCXNwaW5sb2NrX3QJCQlj
ZWNfcmVnX2xvY2s7Cj4+PiAgCXN0cnVjdCBjZWNfbm90aWZpZXIJCSpub3RpZnk7Cj4+PiAgCXN0
cnVjdCBjZWNfYWRhcHRlcgkJKmFkYXA7Cj4+PiBAQCAtNTE4LDYgKzUzMiwxMyBAQCBtZXNvbl9h
b19jZWNfZzEyYV9zZXRfbG9nX2FkZHIoc3RydWN0IGNlY19hZGFwdGVyICphZGFwLCB1OCBsb2dp
Y2FsX2FkZHIpCj4+PiAgCQkJCQkgQklUKGxvZ2ljYWxfYWRkciAtIDgpKTsKPj4+ICAJfQo+Pj4g
IAo+Pj4gKwlpZiAoYW9fY2VjLT5yZWdtYXBfYW9fc3lzY3RybCkKPj4+ICsJCXJldCB8PSByZWdt
YXBfdXBkYXRlX2JpdHMoYW9fY2VjLT5yZWdtYXBfYW9fc3lzY3RybCwKPj4+ICsJCQkJCSBDRUNC
X0xPR19BRERSX1JFRywKPj4+ICsJCQkJCSBDRUNCX0xPR19BRERSX01BU0ssCj4+PiArCQkJCQkg
RklFTERfUFJFUChDRUNCX0xPR19BRERSX01BU0ssCj4+PiArCQkJCQkJICAgIGxvZ2ljYWxfYWRk
cikpOwo+Pj4gKwo+Pj4gIAkvKiBBbHdheXMgc2V0IEJyb2FkY2FzdC9VbnJlZ2lzdGVyZWQgMTUg
YWRkcmVzcyAqLwo+Pj4gIAlyZXQgfD0gcmVnbWFwX3VwZGF0ZV9iaXRzKGFvX2NlYy0+cmVnbWFw
X2NlYywgQ0VDQl9MQUREX0hJR0gsCj4+PiAgCQkJCSAgQklUKENFQ19MT0dfQUREUl9VTlJFR0lT
VEVSRUQgLSA4KSwKPj4+IEBAIC02MTgsNiArNjM5LDEzIEBAIHN0YXRpYyBpbnQgbWVzb25fYW9f
Y2VjX2cxMmFfYWRhcF9lbmFibGUoc3RydWN0IGNlY19hZGFwdGVyICphZGFwLCBib29sIGVuYWJs
ZSkKPj4+ICAJCXJlZ21hcF93cml0ZShhb19jZWMtPnJlZ21hcF9jZWMsIENFQ0JfQ1RSTDIsCj4+
PiAgCQkJICAgICBGSUVMRF9QUkVQKENFQ0JfQ1RSTDJfUklTRV9ERUxfTUFYLCAyKSk7Cj4+PiAg
Cj4+PiArCWlmIChhb19jZWMtPnJlZ21hcF9hb19zeXNjdHJsKSB7Cj4+PiArCQlyZWdtYXBfdXBk
YXRlX2JpdHMoYW9fY2VjLT5yZWdtYXBfYW9fc3lzY3RybCwKPj4+ICsJCQkJICAgQ0VDQl9GVU5D
X0NGR19SRUcsCj4+PiArCQkJCSAgIENFQ0JfRlVOQ19DRkdfTUFTSywKPj4+ICsJCQkJICAgQ0VD
Ql9GVU5DX0NGR19BTEwpOwo+PiBXaGF0IGV4YWN0bHkgaXMgZW5hYmxlZCBoZXJlPyBMb29raW5n
IGF0IENFQ0JfRlVOQ19DRkdfQUxMIGl0IHNlZW1zIHRvCj4+IGVuYWJsZSBhdXRvbWF0aWMgc3Rh
bmRieSAoSSBwcmVzdW1lIHdoZW4gdGhlIFNUQU5EQlkgbWVzc2FnZSBpcyByZWNlaXZlZD8pCj4+
IGFuZCBwb3dlciBvbiAoSSBwcmVzdW1lIHdoZW4gU0VUX1NUUkVBTV9QQVRIIGlzIHJlY2VpdmVk
PykuCj4gdGhpcyByZWdpc3RlciBhbmQgZmxhZ3MgYXJlIHVzZWQgYnkgYmwzMDEgcGFydC4KPiAK
PiBhbWxvZ2ljIGltcGxlbWVudGVkIGEgdGFzayB0byBjaGVjayBjZWMgZXZlbnQvbWVzc2FnZS4K
PiAKPiBmb3IgcG93ZXIgb24gaW4gYmwzMDEgaXQncyBub3Qgb25seSBvbiBTRVRfU1RSRUFNX1BB
VEggYnV0IGFsc28gb24gOgo+IAo+IFVTRVJfQ09OVFJPTF9QUkVTU0VECj4gVEVYVF9WSUVXX09O
CgpOb3QgSU1BR0VfVklFV19PTj8KCj4gQUNUSVZFX1NPVVJDRQo+IFJPVVRJTkdfQ0hBTkdFCj4g
Cj4gd2hlbiBpbiBDRUNCX0ZVTkNfQ0ZHX1JFRyByZWdpc3RlciB3ZSBwdXTCoCBDRUNCX0ZVTkNf
Q0ZHX0NFQ19PTiBhbmTCoCBDRUNCX0ZVTkNfQ0ZHX0FVVE9fUE9XRVJfT04KPiAKPiBpdCdzIG5v
dCBwb3NzaWJsZSB0byBjaGFuZ2UgdGhpcwoKVG9vIGJhZCBzaW5jZSBBQ1RJVkVfU09VUkNFIGFu
ZCBST1VUSU5HX0NIQU5HRSBzaG91bGQgbm90IHBvd2VyIG9uIGEgQ0VDIGRldmljZS4KClNlZSBz
ZWN0aW9uIDExLjUuMiBpbiB0aGUgSERNSSAyLjAgU3BlY2lmaWNhdGlvbiBmb3IgbW9yZSBkZXRh
aWxzLCBpZiB5b3UgaGF2ZQp0aGF0IHNwZWMuCgo+IAo+Pgo+PiBEbyB5b3UgcmVhbGx5IHdhbnQg
dG8gYXV0b21hdGljYWxseSBoYW5kbGUgU1RBTkRCWSB0aGF0IHdheT8gV2hhdCBkb2VzIHRoaXMK
Pj4gZG8gb24gdGhlIGhhcmR3YXJlIGxldmVsIGFueXdheT8gSXNuJ3QgdGhpcyBzb21ldGhpbmcg
dGhhdCBzaG91bGQgYmUKPj4gY29udHJvbGxlZCBpbiB1c2Vyc3BhY2U/Cj4gCj4gaW4gZmFjdCBp
IGRvIGEgbmV3IGNoZWNrIGluIGJsMzAxIGNvZGUgYW1sb2dpYyBkbyBub3RoaW5nIG9uIFNUQU5E
Qlkgc28gaSB3aWxsIGNsZWFuIGNvZGUKPiAKPiBhbmQgYWN0aXZhdGUgcmVhbCBvcHRpb24gc3Vw
cG9ydGVkIGJ5IGJsMzAxCj4gCj4+Cj4+IFNpbWlsYXIgcXVlc3Rpb25zIGZvciBwb3dlciBvbjog
eW91IG1heSBub3QgYWx3YXlzIHdhbnQgdG8gZW5hYmxlIHRoaXMgZmVhdHVyZQo+PiBzaW5jZSBp
dCBkZXBlbmRzIHZlcnkgbXVjaCBvbiB0aGUgcHJlY2lzZSB1c2UtY2FzZS4KPj4KPj4gQW5kIHdo
aWNoIG1lc3NhZ2VzIGl0IHJlYWN0cyB0byBpbiBvcmRlciB0byBkbyBhIHBvd2VyLW9uIG5lZWRz
IHRvIGJlCj4+IGRvY3VtZW50ZWQgc2luY2UgdGhpcyBkaWZmZXJzIGRlcGVuZGluZyBvbiB3aGV0
aGVyIHRoZSBDRUMgYWRhcHRlciBpcwo+PiB1c2VkIGZvciBhIFRWIG9yIGZvciBhIHBsYXliYWNr
IGRldmljZS4gVGhpcyBmZWF0dXJlIG1heSBiZSBoYXJkd2lyZWQgZm9yCj4+IGEgcGxheWJhY2sg
ZGV2aWNlIG9ubHksIGluIHdoaWNoIGNhc2UgaXQgc2hvdWxkIHByb2JhYmx5IGJlIGRpc2FibGVk
IGlmCj4+IHRoZSBDRUMgYWRhcHRlciBpcyBjb25maWd1cmVkIGFzIGEgVFYuCj4+Cj4+IEluIGFu
eSBjYXNlIEkgd291bGQgbGlrZSB0byBzZWUgc29tZSBtb3JlIGRldGFpbHMgYWJvdXQgaG93IHRo
aXMgd29ya3MsCj4+IGVzcGVjaWFsbHkgc2luY2UgdGhpcyBpcyB0aGUgZmlyc3QgaW1wbGVtZW50
YXRpb24gb2Ygc3VjaCBhIGZlYXR1cmUuCj4+Cj4+IEkgc3VzcGVjdCB0aGF0IHNvbWUgdXNlcnNw
YWNlIEFQSSBtaWdodCBiZSBuZWVkZWQgdG8gZ2V0IHRoZSByaWdodCBsZXZlbAo+PiBvZiBjb250
cm9sIG9mIHN1Y2ggYSBmZWF0dXJlLgo+IAo+IGkgd2lsbCBzZW5kIHYzIG5leHQgd2VlayB3aXRo
IHNvbWUgY29tbWVudHMgYW5kIGZpeCAoIGRpc2FibGUgYXJlIG1pc3NpbmcgZm9yIGV4YW1wbGUp
Cj4gCj4gYWN0dWFsIHVzZXJjYXNlIGlzIGZvciBhbmRyb2lkIFRWLgo+IAo+IHdoZW4gY2VjIHdh
cyBlbmFibGUgYW5kcm9pZCBUViB3YW50IHRvIGJlIHdha2V1cCBieSBjZWMgZXZlbnQuCj4gCj4g
Cj4+IFJlZ2FyZHMsCj4+Cj4+IAlIYW5zCj4+Cj4gCj4gdGhhbmtzIGZvciB5b3VyIHJldmlldwoK
Tm8gcHJvYmxlbSEKCglIYW5zCgo+IAo+IFJlZ2FyZHMKPiAKPiBHdWlsbGF1bWUKPiAKPj4+ICsJ
fQo+Pj4gKwo+Pj4gIAltZXNvbl9hb19jZWNfZzEyYV9pcnFfc2V0dXAoYW9fY2VjLCB0cnVlKTsK
Pj4+ICAKPj4+ICAJcmV0dXJuIDA7Cj4+PiBAQCAtNjg1LDYgKzcxMywxMSBAQCBzdGF0aWMgaW50
IG1lc29uX2FvX2NlY19nMTJhX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+
PiAgCQlnb3RvIG91dF9wcm9iZV9hZGFwdGVyOwo+Pj4gIAl9Cj4+PiAgCj4+PiArCWFvX2NlYy0+
cmVnbWFwX2FvX3N5c2N0cmwgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlCj4+PiAr
CQkocGRldi0+ZGV2Lm9mX25vZGUsICJhbWxvZ2ljLGFvLXN5c2N0cmwiKTsKPj4+ICsJaWYgKElT
X0VSUihhb19jZWMtPnJlZ21hcF9hb19zeXNjdHJsKSkKPj4+ICsJCWRldl93YXJuKCZwZGV2LT5k
ZXYsICJhby1zeXNjdHJsIHN5c2NvbiByZWdtYXAgbG9va3VwIGZhaWxlZC5cbiIpOwo+Pj4gKwo+
Pj4gIAlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwo+Pj4gIAlyZXQgPSBkZXZtX3Jl
cXVlc3RfdGhyZWFkZWRfaXJxKCZwZGV2LT5kZXYsIGlycSwKPj4+ICAJCQkJCW1lc29uX2FvX2Nl
Y19nMTJhX2lycSwKPj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
