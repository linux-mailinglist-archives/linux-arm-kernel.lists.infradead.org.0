Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F4A12CC00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 03:57:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Hm107hpsTst4hZbiKnRmkprz81WYUv7gOOXIpD8BUc=; b=GpFCFXgqjpEgOMKXfmHZm50TH
	Tj74zAJBYD2HI9A8Rfyd9y0nPiQrL2jWOdtuI01vrxLVjWbFKDiEqEPM5olDePCoJWxkwV0f+hHti
	4YSR0KCztGgH9xLFSYt5jiiaZrXe+4uJe+c9v636DFe/xP2S8mNjn46zFg+l1mSMprM6V0/kBdZgB
	b1NHI7S11ZmVGtGuVIoKWucRjtXjv5uWAkDAsVrozkokNvzMoNkJHu7mNCrCUiUpS+MIHvwE9Rlqg
	Q1La9KXyd1SS8RDq26Wm4DBH6x5ZpdMa1s41+A8MyMbOlep00kyJN6y+gmoQbqdAXVNi/L28jmA3T
	hiVfBqStw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illFh-0005QD-6e; Mon, 30 Dec 2019 02:57:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illFa-0005PD-9L; Mon, 30 Dec 2019 02:57:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AF0D1AAF1;
 Mon, 30 Dec 2019 02:57:40 +0000 (UTC)
Subject: Re: [PATCH 00/14] ARM: dts: realtek: Introduce syscon
To: James Tai <james.tai@realtek.com>
References: <20191202182205.14629-1-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <0f4d6872-b764-1c5e-9c2a-4e4e415a4877@suse.de>
Date: Mon, 30 Dec 2019 03:57:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_185746_475486_EBACB112 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAwMi4xMi4xOSB1bSAxOToyMSBzY2hyaWViIEFuZHJlYXMgRsOkcmJlcjoK
PiBUaGlzIHBhdGNoIHNlcmllcyBmYWN0b3JzIG91dCBzeXN0ZW0gY29udHJvbGxlciBtdWx0aS1m
dW5jdGlvbiBkZXZpY2Ugbm9kZXMKPiBmb3IgQ1JULCBJc28sIE1pc2MsIFNCMiBhbmQgU0NQVSBX
cmFwcGVyIElQIGJsb2Nrcy4KPiAKPiBJdCB3YXMgaW5zcGlyZWQgYnkgbXkgU29DIGluZm8gUkZD
LCBhcyBkaXNjdXNzZWQgaW4gaXRzIGNvdmVyIGxldHRlciBbMV0uCj4gCj4gR29hbCBvZiBEVCBp
cyB0byBkZXNjcmliZSB0aGUgaGFyZHdhcmUsIGFuZCBpbiBwcmV2aW91cyBwYXRjaGVzIHdlJ3Zl
IGFscmVhZHkKPiBpbnRyb2R1Y2VkIFJlYWx0ZWsncyByLWJ1cyBhcyBub2RlIGxheWVyLiBUaGUg
bmV4dCBzdGVwIGhlcmUgaXMgdG8gbW9kZWwKPiBtdWx0aS1mdW5jdGlvbiBibG9ja3MgYXMgbm9k
ZXMuIEluIG9yZGVyIHRvIGNvcGUgd2l0aCA4MC1jaGFyYWN0ZXIgbGluZSBsaW1pdCwKPiBjaGls
ZCBub2RlcyBhcmUgYWRkZWQgdmlhIHJlZmVyZW5jZSByYXRoZXIgdGhhbiBpbi1wbGFjZS4KCkkn
bSB3YWl0aW5nIGZvciB5b3VyIEFja2VkLWJ5IG9mIHRoZSBibG9ja3MgJiBudW1iZXJzIGluIHRo
ZXNlIHBhdGNoZXMuIApPdGhlciBSZWFsdGVrIGVuZ2luZWVycyBhcmUgYWxzbyBpbnZpdGVkIHRv
IHJlc3BvbmQsIG9mIGNvdXJzZS4KClRoYW5rcyBpbiBhZHZhbmNlLApBbmRyZWFzCgo+IEFuZHJl
YXMgRsOkcmJlciAoMTQpOgo+ICAgIEFSTTogZHRzOiBydGQxMTk1OiBJbnRyb2R1Y2UgaXNvIGFu
ZCBtaXNjIHN5c2Nvbgo+ICAgIGFybTY0OiBkdHM6IHJlYWx0ZWs6IHJ0ZDEyOXg6IEludHJvZHVj
ZSBDUlQsIGlzbyBhbmQgbWlzYyBzeXNjb24KPiAgICBhcm02NDogZHRzOiByZWFsdGVrOiBydGQx
Mzl4OiBJbnRyb2R1Y2UgQ1JULCBpc28gYW5kIG1pc2Mgc3lzY29uCj4gICAgYXJtNjQ6IGR0czog
cmVhbHRlazogcnRkMTZ4eDogSW50cm9kdWNlIGlzbyBhbmQgbWlzYyBzeXNjb24KPiAgICBBUk06
IGR0czogcnRkMTE5NTogQWRkIENSVCBzeXNjb24gbm9kZQo+ICAgIGR0LWJpbmRpbmdzOiByZXNl
dDogQWRkIFJlYWx0ZWsgUlREMTE5NQo+ICAgIEFSTTogZHRzOiBydGQxMTk1OiBBZGQgcmVzZXQg
bm9kZXMKPiAgICBBUk06IGR0czogcnRkMTE5NTogQWRkIFVBUlQgcmVzZXRzCj4gICAgYXJtNjQ6
IGR0czogcmVhbHRlazogcnRkMTZ4eDogQWRkIENSVCBzeXNjb24gbm9kZQo+ICAgIEFSTTogZHRz
OiBydGQxMTk1OiBBZGQgU0IyIGFuZCBTQ1BVIFdyYXBwZXIgc3lzY29uIG5vZGVzCj4gICAgYXJt
NjQ6IGR0czogcmVhbHRlazogcnRkMTI5eDogQWRkIFNCMiBhbmQgU0NQVSBXcmFwcGVyIHN5c2Nv
biBub2Rlcwo+ICAgIGFybTY0OiBkdHM6IHJlYWx0ZWs6IHJ0ZDEzOXg6IEFkZCBTQjIgYW5kIFND
UFUgV3JhcHBlciBzeXNjb24gbm9kZXMKPiAgICBhcm02NDogZHRzOiByZWFsdGVrOiBydGQxNnh4
OiBBZGQgU0IyIGFuZCBTQ1BVIFdyYXBwZXIgc3lzY29uIG5vZGVzCj4gICAgZHQtYmluZGluZ3M6
IHJlc2V0OiBydGQxMjk1OiBBZGQgU0IyIHJlc2V0Cj4gCj4gICBhcmNoL2FybS9ib290L2R0cy9y
dGQxMTk1LmR0c2kgICAgICAgICAgICAgIHwgMTEwICsrKysrKysrKysrKysrKystLS0KPiAgIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kgICAgfCAxNTcgKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEz
OXguZHRzaSAgICB8IDE1NyArKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCj4gICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpICAgIHwgIDkxICsrKysrKysrKysrKy0t
LS0KPiAgIGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMTk1LmggfCAgNzQg
KysrKysrKysrKysrKwo+ICAgaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDEy
OTUuaCB8ICAgMyArCj4gICA2IGZpbGVzIGNoYW5nZWQsIDQ0OSBpbnNlcnRpb25zKCspLCAxNDMg
ZGVsZXRpb25zKC0pCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9y
ZXNldC9yZWFsdGVrLHJ0ZDExOTUuaAoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1h
bnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4
IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
