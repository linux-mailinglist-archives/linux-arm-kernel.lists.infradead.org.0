Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989471928B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RJSs85mWiKihHKW1c/PkXlo0mx7Rj+BnLcVpFQ+T8c0=; b=om+XSiWU4DKgDH01y45Q6LiJF
	Gzbhekm3I1MH+o/j8hL5h37jWlg9uLx1bHittOgrOLnCLklZHNEaJxj+8AOcEXlFDP37MOAYh41cU
	zkAwm1Sgd45e7ZrCxpZV2hQswxkoY3GB6nJdGRBVqbYSs7zMlTdeeF6aFMHohXrWYpU6q3ZBcvPW9
	kWDREqLhcfrzq5vqp4dDWmyNRCAiPFL16fn0NkOXJrOKi5e1RO+F2/ryMcOz2RjHWqv3LqHigAzwJ
	Nl0FtyCHy9DZmUR9a7rEDSzyUWlf0XMgqo1k6VjMAJUu3kH7EWmLJdkJfCP6iIfeN8NcTz1+Rw6DP
	oLsBlZ66A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH5My-000429-Ek; Wed, 25 Mar 2020 12:42:52 +0000
Received: from smtp109.iad3b.emailsrvr.com ([146.20.161.109])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Mp-000413-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 12:42:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=softiron.com;
 s=20191119-3p77dzn5; t=1585140157;
 bh=ZXRuf5tQnXmldjtG8nfGMByOS+zlmXatmq7Rz9OdDQA=;
 h=Subject:From:To:Date:From;
 b=B+84GWS8Pj2Q+ZJZiyduuD/E8kK10bnrmdhCsoAeEkPg6QAgqW33DAXY9u6LjpC60
 ypRR57M3KiCLag8GVUlC71KJKKY5rPBeO+R+ve55v/aZDb+4kYtgv2cLxWorbGOKZN
 r9lxiSjUyo+Vc5B4ONMk+9dX9YcArWTUbYVPqE8g=
X-Auth-ID: alan@softiron.com
Received: by smtp6.relay.iad3b.emailsrvr.com (Authenticated sender:
 alan-AT-softiron.com) with ESMTPSA id 36D90200B6; 
 Wed, 25 Mar 2020 08:42:37 -0400 (EDT)
X-Sender-Id: alan@softiron.com
Received: from [10.1.1.115] (99-117-187-177.lightspeed.dybhfl.sbcglobal.net
 [99.117.187.177]) (using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
 by 0.0.0.0:465 (trex/5.7.12); Wed, 25 Mar 2020 08:42:37 -0400
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
From: Alan Ott <alan@softiron.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20191206173343.GX25745@shell.armlinux.org.uk>
 <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
 <20191213002010.GO25745@shell.armlinux.org.uk>
 <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
Message-ID: <4f9bb480-ba8d-b70e-961b-d6032232d250@softiron.com>
Date: Wed, 25 Mar 2020 08:42:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
Content-Language: en-US
X-Classification-ID: f950c16d-b42a-4652-9c77-f844fcaebf4b-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_054243_337248_6D084169 
X-CRM114-Status: GOOD (  28.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.20.161.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kamel.bouhara@bootlin.com, Wolfram Sang <wsa@the-dreams.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ludovic.Desroches@microchip.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMi8yNy8yMCAxMTo0NyBBTSwgQWxhbiBPdHQgd3JvdGU6Cj4gT24gMTIvMTIvMTkgNzoyMCBQ
TSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIHdyb3RlOgo+PiBPbiBNb24sIERlYyAw
OSwgMjAxOSBhdCAwMToyMDoxNUFNICswMTAwLCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+Pj4gSGkg
UnVzc2VsbCwKPj4+Cj4+PiB2ZXJ5IG5pY2UgZGVzY3JpcHRpb24gb2YgdGhpcyBkdWFsLW1vZGUg
cHJvYmxlbS4KPj4+Cj4+PiBJIHdpc2ggSSBoYWQgYSBzaW1wbGUgYW5kIGVsZWdhbnQgd2F5IHdl
IGNvdWxkIG1ha2UgaXQKPj4+IHVuYW1iaWd1b3VzIGFuZCBzaW1wbGUgdG8gdXNlIC4uLiBidXQg
aXQgYmVhdHMgbWUgcmlnaHQKPj4+IG5vdy4KPj4+Cj4+PiBPbiBGcmksIERlYyA2LCAyMDE5IGF0
IDY6MzMgUE0gUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluCj4+PiA8bGludXhAYXJtbGlu
dXgub3JnLnVrPiB3cm90ZToKPj4+Cj4+Pj4gT25lIG1heSBleHBlY3Q6Cj4+Pj4KPj4+PiDCoMKg
wqDCoMKgwqDCoMKgIHBpbmN0cmxfc2VsZWN0X3N0YXRlKGkyY19pbXgtPnBpbmN0cmwsIAo+Pj4+
IGkyY19pbXgtPnBpbmN0cmxfcGluc19kZWZhdWx0KTsKPj4+Pgo+Pj4+IHRvIGNoYW5nZSB0aGVt
IGJhY2sgdG8gdGhlIGRlZmF1bHQgc3RhdGUsIGJ1dCB0aGF0IHdvdWxkIGJlIGluY29ycmVjdC4K
Pj4+PiBUaGUgZmlyc3QgdGhpbmcgdGhhdCBwaW5jdHJsX3NlbGVjdF9zdGF0ZSgpIGRvZXMgaXMg
Y2hlY2sgd2hldGhlcgo+Pj4+Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBwLT5zdGF0ZSA9PSBzdGF0
ZQo+Pj4+Cj4+Pj4gd2hpY2ggaXQgd2lsbCBkbywgYXMgdGhlIHBpbmN0cmwgbGF5ZXIgaGFzbid0
IGJlZW4gaW5mb3JtZWQgb2YgdGhlCj4+Pj4gY2hhbmdlIHRoYXQgaGFzIGhhcHBlbmVkIGJlaGlu
ZCBpdHMgYmFjayBhdCB0aGUgcGlubXV4IGxldmVsLgo+Pj4gU29tZSBwaW4gY29udHJvbGxlcnMg
aGF2ZSB0aGUgLnN0cmljdCBwcm9wZXJ0eSBzZXQKPj4+IGluIHRoZWlyIHN0cnVjdCBwaW5tdXhf
b3BzOgo+Pj4KPj4+ICogQHN0cmljdDogZG8gbm90IGFsbG93IHNpbXVsdGFuZW91cyB1c2Ugb2Yg
dGhlIHNhbWUgcGluIGZvciBHUElPIGFuZCAKPj4+IGFub3RoZXIKPj4+ICrCoMKgwqDCoMKgIGZ1
bmN0aW9uLiBDaGVjayBib3RoIGdwaW9fb3duZXIgYW5kIG11eF9vd25lciBzdHJpY3RseSBiZWZv
cmUgCj4+PiBhcHByb3ZpbmcKPj4+ICrCoMKgwqDCoMKgIHRoZSBwaW4gcmVxdWVzdC4KPj4+Cj4+
PiBUaGUgbm9uLXN0cmljdCBwaW4gY29udHJvbGxlcnMgYXJlIHRob3NlIHRoYXQgYWN0dWFsbHkg
YWxsb3cgR1BJTwo+Pj4gYW5kIGRldmljZSBmdW5jdGlvbnMgdG8gYmUgdXNlZCBvbiB0aGUgc2Ft
ZSBwaHlzaWNhbCBsaW5lIGF0IHRoZQo+Pj4gc2FtZSB0aW1lLiBJbiB0aGlzIGNhc2UgdGhlcmUg
aXMgbm90IHNwZWNpYWwgR1BJTyBtb2RlIGZvciB0aGUKPj4+IGxpbmUgaW4gc29tZSBtdXhpbmcg
cmVnaXN0ZXJzLCB0aGV5IGFyZSBqdXN0IHBoeXNpY2FsbHkgY29ubmVjdGVkCj4+PiBzb21laG93
Lgo+Pj4KPj4+IE9uZSB1c2VjYXNlIGlzIHNvcnQgb2YgbGlrZSBob3cgdGNwZHVtcCB3b3JrIGZv
cgo+Pj4gZXRoZXJuZXQgaW50ZXJmYWNlczogYSBHUElPIHJlZ2lzdGVyIGNhbiAic25vb3AiIG9u
IGEgcGluIHdoaWxlCj4+PiBpbiB1c2VkIGJ5IGFub3RoZXIgZGV2aWNlLgo+Pj4KPj4+IEJ1dCBp
dCB3b3VsZCBub3RhYmx5IGFsc28gYWxsb3cgeW91IHRvIGRyaXZlIHRoZSBsaW5lIGFuZCBpbnRl
cmZlcmUKPj4+IHdpdGggdGhlIGRldmljZS4gV2hpY2ggaXMgZXhhY3RseSB3aGF0IHRoaXMgSTJD
IHJlY292ZXJ5IG1lY2hhbmlzbQo+Pj4gZG9lcywganVzdCB0aGF0IGl0cyBwaW4gY29udHJvbGxl
ciBpcyBhY3R1YWxseSBzdHJpY3QsIHdpbGwgbm90IGFsbG93Cj4+PiB0aGUgc2FtZSBsaW5lIHRv
IGJlIHVzZWQgZm9yIEdQSU8gYW5kIHNvbWUgb3RoZXIgZnVuY3Rpb24gYXQgdGhlCj4+PiBzYW1l
IHRpbWUsIHNvIEkgc3VwcG9zZSBpLk1YIHNob3VsZCBwcm9iYWJseSBleHBsb3JlIHRoZQo+Pj4g
c3RyaWN0IG1vZGUuCj4+Pgo+Pj4gRW5hYmxpbmcgdGhhdCB3aWxsIHNhZGx5IG1ha2UgdGhlIHBy
b2JsZW0gTU9SRSBjb21wbGV4Cj4+PiBmb3IgdGhpcyBJMkMgcmVjb3ZlcnksIHJlcXVpcmluZyBh
IGN5Y2xlIG9mCj4+PiBncGlvZF9wdXQoKS9ncGlvZF9nZXQoKSB0byBnZXQgaXQgcmVsZWFzZWQg
ZnJvbSBHUElPIG1vZGUsIGkuZS4KPj4+IHdlIHdvdWxkIG5lZWQgdG8ganVzdCBnZXQgdGhlIEdQ
SU8gd2hlbiB0aGlzIGlzIHN0cmljdGx5IG5lZWRlZC4KPj4+IFVzaW5nIGRldm1fZ3Bpb2RfZ2V0
KCkgYW5kIGtlZXBpbmcgYSByZWZlcmVuY2UgZGVzY3JpcHRvcgo+Pj4gYXJvdW5kIHdvdWxkIG5v
dCB3b3JrIGFsbCBvZiBhIHN1ZGRlbi4KPj4+Cj4+PiBJIGFtIHRoaW5raW5nIHdoZXRoZXIgd2Ug
Y2FuIGhhbmRsZSB0aGUgbm9uLXN0cmljdCBjb250cm9sbGVycwo+Pj4gaW4gYSBtb3JlIGVsZWdh
bnQgd2F5LCBvciBhZGQgc29tZSBBUEkgdG8gZXhwbGljaXRseSBoYW5kIG92ZXIKPj4+IGJldHdl
ZW4gZGV2aWNlIGZ1bmN0aW9uIGFuZCBHUElPIGZ1bmN0aW9uLiBCdXQgSSBjYW4ndCByZWFsbHkK
Pj4+IHNlZSBzb21lIG9idmlvdXMgc29sdXRpb24uCj4+IFdoYXQgSSdtIGN1cnJlbnRseSB0cnlp
bmcgaXMgKGVycm9yIGhhbmRsaW5nIHJlbW92ZWQgZm9yIGJyZXZpdHkpOgo+Pgo+PiDCoMKgwqDC
oHN0cnVjdCBpMmNfYnVzX3JlY292ZXJ5X2luZm8gKmJyaSA9ICZpMmMtPnJlY292ZXJ5Owo+Pgo+
PiDCoMKgwqDCoMKgwqDCoMKgIGkyYy0+cGluY3RybCA9IGRldm1fcGluY3RybF9nZXQoZGV2KTsK
Pj4gwqDCoMKgwqDCoMKgwqDCoCBpMmMtPnBpbmN0cmxfZGVmYXVsdCA9IHBpbmN0cmxfbG9va3Vw
X3N0YXRlKGkyYy0+cGluY3RybCwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKPj4gUElOQ1RSTF9TVEFURV9ERUZBVUxUKTsKPj4gwqDCoMKg
wqDCoMKgwqDCoCBpMmMtPnBpbmN0cmxfcmVjb3ZlcnkgPSBwaW5jdHJsX2xvb2t1cF9zdGF0ZShp
MmMtPnBpbmN0cmwsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICJyZWNvdmVyeSIpOwo+PiDCoMKgwqDCoMKgwqDCoMKgIGJyaS0+c2Rh
X2dwaW9kID0gZGV2bV9ncGlvZF9nZXQoZGV2LCAic2RhIiwgCj4+IEdQSU9EX09VVF9ISUdIX09Q
RU5fRFJBSU4pOwo+PiDCoMKgwqDCoMKgwqDCoMKgIGJyaS0+c2NsX2dwaW9kID0gZGV2bV9ncGlv
ZF9nZXQoZGV2LCAic2NsIiwgCj4+IEdQSU9EX09VVF9ISUdIX09QRU5fRFJBSU4pOwo+Pgo+PiDC
oMKgwqDCoHBpbmN0cmxfc2VsZWN0X3N0YXRlKGkyYy0+cGluY3RybCwgaTJjLT5waW5jdHJsX3Jl
Y292ZXJ5KTsKPj4gwqDCoMKgwqByZXR1cm4gcGluY3RybF9zZWxlY3Rfc3RhdGUoaTJjLT5waW5j
dHJsLCBpMmMtPnBpbmN0cmxfZGVmYXVsdCk7Cj4+Cj4+IHdoaWNoIHNlZW1zIGdvb2QgZW5vdWdo
IHRvIGdldCB0aGUgcGlucyBiYWNrIGludG8gaTJjIG1vZGUgYWZ0ZXIgdGhlCj4+IGdwaW9zIGFy
ZSBvYnRhaW5lZC7CoCBUaGVuIHdlIHN3aXRjaCB0aGUgcGluY3RybCBzdGF0ZSBiZXR3ZWVuCj4+
IHBpbmN0cmxfcmVjb3ZlcnkgYW5kIHBpbmN0cmxfZGVmYXVsdCBhcyB3ZSBoYXZlIG5lZWQgdG8u
Cj4+Cj4+IFRoZSBwcm9ibGVtIGlzLCB0aGUgZ2VuZXJpYyBpMmMgYnVzIHJlY292ZXJ5IGNvZGUg
d2FudHMgdGhlIGdwaW9kCj4+IGRlc2NyaXB0b3JzIHRvIGJlIHNldHVwIGFuZCBpbnBsYWNlIGJ5
IHRoZSB0aW1lIGkyY19pbml0X3JlY292ZXJ5KCkKPj4gaXMgY2FsbGVkICh3aGljaCBpcyBjYWxs
ZWQgd2hlbiB0aGUgYWRhcHRlciBpcyByZWdpc3RlcmVkKSBzbwo+PiBob2xkaW5nIG9mZiB1bnRp
bCB3ZSBuZWVkIHRvIGRvIHJlY292ZXJ5IGRvZXNuJ3Qgd29yay4KPj4KPj4gVGhpcyBzZWVtcyB0
byB3b3JrIGZvciB0aGlzIFNvQyBJJ20gY3VycmVudGx5IHdvcmtpbmcgd2l0aCwgYnV0IEkKPj4g
dGhpbmsgdGhlcmUncyBtb3JlIG9uIHRoZSBob3Jpem9uIC0gSSdtIGhhdmluZyB0aGUgc2FtZSBw
cm9ibGVtcwo+PiBvbiBhbm90aGVyIFNvQyB3aGljaCBhbHNvIG5lZWRzIGJ1cyByZWNvdmVyeSBp
bXBsZW1lbnRlZCwgYW5kIGFzCj4+IHRoZSBwcm9ibGVtIGRldmljZSBpcyBiZWhpbmQgYW4gSTJD
IGJ1cyBtdXgsIHdoZW4gaXQgbG9ja3MgdGhlIEkyQwo+PiBidXMsIGl0IGtpbGxzIGFsbCBJMkMg
YnVzZXMgcm9vdGVkIGF0IHRoYXQgcGFydGljdWxhciBTb0MgSTJDCj4+IGNvbnRyb2xsZXIuwqAg
SG93ZXZlciwgdGhlcmUncyBhIHByb2JsZW0gLSB0aGUgcGluY3RybHMgZm9yIHRoYXQgU29DCj4+
IGFyZSBzZXQgYnkgUk9NIGZpcm13YXJlIGF0IGJvb3QgdGltZSBieSByZWFkaW5nIGEgdGFibGUg
ZnJvbSB0aGUKPj4gYm9vdCBtZWRpYS7CoCAqVW5wcmludGFibGVzIGFib3V0IGZpcm13YXJlIGJl
aW5nIHRvbyB3YXkgbGltaXRpbmcqLiA6cAo+PgogPgo+IEhpIGFsbCwgd2hhdCdzIHRoZSBjdXJy
ZW50IHN0YXRlIG9mIHRoaXM/IEkgY2FuIGNvbmZpcm0gdGhhdCB0aGlzIGlzIAo+IGJyb2tlbiB3
aXRoIHRoZSBhdDkxIGkyYyBjb250cm9sbGVyJ3MgcmVjb3ZlcnkgbW9kZVsxXSwgd2hpY2ggaXMg
Cj4gaW1wbGVtZW50ZWQgZXhhY3RseSB0aGUgc2FtZSBhcyBvdGhlciBpMmMgbWFzdGVyIHJlY292
ZXJ5IG1vZGVzLCBzbyBJIAo+IHN1c3BlY3QgdGhlbSB0byBiZSBicm9rZW4gYXMgd2VsbC4KPiAK
PiBJJ20gdXNpbmcgNS41LjYgd2l0aCB0aGlzIHBhdGNoIGFwcGxpZWQgKHdoaWNoIGFkZHMgdGhl
IHJlY292ZXJ5KToKPiAgwqDCoMKgIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIv
MTEzMzM4ODMvCj4gCj4gSXQgd29ya2VkIGZpbmUgd2l0aCA1LjIsIGJ1dCBoYXMgbm93IGJyb2tl
biwgdGhlIHdheSBSdXNzZWxsIGRlc2NyaWJlcywgCj4gaW4gNS41LjYgYW5kIGFsc28gb24gdGhl
IGxhdGVzdCA1LjYtcmMzLiBSdXNzZWxsJ3Mgc3VnZ2VzdGVkIHdvcmthcm91bmQgCj4gb2Ygc2V0
dGluZyB0aGUgcGluY3RybCB0byByZWNvdmVyeSAoZ3BpbykgYW5kIHRoZW4gYmFjayB0byBkZWZh
dWx0IGRvZXMgCj4gbWFrZSBpdCB3b3JrLgo+IAo+IEFsYW4uCj4gCj4gWzFdIGN1cnJlbnRseSB0
aGUgcGF0Y2ggZm9yIGkyYyByZWNvdmVyeSBmb3IgYXQ5MSBpcyBhY2NlcHRlZCB0byBXb2xmcmFt
IAo+IFNhbmcncyBmb3ItbmV4dCB0cmVlLgo+IAoKSXMgdGhlcmUgYW55IHdvcmQgb24gdGhpcz8K
CkFsYW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
