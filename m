Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7B819A73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 11:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1untOH+r+G6Yt1+FMbd2igiwwY4SCPxh5yHnopPlzqw=; b=JPMBFbUb/aTopa
	KQ13qCjmdSK+Xps69YIETN6UOVvNTHOk/0b0iJ+ZsbZnJGjT9XiNBEq+jF7FuOBNCnOxsFliZVFNj
	ZbEHB/hxY0fG43N6Q0rwWSUCNUR7TdHit6mhkhhWCoxu0Um6ovl16v7079At9vA+fq+I25t+9zdZa
	jbiPEF7j7EPE26Hgo+XOin0ezIkCiJdWs67j/Y4SvfdsRngRBqvZOuPRJAw77vPezst5xEJGIfdG7
	48GDuFGmvysvTEAXH19IZxdE/eZ1RqW8wpAV7Rqx7l9UJ5GwiaaNgkPL/Wy+k0ldRtcNaHm2ixw55
	b+0w8EgeSyS0Xkr36qOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1dR-0007VW-Ao; Fri, 10 May 2019 09:16:09 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1cy-000730-Ls
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 09:15:51 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 27CB730832CF;
 Fri, 10 May 2019 09:15:39 +0000 (UTC)
Received: from [10.36.116.17] (ovpn-116-17.ams2.redhat.com [10.36.116.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6369960FE6;
 Fri, 10 May 2019 09:15:35 +0000 (UTC)
Subject: Re: [Qemu-devel] [Question] Memory hotplug clarification for Qemu
 ARM/virt
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Laszlo Ersek <lersek@redhat.com>, Igor Mammedov <imammedo@redhat.com>
References: <5FC3163CFD30C246ABAA99954A238FA83F1B6A66@lhreml524-mbs.china.huawei.com>
 <ca5f7231-6924-0720-73a5-766eb13ee331@arm.com>
 <190831a5-297d-addb-ea56-645afb169efb@redhat.com>
 <20190509183520.6dc47f2e@Igors-MacBook-Pro>
 <cd2aa867-5367-b470-0a2b-33897697c23f@redhat.com>
 <5FC3163CFD30C246ABAA99954A238FA83F1DDFE5@lhreml524-mbs.china.huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <499f2bc5-da85-72b2-4f7b-32f2d25d842b@redhat.com>
Date: Fri, 10 May 2019 11:15:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <5FC3163CFD30C246ABAA99954A238FA83F1DDFE5@lhreml524-mbs.china.huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Fri, 10 May 2019 09:15:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_021541_084109_AE0342EF 
X-CRM114-Status: GOOD (  31.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "qemu-devel@nongnu.org" <qemu-devel@nongnu.org>,
 Linuxarm <linuxarm@huawei.com>, linux-mm <linux-mm@kvack.org>,
 "qemu-arm@nongnu.org" <qemu-arm@nongnu.org>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2hhbWVlciwKCk9uIDUvMTAvMTkgMTA6MzQgQU0sIFNoYW1lZXJhbGkgS29sb3RodW0gVGhv
ZGkgd3JvdGU6Cj4gCj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IExh
c3psbyBFcnNlayBbbWFpbHRvOmxlcnNla0ByZWRoYXQuY29tXQo+PiBTZW50OiAwOSBNYXkgMjAx
OSAyMjo0OAo+PiBUbzogSWdvciBNYW1tZWRvdiA8aW1hbW1lZG9AcmVkaGF0LmNvbT4KPj4gQ2M6
IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+OyBTaGFtZWVyYWxpIEtvbG90aHVt
IFRob2RpCj4+IDxzaGFtZWVyYWxpLmtvbG90aHVtLnRob2RpQGh1YXdlaS5jb20+OyB3aWxsLmRl
YWNvbkBhcm0uY29tOyBDYXRhbGluCj4+IE1hcmluYXMgPENhdGFsaW4uTWFyaW5hc0Bhcm0uY29t
PjsgQW5zaHVtYW4gS2hhbmR1YWwKPj4gPGFuc2h1bWFuLmtoYW5kdWFsQGFybS5jb20+OyBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7Cj4+IGxpbnV4LW1tIDxsaW51eC1tbUBr
dmFjay5vcmc+OyBxZW11LWRldmVsQG5vbmdudS5vcmc7Cj4+IHFlbXUtYXJtQG5vbmdudS5vcmc7
IGVyaWMuYXVnZXJAcmVkaGF0LmNvbTsgcGV0ZXIubWF5ZGVsbEBsaW5hcm8ub3JnOwo+PiBMaW51
eGFybSA8bGludXhhcm1AaHVhd2VpLmNvbT47IGFyZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc7IEpv
bmF0aGFuCj4+IENhbWVyb24gPGpvbmF0aGFuLmNhbWVyb25AaHVhd2VpLmNvbT47IHh1d2VpIChP
KSA8eHV3ZWk1QGh1YXdlaS5jb20+Cj4+IFN1YmplY3Q6IFJlOiBbUXVlc3Rpb25dIE1lbW9yeSBo
b3RwbHVnIGNsYXJpZmljYXRpb24gZm9yIFFlbXUgQVJNL3ZpcnQKPj4KPj4gT24gMDUvMDkvMTkg
MTg6MzUsIElnb3IgTWFtbWVkb3Ygd3JvdGU6Cj4+PiBPbiBXZWQsIDggTWF5IDIwMTkgMjI6MjY6
MTIgKzAyMDAKPj4+IExhc3psbyBFcnNlayA8bGVyc2VrQHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4K
Pj4+PiBPbiAwNS8wOC8xOSAxNDo1MCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+Pj4+PiBIaSBTaGFt
ZWVyLAo+Pj4+Pgo+Pj4+PiBPbiAwOC8wNS8yMDE5IDExOjE1LCBTaGFtZWVyYWxpIEtvbG90aHVt
IFRob2RpIHdyb3RlOgo+Pj4+Pj4gSGksCj4+Pj4+Pgo+Pj4+Pj4gVGhpcyBzZXJpZXMgaGVyZVsw
XSBhdHRlbXB0cyB0byBhZGQgc3VwcG9ydCBmb3IgUENESU1NIGluIFFFTVUgZm9yCj4+Pj4+PiBB
Uk0vVmlydCBwbGF0Zm9ybSBhbmQgaGFzIHN0dW1ibGVkIHVwb24gYW4gaXNzdWUgYXMgaXQgaXMg
bm90IGNsZWFyKGF0Cj4+Pj4+PiBsZWFzdAo+Pj4+Pj4gZnJvbSBRZW11L0VESzIgcG9pbnQgb2Yg
dmlldykgaG93IGluIHBoeXNpY2FsIHdvcmxkIHRoZSBob3RwbHVnZ2FibGUKPj4+Pj4+IG1lbW9y
eSBpcyBoYW5kbGVkIGJ5IGtlcm5lbC4KPj4+Pj4+Cj4+Pj4+PiBUaGUgcHJvcG9zZWQgaW1wbGVt
ZW50YXRpb24gaW4gUWVtdSwgYnVpbGRzIHRoZSBTUkFUIGFuZCBEU0RUIHBhcnRzCj4+Pj4+PiBh
bmQgdXNlcyBHRUQgZGV2aWNlIHRvIHRyaWdnZXIgdGhlIGhvdHBsdWcuIFRoaXMgd29ya3MgZmlu
ZS4KPj4+Pj4+Cj4+Pj4+PiBCdXQgd2hlbiB3ZSBhZGRlZCB0aGUgRFQgbm9kZSBjb3JyZXNwb25k
aW5nIHRvIHRoZSBQQ0RJTU0oY29sZCBwbHVnCj4+Pj4+PiBzY2VuYXJpbyksIHdlIG5vdGljZWQg
dGhhdCBHdWVzdCBrZXJuZWwgc2VlIHRoaXMgbWVtb3J5IGR1cmluZyBlYXJseQo+PiBib290Cj4+
Pj4+PiBldmVuIGlmIHdlIGFyZSBib290aW5nIHdpdGggQUNQSS4gQmVjYXVzZSBvZiB0aGlzLCBo
b3RwbHVnZ2FibGUgbWVtb3J5Cj4+Pj4+PiBtYXkgZW5kIHVwIGluIHpvbmUgbm9ybWFsIGFuZCBt
YWtlIGl0IG5vbi1ob3QtdW4tcGx1Z2dhYmxlIGV2ZW4gaWYKPj4gR3Vlc3QKPj4+Pj4+IGJvb3Rz
IHdpdGggQUNQSS4KPj4+Pj4+Cj4+Pj4+PiBGdXJ0aGVyIGRpc2N1c3Npb25zWzFdIHJldmVhbGVk
IHRoYXQsIEVESzIgVUVGSSBoYXMgbm8gbWVhbnMgdG8KPj4+Pj4+IGludGVycHJldCB0aGUKPj4+
Pj4+IEFDUEkgY29udGVudCBmcm9tIFFlbXUodGhpcyBpcyBkZXNpZ25lZCB0byBkbyBzbykgYW5k
IHVzZXMgRFQgaW5mbyB0bwo+Pj4+Pj4gYnVpbGQgdGhlIEdldE1lbW9yeU1hcCgpLiBUbyBzb2x2
ZSB0aGlzLCBpbnRyb2R1Y2VkICJob3RwbHVnZ2FibGUiCj4+Pj4+PiBwcm9wZXJ0eQo+Pj4+Pj4g
dG8gRFQgbWVtb3J5IG5vZGUocGF0Y2hlcyAjNyAmICM4IGZyb20gWzBdKSBzbyB0aGF0IFVFRkkg
Y2FuCj4+Pj4+PiBkaWZmZXJlbnRpYXRlCj4+Pj4+PiB0aGUgbm9kZXMgYW5kIGV4Y2x1ZGUgdGhl
IGhvdHBsdWdnYWJsZSBvbmVzIGZyb20gR2V0TWVtb3J5TWFwKCkuCj4+Pj4+Pgo+Pj4+Pj4gQnV0
IHRoZW4gTGFzemxvIHJpZ2h0bHkgcG9pbnRlZCBvdXQgdGhhdCBpbiBvcmRlciB0byBhY2NvbW1v
ZGF0ZSB0aGUKPj4+Pj4+IGNoYW5nZXMKPj4+Pj4+IGludG8gVUVGSSB3ZSBuZWVkIHRvIGtub3cg
aG93IGV4YWN0bHkgTGludXggZXhwZWN0cy9oYW5kbGVzIGFsbCB0aGUKPj4+Pj4+IGhvdHBsdWdn
YWJsZSBtZW1vcnkgc2NlbmFyaW9zLiBQbGVhc2UgZmluZCB0aGUgZGlzY3Vzc2lvbiBoZXJlWzJd
Lgo+Pj4+Pj4KPj4+Pj4+IEZvciBlYXNlLCBJIGFtIGp1c3QgY29weWluZyB0aGUgcmVsZXZhbnQg
Y29tbWVudCBmcm9tIExhc3psbyBiZWxvdywKPj4+Pj4+Cj4+Pj4+PiAvKioqKioqCj4+Pj4+PiAi
R2l2ZW4gcGF0Y2hlcyAjNyBhbmQgIzgsIGFzIEkgdW5kZXJzdGFuZCB0aGVtLCB0aGUgZmlybXdh
cmUgY2Fubm90Cj4+Pj4+PiBkaXN0aW5ndWlzaAo+Pj4+Pj4gwqAgaG90cGx1Z2dhYmxlICYgcHJl
c2VudCwgZnJvbSBob3RwbHVnZ2FibGUgJiBhYnNlbnQuIFRoZSBmaXJtd2FyZQo+PiBjYW4KPj4+
Pj4+IG9ubHkKPj4+Pj4+IMKgIHNraXAgYm90aCBob3RwbHVnZ2FibGUgY2FzZXMuIFRoYXQncyBm
aW5lIGluIHRoYXQgdGhlIGZpcm13YXJlIHdpbGwKPj4+Pj4+IGhvZyBuZWl0aGVyCj4+Pj4+PiDC
oCB0eXBlIC0tIGJ1dCBpcyB0aGF0IE9LIGZvciB0aGUgT1MgYXMgd2VsbCwgZm9yIGJvdGggQUNQ
SSBib290IGFuZCBEVAo+Pj4+Pj4gYm9vdD8KPj4+Pj4+Cj4+Pj4+PiBDb25zaWRlciBpbiBwYXJ0
aWN1bGFyIHRoZSAiaG90cGx1Z2dhYmxlICYgcHJlc2VudCwgQUNQSSBib290IiBjYXNlLgo+Pj4+
Pj4gQXNzdW1pbmcKPj4+Pj4+IHdlIG1vZGlmeSB0aGUgZmlybXdhcmUgdG8gc2tpcCAiaG90cGx1
Z2dhYmxlIiBhbHRvZ2V0aGVyLCB0aGUgVUVGSQo+PiBtZW1tYXAKPj4+Pj4+IHdpbGwgbm90IGlu
Y2x1ZGUgdGhlIHJhbmdlIGRlc3BpdGUgaXQgYmVpbmcgcHJlc2VudCBhdCBib290Lgo+Pj4+Pj4g
UHJlc3VtYWJseSwgQUNQSQo+Pj4+Pj4gd2lsbCByZWZlciB0byB0aGUgcmFuZ2Ugc29tZWhvdywg
aG93ZXZlci4gV2lsbCB0aGF0IG5vdCBjb25mdXNlIHRoZSBPUz8KPj4+Pj4+Cj4+Pj4+PiBXaGVu
IElnb3IgcmFpc2VkIHRoaXMgZWFybGllciwgSSBzdWdnZXN0ZWQgdGhhdAo+Pj4+Pj4gaG90cGx1
Z2dhYmxlLWFuZC1wcmVzZW50IHNob3VsZAo+Pj4+Pj4gYmUgYWRkZWQgYnkgdGhlIGZpcm13YXJl
LCBidXQgYWxzbyBhbGxvY2F0ZWQgaW1tZWRpYXRlbHksIGFzCj4+Pj4+PiBFZmlCb290U2Vydmlj
ZXNEYXRhCj4+Pj4+PiB0eXBlIG1lbW9yeS4gVGhpcyB3aWxsIHByZXZlbnQgb3RoZXIgZHJpdmVy
cyBpbiB0aGUgZmlybXdhcmUgZnJvbQo+Pj4+Pj4gYWxsb2NhdGluZyBBY3BpTlZTCj4+Pj4+PiBv
ciBSZXNlcnZlZCBjaHVua3MgZnJvbSB0aGUgc2FtZSBtZW1vcnkgcmFuZ2UsIHRoZSBVRUZJIG1l
bW1hcCB3aWxsCj4+Pj4+PiBjb250YWluCj4+Pj4+PiB0aGUgcmFuZ2UgYXMgRWZpQm9vdFNlcnZp
Y2VzRGF0YSwgYW5kIHRoZW4gdGhlIE9TIGNhbiByZWxlYXNlIHRoYXQKPj4+Pj4+IGFsbG9jYXRp
b24gaW4KPj4+Pj4+IG9uZSBnbyBlYXJseSBkdXJpbmcgYm9vdC4KPj4+Pj4+Cj4+Pj4+PiBCdXQg
dGhpcyByZWFsbHkgaGFzIHRvIGJlIGNsYXJpZmllZCBmcm9tIHRoZSBMaW51eCBrZXJuZWwncwo+
Pj4+Pj4gZXhwZWN0YXRpb25zLiBQbGVhc2UKPj4+Pj4+IGZvcm1hbGl6ZSBhbGwgb2YgdGhlIGZv
bGxvd2luZyBjYXNlczoKPj4+Pj4+Cj4+Pj4+PiBPUyBib290IChEVC9BQ1BJKcKgIGhvdHBsdWdn
YWJsZSAmIC4uLsKgIEdldE1lbW9yeU1hcCgpIHNob3VsZCByZXBvcnQKPj4+Pj4+IGFzwqAgRFQv
QUNQSSBzaG91bGQgcmVwb3J0IGFzCj4+Pj4+PiAtLS0tLS0tLS0tLS0tLS0tLcKgIC0tLS0tLS0t
LS0tLS0tLS0tLQo+Pj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLcKgIC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+Pj4KPj4gRFTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwcmVzZW50wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID8KPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPwo+Pj4+Pj4KPj4gRFTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBhYnNlbnTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA/Cj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPwo+Pj4+Pj4KPj4gQUNQScKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcHJlc2VudMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA/Cj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgID8KPj4+Pj4+Cj4+IEFDUEnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFi
c2VudMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID8KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPwo+Pj4+Pj4KPj4+Pj4+IEFnYWluLCB0aGlzIHRhYmxlIGlzIGRpY3RhdGVkIGJ5IExp
bnV4LiIKPj4+Pj4+Cj4+Pj4+PiAqKioqKiovCj4+Pj4+Pgo+Pj4+Pj4gQ291bGQgeW91IHBsZWFz
ZSB0YWtlIGEgbG9vayBhdCB0aGlzIGFuZCBsZXQgdXMga25vdyB3aGF0IGlzIGV4cGVjdGVkCj4+
Pj4+PiBoZXJlIGZyb20KPj4+Pj4+IGEgTGludXgga2VybmVsIHZpZXcgcG9pbnQuCj4+Pj4+Cj4+
Pj4+IEZvciBhcm02NCwgc28gZmFyIHdlJ3ZlIG5vdCBldmVuIGJlZW4gY29uc2lkZXJpbmcgRFQt
YmFzZWQgaG90cGx1ZyAtIGFzCj4+Pj4+IGZhciBhcyBJJ20gYXdhcmUgdGhlcmUgd291bGQgc3Rp
bGwgYmUgYSBiaWcgb3BlbiBxdWVzdGlvbiB0aGVyZSBhcm91bmQKPj4+Pj4gbm90aWZpY2F0aW9u
IG1lY2hhbmlzbXMgYW5kIGhvdyB0byBkZXNjcmliZSB0aGVtLiBUaGUgRFQgc3R1ZmYgc28gZmFy
Cj4+Pj4+IGhhcyBjb21lIGZyb20gdGhlIFBvd2VyUEMgZm9sa3MsIHNvIGl0J3MgcHJvYmFibHkg
d29ydGggc2VlaW5nIHdoYXQKPj4+Pj4gdGhlaXIgaWRlYXMgYXJlLgo+Pj4+Pgo+Pj4+PiBBQ1BJ
LXdpc2UgSSd2ZSBhbHdheXMgYXNzdW1lZC9ob3BlZCB0aGF0IGhvdHBsdWctcmVsYXRlZCB0aGlu
Z3Mgc2hvdWxkCj4+Pj4+IGJlIHN1ZmZpY2llbnRseSB3ZWxsLXNwZWNpZmllZCBpbiBVRUZJIHRo
YXQgImRvIHdoYXRldmVyIHg4Ni9JQS02NCBkbyIKPj4+Pj4gd291bGQgYmUgZW5vdWdoIGZvciB1
cy4KPj4+Pgo+Pj4+IEFzIGZhciBhcyBJIGNhbiBzZWUgaW4gVUVGSSB2Mi44IC0tIGFuZCBJIGhh
ZCBjaGVja2VkIHRoZSBzcGVjIGJlZm9yZQo+Pj4+IGR1bXBpbmcgdGhlIHRhYmxlIHdpdGggdGhl
IG1hbnkgcXVlc3Rpb24gbWFya3Mgb24gU2hhbWVlciAtLSwgYWxsIHRoZQo+Pj4+IGhvdC1wbHVn
IGxhbmd1YWdlIGluIHRoZSBzcGVjIHJlZmVycyB0byBVU0IgYW5kIFBDSSBob3QtcGx1ZyBpbiB0
aGUKPj4+PiBwcmVib290IGVudmlyb25tZW50LiBUaGVyZSBpcyBub3QgYSBzaW5nbGUgd29yZCBh
Ym91dCBob3QtcGx1ZyBhdCBPUwo+Pj4+IHJ1bnRpbWUgKHJlZ2FyZGluZyBhbnkgZGV2aWNlIG9y
IGNvbXBvbmVudCB0eXBlKSwgbm9yIGFib3V0IG1lbW9yeQo+Pj4+IGhvdC1wbHVnIChhdCBhbnkg
dGltZSkuCj4+Pj4KPj4+PiBMb29raW5nIHRvIHg4NiBhcHBlYXJzIHZhbGlkIC0tIHNvIHdoYXQg
ZG9lcyB0aGUgTGludXgga2VybmVsIGV4cGVjdCBvbgo+Pj4+IHRoYXQgYXJjaGl0ZWN0dXJlLCBp
biB0aGUgIkFDUEkiIHJvd3Mgb2YgdGhlIHRhYmxlPwo+Pj4KPj4+IEkgY291bGQgb25seSBhbnN3
ZXIgZnJvbSBRRU1VIHg4NiBwZXJzcGVjdGl2ZS4KPj4+IFFFTVUgZm9yIHg4NiBndWVzdHMgY3Vy
cmVudGx5IGRvZXNuJ3QgYWRkIGhvdC1wbHVnZ2FibGUgUkFNIGludG8gRTgyMAo+Pj4gYmVjYXVz
ZSBvZiBkaWZmZXJlbnQgbGludXggZ3Vlc3RzIHRlbmQgdG8gY2FubmliYWxpemUgaXQsIG1ha2lu
ZyBpdCBub24KPj4+IHVucGx1Z2dhYmxlLiBUaGUgbGFzdCBjdWxwcml0IEkgcmVjYWxsIHdhcyBL
QVNMUi4KPj4+Cj4+PiBTbyBJJ2QgcmVmcmFpbiBmcm9tIHJlcG9ydGluZyBob3RwbHVnZ2FibGUg
UkFNIGluIEdldE1lbW9yeU1hcCgpIGlmCj4+PiBpdCdzIHBvc3NpYmxlIChpdCdzIHByb2JhYmx5
IGhhY2sgKHNwZWMgZGVvc24ndCBzYXkgYW55dGhpbmcgYWJvdXQgaXQpCj4+PiBidXQgaXQgbW9z
dGx5IHdvcmtzIGZvciBMaW51eCAocGx1Zy91bnBsdWcpIGFuZCBXaW5kb3dzIGd1ZXN0IGFsc28K
Pj4+IGZpbmUgd2l0aCBwbHVnIHBhcnQgKG5vIHVucGx1ZyB0aGVyZSkpLgo+Pgo+PiBJIGNhbiBh
Y2NlcHQgdGhpcyBhcyBhIHBlcmZlY3RseSB2YWxpZCBkZXNpZ24uIFdoaWNoIHdvdWxkIG1lYW4s
IFFFTVUgc2hvdWxkCj4+IG1hcmsgZWFjaCBob3RwbHVnZ2FibGUgUkFNIHJhbmdlIGluIHRoZSBE
VEIgZm9yIHRoZSBmaXJtd2FyZSB3aXRoIHRoZQo+PiBzcGVjaWFsIG5ldyBwcm9wZXJ0eSwgcmVn
YXJkbGVzcyBvZiBpdHMgaW5pdGlhbCAoImNvbGQiKSBwbHVnZ2VkLW5lc3MsIGFuZCB0aGVuCj4+
IHRoZSBmaXJtd2FyZSB3aWxsIG5vdCBleHBvc2UgdGhlIHJhbmdlIGluIHRoZSBHQ0QgbWVtb3J5
IHNwYWNlIG1hcCwgYW5kCj4+IGNvbnNlcXVlbnRseSBpbiB0aGUgVUVGSSBtZW1tYXAgZWl0aGVy
Lgo+Pgo+PiBJT1csIG91ciB0YWJsZSBpcywgdGh1cyBmYXI6Cj4+Cj4+IE9TIGJvb3QgKERUL0FD
UEkpICBob3RwbHVnZ2FibGUgJiAuLi4gIEdldE1lbW9yeU1hcCgpIHNob3VsZCByZXBvcnQgYXMK
Pj4gRFQvQUNQSSBzaG91bGQgcmVwb3J0IGFzCj4+IC0tLS0tLS0tLS0tLS0tLS0tICAtLS0tLS0t
LS0tLS0tLS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+PiBEVCAgICAgICAgICAgICAgICAgcHJlc2VudAo+PiBBQlNFTlQgICAg
ICAgICAgICAgICAgICAgICAgICAgICA/Cj4+IERUICAgICAgICAgICAgICAgICBhYnNlbnQKPj4g
QUJTRU5UICAgICAgICAgICAgICAgICAgICAgICAgICAgPwo+PiBBQ1BJICAgICAgICAgICAgICAg
cHJlc2VudCAgICAgICAgICAgICBBQlNFTlQKPj4gUFJFU0VOVAo+PiBBQ1BJICAgICAgICAgICAg
ICAgYWJzZW50ICAgICAgICAgICAgICBBQlNFTlQKPj4gQUJTRU5UCj4+IEluIHRoZSBmaXJtd2Fy
ZSwgSSBvbmx5IG5lZWQgdG8gY2FyZSBhYm91dCB0aGUgR2V0TWVtb3J5TWFwKCkgY29sdW1uLCBz
byBJCj4+IGNhbiB3b3JrIHdpdGggdGhpcy4KPiAKPiBUaGFuayB5b3UgYWxsIGZvciB0aGUgaW5w
dXRzLgo+IAo+IEkgYXNzdW1lIHdlIHdpbGwgc3RpbGwgcmVwb3J0IHRoZSBEVCBjb2xkIHBsdWcg
Y2FzZSB0byBrZXJuZWwoaG90cGx1Z2dhYmxlICYgcHJlc2VudCkuCj4gc28gdGhlIHRhYmxlIHdp
bGwgYmUgc29tZXRoaW5nIGxpa2UgdGhpcywKPiAKPiBPUyBib290IChEVC9BQ1BJKSAgaG90cGx1
Z2dhYmxlICYgLi4uICBHZXRNZW1vcnlNYXAoKSBzaG91bGQgcmVwb3J0IGFzICBEVC9BQ1BJIHNo
b3VsZCByZXBvcnQgYXMKPiAtLS0tLS0tLS0tLS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tICAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiBEVCAgICAgICAgICAgICAgICAgcHJlc2VudCAgICAgICAgICAgICBBQlNFTlQgICAgICAgICAg
ICAgICAgICAgICAgICAgICBQUkVTRU5UCj4gRFQgICAgICAgICAgICAgICAgIGFic2VudCAgICAg
ICAgICAgICAgQUJTRU5UICAgICAgICAgICAgICAgICAgICAgICAgICAgQUJTRU5UCldpdGggRFQg
Ym9vdCwgaG93IGRvZXMgdGhlIE9TIGdldCB0byBrbm93IGlmIHRoZWhvdHBsdWdnYWJsZSBtZW1v
cnkgaXMKcHJlc2VudCBvciBhYnNlbnQ/IE9yIG1heWJlIEkgbWlzdW5kZXJzdGFuZCB0aGUgbGFz
dCBjb2x1bW4uCgpUaGFua3MKCkVyaWMKPiBBQ1BJICAgICAgICAgICAgICAgcHJlc2VudCAgICAg
ICAgICAgICBBQlNFTlQgICAgICAgICAgICAgICAgICAgICAgICAgICBQUkVTRU5UCj4gQUNQSSAg
ICAgICAgICAgICAgIGFic2VudCAgICAgICAgICAgICAgQUJTRU5UICAgICAgICAgICAgICAgICAg
ICAgICAgICAgQUJTRU5UIAo+IAo+IAo+ICBDYW4gc29tZW9uZSBwbGVhc2UgZmlsZSBhIGZlYXR1
cmUgcmVxdWVzdCBhdAo+PiA8aHR0cHM6Ly9idWd6aWxsYS50aWFub2NvcmUub3JnLz4sIGZvciB0
aGUgQXJtVmlydFBrZyBQYWNrYWdlLCB3aXRoIHRoZXNlCj4+IGRldGFpcz8KPiAKPiBPay4gSSB3
aWxsIGRvIHRoYXQuCj4gCj4gVGhhbmtzLAo+IFNoYW1lZXIKPiAKPj4gVGhhbmtzCj4+IExhc3ps
bwo+Pgo+Pj4KPj4+IEFzIGZvciBwaHlzaWNhbCBzeXN0ZW1zLCB0aGVyZSBhcmUgb3V0IHRoZXJl
IG9uZXMgdGhhdCBkbyByZXBvcnQKPj4+IGhvdHBsdWdnYWJsZSBSQU0gaW4gR2V0TWVtb3J5TWFw
KCkuCj4+Pgo+Pj4+IFNoYW1lZXI6IGlmIHlvdSAoSHVhd2VpKSBhcmUgcmVwcmVzZW50ZWQgb24g
dGhlIFVTV0cgLyBBU1dHLCBJIHN1Z2dlc3QKPj4+PiByZS1yYWlzaW5nIHRoZSBxdWVzdGlvbiBv
biB0aG9zZSBsaXN0cyB0b287IGF0IGxlYXN0IHRoZSAiQUNQSSIgcm93cyBvZgo+Pj4+IHRoZSB0
YWJsZS4KPj4+Pgo+Pj4+IFRoYW5rcyEKPj4+PiBMYXN6bG8KPj4+Pgo+Pj4+Pgo+Pj4+PiBSb2Jp
bi4KPj4+Pj4KPj4+Pj4+IChIaSBMYXN6bG8vSWdvci9FcmljLCBwbGVhc2UgZmVlbCBmcmVlIHRv
IGFkZC9jaGFuZ2UgaWYgSSBoYXZlIG1pc3NlZAo+Pj4+Pj4gYW55IHZhbGlkCj4+Pj4+PiBwb2lu
dHMgYWJvdmUpLgo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcywKPj4+Pj4+IFNoYW1lZXIKPj4+Pj4+IFsw
XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEwODkwOTE5Lwo+Pj4+Pj4gWzFd
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA4NjMyOTkvCj4+Pj4+PiBbMl0g
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDg5MDkzNy8KPj4+Pj4+Cj4+Pj4+
Pgo+Pj4+Cj4+Pgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
