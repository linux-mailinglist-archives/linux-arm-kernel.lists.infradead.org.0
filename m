Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D84195B07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GPZR0iIpoNdrnHZ1MKJGInIuk+nGJT2YutiMYZcwnpQ=; b=fQX/PqNQaACCAcCTQrCrNE0M6
	/9+W/mrmQlKFcLvQVGX5y7nYQKh4g7H/or43UFmfasIIJJoz309SchZaS8cEhdCLfoa+uFzJNtib7
	F/Sl24p/KRKHmf51Yo0fCwyJjX91FTY1iXBZNt2oQ0CNMrQoSojxSAja3PwM5fqDhXPrw36kFYb56
	127istkRuk34UlZ1//n6x+vlNWK7im8wsvUtlCreCrc5De13YxpDo6rb55C/mm2iM+23m3m7rB3H7
	Zhm4mnHJEPTs1/K6C19yEyX8nWBUJW645QuIIZDUC6bzdJ3uSmiIErv1g2mCCgjb7y91h95h28hRm
	8lPw5yXBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrmn-0000Zz-42; Fri, 27 Mar 2020 16:24:45 +0000
Received: from smtp101.iad3b.emailsrvr.com ([146.20.161.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrmd-0000ZB-Ak
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:24:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=softiron.com;
 s=20191119-3p77dzn5; t=1585326267;
 bh=o9TxnCZztVH45jTet9PtyCOS7Am3+B7w1VhSx1p0HDU=;
 h=Subject:To:From:Date:From;
 b=WQ+snlQrIw3mg57cliJQl38uPDMF3IL4TqiU8oEYWDsHAC4Uqz7YjplBAYOKdJRFV
 gsq/4jVX/66FiFNp3BePYAkFdsmiubW20dM+IggJRBrbN1iUiHhAYdzvk7yPLaZBif
 23+T+Wd5RO/R5xiEAD5mcZ+ydgcygGJ98ilyCYdc=
X-Auth-ID: alan@softiron.com
Received: by smtp21.relay.iad3b.emailsrvr.com (Authenticated sender:
 alan-AT-softiron.com) with ESMTPSA id DD85E200C3; 
 Fri, 27 Mar 2020 12:24:26 -0400 (EDT)
X-Sender-Id: alan@softiron.com
Received: from [10.1.1.115] (99-117-187-177.lightspeed.dybhfl.sbcglobal.net
 [99.117.187.177]) (using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
 by 0.0.0.0:465 (trex/5.7.12); Fri, 27 Mar 2020 12:24:27 -0400
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
To: Ludovic.Desroches@microchip.com, linux@armlinux.org.uk,
 linus.walleij@linaro.org
References: <20191206173343.GX25745@shell.armlinux.org.uk>
 <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
 <20191213002010.GO25745@shell.armlinux.org.uk>
 <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
 <4f9bb480-ba8d-b70e-961b-d6032232d250@softiron.com>
 <edb09f97-7748-f7d0-cad6-e79db7950b0d@microchip.com>
 <c193dd83-4cdc-9f3f-560e-828cf6e8a8db@softiron.com>
 <538ed844-4be1-4bda-a198-8b5706ee818b@microchip.com>
 <ae952fa3-4b20-5571-875c-408408d7ecb1@softiron.com>
 <4ad49369-ec70-4452-2149-85b877a1c371@microchip.com>
From: Alan Ott <alan@softiron.com>
Message-ID: <8774c911-7feb-eca5-f4dc-c4b6c6f0021b@softiron.com>
Date: Fri, 27 Mar 2020 12:24:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <4ad49369-ec70-4452-2149-85b877a1c371@microchip.com>
Content-Language: en-US
X-Classification-ID: e6538fcf-427e-4710-9f26-4128ca35a29a-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_092435_638657_8D09C960 
X-CRM114-Status: GOOD (  35.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.20.161.101 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kamel.bouhara@bootlin.com, linux-gpio@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org,
 wsa@the-dreams.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNi8yMCA0OjM5IFBNLCBMdWRvdmljLkRlc3JvY2hlc0BtaWNyb2NoaXAuY29tIHdyb3Rl
Ogo+IE9uIDMvMjYvMjAyMCA0OjU1IFBNLCBBbGFuIE90dCB3cm90ZToKPj4gRVhURVJOQUwgRU1B
SUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25v
dwo+PiB0aGUgY29udGVudCBpcyBzYWZlCj4+Cj4+IE9uIDMvMjYvMjAgMjo1MyBBTSwgTHVkb3Zp
Yy5EZXNyb2NoZXNAbWljcm9jaGlwLmNvbSB3cm90ZToKPj4+IE9uIDMvMjUvMjAyMCAxMDowOSBQ
TSwgQWxhbiBPdHQgd3JvdGU6Cj4+Pj4gRVhURVJOQUwgRU1BSUw6IERvIG5vdCBjbGljayBsaW5r
cyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdwo+Pj4+IHRoZSBjb250ZW50IGlz
IHNhZmUKPj4+Pgo+Pj4+IE9uIDMvMjUvMjAgNDowNiBQTSwgTHVkb3ZpYy5EZXNyb2NoZXNAbWlj
cm9jaGlwLmNvbSB3cm90ZToKPj4+Pj4gT24gMy8yNS8yMDIwIDE6NDIgUE0sIEFsYW4gT3R0IHdy
b3RlOgo+Pj4+Pj4gRVhURVJOQUwgRU1BSUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0
dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdwo+Pj4+Pj4gdGhlIGNvbnRlbnQgaXMgc2FmZQo+Pj4+
Pj4KPj4+Pj4+IE9uIDIvMjcvMjAgMTE6NDcgQU0sIEFsYW4gT3R0IHdyb3RlOgo+Pj4+Pj4+IE9u
IDEyLzEyLzE5IDc6MjAgUE0sIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToK
Pj4+Pj4+Pj4gT24gTW9uLCBEZWMgMDksIDIwMTkgYXQgMDE6MjA6MTVBTSArMDEwMCwgTGludXMg
V2FsbGVpaiB3cm90ZToKPj4+Pj4+Pj4+IEhpIFJ1c3NlbGwsCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4g
dmVyeSBuaWNlIGRlc2NyaXB0aW9uIG9mIHRoaXMgZHVhbC1tb2RlIHByb2JsZW0uCj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4gSSB3aXNoIEkgaGFkIGEgc2ltcGxlIGFuZCBlbGVnYW50IHdheSB3ZSBjb3Vs
ZCBtYWtlIGl0Cj4+Pj4+Pj4+PiB1bmFtYmlndW91cyBhbmQgc2ltcGxlIHRvIHVzZSAuLi4gYnV0
IGl0IGJlYXRzIG1lIHJpZ2h0Cj4+Pj4+Pj4+PiBub3cuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24g
RnJpLCBEZWMgNiwgMjAxOSBhdCA2OjMzIFBNIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1p
bgo+Pj4+Pj4+Pj4gPGxpbnV4QGFybWxpbnV4Lm9yZy51az4gd3JvdGU6Cj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+IE9uZSBtYXkgZXhwZWN0Ogo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHBpbmN0cmxfc2VsZWN0X3N0YXRlKGkyY19pbXgtPnBpbmN0cmwsCj4+Pj4+Pj4+
Pj4gaTJjX2lteC0+cGluY3RybF9waW5zX2RlZmF1bHQpOwo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4g
dG8gY2hhbmdlIHRoZW0gYmFjayB0byB0aGUgZGVmYXVsdCBzdGF0ZSwgYnV0IHRoYXQgd291bGQg
YmUKPj4+Pj4+Pj4+PiBpbmNvcnJlY3QuCj4+Pj4+Pj4+Pj4gVGhlIGZpcnN0IHRoaW5nIHRoYXQg
cGluY3RybF9zZWxlY3Rfc3RhdGUoKSBkb2VzIGlzIGNoZWNrIHdoZXRoZXIKPj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwLT5zdGF0ZSA9PSBzdGF0ZQo+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4gd2hpY2ggaXQgd2lsbCBkbywgYXMgdGhlIHBpbmN0cmwgbGF5ZXIgaGFz
bid0IGJlZW4gaW5mb3JtZWQgb2YgdGhlCj4+Pj4+Pj4+Pj4gY2hhbmdlIHRoYXQgaGFzIGhhcHBl
bmVkIGJlaGluZCBpdHMgYmFjayBhdCB0aGUgcGlubXV4IGxldmVsLgo+Pj4+Pj4+Pj4gU29tZSBw
aW4gY29udHJvbGxlcnMgaGF2ZSB0aGUgLnN0cmljdCBwcm9wZXJ0eSBzZXQKPj4+Pj4+Pj4+IGlu
IHRoZWlyIHN0cnVjdCBwaW5tdXhfb3BzOgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+ICogQHN0cmljdDog
ZG8gbm90IGFsbG93IHNpbXVsdGFuZW91cyB1c2Ugb2YgdGhlIHNhbWUgcGluIGZvcgo+Pj4+Pj4+
Pj4gR1BJTyBhbmQKPj4+Pj4+Pj4+IGFub3RoZXIKPj4+Pj4+Pj4+ICrCoMKgwqDCoMKgIGZ1bmN0
aW9uLiBDaGVjayBib3RoIGdwaW9fb3duZXIgYW5kIG11eF9vd25lciBzdHJpY3RseQo+Pj4+Pj4+
Pj4gYmVmb3JlCj4+Pj4+Pj4+PiBhcHByb3ZpbmcKPj4+Pj4+Pj4+ICrCoMKgwqDCoMKgIHRoZSBw
aW4gcmVxdWVzdC4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUaGUgbm9uLXN0cmljdCBwaW4gY29udHJv
bGxlcnMgYXJlIHRob3NlIHRoYXQgYWN0dWFsbHkgYWxsb3cgR1BJTwo+Pj4+Pj4+Pj4gYW5kIGRl
dmljZSBmdW5jdGlvbnMgdG8gYmUgdXNlZCBvbiB0aGUgc2FtZSBwaHlzaWNhbCBsaW5lIGF0IHRo
ZQo+Pj4+Pj4+Pj4gc2FtZSB0aW1lLiBJbiB0aGlzIGNhc2UgdGhlcmUgaXMgbm90IHNwZWNpYWwg
R1BJTyBtb2RlIGZvciB0aGUKPj4+Pj4+Pj4+IGxpbmUgaW4gc29tZSBtdXhpbmcgcmVnaXN0ZXJz
LCB0aGV5IGFyZSBqdXN0IHBoeXNpY2FsbHkgY29ubmVjdGVkCj4+Pj4+Pj4+PiBzb21laG93Lgo+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IE9uZSB1c2VjYXNlIGlzIHNvcnQgb2YgbGlrZSBob3cgdGNwZHVt
cCB3b3JrIGZvcgo+Pj4+Pj4+Pj4gZXRoZXJuZXQgaW50ZXJmYWNlczogYSBHUElPIHJlZ2lzdGVy
IGNhbiAic25vb3AiIG9uIGEgcGluIHdoaWxlCj4+Pj4+Pj4+PiBpbiB1c2VkIGJ5IGFub3RoZXIg
ZGV2aWNlLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEJ1dCBpdCB3b3VsZCBub3RhYmx5IGFsc28gYWxs
b3cgeW91IHRvIGRyaXZlIHRoZSBsaW5lIGFuZCBpbnRlcmZlcmUKPj4+Pj4+Pj4+IHdpdGggdGhl
IGRldmljZS4gV2hpY2ggaXMgZXhhY3RseSB3aGF0IHRoaXMgSTJDIHJlY292ZXJ5IG1lY2hhbmlz
bQo+Pj4+Pj4+Pj4gZG9lcywganVzdCB0aGF0IGl0cyBwaW4gY29udHJvbGxlciBpcyBhY3R1YWxs
eSBzdHJpY3QsIHdpbGwgbm90Cj4+Pj4+Pj4+PiBhbGxvdwo+Pj4+Pj4+Pj4gdGhlIHNhbWUgbGlu
ZSB0byBiZSB1c2VkIGZvciBHUElPIGFuZCBzb21lIG90aGVyIGZ1bmN0aW9uIGF0IHRoZQo+Pj4+
Pj4+Pj4gc2FtZSB0aW1lLCBzbyBJIHN1cHBvc2UgaS5NWCBzaG91bGQgcHJvYmFibHkgZXhwbG9y
ZSB0aGUKPj4+Pj4+Pj4+IHN0cmljdCBtb2RlLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEVuYWJsaW5n
IHRoYXQgd2lsbCBzYWRseSBtYWtlIHRoZSBwcm9ibGVtIE1PUkUgY29tcGxleAo+Pj4+Pj4+Pj4g
Zm9yIHRoaXMgSTJDIHJlY292ZXJ5LCByZXF1aXJpbmcgYSBjeWNsZSBvZgo+Pj4+Pj4+Pj4gZ3Bp
b2RfcHV0KCkvZ3Bpb2RfZ2V0KCkgdG8gZ2V0IGl0IHJlbGVhc2VkIGZyb20gR1BJTyBtb2RlLCBp
LmUuCj4+Pj4+Pj4+PiB3ZSB3b3VsZCBuZWVkIHRvIGp1c3QgZ2V0IHRoZSBHUElPIHdoZW4gdGhp
cyBpcyBzdHJpY3RseSBuZWVkZWQuCj4+Pj4+Pj4+PiBVc2luZyBkZXZtX2dwaW9kX2dldCgpIGFu
ZCBrZWVwaW5nIGEgcmVmZXJlbmNlIGRlc2NyaXB0b3IKPj4+Pj4+Pj4+IGFyb3VuZCB3b3VsZCBu
b3Qgd29yayBhbGwgb2YgYSBzdWRkZW4uCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gSSBhbSB0aGlua2lu
ZyB3aGV0aGVyIHdlIGNhbiBoYW5kbGUgdGhlIG5vbi1zdHJpY3QgY29udHJvbGxlcnMKPj4+Pj4+
Pj4+IGluIGEgbW9yZSBlbGVnYW50IHdheSwgb3IgYWRkIHNvbWUgQVBJIHRvIGV4cGxpY2l0bHkg
aGFuZCBvdmVyCj4+Pj4+Pj4+PiBiZXR3ZWVuIGRldmljZSBmdW5jdGlvbiBhbmQgR1BJTyBmdW5j
dGlvbi4gQnV0IEkgY2FuJ3QgcmVhbGx5Cj4+Pj4+Pj4+PiBzZWUgc29tZSBvYnZpb3VzIHNvbHV0
aW9uLgo+Pj4+Pj4+PiBXaGF0IEknbSBjdXJyZW50bHkgdHJ5aW5nIGlzIChlcnJvciBoYW5kbGlu
ZyByZW1vdmVkIGZvciBicmV2aXR5KToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gIMKgwqDCoMKgwqAgc3Ry
dWN0IGkyY19idXNfcmVjb3ZlcnlfaW5mbyAqYnJpID0gJmkyYy0+cmVjb3Zlcnk7Cj4+Pj4+Pj4+
Cj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpMmMtPnBpbmN0cmwgPSBkZXZtX3BpbmN0
cmxfZ2V0KGRldik7Cj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpMmMtPnBpbmN0cmxf
ZGVmYXVsdCA9IHBpbmN0cmxfbG9va3VwX3N0YXRlKGkyYy0+cGluY3RybCwKPj4+Pj4+Pj4KPj4+
Pj4+Pj4gUElOQ1RSTF9TVEFURV9ERUZBVUxUKTsKPj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGkyYy0+cGluY3RybF9yZWNvdmVyeSA9Cj4+Pj4+Pj4+IHBpbmN0cmxfbG9va3VwX3N0YXRl
KGkyYy0+cGluY3RybCwKPj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicmVjb3ZlcnkiKTsKPj4+Pj4+Pj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGJyaS0+c2RhX2dwaW9kID0gZGV2bV9ncGlvZF9nZXQoZGV2LCAic2Rh
IiwKPj4+Pj4+Pj4gR1BJT0RfT1VUX0hJR0hfT1BFTl9EUkFJTik7Cj4+Pj4+Pj4+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBicmktPnNjbF9ncGlvZCA9IGRldm1fZ3Bpb2RfZ2V0KGRldiwgInNjbCIs
Cj4+Pj4+Pj4+IEdQSU9EX09VVF9ISUdIX09QRU5fRFJBSU4pOwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiAg
wqDCoMKgwqDCoCBwaW5jdHJsX3NlbGVjdF9zdGF0ZShpMmMtPnBpbmN0cmwsIGkyYy0+cGluY3Ry
bF9yZWNvdmVyeSk7Cj4+Pj4+Pj4+ICDCoMKgwqDCoMKgIHJldHVybiBwaW5jdHJsX3NlbGVjdF9z
dGF0ZShpMmMtPnBpbmN0cmwsCj4+Pj4+Pj4+IGkyYy0+cGluY3RybF9kZWZhdWx0KTsKPj4+Pj4+
Pj4KPj4+Pj4+Pj4gd2hpY2ggc2VlbXMgZ29vZCBlbm91Z2ggdG8gZ2V0IHRoZSBwaW5zIGJhY2sg
aW50byBpMmMgbW9kZSBhZnRlciB0aGUKPj4+Pj4+Pj4gZ3Bpb3MgYXJlIG9idGFpbmVkLsKgIFRo
ZW4gd2Ugc3dpdGNoIHRoZSBwaW5jdHJsIHN0YXRlIGJldHdlZW4KPj4+Pj4+Pj4gcGluY3RybF9y
ZWNvdmVyeSBhbmQgcGluY3RybF9kZWZhdWx0IGFzIHdlIGhhdmUgbmVlZCB0by4KPj4+Pj4+Pj4K
Pj4+Pj4+Pj4gVGhlIHByb2JsZW0gaXMsIHRoZSBnZW5lcmljIGkyYyBidXMgcmVjb3ZlcnkgY29k
ZSB3YW50cyB0aGUgZ3Bpb2QKPj4+Pj4+Pj4gZGVzY3JpcHRvcnMgdG8gYmUgc2V0dXAgYW5kIGlu
cGxhY2UgYnkgdGhlIHRpbWUgaTJjX2luaXRfcmVjb3ZlcnkoKQo+Pj4+Pj4+PiBpcyBjYWxsZWQg
KHdoaWNoIGlzIGNhbGxlZCB3aGVuIHRoZSBhZGFwdGVyIGlzIHJlZ2lzdGVyZWQpIHNvCj4+Pj4+
Pj4+IGhvbGRpbmcgb2ZmIHVudGlsIHdlIG5lZWQgdG8gZG8gcmVjb3ZlcnkgZG9lc24ndCB3b3Jr
Lgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUaGlzIHNlZW1zIHRvIHdvcmsgZm9yIHRoaXMgU29DIEknbSBj
dXJyZW50bHkgd29ya2luZyB3aXRoLCBidXQgSQo+Pj4+Pj4+PiB0aGluayB0aGVyZSdzIG1vcmUg
b24gdGhlIGhvcml6b24gLSBJJ20gaGF2aW5nIHRoZSBzYW1lIHByb2JsZW1zCj4+Pj4+Pj4+IG9u
IGFub3RoZXIgU29DIHdoaWNoIGFsc28gbmVlZHMgYnVzIHJlY292ZXJ5IGltcGxlbWVudGVkLCBh
bmQgYXMKPj4+Pj4+Pj4gdGhlIHByb2JsZW0gZGV2aWNlIGlzIGJlaGluZCBhbiBJMkMgYnVzIG11
eCwgd2hlbiBpdCBsb2NrcyB0aGUgSTJDCj4+Pj4+Pj4+IGJ1cywgaXQga2lsbHMgYWxsIEkyQyBi
dXNlcyByb290ZWQgYXQgdGhhdCBwYXJ0aWN1bGFyIFNvQyBJMkMKPj4+Pj4+Pj4gY29udHJvbGxl
ci7CoCBIb3dldmVyLCB0aGVyZSdzIGEgcHJvYmxlbSAtIHRoZSBwaW5jdHJscyBmb3IgdGhhdCBT
b0MKPj4+Pj4+Pj4gYXJlIHNldCBieSBST00gZmlybXdhcmUgYXQgYm9vdCB0aW1lIGJ5IHJlYWRp
bmcgYSB0YWJsZSBmcm9tIHRoZQo+Pj4+Pj4+PiBib290IG1lZGlhLsKgICpVbnByaW50YWJsZXMg
YWJvdXQgZmlybXdhcmUgYmVpbmcgdG9vIHdheQo+Pj4+Pj4+PiBsaW1pdGluZyouIDpwCj4+Pj4+
Pj4+Cj4+Pj4+PiAgwqDCoCA+Cj4+Pj4+Pj4gSGkgYWxsLCB3aGF0J3MgdGhlIGN1cnJlbnQgc3Rh
dGUgb2YgdGhpcz8gSSBjYW4gY29uZmlybSB0aGF0IHRoaXMgaXMKPj4+Pj4+PiBicm9rZW4gd2l0
aCB0aGUgYXQ5MSBpMmMgY29udHJvbGxlcidzIHJlY292ZXJ5IG1vZGVbMV0sIHdoaWNoIGlzCj4+
Pj4+Pj4gaW1wbGVtZW50ZWQgZXhhY3RseSB0aGUgc2FtZSBhcyBvdGhlciBpMmMgbWFzdGVyIHJl
Y292ZXJ5IG1vZGVzLCBzbyBJCj4+Pj4+Pj4gc3VzcGVjdCB0aGVtIHRvIGJlIGJyb2tlbiBhcyB3
ZWxsLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSdtIHVzaW5nIDUuNS42IHdpdGggdGhpcyBwYXRjaCBhcHBs
aWVkICh3aGljaCBhZGRzIHRoZSByZWNvdmVyeSk6Cj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoCBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMzMzODgzLwo+Pj4+Pj4+Cj4+Pj4+Pj4g
SXQgd29ya2VkIGZpbmUgd2l0aCA1LjIsIGJ1dCBoYXMgbm93IGJyb2tlbiwgdGhlIHdheSBSdXNz
ZWxsCj4+Pj4+Pj4gZGVzY3JpYmVzLAo+Pj4+Pj4+IGluIDUuNS42IGFuZCBhbHNvIG9uIHRoZSBs
YXRlc3QgNS42LXJjMy4gUnVzc2VsbCdzIHN1Z2dlc3RlZAo+Pj4+Pj4+IHdvcmthcm91bmQKPj4+
Pj4+PiBvZiBzZXR0aW5nIHRoZSBwaW5jdHJsIHRvIHJlY292ZXJ5IChncGlvKSBhbmQgdGhlbiBi
YWNrIHRvIGRlZmF1bHQKPj4+Pj4+PiBkb2VzCj4+Pj4+Pj4gbWFrZSBpdCB3b3JrLgo+Pj4+Pj4+
Cj4+Pj4+Pj4gQWxhbi4KPj4+Pj4+Pgo+Pj4+Pj4+IFsxXSBjdXJyZW50bHkgdGhlIHBhdGNoIGZv
ciBpMmMgcmVjb3ZlcnkgZm9yIGF0OTEgaXMgYWNjZXB0ZWQgdG8KPj4+Pj4+PiBXb2xmcmFtCj4+
Pj4+Pj4gU2FuZydzIGZvci1uZXh0IHRyZWUuCj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBJcyB0aGVy
ZSBhbnkgd29yZCBvbiB0aGlzPwo+Pj4+Pj4KPj4+Pj4KPj4+Pj4gSW50ZXJuYWxseSB3ZSBoYXZl
IG1hbmFnZWQgaXQgaW4gdGhlIHNhbWUgd2F5IGFzIHRoZSBvbmUgc3VnZ2VzdGVkIGJ5Cj4+Pj4+
IFJ1c3NlbGwuCj4+Pj4+Cj4+Pj4+IFdlIHdvbmRlcmVkIGlmIHdlIHNob3VsZCBtYWlubGluZSBp
dCBvciBub3QgYXMgaXQncyByZWFsbHkgdHJpY2t5IHRvCj4+Pj4+IHByb2NlZWQgbGlrZSB0aGlz
Lgo+Pj4+Cj4+Pj4gQ2VydGFpbmx5IGl0IG5lZWRzIHRvIHdvcmsgaW4gbWFpbmxpbmUgdGhvdWdo
LCByaWdodD8gTm90IGp1c3QgaW4gdGhlCj4+Pj4gbGludXg0c2FtIHZlbmRvciBrZXJuZWw/Cj4+
Pgo+Pj4gSXQgaGFzIGJlZW4gZml4ZWQgdHdvIGRheXMgYWdvLiBXZSdsbCBzZW5kIGl0IGFuZCBz
ZWUgaWYgaXQgd2lsbCBiZQo+Pj4gYWNjZXB0ZWQuCj4+Pgo+Pj4gQnkgdGhlIHdheSwgd2l0aCB3
aGljaCBTb0MgaGF2ZSB5b3UgZW5jb3VudGVyZWQgdGhpcyBpc3N1ZT8gSXQgaXMgb2YKPj4+IGlu
dGVyZXNldCBhcyB3ZSBoYXZlIHR3byBkaWZmZXJlbnQgcGluIGNvbnRyb2xsZXJzLgo+Pgo+PiBT
QU1BNUQzMwo+Pgo+IAo+IE9rLCB0aGFua3MuCj4gCj4+Pgo+Pj4+Cj4+Pj4+Cj4+Pj4+IEluIHRo
ZSBmdXR1cmUsIHdlIG1heSBkZWNsYXJlIG91ciBwaW5jdHJsIGFzIHN0cmljdCB3aGljaCBzaG91
bGQgY2F1c2UKPj4+Pj4gYW5vdGhlciBicmVha2FnZS4uLiBJdCdzIG5vdCBkb25lIHlldCBiZWNh
dXNlIHdoZW4gSSB0cmllZCB0byBkbyBpdCwKPj4+Pj4gbWF5YmUgaXQgaGFzIGNoYW5nZWQgbm93
LCBJIHdhcyBub3QgYWJsZSB0byBhcHBseSB0aGUgcGluIGNvbmZpZ3VyYXRpb24KPj4+Pj4gdG8g
dGhlIHBpbiBtdXhlZCBhcyBhIGdwaW8uCj4+Pj4+Cj4+Pj4KPj4+PiBUaGUgbGFyZ2VyIHF1ZXN0
aW9uIEkgdGhpbmsgaXMsIGlzIHRoaXMgYSBicmVha2FnZSBpbiBncGlvPyBpMmMtYXQ5MSBpcwo+
Pj4+IG5vdCB0aGUgb25seSBpMmMgZHJpdmVyIHdoaWNoIHVzZXMgZ3Bpby1iYXNlZCBidXMgcmVj
b3ZlcnksIGFuZCBtYW55IG9mCj4+Pj4gdGhlbSB1c2UgbmVhcmx5IHRoZSBleGFjdCBzYW1lIGNv
ZGUgYXMgaTJjLWF0OTEuIEFyZSB0aGV5IGFsbCBicm9rZW4KPj4+PiB3aXRoIHRoaXMga2VybmVs
IHVwZGF0ZSB0b28/Cj4+Pj4KPj4+Cj4+PiBJIGRvbid0IGtub3cgd2hhdCBjaGFuZ2VkIGluIGdw
aW8gb3IgcGluY3RybC4gVGhpbmtpbmcgbW9yZSBhYm91dCBpdAo+Pj4gSSdhbSBzdXJwcmlzZWQg
aXQgaGFkIHdvcmtlZC4gSW4gbXkgbWluZCwgZ3Bpb2RfZ2V0IGhhcyBhbHdheXMgZW5kZWQKPj4+
IHdpdGggYSBjYWxsIHRvIHRoZSBncGlvX3JlcXVlc3RfZW5hYmxlIG9wZXJhdGlvbiBzbyBjaGFu
Z2luZyB0aGUgbXV4IHRvCj4+PiBhIGdwaW8gZnVuY3Rpb24uCj4+Cj4+IEkgZGVmaW5pdGVseSBk
aWQgYW4gQS9CIHRlc3Qgd2l0aCA1LjIgYW5kIDUuNSBiZWZvcmUgd3JpdGluZyB0aGUgZW1haWws
Cj4+IGFuZCBJIGFsc28gZGVmaW5pdGVseSB0cmFjZWQgaXQgZG93biB0byBkZXZtX2dwaW9kX2dl
dCgpIChpZTogbGVhdmUgYWxsCj4+IHRoZSByZXN0IGFuZCB0YWtlIHRob3NlIHR3byBsaW5lcyBv
dXQgaW4gNS41LCBhbmQgdGhhdCBtYWRlIGl0IG5vdCBmYWlsKS4KPj4KPiAKPiBJZiBJIGhhdmUg
d2VsbCB1bmRlcnN0b29kLCBpbiA1LjUgeW91IGtlcHQgZGV2bV9ncGlvZF9nZXQoKSBjYWxscwo+
IHdpdGhvdXQgdGhlIHJlY292ZXJ5IHN0dWZmIGFuZCBpdCB3b3Jrcy4gSXNuJ3QgaXQ/CgpObywg
aXQncyB3aGF0IEkgc2FpZCBoaWdoZXIgdXAgaW4gdGhlIGVtYWlsOgoKKiA1LjIgcGx1cyB0aGUg
cmVjb3ZlcnkgcGF0Y2ggbGlua2VkIGFib3ZlIGRvZXMgd29yay4KKiA1LjUgcGx1cyB0aGUgcmVj
b3ZlcnkgcGF0Y2ggbGlua2VkIGFib3ZlIGRvZXMgbm90IHdvcmtbMV0uCiogNS41IHBsdXMgdGhl
IHJlY292ZXJ5IHBhdGNoIGxpbmtlZCBhYm92ZSBwbHVzIGEgImZpeCIgc2ltaWxhciB0byAKUnVz
c2VsbCdzIGRvZXMgd29yay4KCj4gCj4+IEFnYWluLCBvdGhlciBpMmMgY29udHJvbGxlcnMgYXJl
IGJ1aWx0IHRoZSBleGFjdCBzYW1lIHdheSwgd2l0aCBhCj4+IGhhbmRmdWwgb2YgdGhlbSB1c2lu
ZyB0aGUgc2FtZSBjb3BpZWQvcGFzdGVkIGNvZGUuIEkgc3VzcGVjdCB0aGV5IGFyZQo+PiBicm9r
ZW4gdG9vICh3aGVuIGdwaW8gYnVzIHJlY292ZXJ5IGlzIGVuYWJsZWQpLiBJZiB0aGV5J3JlIG5v
dCwgdGhlbgo+PiBkb2VzIGl0IG1lYW4gZGV2bV9ncGlvZF9nZXQoKSB3b3JrcyBkaWZmZXJlbnRs
eSBvbiBkaWZmZXJlbnQgQ1BVcz8KPj4KPiAKPiBkZXZtX2dwaW9kX2dldCgpIGNhbGxzIGdwaW9f
cmVxdWVzdCBvciBncGlvX3JlcXVlc3RfZW5hYmxlIG9wcyB3aGljaCBhcmUKPiBpbXBsZW1lbnRl
ZCBpbiB0aGUgcGluIGNvbnRyb2xsZXIgc28gdGhlIGJlaGF2aW9yIGNhbiBiZSBkaWZmZXJlbnQu
Cj4gCgpBcmUgeW91IGFzc2VydGluZyB0aGF0LCBiYXNlZCBvbiB0aGUgY29udHJvbGxlciw6Ciog
U29tZXRpbWVzIGdwaW9kX2dldCgpIGFkanVzdHMgdGhlIHBpbm11eCwgYW5kCiogU29tZXRpbWVz
IGdwaW9kX2dldCgpIGRvZXNuJ3QgYWRqdXN0IHRoZSBwaW5tdXg/CgpXaGF0ZXZlciBpdCBpcywg
aXQgYXBwZWFycyB0aGF0IHRoZSBiZWhhdmlvciBoYXMgY2hhbmdlZCBmb3IgU0FNQTVEMyAKYmV0
d2VlbiA1LjIgYW5kIDUuNSwgYW5kIGl0IG1ha2VzIHRoZSBwYXRjaCBzZXQgKGxpbmtlZCBhYm92
ZSkgdGhhdCdzIApjdXJyZW50bHkgaW4gV29sZnJhbSdzIGZvci1uZXh0IHRyZWUgbm8gbG9uZ2Vy
IHdvcmsgcHJvcGVybHkuCgpBbGFuLgoKWzFdIEFuZCAiZG9lc24ndCB3b3JrIiBtZWFucywgbm90
aGluZyBpbiB0aGUgaTJjIGNvbnRyb2xsZXIgd29ya3MgCmJlY2F1c2UgdGhlIHBpbmN0cmwgaXMg
c2V0IHRvIGdwaW8gcmF0aGVyIHRoYW4gdG8gdGhlIGkyYyBjb250cm9sbGVyLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
