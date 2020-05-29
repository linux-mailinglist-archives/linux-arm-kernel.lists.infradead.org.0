Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707A11E7C59
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0XdkiKyKjuRlBE1eNepQih3K/PqnKl4WWKGskBlIuBg=; b=Vy5HR99GIPSSJZ4qWFrUeNwtz
	BZ4sdQU6jGUEm8wcKSI/VFtd02jqfN8NXAtcbjKZ7f8qvmEXA1i0VpA02mSY+zjjYSkjELIR3EcHW
	GkTSNO0gBpWBQDTXvJSiFLdfxlit7lqjZ+/TxLJbZaWR3COObZzxPmnLb3CHxiBWWFy4cJUEOh9o5
	R4pPr0g6VO0ZMNCT6dlvLHKvmG+WGKn11hutfibo6VtMWx/R3ybhBLLqndWNh9ro6ULG1pDOfsuji
	+GiFbVi1ND5sD3c25xAeV9QpPDGBHx+mapAjVqgp9c8gFO6fAAWCpX0yb7+BSC+y5d/DsSCmIyZVv
	4VDbbRAJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedaR-0004cV-NZ; Fri, 29 May 2020 11:54:07 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedaH-0004bS-UU; Fri, 29 May 2020 11:53:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B67D9ABBD;
 Fri, 29 May 2020 11:53:54 +0000 (UTC)
Subject: Re: [PATCH 1/1] tty: serial: owl: Initialize lock before registering
 port
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
References: <89f6393934fc6d493f8b9e87c1a6e916642b6a18.1590749143.git.cristian.ciocaltea@gmail.com>
 <20200529113419.GA1631227@kroah.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <4c40d6c1-47e8-b4ec-f2fd-e9767b03630c@suse.de>
Date: Fri, 29 May 2020 13:53:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200529113419.GA1631227@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_045358_273128_93171D46 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjkuMDUuMjAgdW0gMTM6MzQgc2NocmllYiBHcmVnIEtyb2FoLUhhcnRtYW46Cj4gT24gRnJp
LCBNYXkgMjksIDIwMjAgYXQgMDI6MDY6NDdQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdy
b3RlOgo+PiBSdW5uaW5nIGEgbG9ja2RlcC1lbmFibGVkIGtlcm5lbCBsZWFkcyB0byB0aGUgZm9s
bG93aW5nIHNwbGF0IHdoZW4KPj4gcHJvYmluZyB0aGUgb3dsLXVhcnQgZHJpdmVyOgo+Pgo+PiBb
ICAgIDEuMjcxNzg0XSBiMDEyNDAwMC5zZXJpYWw6IHR0eU9XTDIgYXQgTU1JTyAweGIwMTI0MDAw
IChpcnEgPSAyMiwgYmFzZV9iYXVkID0gMTUwMDAwMCkgaXMgYSBvd2wtdWFydAo+PiBbICAgIDEu
MjgxMjI2XSBJTkZPOiB0cnlpbmcgdG8gcmVnaXN0ZXIgbm9uLXN0YXRpYyBrZXkuCj4+IFsgICAg
MS4yODYxNzldIHRoZSBjb2RlIGlzIGZpbmUgYnV0IG5lZWRzIGxvY2tkZXAgYW5ub3RhdGlvbi4K
Pj4gWyAgICAxLjI5MTY0OF0gdHVybmluZyBvZmYgdGhlIGxvY2tpbmcgY29ycmVjdG5lc3MgdmFs
aWRhdG9yLgo+PiBbICAgIDEuMjk3MTI1XSBDUFU6IDAgUElEOiAxIENvbW06IHN3YXBwZXIvMCBO
b3QgdGFpbnRlZCA1LjcuMC1yYzcrICM3MAo+PiBbICAgIDEuMzAzNDYyXSBIYXJkd2FyZSBuYW1l
OiBHZW5lcmljIERUIGJhc2VkIHN5c3RlbQo+PiBbICAgIDEuMzA4MjY4XSBbPDgwMTExZDNjPl0g
KHVud2luZF9iYWNrdHJhY2UpIGZyb20gWzw4MDEwYzliOD5dIChzaG93X3N0YWNrKzB4MTAvMHgx
NCkKPj4gWyAgICAxLjMxNjAwM10gWzw4MDEwYzliOD5dIChzaG93X3N0YWNrKSBmcm9tIFs8ODA1
MDE2YjQ+XSAoZHVtcF9zdGFjaysweGI0LzB4ZTApCj4+IFsgICAgMS4zMjMyMThdIFs8ODA1MDE2
YjQ+XSAoZHVtcF9zdGFjaykgZnJvbSBbPDgwMTgyZGVjPl0gKHJlZ2lzdGVyX2xvY2tfY2xhc3Mr
MHgyNWMvMHg4ZjQpCj4+IFsgICAgMS4zMzEzOTFdIFs8ODAxODJkZWM+XSAocmVnaXN0ZXJfbG9j
a19jbGFzcykgZnJvbSBbPDgwMTdlZTM0Pl0gKF9fbG9ja19hY3F1aXJlKzB4YjQvMHgyZWU0KQo+
PiBbICAgIDEuMzM5OTAxXSBbPDgwMTdlZTM0Pl0gKF9fbG9ja19hY3F1aXJlKSBmcm9tIFs8ODAx
ODI5MWM+XSAobG9ja19hY3F1aXJlKzB4NDI0LzB4NGM4KQo+PiBbICAgIDEuMzQ3ODEzXSBbPDgw
MTgyOTFjPl0gKGxvY2tfYWNxdWlyZSkgZnJvbSBbPDgwODU5N2IwPl0gKF9yYXdfc3Bpbl9sb2Nr
X2lycXNhdmUrMHg1NC8weDY4KQo+PiBbICAgIDEuMzU2MjQyXSBbPDgwODU5N2IwPl0gKF9yYXdf
c3Bpbl9sb2NrX2lycXNhdmUpIGZyb20gWzw4MDU4MmU5ND5dICh1YXJ0X2FkZF9vbmVfcG9ydCsw
eDM4NC8weDUxMCkKPj4gWyAgICAxLjM2NTI3Nl0gWzw4MDU4MmU5ND5dICh1YXJ0X2FkZF9vbmVf
cG9ydCkgZnJvbSBbPDgwNThiNGQwPl0gKG93bF91YXJ0X3Byb2JlKzB4MWJjLzB4MjQ4KQo+PiBb
ICAgIDEuMzczNjIxXSBbPDgwNThiNGQwPl0gKG93bF91YXJ0X3Byb2JlKSBmcm9tIFs8ODA1OWMw
ZTQ+XSAocGxhdGZvcm1fZHJ2X3Byb2JlKzB4NDgvMHg5NCkKPj4gWyAgICAxLjM4MTg3NF0gWzw4
MDU5YzBlND5dIChwbGF0Zm9ybV9kcnZfcHJvYmUpIGZyb20gWzw4MDU5OTdjND5dIChyZWFsbHlf
cHJvYmUrMHgyMDAvMHg0NzApCj4+IFsgICAgMS4zOTAxMjNdIFs8ODA1OTk3YzQ+XSAocmVhbGx5
X3Byb2JlKSBmcm9tIFs8ODA1OTljODA+XSAoZHJpdmVyX3Byb2JlX2RldmljZSsweDE2Yy8weDFi
YykKPj4gWyAgICAxLjM5ODQ2MV0gWzw4MDU5OWM4MD5dIChkcml2ZXJfcHJvYmVfZGV2aWNlKSBm
cm9tIFs8ODA1OTlmMTg+XSAoZGV2aWNlX2RyaXZlcl9hdHRhY2grMHg0NC8weDYwKQo+PiBbICAg
IDEuNDA3MzE3XSBbPDgwNTk5ZjE4Pl0gKGRldmljZV9kcml2ZXJfYXR0YWNoKSBmcm9tIFs8ODA1
OWEwNzg+XSAoX19kcml2ZXJfYXR0YWNoKzB4MTQ0LzB4MTRjKQo+PiBbICAgIDEuNDE2MDAwXSBb
PDgwNTlhMDc4Pl0gKF9fZHJpdmVyX2F0dGFjaCkgZnJvbSBbPDgwNTk3OGFjPl0gKGJ1c19mb3Jf
ZWFjaF9kZXYrMHg1Yy8weGI0KQo+PiBbICAgIDEuNDI0MTYyXSBbPDgwNTk3OGFjPl0gKGJ1c19m
b3JfZWFjaF9kZXYpIGZyb20gWzw4MDU5ODk2Yz5dIChidXNfYWRkX2RyaXZlcisweDExOC8weDIw
NCkKPj4gWyAgICAxLjQzMjQxMF0gWzw4MDU5ODk2Yz5dIChidXNfYWRkX2RyaXZlcikgZnJvbSBb
PDgwNTlhZTZjPl0gKGRyaXZlcl9yZWdpc3RlcisweGJjLzB4ZjgpCj4+IFsgICAgMS40NDA0MDVd
IFs8ODA1OWFlNmM+XSAoZHJpdmVyX3JlZ2lzdGVyKSBmcm9tIFs8ODBjMWZkMjQ+XSAob3dsX3Vh
cnRfaW5pdCsweDIwLzB4NDApCj4+IFsgICAgMS40NDgzMTNdIFs8ODBjMWZkMjQ+XSAob3dsX3Vh
cnRfaW5pdCkgZnJvbSBbPDgwMTAyMWQ4Pl0gKGRvX29uZV9pbml0Y2FsbCsweDE4NC8weDNhNCkK
Pj4gWyAgICAxLjQ1NjM5OV0gWzw4MDEwMjFkOD5dIChkb19vbmVfaW5pdGNhbGwpIGZyb20gWzw4
MGMwMTEwMD5dIChrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDI2NC8weDJlNCkKPj4gWyAgICAxLjQ2
NTA4NV0gWzw4MGMwMTEwMD5dIChrZXJuZWxfaW5pdF9mcmVlYWJsZSkgZnJvbSBbPDgwODUwYTg4
Pl0gKGtlcm5lbF9pbml0KzB4OC8weDExMCkKPj4gWyAgICAxLjQ3MzI0OV0gWzw4MDg1MGE4OD5d
IChrZXJuZWxfaW5pdCkgZnJvbSBbPDgwMTAwMTE0Pl0gKHJldF9mcm9tX2ZvcmsrMHgxNC8weDIw
KQo+PiBbICAgIDEuNDgwODAwXSBFeGNlcHRpb24gc3RhY2soMHhlZThiZGZiMCB0byAweGVlOGJk
ZmY4KQo+PiBbICAgIDEuNDg1ODQxXSBkZmEwOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAo+PiBbICAgIDEuNDk0
MDAyXSBkZmMwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAw
MDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAo+PiBbICAgIDEuNTAyMTYyXSBkZmUwOiAwMDAwMDAw
MCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAxMyAwMDAwMDAwMAo+PiBbICAgIDEu
NTA4OTE0XSBwcmludGs6IGNvbnNvbGUgW3R0eU9XTDJdIGVuYWJsZWQKPj4KPj4gVGhlIGxvY2tp
bmcgaXNzdWUgb2NjdXJzIGluIHVhcnRfY29uZmlndXJlX3BvcnQoKSB3aGVuIHRyeWluZyB0bwo+
PiBndWFyZCB0aGUgY2FsbCB0byBzZXRfbWN0cmwoKS4KPj4KPj4gdWFydF9hZGRfb25lX3BvcnQo
KSBzaG91bGQgbm9ybWFsbHkgaW5pdGlhbGl6ZSB0aGUgc3BpbmxvY2sgdmlhCj4+IHVhcnRfcG9y
dF9zcGluX2xvY2tfaW5pdCgpLCBidXQgaXQgbmV2ZXIgaGFwcGVucyBiZWNhdXNlIHRoZSBwb3J0
IGlzCj4+IGRldGVjdGVkIGFzIGEgY29uc29sZSBhbmQsIGFzIGEgY29uc2VxdWVuY2UsIHRoZSBz
cGlubG9jayBpcyBleHBlY3RlZAo+PiB0byBiZSBhbHJlYWR5IGluaXRpYWxpemVkLgo+Pgo+PiBU
aGUgY29tbWl0IGEzY2IzOWQyNThlZgo+PiAoInNlcmlhbDogY29yZTogQWxsb3cgZGV0YWNoIGFu
ZCBhdHRhY2ggc2VyaWFsIGRldmljZSBmb3IgY29uc29sZSIpCj4+IGNoYW5nZWQgdGhlIGxvY2sg
aW5pdGlhbGl6YXRpb24gbG9naWMgdG8gYXNzdW1lIHRoZSBzcGlubG9jayBpcwo+PiBpbml0aWFs
aXplZCBldmVuIGlmIHRoZSBjb25zb2xlIGlzIG5vdCBlbmFibGVkLgo+Pgo+PiBUaGVyZWZvcmUs
IGluaXRpYWxpemUgdGhlIGxvY2sgZXhwbGljaXRseSBpbiBvd2xfdWFydF9wcm9iZSgpLCBiZWZv
cmUKPj4gYXR0ZW1wdGluZyB0byBpbnZva2UgdWFydF9hZGRfb25lX3BvcnQoKS4KPj4KPj4gRml4
ZXM6IGEzY2IzOWQyNThlZiAoInNlcmlhbDogY29yZTogQWxsb3cgZGV0YWNoIGFuZCBhdHRhY2gg
c2VyaWFsIGRldmljZSBmb3IgY29uc29sZSIpCj4+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENp
b2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGdtYWlsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVy
cy90dHkvc2VyaWFsL293bC11YXJ0LmMgfCAyICsrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFsL293bC11YXJ0
LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvb3dsLXVhcnQuYwo+PiBpbmRleCBjMTQ5ZjhjMzAwMDcu
LmMyZmEyZjE1ZDUwYSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL293bC11YXJ0
LmMKPj4gKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL293bC11YXJ0LmMKPj4gQEAgLTcwNSw2ICs3
MDUsOCBAQCBzdGF0aWMgaW50IG93bF91YXJ0X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4+ICAgCW93bF91YXJ0X3BvcnRzW3BkZXYtPmlkXSA9IG93bF9wb3J0Owo+PiAgIAlw
bGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBvd2xfcG9ydCk7Cj4+ICAgCj4+ICsJc3Bpbl9sb2Nr
X2luaXQoJm93bF9wb3J0LT5wb3J0LmxvY2spOwo+PiArCj4+ICAgCXJldCA9IHVhcnRfYWRkX29u
ZV9wb3J0KCZvd2xfdWFydF9kcml2ZXIsICZvd2xfcG9ydC0+cG9ydCk7Cj4+ICAgCWlmIChyZXQp
Cj4+ICAgCQlvd2xfdWFydF9wb3J0c1twZGV2LT5pZF0gPSBOVUxMOwo+IAo+IFVnaCwgYW5vdGhl
ciBvbmUgOigKPiAKPiBUaGFua3MgZm9yIHRoaXMsIHdpbGwgcXVldWUgdGhpcyB1cCBub3cuCgpU
aGFua3MuIElmIHRoaXMgaXMgdGhlIGV4cGVjdGVkIHBhdHRlcm4gbm93LCBJJ2xsIGFsc28gaGF2
ZSB0byB1cGRhdGUgCmluLWZsaWdodCBwYXRjaGVzLCBzdWNoIGFzIFN1bnBsdXMuCgpSZWdhcmRz
LApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZl
bGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVy
CkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
