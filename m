Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1097B1A311B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHXavlxE7ws+uw0Iai5f2UaIbhhnzE8xI0OBpr93sGA=; b=nPmebmmboTCnXf
	luiywexEYK2aRhRI+QL2sxEEURs5BqPn7GqOEPIdrmRB6cZasSyq0jJOoI6UuLvM4Okba66LVArHp
	zcK1lqwcRToO9NFwPF3btTaAU005zvqc0gsezol3V8wNJiuIi0zlzzoRHbUY0eT/GfBGAz0ACeQmk
	Dq6gnQIVfrkA1XvXBFUV7RIf4jVJsjRZjlJsPKQ/aL5pnr5fO9+2Wc5+CIgz7/RqoqljdAFNi4rYW
	LMbtB7ub0nMwOu+MgdRAVZh5FsT+iiot1iOAiQaGl5aWRrGaLg2KAlA5SuLGgpu8i4ZZoOOws5RB1
	tl9/QwvKejzDUblmwyrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSmB-0005me-PS; Thu, 09 Apr 2020 08:43:07 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSm2-0005kl-SL
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 08:43:00 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id DC70DA5DBE5E0A569B7A;
 Thu,  9 Apr 2020 16:42:40 +0800 (CST)
Received: from [127.0.0.1] (10.74.184.86) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Thu, 9 Apr 2020
 16:42:30 +0800
Subject: Re: Question about SEA handling process happened in user space
To: James Morse <james.morse@arm.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E83104A.7020803@huawei.com>
 <f9732852-046c-347c-21e1-7690e6b84a50@arm.com> <5E840F3B.6040803@huawei.com>
 <7d6668d6-ec4a-e362-94a3-c31950651c02@arm.com>
From: Xiaofei Tan <tanxiaofei@huawei.com>
Message-ID: <5E8EDFF6.4050903@huawei.com>
Date: Thu, 9 Apr 2020 16:42:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <7d6668d6-ec4a-e362-94a3-c31950651c02@arm.com>
X-Originating-IP: [10.74.184.86]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_014259_082345_EE34D688 
X-CRM114-Status: GOOD (  25.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXPvvIwKCk9uIDIwMjAvNC84IDA6MzcsIEphbWVzIE1vcnNlIHdyb3RlOgo+IE9uIDAx
LzA0LzIwMjAgMDQ6NDksIFhpYW9mZWkgVGFuIHdyb3RlOgo+PiBPbiAyMDIwLzQvMSAxOjAwLCBK
YW1lcyBNb3JzZSB3cm90ZToKPj4+IE9uIDMvMzEvMjAgMTA6NDEgQU0sIFhpYW9mZWkgVGFuIHdy
b3RlOgo+Pj4+IDEubWVtb3J5X2ZhaWx1cmUoKSBpcyBvbmx5IGNhbGxlZCBmb3IgIm1lbW9yeSBl
cnJvciBzZWN0aW9uIiByZWNvcmQuIFRoZW4KPj4+PiBzaG91bGQgd2UgdXNlIHRoaXMgbWVtb3J5
IHJlY29yZCBmb3IgZ2hlcyBzZWEgcmVwb3J0PyBPdXIgcGxhdGZvcm0gaXMKPj4+PiB1c2luZyAi
QVJNIHByb2Nlc3NvciBlcnJvciBzZWN0aW9uIi4KPiAKPj4+IEZvciB3aGF0IGNsYXNzZXMgb2Yg
ZXJyb3I/Cj4gCj4+IEJvdGggcHJvY2Vzc29yIGNhY2hlIGVjYyBlcnJvciBhbmQgbWVtb3J5IGVy
cm9yIChtYXJrZWQgYnkgcG9pc29uKSBjYW4gbGVhZCB0byBTRUEuCj4gCj4gVGhlc2UgYXJlIHRo
ZSBlcnJvcnMgdGhhdCBjYW4gY2F1c2UgdGhlIGhhcmR3YXJlIHRvIG5vdGlmeSBzb2Z0d2FyZSB2
aWEgZXh0ZXJuYWwgYWJvcnQuCj4gRm9yIHdoaWNoIGNsYXNzZXMgb2YgZXJyb3IgZG9lcyB5b3Vy
IGZpcm13YXJlIHRoZW4gdXNlIGEgJ3Byb2Nlc3NvciBlcnJvcic/Cj4gCgpGb3IgYWxsIHByb2Nl
c3NvciBnZW5lcmF0aW9uIGFuZCBjb25zdW1wdGlvbiBlcnJvcnMuCgo+IEl0IHNvdW5kcyBsaWtl
IHlvdSBhc3N1bWUgZXZlcnl0aGluZyByZXBvcnRlZCBpbiB0aGUgQ1BVIHJlY29yZHMgbXVzdCBi
ZSBhIHByb2Nlc3Nvcgo+IGVycm9yLCBhbmQgZXZlcnl0aGluZyByZXBvcnRlZCBieSB0aGUgbWVt
b3J5IGVycm9yIG11c3QgYmUgYSBtZW1vcnkgZXJyb3IuCj4gCgpOb3QgZXhhY3RseSwgd2UgdXNl
IHByb2Nlc3NvciBlcnJvciBzZWN0aW9uIGZvciBldmVyeXRoaW5nIHJlcG9ydGVkIGluIHRoZSBD
UFUgcmVjb3JkcywgYW5kCnRoZSBtZW1vcnkgaXMgc2ltaWxhci4gVGhvdWdoIGl0IGp1c3QgY29u
c3VtZWQgZXJyb3JzIGZyb20gb3RoZXIgbm9kZS4gU28sIHRoZSBwcm9ibGVtIGlzIHdoYXQKa2lu
ZHMgb2YgZXJyb3Igc2VjdGlvbiBzaG91bGQgd2UgdXNlIGZvciBlcnJvciBjb25zdW1wdGlvbiBj
YXNlLgoKPiAKPiAoZGlncmVzc2lvbjogdGhpcyBpc24ndCByZWFsbHkgdHJ1ZSEKPiBUaGUgQ1BV
IGNvdWxkIHJlcG9ydCB0aGF0IGl0IHJlYWQgcG9pc29uIGZyb20gbWVtb3J5LiBJcyB0aGlzIGEg
bWVtb3J5IGVycm9yLCBvciBhIENQVQo+IGVycm9yPyBFcXVhbGx5IHRoZSBtZW1vcnkgY29udHJv
bGxlciBjb3VsZCByZXBvcnQgdGhhdCBhIFBDSWUgZGV2aWNlIHdyb3RlIHRvIGEKPiBub3QtcHJl
c2VudCBESU1NLiBJcyB0aGlzIGEgbWVtb3J5IGVycm9yPykKPiAKClllcywgdGhpcyBpcyBlcnJv
ciBjb25zdW1wdGlvbiBjYXNlLgoKPiAKPj4+IElmIG1lbW9yeSBoYXMgYmVjb21lIGNvcnJ1cHRl
ZCwgeW91IHNob3VsZCB0ZWxsIHRoZSBPUyBhYm91dCB0aGUgbWVtb3J5IGVycm9yLgo+Pj4KPj4+
ID5Gcm9tIChteSkgbWVtb3J5OiBsaW51eCB3aWxsIGp1c3QgcHJpbnQgb3V0ICdwcm9jZXNzb3Ig
ZXJyb3JzJywgYW5kIHBhbmljKCkgaWYKPj4+IHRoZXkgYXJlIG1hcmtlZCBhcyBmYXRhbC4gSSBk
b24ndCB0aGluayB5b3UgY2FuIHVzZSB0aGVzZSB0byBjb252ZXkgYSBtZW1vcnkKPj4+IGVycm9y
Li4uCj4+Pgo+Pgo+PiBPSy4gVGhlbiBmaXJtd2FyZSBzaG91bGQgZGV0ZWN0IGVycm9yIHNvdXJj
ZS4gSWYgaXQgaXMgcHJvY2Vzc29yIGNhY2hlIGVycm9yLAo+PiB3ZSB1c2UgIkFSTSBwcm9jZXNz
b3IgZXJyb3Igc2VjdGlvbiIsIGVsc2UgaWYgaXQgaXMgbWVtb3J5IGVycm9yLCB3ZSB1c2UgIm1l
bW9yeSBlcnJvciBzZWN0aW9uIi4KPiAKPj4gTm9ybWFsbHksIHdlIHJlcG9ydCBtZW1vcnkgZXJy
b3Igb25seSBmcm9tIFJBUyBub2RlIG9mIEREUkMgb3IgSEhBIG1vZHVsZS4gRm9yIFNFQSwKPiAK
PiBEbyB5b3UgaGF2ZSBwYXRjaGVzIHRvIGdldCBsaW51eCB0byBkbyBzb21ldGhpbmcgdXNlZnVs
IHdpdGggdGhlIHByb2Nlc3NvciBlcnJvciBub2Rlcz8KPiAKPiBXZSdkIG5lZWQgaXQgdG8gaGFu
ZGxlIHVuY29ycmVjdGVkIGNhY2hlIGVycm9ycyB3aXRoIGEgcGh5c2ljYWwgYWRkcmVzcywgYXMg
aWYgdGhleSB3ZXJlCj4gbWVtb3J5IGVycm9ycy4uLgo+IAoKWWVzLCB3ZSBoYXZlIHNvbWUgcGF0
Y2hlcyB0byBkbyB0aGlzIHRoaW5nIGluc2lkZS4gVGhlbiBtZW1vcnlfZmFpbHVyZSgpIHdpbGwg
YmUgY2FsbGVkIGZvcgphcm0gcHJvY2Vzc29yIGVycm9yIHNlY3Rpb24gd2hlbiBwaHlzaWNhbCBh
ZGRyZXNzIGlzIGF2YWlsYWJsZS4KCj4gQSB2aXJ0dWFsIGFkZHJlc3MgaXMgbm8tdXNlIGFzIHRo
ZSBtZW1vcnkgbWF5IGhhdmUgYmVlbiByZS1tYXBwZWQgaW4gdGhlIG1lYW50aW1lLgo+IAoKUmln
aHQuCgo+IAo+PiBJdCBpcyBhIGxpdHRsZSBzdHJhbmdlIHRvIHJlcG9ydCBhcyBtZW1vcnkgZXJy
b3Igd2hlbiBjb2xsZWN0IGVycm9ycyBmcm9tIHByb2Nlc3Nvcgo+PiBSQVMgbm9kZS4KPiAKPiBJ
dHMgcHJhZ21hdGljOiB0b2RheSBsaW51eCBpZ25vcmVzIHRoZSBwcm9jZXNzb3IgZXJyb3JzLgo+
IElmIHlvdSBzdWZmZXIgYSBjYWNoZSBlcnJvciwgdGhlIG1lbW9yeSB0aGF0IGJhY2tlZCB0aGF0
IGNhY2hlZCBsb2NhdGlvbiBpcyBub3cgYWxzbwo+IGNvcnJ1cHQsIGFzIHlvdSd2ZSBsb3N0IHRo
ZSB3cml0ZXMgdGhhdCBtYWRlIHRoZSBjYWNoZS1saW5lIGRpcnR5Lgo+IAo+IElmIHlvdSBjYW4g
ZGVzY3JpYmUgdGhpcyBtZW1vcnkgY29ycnVwdGlvbiwgd2l0aG91dCB0cmVhdGluZyBpdCBhcyAn
dGhlIGVycm9yJyB0aGVuIGFuIE9TCj4gdGhhdCBkb2Vzbid0IGtub3cgYWJvdXQgdGhlIHByb2Nl
c3MgZXJyb3Igc2VjdGlvbnMgd2lsbCBzdGlsbCBkbyB0aGUgcmlnaHQgdGhpbmcuIChpLmUuCj4g
bGVhdmUgb3V0IHRoZSBkZXZpY2Uvcm93L3Jhbmsgc3R1ZmYgdG8gYXZvaWQgaXQgYmVpbmcgYXR0
cmlidXRlZCB0byBhIERJTU0pCj4gCj4gVGhlIGRvd25zaWRlIGlzIHlvdSBoYXZlIGZha2UgbWVt
b3J5IGVycm9ycyB3aGVuIG5vdGhpbmcgYmFkIGhhcHBlbmVkIHRvIHRoZSBESU1NLiBUaGVzZQo+
IHNob3VsZCBiZSB1bmlmb3JtLCBhbmQgc21hbGxlciB0aGFuIHRoZSBlcnJvcnMgYWN0dWFsbHkg
b2NjdXJyaW5nIGF0IHRoZSBESU1NLgo+IAoKYWdyZWUuCgo+IEkndmUgbm8gaWRlYSBpZiBwYXRj
aGVzIGFkZGluZyBzdXBwb3J0IGZvciB0aGUgcHJvY2Vzc29yIGVycm9yIG5vZGVzIHdvdWxkIGJl
IGNvbnNpZGVyZWQKPiBmb3Igc3RhYmxlLgo+IAoKSSB0aGluayB0aGlzIHBhcnQgaXMgd29ydGgg
aW1wcm92aW5nLgpCVFcsIHNob3VsZCBBUk0gcHJvY2Vzc29yIHJlY29yZCBwaHlzaWNhbCBhZGRy
ZXNzIHdoZW4gY29uc3VtZWQgYW4gbWVtb3J5IHBvaXNvbiBlcnJvciBmb3IgU0VBPwpJdCBpcyBo
ZWxwZnVsIHRvIGRvIGVycm9yIHJlY292ZXJ5LiBJcyB0aGlzIG1hbmRhdG9yeSBmb3IgYXJtIHNw
ZWM/Cgo+IAo+Pj4+IDIuU2hvdWxkIHdlIGRlZmluZSBhbiBlcnJvciBzb3VyY2Ugc3RydWN0dXJl
IGZvciBlYWNoIGNwdSBjb3JlIGluIEhFU1QgdGFibGU/Cj4+Pj4gSWYgbm90LCB0aGVyZSBtYXkg
YmUgY29uZmxpY3QgaWYgbW9yZSB0aGFuIG9uZSBjcHUgY29yZSBmYWxsIGludG8gU0VBLgo+Pj4K
Pj4+IFRoaXMgaXMgYSBxdWVzdGlvbiBmb3IgdGhlIHBlb3BsZSB3aG8gd3JvdGUgeW91ciBmaXJt
d2FyZS4KPj4+IEZvciBmaXJtd2FyZSBmaXJzdCwgeW91IG11c3QgaGF2ZSBzZXQgU0NSX0VMMy5F
QS4gV2hhdCBkb2VzIHlvdXIgZmlybXdhcmUgZG8gaWYKPj4+IHR3byBDUFVzIHRha2UgYW4gZXh0
ZXJuYWwgYWJvcnQgYXQgdGhlIHNhbWUgdGltZT8KPj4KPj4gV2lsbCBibG9jayB0aGUgc2Vjb25k
IG9uZSB1bnRpbCBmaXJzdCBTRUEgZmluaXNoZWQgYW5kIGVycm9yIHNvdXJjZSBvZiBIRVNUIHRh
YmxlIGZyZWUuCj4gCj4gT2theSwgc28gb25lICdTRUEnIGVudHJ5IGluIHRoZSBIRVNUIGRlc2Ny
aWJlcyB0aGUgc2luZ2xlIHJlZ2lvbiB0aGF0IENQRVIgd2lsbCBiZSB3cml0dGVuIHRvLgo+IAo+
IAo+Pj4gRWFjaCBDUFUgaGF2aW5nIGl0cyBvd24gYXJlYSB0byByZWFkL3dyaXRlIENQRVIgd291
bGQgbWVhbiB5b3UgbmVlZCBvbmUKPj4+IE5PVElGWV9TRUEgZW50cnkgaW4gdGhlIEhFU1QgZm9y
IGVhY2ggYXJlYSAuLi4gYnV0IGhvdyBkb2VzIHRoZSBPUyBrbm93IHdoaWNoCj4+PiBDUFUgaXMg
d2hpY2g/Cj4+Cj4+IFllcywgT1MgZG9uJ3Qga25vdyB0aGlzLgo+PiBTbywgaXQgaXMgb2sgdG8g
c2hhcmUgdGhlIG9ubHkgb25lIGFyZWEgZm9yIGFsbCBDUFVzLgo+IAo+IFllcywgYXMgdGhlcmUg
aXMgbm8gd2F5IHRvIHBhaXIgdGhlIG1lbW9yeSB3aXRoIHRoZSBDUFVzLgo+IAo+IElmIHRoZXJl
IGlzIG1vcmUgdGhhbiBvbmUgcmVnaW9uLCB0aGVuIGVhY2ggQ1BVIHRha2luZyBhbiBleHRlcm5h
bCBhYm9ydCB3aWxsIHdhbGsgdGhlCj4gbGlzdCwgY2hlY2tpbmcgZWFjaCBvbmUuCj4gCj4gSXRz
IHVwIHRvIGZpcm13YXJlIHRvIGVuc3VyZSB0aGlzIGlzIHNlcmlhbGlzZWQuIFNvdW5kcyBsaWtl
IHlvdSd2ZSBnb3QgdGhpcyBzb3J0ZWQuCj4gCgpZZXMKCj4gCj4gVGhhbmtzLAo+IAo+IEphbWVz
Cj4gCj4gLgo+IAoKLS0gCiB0aGFua3MKdGFueGlhb2ZlaQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
