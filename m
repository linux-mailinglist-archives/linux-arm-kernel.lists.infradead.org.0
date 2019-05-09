Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1914218E35
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 18:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Gc02GQJ0RYkyeoYcfl1qekusQUN9Af0/dIOclE9Im0=; b=r1mts9ZFv7PJIY
	bQamd7EzARMUFeiwm4do5j1DSN8VGlTU5MtXmCXuw53k09N9GwLKmoWiTw8O4B/dYptXFW4Nk5pXy
	k5JxiyUjkiMWPs3+eCrBF1T2zfnIh4S8OuggBqAVIsMSBlYUoOKtonF05Yg4HAjvJS8ok6VWmMUEa
	Nbru4AmPTfiHZk3GBeIhhCSv/Kn+V0QXNCK7UCGKrLeTTy4l4eT2ygrBYUZ6oCYJIu6YOCDlQ/eh2
	5GG85qhUfNLpV4eryMoLzRmKxx0bhayB7USC1ezLZ3fTXi0UWxWmmEiZByX5riQ3BvhGNgbHIWHr8
	r7JTWrnKIinZh4ItqxQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOm1G-0000nL-03; Thu, 09 May 2019 16:35:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOm19-0000mx-I7
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 16:35:37 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 630CB308FC5E;
 Thu,  9 May 2019 16:35:32 +0000 (UTC)
Received: from Igors-MacBook-Pro (ovpn-204-72.brq.redhat.com [10.40.204.72])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9E91A5B680;
 Thu,  9 May 2019 16:35:26 +0000 (UTC)
Date: Thu, 9 May 2019 18:35:20 +0200
From: Igor Mammedov <imammedo@redhat.com>
To: Laszlo Ersek <lersek@redhat.com>
Subject: Re: [Question] Memory hotplug clarification for Qemu ARM/virt
Message-ID: <20190509183520.6dc47f2e@Igors-MacBook-Pro>
In-Reply-To: <190831a5-297d-addb-ea56-645afb169efb@redhat.com>
References: <5FC3163CFD30C246ABAA99954A238FA83F1B6A66@lhreml524-mbs.china.huawei.com>
 <ca5f7231-6924-0720-73a5-766eb13ee331@arm.com>
 <190831a5-297d-addb-ea56-645afb169efb@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 09 May 2019 16:35:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_093535_638028_1EED33C0 
X-CRM114-Status: GOOD (  33.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "peter.maydell@linaro.org" <peter.maydell@linaro.org>,
 "xuwei \(O\)" <xuwei5@huawei.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "qemu-devel@nongnu.org" <qemu-devel@nongnu.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, linux-mm <linux-mm@kvack.org>,
 "qemu-arm@nongnu.org" <qemu-arm@nongnu.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCA4IE1heSAyMDE5IDIyOjI2OjEyICswMjAwCkxhc3psbyBFcnNlayA8bGVyc2VrQHJl
ZGhhdC5jb20+IHdyb3RlOgoKPiBPbiAwNS8wOC8xOSAxNDo1MCwgUm9iaW4gTXVycGh5IHdyb3Rl
Ogo+ID4gSGkgU2hhbWVlciwKPiA+IAo+ID4gT24gMDgvMDUvMjAxOSAxMToxNSwgU2hhbWVlcmFs
aSBLb2xvdGh1bSBUaG9kaSB3cm90ZToKPiA+PiBIaSwKPiA+Pgo+ID4+IFRoaXMgc2VyaWVzIGhl
cmVbMF0gYXR0ZW1wdHMgdG8gYWRkIHN1cHBvcnQgZm9yIFBDRElNTSBpbiBRRU1VIGZvcgo+ID4+
IEFSTS9WaXJ0IHBsYXRmb3JtIGFuZCBoYXMgc3R1bWJsZWQgdXBvbiBhbiBpc3N1ZSBhcyBpdCBp
cyBub3QgY2xlYXIoYXQKPiA+PiBsZWFzdAo+ID4+IGZyb20gUWVtdS9FREsyIHBvaW50IG9mIHZp
ZXcpIGhvdyBpbiBwaHlzaWNhbCB3b3JsZCB0aGUgaG90cGx1Z2dhYmxlCj4gPj4gbWVtb3J5IGlz
IGhhbmRsZWQgYnkga2VybmVsLgo+ID4+Cj4gPj4gVGhlIHByb3Bvc2VkIGltcGxlbWVudGF0aW9u
IGluIFFlbXUsIGJ1aWxkcyB0aGUgU1JBVCBhbmQgRFNEVCBwYXJ0cwo+ID4+IGFuZCB1c2VzIEdF
RCBkZXZpY2UgdG8gdHJpZ2dlciB0aGUgaG90cGx1Zy4gVGhpcyB3b3JrcyBmaW5lLgo+ID4+Cj4g
Pj4gQnV0IHdoZW4gd2UgYWRkZWQgdGhlIERUIG5vZGUgY29ycmVzcG9uZGluZyB0byB0aGUgUENE
SU1NKGNvbGQgcGx1Zwo+ID4+IHNjZW5hcmlvKSwgd2Ugbm90aWNlZCB0aGF0IEd1ZXN0IGtlcm5l
bCBzZWUgdGhpcyBtZW1vcnkgZHVyaW5nIGVhcmx5IGJvb3QKPiA+PiBldmVuIGlmIHdlIGFyZSBi
b290aW5nIHdpdGggQUNQSS4gQmVjYXVzZSBvZiB0aGlzLCBob3RwbHVnZ2FibGUgbWVtb3J5Cj4g
Pj4gbWF5IGVuZCB1cCBpbiB6b25lIG5vcm1hbCBhbmQgbWFrZSBpdCBub24taG90LXVuLXBsdWdn
YWJsZSBldmVuIGlmIEd1ZXN0Cj4gPj4gYm9vdHMgd2l0aCBBQ1BJLgo+ID4+Cj4gPj4gRnVydGhl
ciBkaXNjdXNzaW9uc1sxXSByZXZlYWxlZCB0aGF0LCBFREsyIFVFRkkgaGFzIG5vIG1lYW5zIHRv
Cj4gPj4gaW50ZXJwcmV0IHRoZQo+ID4+IEFDUEkgY29udGVudCBmcm9tIFFlbXUodGhpcyBpcyBk
ZXNpZ25lZCB0byBkbyBzbykgYW5kIHVzZXMgRFQgaW5mbyB0bwo+ID4+IGJ1aWxkIHRoZSBHZXRN
ZW1vcnlNYXAoKS4gVG8gc29sdmUgdGhpcywgaW50cm9kdWNlZCAiaG90cGx1Z2dhYmxlIgo+ID4+
IHByb3BlcnR5Cj4gPj4gdG8gRFQgbWVtb3J5IG5vZGUocGF0Y2hlcyAjNyAmICM4IGZyb20gWzBd
KSBzbyB0aGF0IFVFRkkgY2FuCj4gPj4gZGlmZmVyZW50aWF0ZQo+ID4+IHRoZSBub2RlcyBhbmQg
ZXhjbHVkZSB0aGUgaG90cGx1Z2dhYmxlIG9uZXMgZnJvbSBHZXRNZW1vcnlNYXAoKS4KPiA+Pgo+
ID4+IEJ1dCB0aGVuIExhc3psbyByaWdodGx5IHBvaW50ZWQgb3V0IHRoYXQgaW4gb3JkZXIgdG8g
YWNjb21tb2RhdGUgdGhlCj4gPj4gY2hhbmdlcwo+ID4+IGludG8gVUVGSSB3ZSBuZWVkIHRvIGtu
b3cgaG93IGV4YWN0bHkgTGludXggZXhwZWN0cy9oYW5kbGVzIGFsbCB0aGUKPiA+PiBob3RwbHVn
Z2FibGUgbWVtb3J5IHNjZW5hcmlvcy4gUGxlYXNlIGZpbmQgdGhlIGRpc2N1c3Npb24gaGVyZVsy
XS4KPiA+Pgo+ID4+IEZvciBlYXNlLCBJIGFtIGp1c3QgY29weWluZyB0aGUgcmVsZXZhbnQgY29t
bWVudCBmcm9tIExhc3psbyBiZWxvdywKPiA+Pgo+ID4+IC8qKioqKioKPiA+PiAiR2l2ZW4gcGF0
Y2hlcyAjNyBhbmQgIzgsIGFzIEkgdW5kZXJzdGFuZCB0aGVtLCB0aGUgZmlybXdhcmUgY2Fubm90
Cj4gPj4gZGlzdGluZ3Vpc2gKPiA+PiDCoCBob3RwbHVnZ2FibGUgJiBwcmVzZW50LCBmcm9tIGhv
dHBsdWdnYWJsZSAmIGFic2VudC4gVGhlIGZpcm13YXJlIGNhbgo+ID4+IG9ubHkKPiA+PiDCoCBz
a2lwIGJvdGggaG90cGx1Z2dhYmxlIGNhc2VzLiBUaGF0J3MgZmluZSBpbiB0aGF0IHRoZSBmaXJt
d2FyZSB3aWxsCj4gPj4gaG9nIG5laXRoZXIKPiA+PiDCoCB0eXBlIC0tIGJ1dCBpcyB0aGF0IE9L
IGZvciB0aGUgT1MgYXMgd2VsbCwgZm9yIGJvdGggQUNQSSBib290IGFuZCBEVAo+ID4+IGJvb3Q/
Cj4gPj4KPiA+PiBDb25zaWRlciBpbiBwYXJ0aWN1bGFyIHRoZSAiaG90cGx1Z2dhYmxlICYgcHJl
c2VudCwgQUNQSSBib290IiBjYXNlLgo+ID4+IEFzc3VtaW5nCj4gPj4gd2UgbW9kaWZ5IHRoZSBm
aXJtd2FyZSB0byBza2lwICJob3RwbHVnZ2FibGUiIGFsdG9nZXRoZXIsIHRoZSBVRUZJIG1lbW1h
cAo+ID4+IHdpbGwgbm90IGluY2x1ZGUgdGhlIHJhbmdlIGRlc3BpdGUgaXQgYmVpbmcgcHJlc2Vu
dCBhdCBib290Lgo+ID4+IFByZXN1bWFibHksIEFDUEkKPiA+PiB3aWxsIHJlZmVyIHRvIHRoZSBy
YW5nZSBzb21laG93LCBob3dldmVyLiBXaWxsIHRoYXQgbm90IGNvbmZ1c2UgdGhlIE9TPwo+ID4+
Cj4gPj4gV2hlbiBJZ29yIHJhaXNlZCB0aGlzIGVhcmxpZXIsIEkgc3VnZ2VzdGVkIHRoYXQKPiA+
PiBob3RwbHVnZ2FibGUtYW5kLXByZXNlbnQgc2hvdWxkCj4gPj4gYmUgYWRkZWQgYnkgdGhlIGZp
cm13YXJlLCBidXQgYWxzbyBhbGxvY2F0ZWQgaW1tZWRpYXRlbHksIGFzCj4gPj4gRWZpQm9vdFNl
cnZpY2VzRGF0YQo+ID4+IHR5cGUgbWVtb3J5LiBUaGlzIHdpbGwgcHJldmVudCBvdGhlciBkcml2
ZXJzIGluIHRoZSBmaXJtd2FyZSBmcm9tCj4gPj4gYWxsb2NhdGluZyBBY3BpTlZTCj4gPj4gb3Ig
UmVzZXJ2ZWQgY2h1bmtzIGZyb20gdGhlIHNhbWUgbWVtb3J5IHJhbmdlLCB0aGUgVUVGSSBtZW1t
YXAgd2lsbAo+ID4+IGNvbnRhaW4KPiA+PiB0aGUgcmFuZ2UgYXMgRWZpQm9vdFNlcnZpY2VzRGF0
YSwgYW5kIHRoZW4gdGhlIE9TIGNhbiByZWxlYXNlIHRoYXQKPiA+PiBhbGxvY2F0aW9uIGluCj4g
Pj4gb25lIGdvIGVhcmx5IGR1cmluZyBib290Lgo+ID4+Cj4gPj4gQnV0IHRoaXMgcmVhbGx5IGhh
cyB0byBiZSBjbGFyaWZpZWQgZnJvbSB0aGUgTGludXgga2VybmVsJ3MKPiA+PiBleHBlY3RhdGlv
bnMuIFBsZWFzZQo+ID4+IGZvcm1hbGl6ZSBhbGwgb2YgdGhlIGZvbGxvd2luZyBjYXNlczoKPiA+
Pgo+ID4+IE9TIGJvb3QgKERUL0FDUEkpwqAgaG90cGx1Z2dhYmxlICYgLi4uwqAgR2V0TWVtb3J5
TWFwKCkgc2hvdWxkIHJlcG9ydAo+ID4+IGFzwqAgRFQvQUNQSSBzaG91bGQgcmVwb3J0IGFzCj4g
Pj4gLS0tLS0tLS0tLS0tLS0tLS3CoCAtLS0tLS0tLS0tLS0tLS0tLS3CoAo+ID4+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS3CoCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+PiBE
VMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByZXNlbnTCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgP8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgID8KPiA+PiBEVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGFic2VudMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID/CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA/Cj4gPj4gQUNQScKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJlc2VudMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA/
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPwo+ID4+IEFDUEnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFic2VudMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgID/CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA/Cj4gPj4KPiA+PiBBZ2FpbiwgdGhpcyB0YWJs
ZSBpcyBkaWN0YXRlZCBieSBMaW51eC4iCj4gPj4KPiA+PiAqKioqKiovCj4gPj4KPiA+PiBDb3Vs
ZCB5b3UgcGxlYXNlIHRha2UgYSBsb29rIGF0IHRoaXMgYW5kIGxldCB1cyBrbm93IHdoYXQgaXMg
ZXhwZWN0ZWQKPiA+PiBoZXJlIGZyb20KPiA+PiBhIExpbnV4IGtlcm5lbCB2aWV3IHBvaW50Lgo+
ID4gCj4gPiBGb3IgYXJtNjQsIHNvIGZhciB3ZSd2ZSBub3QgZXZlbiBiZWVuIGNvbnNpZGVyaW5n
IERULWJhc2VkIGhvdHBsdWcgLSBhcwo+ID4gZmFyIGFzIEknbSBhd2FyZSB0aGVyZSB3b3VsZCBz
dGlsbCBiZSBhIGJpZyBvcGVuIHF1ZXN0aW9uIHRoZXJlIGFyb3VuZAo+ID4gbm90aWZpY2F0aW9u
IG1lY2hhbmlzbXMgYW5kIGhvdyB0byBkZXNjcmliZSB0aGVtLiBUaGUgRFQgc3R1ZmYgc28gZmFy
Cj4gPiBoYXMgY29tZSBmcm9tIHRoZSBQb3dlclBDIGZvbGtzLCBzbyBpdCdzIHByb2JhYmx5IHdv
cnRoIHNlZWluZyB3aGF0Cj4gPiB0aGVpciBpZGVhcyBhcmUuCj4gPiAKPiA+IEFDUEktd2lzZSBJ
J3ZlIGFsd2F5cyBhc3N1bWVkL2hvcGVkIHRoYXQgaG90cGx1Zy1yZWxhdGVkIHRoaW5ncyBzaG91
bGQKPiA+IGJlIHN1ZmZpY2llbnRseSB3ZWxsLXNwZWNpZmllZCBpbiBVRUZJIHRoYXQgImRvIHdo
YXRldmVyIHg4Ni9JQS02NCBkbyIKPiA+IHdvdWxkIGJlIGVub3VnaCBmb3IgdXMuCj4gCj4gQXMg
ZmFyIGFzIEkgY2FuIHNlZSBpbiBVRUZJIHYyLjggLS0gYW5kIEkgaGFkIGNoZWNrZWQgdGhlIHNw
ZWMgYmVmb3JlCj4gZHVtcGluZyB0aGUgdGFibGUgd2l0aCB0aGUgbWFueSBxdWVzdGlvbiBtYXJr
cyBvbiBTaGFtZWVyIC0tLCBhbGwgdGhlCj4gaG90LXBsdWcgbGFuZ3VhZ2UgaW4gdGhlIHNwZWMg
cmVmZXJzIHRvIFVTQiBhbmQgUENJIGhvdC1wbHVnIGluIHRoZQo+IHByZWJvb3QgZW52aXJvbm1l
bnQuIFRoZXJlIGlzIG5vdCBhIHNpbmdsZSB3b3JkIGFib3V0IGhvdC1wbHVnIGF0IE9TCj4gcnVu
dGltZSAocmVnYXJkaW5nIGFueSBkZXZpY2Ugb3IgY29tcG9uZW50IHR5cGUpLCBub3IgYWJvdXQg
bWVtb3J5Cj4gaG90LXBsdWcgKGF0IGFueSB0aW1lKS4KPgo+IExvb2tpbmcgdG8geDg2IGFwcGVh
cnMgdmFsaWQgLS0gc28gd2hhdCBkb2VzIHRoZSBMaW51eCBrZXJuZWwgZXhwZWN0IG9uCj4gdGhh
dCBhcmNoaXRlY3R1cmUsIGluIHRoZSAiQUNQSSIgcm93cyBvZiB0aGUgdGFibGU/CgpJIGNvdWxk
IG9ubHkgYW5zd2VyIGZyb20gUUVNVSB4ODYgcGVyc3BlY3RpdmUuClFFTVUgZm9yIHg4NiBndWVz
dHMgY3VycmVudGx5IGRvZXNuJ3QgYWRkIGhvdC1wbHVnZ2FibGUgUkFNIGludG8gRTgyMApiZWNh
dXNlIG9mIGRpZmZlcmVudCBsaW51eCBndWVzdHMgdGVuZCB0byBjYW5uaWJhbGl6ZSBpdCwgbWFr
aW5nIGl0IG5vbgp1bnBsdWdnYWJsZS4gVGhlIGxhc3QgY3VscHJpdCBJIHJlY2FsbCB3YXMgS0FT
TFIuCgpTbyBJJ2QgcmVmcmFpbiBmcm9tIHJlcG9ydGluZyBob3RwbHVnZ2FibGUgUkFNIGluIEdl
dE1lbW9yeU1hcCgpIGlmCml0J3MgcG9zc2libGUgKGl0J3MgcHJvYmFibHkgaGFjayAoc3BlYyBk
ZW9zbid0IHNheSBhbnl0aGluZyBhYm91dCBpdCkKYnV0IGl0IG1vc3RseSB3b3JrcyBmb3IgTGlu
dXggKHBsdWcvdW5wbHVnKSBhbmQgV2luZG93cyBndWVzdCBhbHNvCmZpbmUgd2l0aCBwbHVnIHBh
cnQgKG5vIHVucGx1ZyB0aGVyZSkpLgoKQXMgZm9yIHBoeXNpY2FsIHN5c3RlbXMsIHRoZXJlIGFy
ZSBvdXQgdGhlcmUgb25lcyB0aGF0IGRvIHJlcG9ydApob3RwbHVnZ2FibGUgUkFNIGluIEdldE1l
bW9yeU1hcCgpLgoKPiBTaGFtZWVyOiBpZiB5b3UgKEh1YXdlaSkgYXJlIHJlcHJlc2VudGVkIG9u
IHRoZSBVU1dHIC8gQVNXRywgSSBzdWdnZXN0Cj4gcmUtcmFpc2luZyB0aGUgcXVlc3Rpb24gb24g
dGhvc2UgbGlzdHMgdG9vOyBhdCBsZWFzdCB0aGUgIkFDUEkiIHJvd3Mgb2YKPiB0aGUgdGFibGUu
Cj4gCj4gVGhhbmtzIQo+IExhc3psbwo+IAo+ID4gCj4gPiBSb2Jpbi4KPiA+IAo+ID4+IChIaSBM
YXN6bG8vSWdvci9FcmljLCBwbGVhc2UgZmVlbCBmcmVlIHRvIGFkZC9jaGFuZ2UgaWYgSSBoYXZl
IG1pc3NlZAo+ID4+IGFueSB2YWxpZAo+ID4+IHBvaW50cyBhYm92ZSkuCj4gPj4KPiA+PiBUaGFu
a3MsCj4gPj4gU2hhbWVlcgo+ID4+IFswXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2Nv
dmVyLzEwODkwOTE5Lwo+ID4+IFsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNo
LzEwODYzMjk5Lwo+ID4+IFsyXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEw
ODkwOTM3Lwo+ID4+Cj4gPj4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
