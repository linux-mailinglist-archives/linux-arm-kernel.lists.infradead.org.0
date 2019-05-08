Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B851810A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 22:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6rD4KrQx5rHmvxrneB/ynMn+golen4Q3ZpLBrtP1pc=; b=BGuRxBu+DBTDdx
	FMrpvmcWQ4WTKUnfVRVXLkuI4zf3I5CsyyHu7SE36mVWe/bo2L6V5gKX1XcG2dVzxJcqXspXfs7XC
	ly/HNwTiOvDD0hX5KUnU7wmeLcTs3SuBClODPeIwdABKfJEQsEjBU5e/Vps3yNYzoEC3tGxOyOVjf
	OGqlH1sWh2K1XP0ZaghIZl73HGI5fbbYezCb2uXO8WTgfC1AgGjFdI3hmT0wXFWpN4eV57mAmoU5N
	3APu95wCT2U6RUhgPKFpPwAPPo8mQVUfEXt1vrOvwjdZpTv+a7SKVmk+fbNHeNbLJov4kkXOFrt14
	pB03DtWFMwVX37fOLKbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOT91-0000t5-Ss; Wed, 08 May 2019 20:26:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOT8u-0000sh-CM
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 20:26:22 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BBB083083391;
 Wed,  8 May 2019 20:26:19 +0000 (UTC)
Received: from lacos-laptop-7.usersys.redhat.com (ovpn-120-255.rdu2.redhat.com
 [10.10.120.255])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 99F891001DDD;
 Wed,  8 May 2019 20:26:13 +0000 (UTC)
Subject: Re: [Question] Memory hotplug clarification for Qemu ARM/virt
To: Robin Murphy <robin.murphy@arm.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, linux-mm <linux-mm@kvack.org>
References: <5FC3163CFD30C246ABAA99954A238FA83F1B6A66@lhreml524-mbs.china.huawei.com>
 <ca5f7231-6924-0720-73a5-766eb13ee331@arm.com>
From: Laszlo Ersek <lersek@redhat.com>
Message-ID: <190831a5-297d-addb-ea56-645afb169efb@redhat.com>
Date: Wed, 8 May 2019 22:26:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <ca5f7231-6924-0720-73a5-766eb13ee331@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 08 May 2019 20:26:20 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_132620_467252_02639E07 
X-CRM114-Status: GOOD (  27.69  )
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
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Linuxarm <linuxarm@huawei.com>,
 "qemu-devel@nongnu.org" <qemu-devel@nongnu.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "qemu-arm@nongnu.org" <qemu-arm@nongnu.org>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Igor Mammedov <imammedo@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMDgvMTkgMTQ6NTAsIFJvYmluIE11cnBoeSB3cm90ZToKPiBIaSBTaGFtZWVyLAo+IAo+
IE9uIDA4LzA1LzIwMTkgMTE6MTUsIFNoYW1lZXJhbGkgS29sb3RodW0gVGhvZGkgd3JvdGU6Cj4+
IEhpLAo+Pgo+PiBUaGlzIHNlcmllcyBoZXJlWzBdIGF0dGVtcHRzIHRvIGFkZCBzdXBwb3J0IGZv
ciBQQ0RJTU0gaW4gUUVNVSBmb3IKPj4gQVJNL1ZpcnQgcGxhdGZvcm0gYW5kIGhhcyBzdHVtYmxl
ZCB1cG9uIGFuIGlzc3VlIGFzIGl0IGlzIG5vdCBjbGVhcihhdAo+PiBsZWFzdAo+PiBmcm9tIFFl
bXUvRURLMiBwb2ludCBvZiB2aWV3KSBob3cgaW4gcGh5c2ljYWwgd29ybGQgdGhlIGhvdHBsdWdn
YWJsZQo+PiBtZW1vcnkgaXMgaGFuZGxlZCBieSBrZXJuZWwuCj4+Cj4+IFRoZSBwcm9wb3NlZCBp
bXBsZW1lbnRhdGlvbiBpbiBRZW11LCBidWlsZHMgdGhlIFNSQVQgYW5kIERTRFQgcGFydHMKPj4g
YW5kIHVzZXMgR0VEIGRldmljZSB0byB0cmlnZ2VyIHRoZSBob3RwbHVnLiBUaGlzIHdvcmtzIGZp
bmUuCj4+Cj4+IEJ1dCB3aGVuIHdlIGFkZGVkIHRoZSBEVCBub2RlIGNvcnJlc3BvbmRpbmcgdG8g
dGhlIFBDRElNTShjb2xkIHBsdWcKPj4gc2NlbmFyaW8pLCB3ZSBub3RpY2VkIHRoYXQgR3Vlc3Qg
a2VybmVsIHNlZSB0aGlzIG1lbW9yeSBkdXJpbmcgZWFybHkgYm9vdAo+PiBldmVuIGlmIHdlIGFy
ZSBib290aW5nIHdpdGggQUNQSS4gQmVjYXVzZSBvZiB0aGlzLCBob3RwbHVnZ2FibGUgbWVtb3J5
Cj4+IG1heSBlbmQgdXAgaW4gem9uZSBub3JtYWwgYW5kIG1ha2UgaXQgbm9uLWhvdC11bi1wbHVn
Z2FibGUgZXZlbiBpZiBHdWVzdAo+PiBib290cyB3aXRoIEFDUEkuCj4+Cj4+IEZ1cnRoZXIgZGlz
Y3Vzc2lvbnNbMV0gcmV2ZWFsZWQgdGhhdCwgRURLMiBVRUZJIGhhcyBubyBtZWFucyB0bwo+PiBp
bnRlcnByZXQgdGhlCj4+IEFDUEkgY29udGVudCBmcm9tIFFlbXUodGhpcyBpcyBkZXNpZ25lZCB0
byBkbyBzbykgYW5kIHVzZXMgRFQgaW5mbyB0bwo+PiBidWlsZCB0aGUgR2V0TWVtb3J5TWFwKCku
IFRvIHNvbHZlIHRoaXMsIGludHJvZHVjZWQgImhvdHBsdWdnYWJsZSIKPj4gcHJvcGVydHkKPj4g
dG8gRFQgbWVtb3J5IG5vZGUocGF0Y2hlcyAjNyAmICM4IGZyb20gWzBdKSBzbyB0aGF0IFVFRkkg
Y2FuCj4+IGRpZmZlcmVudGlhdGUKPj4gdGhlIG5vZGVzIGFuZCBleGNsdWRlIHRoZSBob3RwbHVn
Z2FibGUgb25lcyBmcm9tIEdldE1lbW9yeU1hcCgpLgo+Pgo+PiBCdXQgdGhlbiBMYXN6bG8gcmln
aHRseSBwb2ludGVkIG91dCB0aGF0IGluIG9yZGVyIHRvIGFjY29tbW9kYXRlIHRoZQo+PiBjaGFu
Z2VzCj4+IGludG8gVUVGSSB3ZSBuZWVkIHRvIGtub3cgaG93IGV4YWN0bHkgTGludXggZXhwZWN0
cy9oYW5kbGVzIGFsbCB0aGUKPj4gaG90cGx1Z2dhYmxlIG1lbW9yeSBzY2VuYXJpb3MuIFBsZWFz
ZSBmaW5kIHRoZSBkaXNjdXNzaW9uIGhlcmVbMl0uCj4+Cj4+IEZvciBlYXNlLCBJIGFtIGp1c3Qg
Y29weWluZyB0aGUgcmVsZXZhbnQgY29tbWVudCBmcm9tIExhc3psbyBiZWxvdywKPj4KPj4gLyoq
KioqKgo+PiAiR2l2ZW4gcGF0Y2hlcyAjNyBhbmQgIzgsIGFzIEkgdW5kZXJzdGFuZCB0aGVtLCB0
aGUgZmlybXdhcmUgY2Fubm90Cj4+IGRpc3Rpbmd1aXNoCj4+IMKgIGhvdHBsdWdnYWJsZSAmIHBy
ZXNlbnQsIGZyb20gaG90cGx1Z2dhYmxlICYgYWJzZW50LiBUaGUgZmlybXdhcmUgY2FuCj4+IG9u
bHkKPj4gwqAgc2tpcCBib3RoIGhvdHBsdWdnYWJsZSBjYXNlcy4gVGhhdCdzIGZpbmUgaW4gdGhh
dCB0aGUgZmlybXdhcmUgd2lsbAo+PiBob2cgbmVpdGhlcgo+PiDCoCB0eXBlIC0tIGJ1dCBpcyB0
aGF0IE9LIGZvciB0aGUgT1MgYXMgd2VsbCwgZm9yIGJvdGggQUNQSSBib290IGFuZCBEVAo+PiBi
b290Pwo+Pgo+PiBDb25zaWRlciBpbiBwYXJ0aWN1bGFyIHRoZSAiaG90cGx1Z2dhYmxlICYgcHJl
c2VudCwgQUNQSSBib290IiBjYXNlLgo+PiBBc3N1bWluZwo+PiB3ZSBtb2RpZnkgdGhlIGZpcm13
YXJlIHRvIHNraXAgImhvdHBsdWdnYWJsZSIgYWx0b2dldGhlciwgdGhlIFVFRkkgbWVtbWFwCj4+
IHdpbGwgbm90IGluY2x1ZGUgdGhlIHJhbmdlIGRlc3BpdGUgaXQgYmVpbmcgcHJlc2VudCBhdCBi
b290Lgo+PiBQcmVzdW1hYmx5LCBBQ1BJCj4+IHdpbGwgcmVmZXIgdG8gdGhlIHJhbmdlIHNvbWVo
b3csIGhvd2V2ZXIuIFdpbGwgdGhhdCBub3QgY29uZnVzZSB0aGUgT1M/Cj4+Cj4+IFdoZW4gSWdv
ciByYWlzZWQgdGhpcyBlYXJsaWVyLCBJIHN1Z2dlc3RlZCB0aGF0Cj4+IGhvdHBsdWdnYWJsZS1h
bmQtcHJlc2VudCBzaG91bGQKPj4gYmUgYWRkZWQgYnkgdGhlIGZpcm13YXJlLCBidXQgYWxzbyBh
bGxvY2F0ZWQgaW1tZWRpYXRlbHksIGFzCj4+IEVmaUJvb3RTZXJ2aWNlc0RhdGEKPj4gdHlwZSBt
ZW1vcnkuIFRoaXMgd2lsbCBwcmV2ZW50IG90aGVyIGRyaXZlcnMgaW4gdGhlIGZpcm13YXJlIGZy
b20KPj4gYWxsb2NhdGluZyBBY3BpTlZTCj4+IG9yIFJlc2VydmVkIGNodW5rcyBmcm9tIHRoZSBz
YW1lIG1lbW9yeSByYW5nZSwgdGhlIFVFRkkgbWVtbWFwIHdpbGwKPj4gY29udGFpbgo+PiB0aGUg
cmFuZ2UgYXMgRWZpQm9vdFNlcnZpY2VzRGF0YSwgYW5kIHRoZW4gdGhlIE9TIGNhbiByZWxlYXNl
IHRoYXQKPj4gYWxsb2NhdGlvbiBpbgo+PiBvbmUgZ28gZWFybHkgZHVyaW5nIGJvb3QuCj4+Cj4+
IEJ1dCB0aGlzIHJlYWxseSBoYXMgdG8gYmUgY2xhcmlmaWVkIGZyb20gdGhlIExpbnV4IGtlcm5l
bCdzCj4+IGV4cGVjdGF0aW9ucy4gUGxlYXNlCj4+IGZvcm1hbGl6ZSBhbGwgb2YgdGhlIGZvbGxv
d2luZyBjYXNlczoKPj4KPj4gT1MgYm9vdCAoRFQvQUNQSSnCoCBob3RwbHVnZ2FibGUgJiAuLi7C
oCBHZXRNZW1vcnlNYXAoKSBzaG91bGQgcmVwb3J0Cj4+IGFzwqAgRFQvQUNQSSBzaG91bGQgcmVw
b3J0IGFzCj4+IC0tLS0tLS0tLS0tLS0tLS0twqAgLS0tLS0tLS0tLS0tLS0tLS0twqAKPj4gLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLcKgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+
PiBEVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByZXNlbnTCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgP8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgID8KPj4gRFTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBhYnNlbnTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA/wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPwo+PiBBQ1BJwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcmVzZW50wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID/C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA/Cj4+IEFDUEnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFic2VudMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgID/CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA/Cj4+Cj4+IEFnYWluLCB0aGlzIHRhYmxlIGlzIGRp
Y3RhdGVkIGJ5IExpbnV4LiIKPj4KPj4gKioqKioqLwo+Pgo+PiBDb3VsZCB5b3UgcGxlYXNlIHRh
a2UgYSBsb29rIGF0IHRoaXMgYW5kIGxldCB1cyBrbm93IHdoYXQgaXMgZXhwZWN0ZWQKPj4gaGVy
ZSBmcm9tCj4+IGEgTGludXgga2VybmVsIHZpZXcgcG9pbnQuCj4gCj4gRm9yIGFybTY0LCBzbyBm
YXIgd2UndmUgbm90IGV2ZW4gYmVlbiBjb25zaWRlcmluZyBEVC1iYXNlZCBob3RwbHVnIC0gYXMK
PiBmYXIgYXMgSSdtIGF3YXJlIHRoZXJlIHdvdWxkIHN0aWxsIGJlIGEgYmlnIG9wZW4gcXVlc3Rp
b24gdGhlcmUgYXJvdW5kCj4gbm90aWZpY2F0aW9uIG1lY2hhbmlzbXMgYW5kIGhvdyB0byBkZXNj
cmliZSB0aGVtLiBUaGUgRFQgc3R1ZmYgc28gZmFyCj4gaGFzIGNvbWUgZnJvbSB0aGUgUG93ZXJQ
QyBmb2xrcywgc28gaXQncyBwcm9iYWJseSB3b3J0aCBzZWVpbmcgd2hhdAo+IHRoZWlyIGlkZWFz
IGFyZS4KPiAKPiBBQ1BJLXdpc2UgSSd2ZSBhbHdheXMgYXNzdW1lZC9ob3BlZCB0aGF0IGhvdHBs
dWctcmVsYXRlZCB0aGluZ3Mgc2hvdWxkCj4gYmUgc3VmZmljaWVudGx5IHdlbGwtc3BlY2lmaWVk
IGluIFVFRkkgdGhhdCAiZG8gd2hhdGV2ZXIgeDg2L0lBLTY0IGRvIgo+IHdvdWxkIGJlIGVub3Vn
aCBmb3IgdXMuCgpBcyBmYXIgYXMgSSBjYW4gc2VlIGluIFVFRkkgdjIuOCAtLSBhbmQgSSBoYWQg
Y2hlY2tlZCB0aGUgc3BlYyBiZWZvcmUKZHVtcGluZyB0aGUgdGFibGUgd2l0aCB0aGUgbWFueSBx
dWVzdGlvbiBtYXJrcyBvbiBTaGFtZWVyIC0tLCBhbGwgdGhlCmhvdC1wbHVnIGxhbmd1YWdlIGlu
IHRoZSBzcGVjIHJlZmVycyB0byBVU0IgYW5kIFBDSSBob3QtcGx1ZyBpbiB0aGUKcHJlYm9vdCBl
bnZpcm9ubWVudC4gVGhlcmUgaXMgbm90IGEgc2luZ2xlIHdvcmQgYWJvdXQgaG90LXBsdWcgYXQg
T1MKcnVudGltZSAocmVnYXJkaW5nIGFueSBkZXZpY2Ugb3IgY29tcG9uZW50IHR5cGUpLCBub3Ig
YWJvdXQgbWVtb3J5CmhvdC1wbHVnIChhdCBhbnkgdGltZSkuCgpMb29raW5nIHRvIHg4NiBhcHBl
YXJzIHZhbGlkIC0tIHNvIHdoYXQgZG9lcyB0aGUgTGludXgga2VybmVsIGV4cGVjdCBvbgp0aGF0
IGFyY2hpdGVjdHVyZSwgaW4gdGhlICJBQ1BJIiByb3dzIG9mIHRoZSB0YWJsZT8KClNoYW1lZXI6
IGlmIHlvdSAoSHVhd2VpKSBhcmUgcmVwcmVzZW50ZWQgb24gdGhlIFVTV0cgLyBBU1dHLCBJIHN1
Z2dlc3QKcmUtcmFpc2luZyB0aGUgcXVlc3Rpb24gb24gdGhvc2UgbGlzdHMgdG9vOyBhdCBsZWFz
dCB0aGUgIkFDUEkiIHJvd3Mgb2YKdGhlIHRhYmxlLgoKVGhhbmtzIQpMYXN6bG8KCj4gCj4gUm9i
aW4uCj4gCj4+IChIaSBMYXN6bG8vSWdvci9FcmljLCBwbGVhc2UgZmVlbCBmcmVlIHRvIGFkZC9j
aGFuZ2UgaWYgSSBoYXZlIG1pc3NlZAo+PiBhbnkgdmFsaWQKPj4gcG9pbnRzIGFib3ZlKS4KPj4K
Pj4gVGhhbmtzLAo+PiBTaGFtZWVyCj4+IFswXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L2NvdmVyLzEwODkwOTE5Lwo+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRj
aC8xMDg2MzI5OS8KPj4gWzJdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA4
OTA5MzcvCj4+Cj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
