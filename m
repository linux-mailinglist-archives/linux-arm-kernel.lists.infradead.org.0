Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A978F1259B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 03:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eXXbal7Rc1bA27oq9k9QkDauXuYfWCiELA6kMAb/WaM=; b=ohE5cgLuHaF3k0rIw/YxoGcYL
	EMKyb2RUgOh1PFA7g1WNa4rXUVJkK8vgx2lfOO96fip0fQPnWE7F48cq2ATpEVWlHmD1GPWMowkYd
	IIqlLUbTJlzLLB8jJczhIM9cop8+c1FtqTpTVK19PkMkjmQVR0VRjsYZnCnNCxJb7kxw/H0At50FP
	5vMqQCuOgGB3oWBrfX44+SCxKtPmyKNzlIGAwyMiV68j/tuHhuZuhpaKGSEZxpF8EaAWTKdLJWM5R
	eg8HDIV1+W8ydsUnJIBvqk1I9oHLL8NU24Lkmp+PP6SsdiYRsAkXtR+1n2lsU4E68KTrl5pptcTxW
	ZUIQOIk9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihltl-00067G-1Q; Thu, 19 Dec 2019 02:50:45 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihltZ-00065T-66; Thu, 19 Dec 2019 02:50:34 +0000
Received: from [10.28.19.135] (10.28.19.135) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 19 Dec
 2019 10:51:04 +0800
Subject: Re: [PATCH v5 2/4] dt-bindings: watchdog: add new binding for meson
 secure watchdog
To: Rob Herring <robh@kernel.org>
References: <1576153187-28378-1-git-send-email-xingyu.chen@amlogic.com>
 <1576153187-28378-3-git-send-email-xingyu.chen@amlogic.com>
 <CAFBinCBHLqgPExPsVaSWdSOr0Oj-jeYa4Z82U-pJ=fS+D1wGnA@mail.gmail.com>
 <f7b0afe7-e317-2422-de7e-878837f9f238@amlogic.com>
 <a8f5ab1d-264c-5b2c-e72b-3774b9f44c22@roeck-us.net>
 <1da513d7-20e1-726a-dcc4-952cbfbbe63a@amlogic.com>
 <20191218203404.GA2451@bogus>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <2d762720-cb08-e72a-06e5-4096e211e34b@amlogic.com>
Date: Thu, 19 Dec 2019 10:51:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191218203404.GA2451@bogus>
Content-Language: en-GB
X-Originating-IP: [10.28.19.135]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_185033_233905_5FB306DB 
X-CRM114-Status: GOOD (  15.01  )
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Jian Hu <jian.hu@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFJvYgoKT24gMjAxOS8xMi8xOSA0OjM0LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBXZWQs
IERlYyAxOCwgMjAxOSBhdCAwMzozNzo0OVBNICswODAwLCBYaW5neXUgQ2hlbiB3cm90ZToKPj4g
SGksIEd1ZW50ZXIgTWFydGluCj4+Cj4+IE9uIDIwMTkvMTIvMTYgMjE6MzAsIEd1ZW50ZXIgUm9l
Y2sgd3JvdGU6Cj4+PiBPbiAxMi8xNS8xOSAxMDowMyBQTSwgWGluZ3l1IENoZW4gd3JvdGU6Cj4+
Pj4gSGksIE1hcnRpbgo+Pj4+Cj4+Pj4gU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5Lgo+Pj4+Cj4+
Pj4gT24gMjAxOS8xMi8xMyA0OjA1LCBNYXJ0aW4gQmx1bWVuc3RpbmdsIHdyb3RlOgo+Pj4+PiBI
aSBYaW5neXUgYW5kIFJvYiwKPj4+Pj4KPj4+Pj4gT24gVGh1LCBEZWMgMTIsIDIwMTkgYXQgMToy
MCBQTSBYaW5neXUgQ2hlbgo+Pj4+PiA8eGluZ3l1LmNoZW5AYW1sb2dpYy5jb20+IHdyb3RlOgo+
Pj4+PiBbLi4uXQo+Pj4+Pj4gK2V4YW1wbGVzOgo+Pj4+Pj4gK8KgIC0gfAo+Pj4+Pj4gK8KgwqDC
oCB3YXRjaGRvZyB7Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYW1s
b2dpYyxtZXNvbi1zZWMtd2R0IjsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgdGltZW91dC1z
ZWMgPSA8NjA+Owo+Pj4+Pj4gK8KgwqDCoCB9Owo+Pj4+PiBpbiB2MyBvZiB0aGlzIHBhdGNoIFJv
YiBjb21tZW50ZWQgdGhhdCB0aGVyZSBzaG91bGRuJ3QgYmUgYW4gT0Ygbm9kZQo+Pj4+PiBpZiB0
aGVyZSBhcmUgbm8gYWRkaXRpb25hbCBwcm9wZXJ0aWVzCj4+Pj4+IHdpdGggdGltZW91dC1zZWMg
dGhlcmUncyBub3cgYW4gYWRkaXRpb25hbCBwcm9wZXJ0eSBzbyBteQo+Pj4+PiB1bmRlcnN0YW5k
aW5nIGlzIHRoYXQgaXQncyBmaW5lIHRvIGhhdmUgYW4gT0Ygbm9kZQo+Pj4+IFlvdXIgdW5kZXJz
dGFuZGluZyBpcyBjb3JyZWN0Lgo+Pj4+PiB3aGF0IEkgZG9uJ3QgdW5kZXJzdGFuZCB5ZXQgaXMg
d2hlcmUgdGhpcyBub2RlIHNob3VsZCBiZSBwbGFjZWQuCj4+Pj4+IGlzIGl0IHN1cHBvc2VkIHRv
IGJlIGEgY2hpbGQgbm9kZSBvZiB0aGUgc2VjdXJlIG1vbml0b3Igbm9kZSAoZm9yCj4+Pj4+IHdo
aWNoIHdlIGFscmVhZHkgaGF2ZSBhIGJpbmRpbmcgaGVyZToKPj4+Pj4gRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Zpcm13YXJlL21lc29uL21lc29uX3NtLnR4dCkgb3IKPj4+Pj4g
d2hlcmUgZWxzZSB3b3VsZCB3ZSBwbGFjZSBpdCBpbnNpZGUgdGhlIC5kdHM/Cj4+Pj4gSU1PLMKg
IEFsdGhvdWdoIHRoZSB3YXRjaGRvZyBub2RlIG5lZWQgdG8gcmVmZXJlbmNlIHRoZSBtZXNvbl9z
bQo+Pj4+IG5vZGUsIHRoZXJlIGlzIG5vCj4+Pj4gYnVzLWxpa2UgZGVwZW5kZW5jaWVzIGJldHdl
ZW4gdGhlIGRldmljZXMgd2hpY2ggdGhlIHR3byBub2Rlcwo+Pj4+IGNvcnJlc3BvbmRpbmcgdG8u
Cj4+Pj4gc28gaSB0aGluayB0aGF0IHRoZSB3YXRjaGRvZyBub2RlIGFzIGNoaWxkIG5vZGUgb2Yg
bWVzb25fc20gbWF5YmUKPj4+PiBub3QgYXBwcm9wcmlhdGUuCj4+PiBUaGUgd2F0Y2hkb2cgZHJp
dmVyIG5lZWRzIHRoZSBtZXNvbiBTTSdzIGR0IG5vZGUsIGFuZCBpdCBkZXBlbmRzIG9uIHRoZQo+
Pj4gZXhpc3RlbmNlCj4+PiBvZiB0aGF0IG5vZGUuIFRoYXQgc2VlbXMgZW5vdWdoIG9mIGEgcmVs
YXRpb25zaGlwIHRvIHdhcnJhbnQgaGF2aW5nIGl0Cj4+PiBhcyBjaGlsZCBub3RlLgo+PiBUaGFu
a3MgZm9yIHlvdXIgcmVwbHksIGlmIGkgdGFrZSB0aGUgd2R0IG5vZGUgYXMgY2hpbGQgb2Ygc2Vj
dXJlIG1vbml0b3IKPj4gKHNtKSwgaG93IHNob3VsZAo+PiBpIHJlZ2lzdGVyIG9yIGZpbmQgdGhl
IHdkdCBkZXZpY2UgPwo+Pgo+PiBJIG9ubHkgdGhpbmsgb2YgdGhlIGZvbGxvd2luZyB0aHJlZSBt
ZXRob2RzIDoKPj4gMSkuIHVwZGF0ZSB0aGUgc20gZHJpdmVy77yMYW5kIHNjYW4mcmVnaXN0ZXIg
d2R0IGRldmljZSB3aGVuIHRoZSBzbSBkcml2ZXIKPj4gcHJvYmVzKEl0IGlzIGxpa2UgaTJjKSwg
YnV0IHRoZXJlCj4+IGFyZSB0b28gbWFueSBjaGFuZ2VzIGludm9sdmVkLgo+IEp1c3QgYWRkIG9m
X3BsYXRmb3JtX2RlZmF1bHRfcG9wdWxhdGUoKSBjYWxsIGFuZCBjbGVhbi11cCBjYWxscy4gVGhh
dCdzCj4gbm90IHdoYXQgSSdkIGNhbGwgJ3RvbyBtYW55IGNoYW5nZXMnLgpUaGFua3MgZm9yIHlv
dXIgZ3VpZGFuY2UuCj4KPiAgIAo+PiAyKS4gYWRkICJzaW1wbGUtYnVzIiBrZXkgc3RyaW5nIHRv
IGNvbXBhdGlibGUgb2Ygc20gbm9kZSwgYW5kIGl0IHdpbGwgbWFrZQo+PiB0aGUgY2hpbGQgbm9k
ZSBpcyByZWdpc3RlcmVkIGFzCj4+IHBsYXRmb3JtIGRldmljZSwgYnV0IGl0IHNlZW1zIHRoYXQg
dGhlIGtleSBzdHJpbmcgaXMgbm90IG1hdGNoIGN1cnJlbnQKPj4gc2NlbmUuCj4gWW91IHByZXZp
b3VzbHkgc2FpZCBpdCdzIG5vdCBhIGJ1cy4uLgo+Cj4+IHNlY3VyZS1tb25pdG9yIHsKPj4gIMKg
wqDCoCBjb21wYXRpYmxlID0gImFtbG9naWMsbWVzb24tZ3hiYi1zbSIswqAgInNpbXBsZS1idXMi
Owo+Pgo+PiAgwqDCoMKgIHdhdGNoZG9nIHsKPj4gIMKgwqDCoCDCoMKgwqAgY29tcGF0aWJsZSA9
ICJhbWxvZ2ljLG1lc29uLXNlYy13ZHQiOwo+PiAgwqDCoMKgIMKgwqDCoCB0aW1lb3V0LXNlYyA9
IDw2MD47Cj4+ICDCoMKgwqAgfQo+PiB9Cj4+Cj4+IDMpLsKgIGRvbid0IHJlZ2lzdGVyIGRldmlj
ZSwgYW5kIGZpbmQgZGlyZWN0bHkgdGhlIHdhdGNoZG9nIG5vZGUgYnkgdXNpbmcgdGhlCj4+IG9m
XyogQVBJIGluIHdhdGNoZG9nCj4+IGRyaXZlciAoRWc6IGxpbnV4LTQueC9kcml2ZXJzL3RlZS9v
cHRlZS9jb3JlLmMpCj4+Cj4+IHNlY3VyZS1tb25pdG9yIHsKPj4gIMKgwqDCoCBjb21wYXRpYmxl
ID0gImFtbG9naWMsbWVzb24tZ3hiYi1zbSI7Cj4+Cj4+ICDCoMKgwqAgd2F0Y2hkb2cgewo+PiAg
wqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJhbWxvZ2ljLG1lc29uLXNlYy13ZHQiOwo+PiAg
wqDCoMKgwqDCoMKgwqAgdGltZW91dC1zZWMgPSA8NjA+Owo+PiAgwqDCoMKgIH0KPj4gfQo+Pgo+
PiBUaGUgbWV0aG9kIDMgbG9va3MgYmV0dGVyIGZvciBtZSwgZG8geW91IGhhdmUgYSBiZXR0ZXIg
c3VnZ2VzdGlvbiA/IFRoYW5rcwo+Pgo+PiBCUgo+Pj4gR3VlbnRlcgo+Pj4KPj4+IC4KPj4+Cj4g
Lgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
