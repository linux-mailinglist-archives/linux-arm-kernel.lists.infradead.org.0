Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A064212407A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 08:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iiJkTfFu6CCQXOLl5FrjNTasnJb/+1BP3vZrzgGosGs=; b=gI9FrH0XaQpHhlZjZ4oulPwhr
	pBDlRLtqr+FEMaKQd45TTvcN3skR7ji2q/K1CoNT5U1HtFhADfQxcG6gSGK0aJbtp2bKWYO1ZIRPu
	8KbQiPixNuQXcJHCSvyguocSAbvBn7e8FZViQ1YvjwCrVhSEupiSkEqJRqeIHu9GxiR9EaXR9JYrY
	0eTuL2qVtgoUtfVqRbS0KUh9ifnnVi8dEM+Z4nbanVLYUzrEqCrHoqs5GaUv6jCwpsRXcbcktb/WH
	ctK0mLSCbhrQ9IHYESzvHRo4p4AVHIvNoJ3e3BdezlaSIyQnuzmJ7Eu2+tttua0LN4KrnGGkkjNEr
	SWlWK0ctw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihTu9-0003v7-EC; Wed, 18 Dec 2019 07:37:57 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihTtZ-0003PJ-WC; Wed, 18 Dec 2019 07:37:27 +0000
Received: from [10.28.19.135] (10.28.19.135) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 18 Dec
 2019 15:37:49 +0800
Subject: Re: [PATCH v5 2/4] dt-bindings: watchdog: add new binding for meson
 secure watchdog
To: Guenter Roeck <linux@roeck-us.net>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Rob Herring <robh+dt@kernel.org>
References: <1576153187-28378-1-git-send-email-xingyu.chen@amlogic.com>
 <1576153187-28378-3-git-send-email-xingyu.chen@amlogic.com>
 <CAFBinCBHLqgPExPsVaSWdSOr0Oj-jeYa4Z82U-pJ=fS+D1wGnA@mail.gmail.com>
 <f7b0afe7-e317-2422-de7e-878837f9f238@amlogic.com>
 <a8f5ab1d-264c-5b2c-e72b-3774b9f44c22@roeck-us.net>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <1da513d7-20e1-726a-dcc4-952cbfbbe63a@amlogic.com>
Date: Wed, 18 Dec 2019 15:37:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <a8f5ab1d-264c-5b2c-e72b-3774b9f44c22@roeck-us.net>
Content-Language: en-GB
X-Originating-IP: [10.28.19.135]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_233723_274484_D775EAE7 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 linux-amlogic@lists.infradead.org, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEd1ZW50ZXIgTWFydGluCgpPbiAyMDE5LzEyLzE2IDIxOjMwLCBHdWVudGVyIFJvZWNrIHdy
b3RlOgo+IE9uIDEyLzE1LzE5IDEwOjAzIFBNLCBYaW5neXUgQ2hlbiB3cm90ZToKPj4gSGksIE1h
cnRpbgo+Pgo+PiBTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkuCj4+Cj4+IE9uIDIwMTkvMTIvMTMg
NDowNSwgTWFydGluIEJsdW1lbnN0aW5nbCB3cm90ZToKPj4+IEhpIFhpbmd5dSBhbmQgUm9iLAo+
Pj4KPj4+IE9uIFRodSwgRGVjIDEyLCAyMDE5IGF0IDE6MjAgUE0gWGluZ3l1IENoZW4gCj4+PiA8
eGluZ3l1LmNoZW5AYW1sb2dpYy5jb20+IHdyb3RlOgo+Pj4gWy4uLl0KPj4+PiArZXhhbXBsZXM6
Cj4+Pj4gK8KgIC0gfAo+Pj4+ICvCoMKgwqAgd2F0Y2hkb2cgewo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqAgY29tcGF0aWJsZSA9ICJhbWxvZ2ljLG1lc29uLXNlYy13ZHQiOwo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqAgdGltZW91dC1zZWMgPSA8NjA+Owo+Pj4+ICvCoMKgwqAgfTsKPj4+IGluIHYz
IG9mIHRoaXMgcGF0Y2ggUm9iIGNvbW1lbnRlZCB0aGF0IHRoZXJlIHNob3VsZG4ndCBiZSBhbiBP
RiBub2RlCj4+PiBpZiB0aGVyZSBhcmUgbm8gYWRkaXRpb25hbCBwcm9wZXJ0aWVzCj4+PiB3aXRo
IHRpbWVvdXQtc2VjIHRoZXJlJ3Mgbm93IGFuIGFkZGl0aW9uYWwgcHJvcGVydHkgc28gbXkKPj4+
IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCBpdCdzIGZpbmUgdG8gaGF2ZSBhbiBPRiBub2RlCj4+IFlv
dXIgdW5kZXJzdGFuZGluZyBpcyBjb3JyZWN0Lgo+Pj4KPj4+IHdoYXQgSSBkb24ndCB1bmRlcnN0
YW5kIHlldCBpcyB3aGVyZSB0aGlzIG5vZGUgc2hvdWxkIGJlIHBsYWNlZC4KPj4+IGlzIGl0IHN1
cHBvc2VkIHRvIGJlIGEgY2hpbGQgbm9kZSBvZiB0aGUgc2VjdXJlIG1vbml0b3Igbm9kZSAoZm9y
Cj4+PiB3aGljaCB3ZSBhbHJlYWR5IGhhdmUgYSBiaW5kaW5nIGhlcmU6Cj4+PiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZmlybXdhcmUvbWVzb24vbWVzb25fc20udHh0KSBvcgo+
Pj4gd2hlcmUgZWxzZSB3b3VsZCB3ZSBwbGFjZSBpdCBpbnNpZGUgdGhlIC5kdHM/Cj4+IElNTyzC
oCBBbHRob3VnaCB0aGUgd2F0Y2hkb2cgbm9kZSBuZWVkIHRvIHJlZmVyZW5jZSB0aGUgbWVzb25f
c20gbm9kZSwgCj4+IHRoZXJlIGlzIG5vCj4+IGJ1cy1saWtlIGRlcGVuZGVuY2llcyBiZXR3ZWVu
IHRoZSBkZXZpY2VzIHdoaWNoIHRoZSB0d28gbm9kZXMgCj4+IGNvcnJlc3BvbmRpbmcgdG8uCj4+
IHNvIGkgdGhpbmsgdGhhdCB0aGUgd2F0Y2hkb2cgbm9kZSBhcyBjaGlsZCBub2RlIG9mIG1lc29u
X3NtIG1heWJlIG5vdCAKPj4gYXBwcm9wcmlhdGUuCj4KPiBUaGUgd2F0Y2hkb2cgZHJpdmVyIG5l
ZWRzIHRoZSBtZXNvbiBTTSdzIGR0IG5vZGUsIGFuZCBpdCBkZXBlbmRzIG9uIAo+IHRoZSBleGlz
dGVuY2UKPiBvZiB0aGF0IG5vZGUuIFRoYXQgc2VlbXMgZW5vdWdoIG9mIGEgcmVsYXRpb25zaGlw
IHRvIHdhcnJhbnQgaGF2aW5nIGl0IAo+IGFzIGNoaWxkIG5vdGUuClRoYW5rcyBmb3IgeW91ciBy
ZXBseSwgaWYgaSB0YWtlIHRoZSB3ZHQgbm9kZSBhcyBjaGlsZCBvZiBzZWN1cmUgbW9uaXRvciAK
KHNtKSwgaG93IHNob3VsZAppIHJlZ2lzdGVyIG9yIGZpbmQgdGhlIHdkdCBkZXZpY2UgPwoKSSBv
bmx5IHRoaW5rIG9mIHRoZSBmb2xsb3dpbmcgdGhyZWUgbWV0aG9kcyA6CjEpLiB1cGRhdGUgdGhl
IHNtIGRyaXZlcu+8jGFuZCBzY2FuJnJlZ2lzdGVyIHdkdCBkZXZpY2Ugd2hlbiB0aGUgc20gZHJp
dmVyIApwcm9iZXMoSXQgaXMgbGlrZSBpMmMpLCBidXQgdGhlcmUKYXJlIHRvbyBtYW55IGNoYW5n
ZXMgaW52b2x2ZWQuCgoyKS4gYWRkICJzaW1wbGUtYnVzIiBrZXkgc3RyaW5nIHRvIGNvbXBhdGli
bGUgb2Ygc20gbm9kZSwgYW5kIGl0IHdpbGwgCm1ha2UgdGhlIGNoaWxkIG5vZGUgaXMgcmVnaXN0
ZXJlZCBhcwpwbGF0Zm9ybSBkZXZpY2UsIGJ1dCBpdCBzZWVtcyB0aGF0IHRoZSBrZXkgc3RyaW5n
IGlzIG5vdCBtYXRjaCBjdXJyZW50IApzY2VuZS4KCnNlY3VyZS1tb25pdG9yIHsKIMKgwqDCoCBj
b21wYXRpYmxlID0gImFtbG9naWMsbWVzb24tZ3hiYi1zbSIswqAgInNpbXBsZS1idXMiOwoKIMKg
wqDCoCB3YXRjaGRvZyB7CiDCoMKgwqAgwqDCoMKgIGNvbXBhdGlibGUgPSAiYW1sb2dpYyxtZXNv
bi1zZWMtd2R0IjsKIMKgwqDCoCDCoMKgwqAgdGltZW91dC1zZWMgPSA8NjA+OwogwqDCoMKgIH0K
fQoKMykuwqAgZG9uJ3QgcmVnaXN0ZXIgZGV2aWNlLCBhbmQgZmluZCBkaXJlY3RseSB0aGUgd2F0
Y2hkb2cgbm9kZSBieSB1c2luZyAKdGhlIG9mXyogQVBJIGluIHdhdGNoZG9nCmRyaXZlciAoRWc6
IGxpbnV4LTQueC9kcml2ZXJzL3RlZS9vcHRlZS9jb3JlLmMpCgpzZWN1cmUtbW9uaXRvciB7CiDC
oMKgwqAgY29tcGF0aWJsZSA9ICJhbWxvZ2ljLG1lc29uLWd4YmItc20iOwoKIMKgwqDCoCB3YXRj
aGRvZyB7CiDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImFtbG9naWMsbWVzb24tc2VjLXdk
dCI7CiDCoMKgwqDCoMKgwqDCoCB0aW1lb3V0LXNlYyA9IDw2MD47CiDCoMKgwqAgfQp9CgpUaGUg
bWV0aG9kIDMgbG9va3MgYmV0dGVyIGZvciBtZSwgZG8geW91IGhhdmUgYSBiZXR0ZXIgc3VnZ2Vz
dGlvbiA/IFRoYW5rcwoKQlIKPgo+IEd1ZW50ZXIKPgo+IC4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
