Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0B7B1330
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 19:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eB/39NwCvZ0yOJXlRYT2H1CGD78u8XOsFzTBinsWPw=; b=CidQkKf9rSOwxF
	S9mLrtkhN5FieolcFYPH1bqZfS3b/TvRX5F1KryU8/MnqLApEXFRW1C+50eK47Wjltssuskg6ezKf
	yXWwmQQz1cjE9qFo44KeLChSzcT3LDUOTlJgoebTGbTjddOHfd2m8mBDwbnWkk/9reG51JYn+MlIg
	l37I+x/DJPPxKqZKenKxiP5EH0rbmgIsggdqWJXvi+QDvcX2/2BKm13U5LyZ6IPbKV73jlJwwrgBJ
	FWyj6AXK5zvW4uEWeUrCAONvwXZMneJKUzErRyPxSZTzfoQyg0H5Wgjwpo3k82yMkAtxh94Ze+f/F
	9UNgRA00BnRBEF00ZBYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8SXN-00067R-Ji; Thu, 12 Sep 2019 17:05:41 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8SX6-00066F-16; Thu, 12 Sep 2019 17:05:26 +0000
Received: from [172.16.25.5] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1i8SWx-0001JP-U8; Thu, 12 Sep 2019 20:05:16 +0300
Subject: Re: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
To: Vlastimil Babka <vbabka@suse.cz>, Walter Wu <walter-zh.wu@mediatek.com>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
 <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
 <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
 <1568297308.19040.5.camel@mtksdccf07>
 <613f9f23-c7f0-871f-fe13-930c35ef3105@suse.cz>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <79fede05-735b-8477-c273-f34db93fd72b@virtuozzo.com>
Date: Thu, 12 Sep 2019 20:05:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <613f9f23-c7f0-871f-fe13-930c35ef3105@suse.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_100524_074383_423F0027 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, Andrey Konovalov <andreyknvl@google.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA5LzEyLzE5IDU6MzEgUE0sIFZsYXN0aW1pbCBCYWJrYSB3cm90ZToKPiBPbiA5LzEyLzE5
IDQ6MDggUE0sIFdhbHRlciBXdSB3cm90ZToKPj4KPj4+IMKgIGV4dGVybiB2b2lkIF9fcmVzZXRf
cGFnZV9vd25lcihzdHJ1Y3QgcGFnZSAqcGFnZSwgdW5zaWduZWQgaW50IG9yZGVyKTsKPj4+IGRp
ZmYgLS1naXQgYS9saWIvS2NvbmZpZy5rYXNhbiBiL2xpYi9LY29uZmlnLmthc2FuCj4+PiBpbmRl
eCA2Yzk2ODJjZTAyNTQuLmRjNTYwYzc1NjJlOCAxMDA2NDQKPj4+IC0tLSBhL2xpYi9LY29uZmln
Lmthc2FuCj4+PiArKysgYi9saWIvS2NvbmZpZy5rYXNhbgo+Pj4gQEAgLTQxLDYgKzQxLDggQEAg
Y29uZmlnIEtBU0FOX0dFTkVSSUMKPj4+IMKgwqDCoMKgwqAgc2VsZWN0IFNMVUJfREVCVUcgaWYg
U0xVQgo+Pj4gwqDCoMKgwqDCoCBzZWxlY3QgQ09OU1RSVUNUT1JTCj4+PiDCoMKgwqDCoMKgIHNl
bGVjdCBTVEFDS0RFUE9UCj4+PiArwqDCoMKgIHNlbGVjdCBQQUdFX09XTkVSCj4+PiArwqDCoMKg
IHNlbGVjdCBQQUdFX09XTkVSX0ZSRUVfU1RBQ0sKPj4+IMKgwqDCoMKgwqAgaGVscAo+Pj4gwqDC
oMKgwqDCoMKgwqAgRW5hYmxlcyBnZW5lcmljIEtBU0FOIG1vZGUuCj4+PiDCoMKgwqDCoMKgwqDC
oCBTdXBwb3J0ZWQgaW4gYm90aCBHQ0MgYW5kIENsYW5nLiBXaXRoIEdDQyBpdCByZXF1aXJlcyB2
ZXJzaW9uIDQuOS4yCj4+PiBAQCAtNjMsNiArNjUsOCBAQCBjb25maWcgS0FTQU5fU1dfVEFHUwo+
Pj4gwqDCoMKgwqDCoCBzZWxlY3QgU0xVQl9ERUJVRyBpZiBTTFVCCj4+PiDCoMKgwqDCoMKgIHNl
bGVjdCBDT05TVFJVQ1RPUlMKPj4+IMKgwqDCoMKgwqAgc2VsZWN0IFNUQUNLREVQT1QKPj4+ICvC
oMKgwqAgc2VsZWN0IFBBR0VfT1dORVIKPj4+ICvCoMKgwqAgc2VsZWN0IFBBR0VfT1dORVJfRlJF
RV9TVEFDSwo+Pj4gwqDCoMKgwqDCoCBoZWxwCj4+Cj4+IFdoYXQgaXMgdGhlIGRpZmZlcmVuY2Ug
YmV0d2VlbiBQQUdFX09XTkVSK1BBR0VfT1dORVJfRlJFRV9TVEFDSyBhbmQKPj4gREVCVUdfUEFH
RUFMTE9DPwo+IAo+IFNhbWUgbWVtb3J5IHVzYWdlLCBidXQgZGVidWdfcGFnZWFsbG9jIG1lYW5z
IGFsc28gZXh0cmEgY2hlY2tzIGFuZCByZXN0cmljdGluZyBtZW1vcnkgYWNjZXNzIHRvIGZyZWVk
IHBhZ2VzIHRvIGNhdGNoIFVBRi4KPiAKPj4gSWYgeW91IGRpcmVjdGx5IGVuYWJsZSBQQUdFX09X
TkVSK1BBR0VfT1dORVJfRlJFRV9TVEFDSwo+PiBQQUdFX09XTkVSX0ZSRUVfU1RBQ0ssZG9uJ3Qg
eW91IHRoaW5rIGxvdy1tZW1vcnkgZGV2aWNlIHRvIHdhbnQgdG8gdXNlCj4+IEtBU0FOPwo+IAo+
IE9LLCBzbyBpdCBzaG91bGQgYmUgb3B0aW9uYWw/IEJ1dCBJIHRoaW5rIGl0J3MgZW5vdWdoIHRv
IGRpc3Rpbmd1aXNoIG5vIFBBR0VfT1dORVIgYXQgYWxsLCBhbmQgUEFHRV9PV05FUitQQUdFX09X
TkVSX0ZSRUVfU1RBQ0sgdG9nZXRoZXIgLSBJIGRvbid0IHNlZSBtdWNoIHBvaW50IGluIFBBR0Vf
T1dORVIgb25seSBmb3IgdGhpcyBraW5kIG9mIGRlYnVnZ2luZy4KPiAKPiBTbyBob3cgYWJvdXQg
dGhpcz8gS0FTQU4gd291bGRuJ3Qgc2VsZWN0IFBBR0VfT1dORVIqIGJ1dCBpdCB3b3VsZCBiZSBy
ZWNvbW1lbmRlZCBpbiB0aGUgaGVscCtkb2NzLiBXaGVuIFBBR0VfT1dORVIgYW5kIEtBU0FOIGFy
ZSBzZWxlY3RlZCBieSB1c2VyLCBQQUdFX09XTkVSX0ZSRUVfU1RBQ0sgZ2V0cyBhbHNvIHNlbGVj
dGVkLCBhbmQgYm90aCB3aWxsIGJlIGFsc28gcnVudGltZSBlbmFibGVkIHdpdGhvdXQgZXhwbGlj
aXQgcGFnZV9vd25lcj1vbi4KPiBJIG1vc3RseSB3YW50IHRvIGF2b2lkIGFub3RoZXIgYm9vdC10
aW1lIG9wdGlvbiBmb3IgZW5hYmxpbmcgUEFHRV9PV05FUl9GUkVFX1NUQUNLLgo+IFdvdWxkIHRo
YXQgYmUgZW5vdWdoIGZsZXhpYmlsaXR5IGZvciBsb3ctbWVtb3J5IGRldmljZXMgdnMgZnVsbC1m
bGVkZ2VkIGRlYnVnZ2luZz8KCk9yaWdpbmFsbHkgSSB0aG91Z2h0IHRoYXQgd2l0aCB5b3UgcGF0
Y2ggdXNlcnMgc3RpbGwgY2FuIGRpc2FibGUgcGFnZV9vd25lciB2aWEgInBhZ2Vfb3duZXI9b2Zm
IiBib290IHBhcmFtLgpCdXQgbm93IEkgcmVhbGl6ZWQgdGhhdCB0aGlzIHdvbid0IHdvcmsuIEkg
dGhpbmsgaXQgc2hvdWxkIHdvcmssIHdlIHNob3VsZCBhbGxvdyB1c2VycyB0byBkaXNhYmxlIGl0
LgoKCgpPciBhbm90aGVyIGFsdGVybmF0aXZlIG9wdGlvbiAoYW5kIGFjdHVhbGx5IGVhc2llciBv
bmUgdG8gaW1wbGVtZW50KSwgbGVhdmUgUEFHRV9PV05FUiBhcyBpcyAobm8gInNlbGVjdCJzIGlu
IEtjb25maWdzKQpNYWtlIFBBR0VfT1dORVJfRlJFRV9TVEFDSyBsaWtlIHRoaXM6CgorY29uZmln
IFBBR0VfT1dORVJfRlJFRV9TVEFDSworCWRlZl9ib29sIEtBU0FOIHx8IERFQlVHX1BBR0VBTExP
QworCWRlcGVuZHMgb24gUEFHRV9PV05FUgorCgpTbywgdXNlcnMgdGhhdCB3YW50IGFsbG9jL2Zy
ZWUgc3RhY2sgd2lsbCBoYXZlIHRvIGVuYWJsZSBDT05GSUdfUEFHRV9PV05FUj15IGFuZCBhZGQg
cGFnZV9vd25lcj1vbiB0byBib290IGNtZGxpbmUuCgoKQmFzaWNhbGx5IHRoZSBkaWZmZXJlbmNl
IGJldHdlZW4gdGhlc2UgYWx0ZXJuYXRpdmUgaXMgd2hldGhlciB3ZSBlbmFibGUgcGFnZV9vd25l
ciBieSBkZWZhdWx0IG9yIG5vdC4gQnV0IHRoZXJlIGlzIGFsd2F5cyBhIHBvc3NpYmlsaXR5IHRv
IGRpc2FibGUgaXQuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
