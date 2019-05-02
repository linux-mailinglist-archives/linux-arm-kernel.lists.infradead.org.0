Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E821177E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDrezqGy4wO+cQ8+ALQwVDkGwXV8Oehq1/jaQz5wyeg=; b=a3mGUBhBrpGdpa
	toOHHIndEfVX+pwH8EeLDBrI3+rpDosCkIU9WeBYLoAhHp8nq2pWwEdAeDtqOsSm3jw1efveJuuTz
	jzUIu4F6gYE4O01ZrAiZkHiElE7Ns/MVFSpZ67G5yNxw/a3R25UiCoezidU6ayuQvBUUiSM4PurOR
	t0YlYrESamWbtP/GnPNeGGCH/AwvXeyiztBXDdHtoAWa8/Oaw/GElCHKay23xzbOr2orfE5BYMRNG
	HO8tPEw6OgM4JTEmrFMacMNykL3xrYWmfShZc6YPIUH2iGN0e+RIpuIOTsR903iTcugNXb8kzzxTp
	aK96uRD4YvX7AqEX0dSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9DQ-0003Qb-Ra; Thu, 02 May 2019 10:45:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9D9-0002Th-Ux; Thu, 02 May 2019 10:45:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4ABD8AEF6;
 Thu,  2 May 2019 10:45:06 +0000 (UTC)
Subject: Re: [PATCH] clk: actions: Use the correct style for SPDX License
 Identifier
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190501070707.GA5619@nishad>
 <057d9b37-7475-1902-bce7-6d519c2e0fdf@suse.de>
 <20190502070746.GA16247@kroah.com>
 <315de620-b638-aea4-d8d2-e00f5a493625@suse.de>
 <20190502103848.GA17256@kroah.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <f52484fc-b35b-f92a-9c7b-ce53fd731ab5@suse.de>
Date: Thu, 2 May 2019 12:45:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502103848.GA17256@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_034508_404261_3DF75939 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Nishad Kamdar <nishadkamdar@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDIuMDUuMTkgdW0gMTI6Mzggc2NocmllYiBHcmVnIEtyb2FoLUhhcnRtYW46Cj4gT24gVGh1
LCBNYXkgMDIsIDIwMTkgYXQgMTI6MjU6MzZQTSArMDIwMCwgQW5kcmVhcyBGw6RyYmVyIHdyb3Rl
Ogo+PiBBbSAwMi4wNS4xOSB1bSAwOTowNyBzY2hyaWViIEdyZWcgS3JvYWgtSGFydG1hbjoKPj4+
IE9uIFdlZCwgTWF5IDAxLCAyMDE5IGF0IDEwOjIwOjQ0UE0gKzAyMDAsIEFuZHJlYXMgRsOkcmJl
ciB3cm90ZToKPj4+PiArIGxpbnV4LWFjdGlvbnMKPj4+Pgo+Pj4+IEFtIDAxLjA1LjE5IHVtIDA5
OjA3IHNjaHJpZWIgTmlzaGFkIEthbWRhcjoKPj4+Pj4gVGhpcyBwYXRjaCBjb3JyZWN0cyB0aGUg
U1BEWCBMaWNlbnNlIElkZW50aWZpZXIgc3R5bGUKPj4+Pj4gaW4gaGVhZGVyIGZpbGVzIHJlbGF0
ZWQgdG8gQ2xvY2sgRHJpdmVycyBmb3IgQWN0aW9ucyBTZW1pIFNvY3MuCj4+Pj4+IEZvciBDIGhl
YWRlciBmaWxlcyBEb2N1bWVudGF0aW9uL3Byb2Nlc3MvbGljZW5zZS1ydWxlcy5yc3QKPj4+Pj4g
bWFuZGF0ZXMgQy1saWtlIGNvbW1lbnRzIChvcHBvc2VkIHRvIEMgc291cmNlIGZpbGVzIHdoZXJl
Cj4+Pj4+IEMrKyBzdHlsZSBzaG91bGQgYmUgdXNlZCkKPj4+PiBbLi4uXQo+Pj4+PiAgZHJpdmVy
cy9jbGsvYWN0aW9ucy9vd2wtY29tbW9uLmggICAgICAgfCAyICstCj4+Pj4+ICBkcml2ZXJzL2Ns
ay9hY3Rpb25zL293bC1jb21wb3NpdGUuaCAgICB8IDIgKy0KPj4+Pj4gIGRyaXZlcnMvY2xrL2Fj
dGlvbnMvb3dsLWRpdmlkZXIuaCAgICAgIHwgMiArLQo+Pj4+PiAgZHJpdmVycy9jbGsvYWN0aW9u
cy9vd2wtZmFjdG9yLmggICAgICAgfCAyICstCj4+Pj4+ICBkcml2ZXJzL2Nsay9hY3Rpb25zL293
bC1maXhlZC1mYWN0b3IuaCB8IDIgKy0KPj4+Pj4gIGRyaXZlcnMvY2xrL2FjdGlvbnMvb3dsLWdh
dGUuaCAgICAgICAgIHwgMiArLQo+Pj4+PiAgZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtbXV4Lmgg
ICAgICAgICAgfCAyICstCj4+Pj4+ICBkcml2ZXJzL2Nsay9hY3Rpb25zL293bC1wbGwuaCAgICAg
ICAgICB8IDIgKy0KPj4+Pj4gIGRyaXZlcnMvY2xrL2FjdGlvbnMvb3dsLXJlc2V0LmggICAgICAg
IHwgMiArLQo+Pj4+PiAgOSBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pCj4+Pj4KPj4+PiBXaGVyZSdzIHRoZSBwcmFjdGljYWwgYmVuZWZpdCBvZiB0aGlzIHBh
dGNoPyBUaGVzZSBhcmUgYWxsIHByaXZhdGUKPj4+PiBoZWFkZXJzIHVzZWQgZnJvbSBDIGZpbGVz
LCBzbyB0aGV5IGNhbiBoYW5kbGUgQysrIGNvbW1lbnRzIGp1c3QgZmluZSwKPj4+PiBvdGhlcndp
c2Ugd2Ugd291bGQndmUgc2VlbiBidWlsZCBmYWlsdXJlcy4KPj4+Cj4+PiBQbGVhc2UgcmVhZCBE
b2N1bWVudGF0aW9uL3Byb2Nlc3MvbGljZW5zZS1ydWxlcy5yc3QsIHRoZSBzZWN0aW9uCj4+PiBl
bnRpdGxlZCAiU3R5bGUiLCBmb3Igd2hhdCB0aGUgZG9jdW1lbnRlZCBmb3JtYXRzIGFyZSBmb3Ig
U1BEWCBsaW5lcywKPj4+IGRlcGVuZGluZyBvbiB0aGUgZmlsZSB0eXBlLgo+Pgo+PiBUaGF0IGRv
ZXMgaW4gbm8gd2F5IGFuc3dlciBteSBxdWVzdGlvbiEgWW91IGNvbnZlbmllbnRseSBkcm9wcGVk
IG15Cj4+IHBhcmFncmFwaCBpbmRpY2F0aW5nIHRoYXQgSSB1bmRlcnN0YW5kIHdoeSB3ZSB3b3Vs
ZCBkbyB0aGF0IGZvciBwdWJsaWMKPj4gaGVhZGVycyBpbiBpbmNsdWRlLywgYnV0IG5vbmUgb2Yg
dGhlc2UgcHJpdmF0ZSBoZWFkZXJzIGhlcmUgYXJlIGluY2x1ZGVkCj4+IGluIC5sZHMgZmlsZXMu
IFNvIHRoZXJlIHJlYWxseSBzZWVtcyB0byBiZSBubyBiZW5lZml0IG9mIHN3aXRjaGluZyBmcm9t
Cj4+IG9uZSBzdHlsZSB0byBhbm90aGVyIGZvciBpbi10cmVlIGNvZGUuCj4gCj4gSXQgc2hvdWxk
IGFuc3dlciB0aGUgcXVlc3Rpb24sIGl0IHdhcyAiZGVjcmVlZCIgdGhhdCBhbGwgaGVhZGVyIGZp
bGVzCj4gdXNlIC8qICovLCBhbmQgYWxsIEMgZmlsZXMgdXNlIC8vIGZvciB0aGVpciBTUERYIGxp
bmVzLCBzbyB3ZSBkb2N1bWVudGVkCj4gaXQgdGhhdCB3YXkuCj4gCj4gWWVzLCBtYXliZSBpdCBk
b2Vzbid0IG1ha2UgInNlbnNlIiBpbiB0aGF0IHRoaXMgcmVhbGx5IGlzIG9ubHkgbmVlZGVkCj4g
Zm9yIGhlYWRlcnMgdGhhdCBnZXQgaW5jbHVkZWQgaW50byBhc20gZmlsZXMsIHdoaWNoIGlzIHdo
eSB3ZSBoYWQgdG8gZG8KPiBpdCB0aGlzIHdheSwgYnV0IGl0J3MgYmV0dGVyIHRvIGJlIGNvbnNp
c3RhbnQgdGhhbiB0byBoYXZlIHJhbmRvbQo+IGJyZWFrYWdlcyBhdCB0aW1lcy4KPiAKPiBJdCdz
IG5vdCBhbiBpc3N1ZSBvZiBwdWJsaWMgaGVhZGVycyBhdCBhbGwsIHNvcnJ5Lgo+IAo+IENvbnNp
c3RlbmN5IGlzIGdvb2QsIGFzIHdlIGNhbiBoYXZlIGF1dG9tYXRpYyB0b29scyBjaGVjayB0aGVz
ZSB0eXBlcyBvZgo+IHRoaW5ncywgd2hpY2ggaXMgdGhlIG9ubHkgd2F5IHRvIHJlbGlhYmx5IGhh
bmRsZSB0aGUgZm9ybWF0IG9mIHNvbWV0aGluZwo+IHRoYXQgbmVlZHMgdG8gYmUgaW4gZXZlcnkg
ZmlsZSBpbiBhIHByb2plY3Qgd2l0aCA2MywxMDArIGRpZmZlcmVudAo+IGZpbGVzLgoKT2theSwg
aWYgaXQncyBhYm91dCBjb25zaXN0ZW5jeSB0aGVuIHRoZXJlIHdpbGwgYmUgbW9yZSBjYXNlcyB0
byBmaXguCgpXaGF0IGFib3V0IHRoaXMgb25lOgoKTXkgaW50ZXJwcmV0YXRpb24gb2YgdGhlIGRv
Y3VtZW50YXRpb24gaGFzIGJlZW4gdGhhdCBJIHNob3VsZCBlbmQgdGhlCmNvbW1lbnQgYWZ0ZXIg
dGhlIGlkZW50aWZpZXJzOgoKLyogU1BEWC0uLi4gKi8KLyogLi4uCiAqLwoKU29tZSBwZW9wbGUg
ZGV2aWF0ZSBieSBkb2luZwoKLyogU1BEWC0uLi4KICogZm9vCiAqLwoKU28gdGhlIGRvY3VtZW50
YXRpb24gbWF5IG5lZWQgdG8gYmUgZXh0ZW5kZWQgdG8gY2xhcmlmeSB0aGF0IGZvciBmdWxsCmNv
bnNpc3RlbmN5LCBhcyB3ZWxsIGFzIGNsYXJpZnkgdGhlIHByZXZpb3VzIHNjZW5hcmlvOgogICJJ
ZiBhIHNwZWNpZmljIHRvb2wgY2Fubm90IGhhbmRsZSB0aGUgc3RhbmRhcmQgY29tbWVudCBzdHls
ZSwgdGhlbiB0aGUKICAgYXBwcm9wcmlhdGUgY29tbWVudCBtZWNoYW5pc20gd2hpY2ggdGhlIHRv
b2wgYWNjZXB0cyBzaGFsbCBiZSB1c2VkLiIKVG8gbWUgdGhhdCByZWFkcyB2ZXJ5IGRpZmZlcmVu
dCBmcm9tIHdoYXQgeW91IGp1c3Qgc2FpZCBhYm92ZS4KClRoYW5rcywKQW5kcmVhcwoKLS0gClNV
U0UgTGludXggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdG
OiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQg
KEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
