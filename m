Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16727AD266
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 05:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+4qCLBy/jbzIFPakcmh7Gx59ks+M2IaBpXe8zQdXg5c=; b=CqrAhVX2HAM9ZuckQiz+u7Co/F
	IAi/rvQNgoxvdZAKyy3diYV0viPbeqxQgv6FVkldk/wZnXSpyYYwnzh+4/Ol+3bfpAvRHo5KF7t49
	Q8Wjbgv32vjmTx1+jOMi9XmPbzxXYp/+1nyId00NfkkG/Hz4aw9Z+UyPtI+Xieukq+sL1JmzWyxYh
	7Ec6VcJvRoko0iMG/ywmC4YPJLFM/xDOnxv5yZFWdumI3s0Vl7vxCqeuAeWmKAxtMaMWWjdpw8ZlP
	Tybw/t4shJrQFYCMD6VsyQIc4HmCwGr6Tp5qnuDF2Y1sNMDgIZ6MnClyF1Y3XaYzHG8dchqz185n2
	y8avqhKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7AlF-0001Jr-A7; Mon, 09 Sep 2019 03:54:41 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Al2-0001Is-I2
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 03:54:30 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5EF832963;
 Sun,  8 Sep 2019 23:54:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 08 Sep 2019 23:54:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm3; bh=R
 8LbfYJffu40yx4D2FHnjPmSQXgd166zgHqkOmUJu4c=; b=iu4B9w0ov0PFn7Z43
 B2kcCLpfVBG6uYLLzqLuSL98yBobuzoF1/4a0hV75u06BO+EOstibZgvlQMGIx6D
 8cUn42fyLS9kpmfTUmrl0IEYNO0FJW6nRM/wyFkPUkTHTyvhC7DgS1sBxxPLMyyb
 utgvh33+KpRX0AKtR6CZR42Mt6cDhF/ts1oHapoUjNFtH7gAey6xiDTVTVFm+7K1
 Z5JQ/qQlEkR+0uCSWbVz02fR3qN0oewL/XpcLlBlLal05fT9wtgVJdEaqtQ5UPWs
 qDUn+1hcbZEF89aN69qSRtuifrxbYLCELx5DZ1xO1ex02Wv/THyMm9N8T3UpsLKB
 J8cHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=R8LbfYJffu40yx4D2FHnjPmSQXgd166zgHqkOmUJu
 4c=; b=TYLSv09/4b1ljpj1zIOINXn54LVaUxu5XSh16wEUAzmcv4sgf8vD1wbgI
 1Yq0/cKY4npJSLvprYSOqKCl3qAmBm3k9QyweaORoGvMWMFhrsIL7c6ai3d3X4kq
 5J7IYa5Go+GAUqXX29ic46/slZprthadLNjqAtgznvgqi+h406xkmqTk0cB4qt2z
 aGiL7Kf3aeGloQbdC389ODVtZIlxwAdlZ+7kSUL9iw9qNbWi+1UuVu2/BeVGFPte
 i73WMnKlOI1g9q0wxUt1jWzZnCAoJxXQ7LSrVR8GVRTxjFwVx7ViBVvUE48Syfjg
 7mp+Wl9SwhRebAT6bsTZnlyBsac6w==
X-ME-Sender: <xms:68x1XcjwMybboUx96Nz6iK21VOZ6DSCQdMlfuKtWOC02Do5B_iKODg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudekhedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomhepufgrmhhu
 vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecuff
 homhgrihhnpehlkhhmlhdrohhrghdpghhithhhuhgsrdgtohhmpdhinhhfrhgruggvrggu
 rdhorhhgnecukfhppeejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilh
 hfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhi
 iigvpedt
X-ME-Proxy: <xmx:68x1XQZUEHW157Lt9IVLaDo51zS-UFCxLz5NVTawGFTv0MywjFMumA>
 <xmx:68x1XdcwqlkSlLXVhRY1rvm-uQEONXHXq68SIpWQL8YHpn1HhtfX-A>
 <xmx:68x1XVA99wDS0AVgMWorin6YsHvHi5Qtk6G_kOWEA7X85xIUhNlLiw>
 <xmx:78x1XcuWOUsyYKxFMvX376sVeg2m-iXP4Qk6yhVmb5fkfhlbqAqPHA>
Received: from [192.168.50.162]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id D055580059;
 Sun,  8 Sep 2019 23:54:18 -0400 (EDT)
Subject: Re: [PATCH v4 00/10] Allwinner sunxi message box support
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190909032208.rlorx2ppytymtyej@core.my.home>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <bb6eab9a-f9cc-81ca-5e8c-9fb867c61ec2@sholland.org>
Date: Sun, 8 Sep 2019 22:54:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190909032208.rlorx2ppytymtyej@core.my.home>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_205428_919008_0F3BAB98 
X-CRM114-Status: GOOD (  31.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS84LzE5IDEwOjIyIFBNLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiBIZWxsbyBTYW11ZWws
Cj4gCj4gT24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMTA6MjM6MDFQTSAtMDUwMCwgU2FtdWVsIEhv
bGxhbmQgd3JvdGU6Cj4+IFRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgdGhlICJoYXJkd2Fy
ZSBtZXNzYWdlIGJveCIgaW4gc3VuOGksIHN1bjlpLAo+PiBhbmQgc3VuNTBpIFNvQ3MsIHVzZWQg
Zm9yIGNvbW11bmljYXRpb24gd2l0aCB0aGUgQVJJU0MgbWFuYWdlbWVudAo+PiBwcm9jZXNzb3Ig
KHRoZSBwbGF0Zm9ybSdzIGVxdWl2YWxlbnQgb2YgdGhlIEFSTSBTQ1ApLiBUaGUgZW5kIGdvYWwg
aXMgdG8KPj4gdXNlIHRoZSBhcm1fc2NwaSBkcml2ZXIgYXMgYSBjbGllbnQsIGNvbW11bmljYXRp
bmcgd2l0aCBmaXJtd2FyZSBydW5uaW5nCj4+IG9uIHRoZSBBUjEwMCBDUFUsIG9yIHRvIHVzZSB0
aGUgbWFpbGJveCB0byBmb3J3YXJkIE5NSXMgdGhhdCB0aGUKPj4gZmlybXdhcmUgcGlja3MgdXAg
ZnJvbSBSX0lOVEMuCj4+Cj4+IFVuZm9ydHVuYXRlbHksIHRoZSBBUk0gU0NQSSBjbGllbnQgbm8g
bG9uZ2VyIHdvcmtzIHdpdGggdGhpcyBkcml2ZXIKPj4gc2luY2UgaXQgbm93IGV4cG9zZXMgYWxs
IDggaGFyZHdhcmUgRklGT3MgaW5kaXZpZHVhbGx5LiBUaGUgU0NQSSBjbGllbnQKPj4gY291bGQg
YmUgbWFkZSB0byB3b3JrIChhbmQgSSBwb3N0ZWQgcHJvb2Ytb2YtY29uY2VwdCBjb2RlIHRvIHRo
YXQgZWZmZWN0Cj4+IHdpdGggdjEgb2YgdGhpcyBzZXJpZXMpLCBidXQgdGhhdCBpcyBhIGxvdyBw
cmlvcml0eSwgYXMgTGludXggZG9lcyBub3QKPj4gZGlyZWN0bHkgdXNlIFNDUEkgd2l0aCB0aGUg
Y3VycmVudCBmaXJtd2FyZSB2ZXJzaW9uOyBhbGwgU0NQSSB1c2UgZ29lcwo+PiB0aHJvdWdoIEFU
RiB2aWEgUFNDSS4KPj4KPj4gQXMgcmVxdWVzdGVkIGluIHRoZSBjb21tZW50cyB0byB2MyBvZiB0
aGlzIHBhdGNoc2V0LCBhIGRlbW8gY2xpZW50IGlzCj4+IHByb3ZpZGVkIGluIHRoZSBmaW5hbCBw
YXRjaC4gVGhpcyBkZW1vIGdvZXMgYWxvbmcgd2l0aCBhIHRveSBmaXJtd2FyZQo+PiB3aGljaCBz
aG93cyB0aGF0IHRoZSBkcml2ZXIgZG9lcyBpbmRlZWQgd29yayBmb3IgdHdvLXdheSBjb21tdW5p
Y2F0aW9uCj4+IG9uIGFsbCBjaGFubmVscy4gVG8gYnVpbGQgdGhlIGZpcm13YXJlIGNvbXBvbmVu
dCwgcnVuOgo+IAo+IEkndmUgdHJpZWQgdXNpbmcgdGhpcyBkcml2ZXIgd2l0aCBtYWlubGluZSBh
cm1fc2NwaSBkcml2ZXIgKHdoaWNoIGlzIHByb2JhYmx5Cj4gYW4gZXhwZWN0ZWQgZnV0dXJlIHVz
ZSwgc2luY2UgY3J1c3QgcHJvdmlkZXMgU0NQSSBpbnRlcmZhY2UpLgoKSWYgeW91J3ZlIHZlcmlm
aWVkIGluIHNvbWUgd2F5IHRoYXQgdGhpcyBkcml2ZXIgd29ya3Mgb24gQTgzVCwgSSdkIGFwcHJl
Y2lhdGUKeW91ciBUZXN0ZWQtYnksIHNvIEkgY2FuIHNlbmQgYSBwYXRjaCBmb3IgdGhlIEE4M1Qg
ZGV2aWNlIHRyZWUgbm9kZS4KCj4gVGhlIHByb2JsZW0gSSd2ZSBmb3VuZCBpcyB0aGF0IGFybV9z
Y3BpIGV4cGVjdHMgbWVzc2FnZSBib3ggdG8gYmUKPiBiaS1kaXJlY3Rpb25hbCwgYnV0IHRoaXMg
ZHJpdmVyIHByb3ZpZGVzIHVuaS1kaXJlY3Rpb25hbCBpbnRlcmZhY2UuCj4gCj4gV2hhdCBkbyB5
b3UgdGhpbmsgYWJvdXQgbWFraW5nIHRoaXMgZHJpdmVyIHByb3ZpZGUgYmktZGlyZWN0aW9uYWwg
aW50ZXJmYWNlPwo+IFdlIGNvdWxkIGhhbHZlIHRoZSBudW1iZXIgb2YgY2hhbm5lbHMgdG8gNCBh
bmQgbWFuZGF0ZSBUWC9SWCBjb25maWd1cmF0aW9uCj4gKGZyb20gbWFpbiBDUFUncyBQb1YpIGFz
IEFCSS4KCkZ1bm55IHlvdSBtZW50aW9uIHRoYXQuIFRoYXQncyB3aGF0IEkgZGlkIG9yaWdpbmFs
bHkgZm9yIHYxLCBidXQgaXQgZ290IE5BS2VkIGJ5Ck1heGltZSwgQW5kcmUsIGFuZCBKYXNzaToK
Cmh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE4LzIvMjgvMTI1Cmh0dHBzOi8vbGttbC5vcmcvbGtt
bC8yMDE4LzIvMjgvOTQ0Cgo+IE90aGVyd2lzZSBpdCdzIGltcG9zc2libGUgdG8gdXNlIGl0IHdp
dGggdGhlIGFybV9zY3BpIGRyaXZlci4KPiAKPiBPciBkbyB5b3UgaGF2ZSBhbnkgb3RoZXIgaWRl
YXM/IEkgZ3Vlc3MgYXJtX3NjcGkgY2FuIGJlIGZpeGVkIHRvIGFkZCBhCj4gcHJvcGVydHkgdGhh
dCB3b3VsZCBtYWtlIGl0IHBvc3NpYmxlIHRvIHVzZSBzaW5nbGUgc2htZW0gd2l0aCB0d28KPiBt
YWlsYm94ZXMsIG9uZSBmb3IgcnggYW5kIG9uZSBmb3IgdHgsIGJ1dCBtYWtpbmcgc3VuNmkgbWFp
bGJveCBoYXZlCj4gYmktZGlyZWN0aW9uYWwgaW50ZXJmYWNlIHNvdW5kcyBlYXNpZXIuCgpZZXMs
IHlvdSBjYW4gdXNlIHRoZSBleGlzdGVuY2Ugb2YgdGhlIG1ib3gtbmFtZXMgcHJvcGVydHkgdG8g
ZGV0ZXJtaW5lIGlmIHRoZQpkcml2ZXIgbmVlZHMgb25lIG1haWxib3ggb3IgdHdvLCBhcyBJIGRp
ZCBpbiB0aGlzIGRyaXZlcjoKCmh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzMvMS83ODkKCkkn
bGwgaGF2ZSBhIHBhdGNoIGF2YWlsYWJsZSBzb29uIHRoYXQgaW1wbGVtZW50cyB0aGlzIGZvciBh
cm1fc2NwaS4KCkNoZWVycywKU2FtdWVsCgo+IHJlZ2FyZHMsCj4gCW8uCj4gCj4+ICAgZ2l0IGNs
b25lIGh0dHBzOi8vZ2l0aHViLmNvbS9jcnVzdC1maXJtd2FyZS9tZXRhIG1ldGEKPj4gICBnaXQg
Y2xvbmUgLWIgbWFpbGJveC1kZW1vIGh0dHBzOi8vZ2l0aHViLmNvbS9jcnVzdC1maXJtd2FyZS9j
cnVzdCBtZXRhL2NydXN0Cj4+ICAgY2QgbWV0YQo+PiAgIG1ha2UKPj4KPj4gVGhhdCB3aWxsIGJ5
IGRlZmF1bHQgcHJvZHVjZSBhIFUtQm9vdCArIEFURiArIFNDUCBmaXJtd2FyZSBpbWFnZSBpbgo+
PiBbbWV0YS9dYnVpbGQvcGluZWJvb2svdS1ib290LXN1bnhpLXdpdGgtc3BsLmJpbi4gU2VlIHRo
ZSB0b3AtbGV2ZWwKPj4gUkVBRE1FLm1kIGZvciBtb3JlIGluZm9ybWF0aW9uLCBzdWNoIGFzIGNy
b3NzLWNvbXBpbGVyIHNldHVwLgo+Pgo+PiBJJ3ZlIG5vdyB1c2VkIHRoaXMgZHJpdmVyIHdpdGgg
dGhyZWUgc2VwYXJhdGUgY2xpZW50cyBvdmVyIHRoZSBwYXN0IHR3bwo+PiB5ZWFycywgYW5kIHRo
ZXkgYWxsIHdvcmsuIElmIHRoZXJlIGFyZSBubyByZW1haW5pbmcgY29uY2VybnMgd2l0aCB0aGUK
Pj4gZHJpdmVyLCBJJ2QgbGlrZSBpdCB0byBnZXQgbWVyZ2VkLgo+Pgo+PiBFdmVuIHdpdGhvdXQg
dGhlIGRyaXZlciwgdGhlIGNsb2NrIHBhdGNoZXMgKDEtMikgY2FuIGdvIGluIGF0IGFueSB0aW1l
Lgo+Pgo+PiBDaGFuZ2VzIGZyb20gdjM6Cj4+ICAgLSBSZWJhc2VkIG9uIHN1bnhpLW5leHQKPj4g
ICAtIEFkZGVkIFJvYidzIFJldmlld2VkLWJ5IGZvciBwYXRjaCAzCj4+ICAgLSBGaXhlZCBhIGNy
YXNoIHdoZW4gcmVjZWl2aW5nIGEgbWVzc2FnZSBvbiBhIGRpc2FibGVkIGNoYW5uZWwKPj4gICAt
IENsZWFuZWQgdXAgc29tZSBjb21tZW50cy9mb3JtYXR0aW5nIGluIHRoZSBkcml2ZXIKPj4gICAt
IEZpeGVkICNtYm94LWNlbGxzIGluIHN1bnhpLWgzLWg1LmR0c2kgKHBhdGNoIDcpCj4+ICAgLSBS
ZW1vdmVkIHRoZSBpcnFjaGlwIGV4YW1wbGUgKG5vIGxvbmdlciByZWxldmFudCB0byB0aGUgZncg
ZGVzaWduKQo+PiAgIC0gQWRkZWQgYSBkZW1vL2V4YW1wbGUgY2xpZW50IHRoYXQgdXNlcyB0aGUg
ZHJpdmVyIGFuZCBhIHRveSBmaXJtd2FyZQo+Pgo+PiBDaGFuZ2VzIGZyb20gdjI6Cj4+ICAgLSBN
ZXJnZSBwYXRjaGVzIDEtMwo+PiAgIC0gQWRkIGEgY29tbWVudCBpbiB0aGUgY29kZSBleHBsYWlu
aW5nIHRoZSBDTEtfSVNfQ1JJVElDQUwgdXNhZ2UKPj4gICAtIEFkZCBhIHBhdGNoIHRvIG1hcmsg
dGhlIEFSMTAwIGNsb2NrcyBhcyBjcml0aWNhbAo+PiAgIC0gVXNlIFlBTUwgZm9yIHRoZSBkZXZp
Y2UgdHJlZSBiaW5kaW5nCj4+ICAgLSBJbmNsdWRlIGEgbm90LWZvci1tZXJnZSBleGFtcGxlIHVz
YWdlIG9mIHRoZSBtYWlsYm94Cj4+Cj4+IENoYW5nZXMgZnJvbSB2MToKPj4gICAtIE1hcmtlZCBt
ZXNzYWdlIGJveCBjbG9ja3MgYXMgY3JpdGljYWwgaW5zdGVhZCBvZiBoYWNrcyBpbiB0aGUgZHJp
dmVyCj4+ICAgLSA4IHVuaWRpcmVjdGlvbmFsIGNoYW5uZWxzIGluc3RlYWQgb2YgNCBiaWRpcmVj
dGlvbmFsIHBhaXJzCj4+ICAgLSBVc2UgcGVyLVNvQyBjb21wYXRpYmxlIHN0cmluZ3MgYW5kIGFu
IEEzMSBmYWxsYmFjayBjb21wYXRpYmxlCj4+ICAgLSBEcm9wcGVkIHRoZSBtYWlsYm94IGZyYW1l
d29yayBwYXRjaAo+PiAgIC0gSW5jbHVkZSBEVCBwYXRjaGVzIGZvciBTb0NzIHRoYXQgZG9jdW1l
bnQgdGhlIG1lc3NhZ2UgYm94Cj4+Cj4+IFNhbXVlbCBIb2xsYW5kICgxMCk6Cj4+ICAgY2xrOiBz
dW54aS1uZzogTWFyayBtc2dib3ggY2xvY2tzIGFzIGNyaXRpY2FsCj4+ICAgY2xrOiBzdW54aS1u
ZzogTWFyayBBUjEwMCBjbG9ja3MgYXMgY3JpdGljYWwKPj4gICBkdC1iaW5kaW5nczogbWFpbGJv
eDogQWRkIGEgc3VueGkgbWVzc2FnZSBib3ggYmluZGluZwo+PiAgIG1haWxib3g6IHN1bnhpLW1z
Z2JveDogQWRkIGEgbmV3IG1haWxib3ggZHJpdmVyCj4+ICAgQVJNOiBkdHM6IHN1bnhpOiBhODA6
IEFkZCBtc2dib3ggbm9kZQo+PiAgIEFSTTogZHRzOiBzdW54aTogYTgzdDogQWRkIG1zZ2JveCBu
b2RlCj4+ICAgQVJNOiBkdHM6IHN1bnhpOiBoMy9oNTogQWRkIG1zZ2JveCBub2RlCj4+ICAgYXJt
NjQ6IGR0czogYWxsd2lubmVyOiBhNjQ6IEFkZCBtc2dib3ggbm9kZQo+PiAgIGFybTY0OiBkdHM6
IGFsbHdpbm5lcjogaDY6IEFkZCBtc2dib3ggbm9kZQo+PiAgIFtETyBOT1QgTUVSR0VdIGRyaXZl
cnM6IGZpcm13YXJlOiBtc2dib3ggZGVtbwo+Pgo+PiAgLi4uL21haWxib3gvYWxsd2lubmVyLHN1
bnhpLW1zZ2JveC55YW1sICAgICAgIHwgIDc5ICsrKysrCj4+ICBhcmNoL2FybS9ib290L2R0cy9z
dW44aS1hODN0LmR0c2kgICAgICAgICAgICAgfCAgMTAgKwo+PiAgYXJjaC9hcm0vYm9vdC9kdHMv
c3VuOWktYTgwLmR0c2kgICAgICAgICAgICAgIHwgIDEwICsKPj4gIGFyY2gvYXJtL2Jvb3QvZHRz
L3N1bnhpLWgzLWg1LmR0c2kgICAgICAgICAgICB8ICAxMCArCj4+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kgfCAgMzQgKysKPj4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNS5kdHNpICB8ICAyNCArKwo+PiAgYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgIDEwICsKPj4gIGRyaXZlcnMvY2xr
L3N1bnhpLW5nL2NjdS1zdW41MGktYTY0LmMgICAgICAgICB8ICAgMyArLQo+PiAgZHJpdmVycy9j
bGsvc3VueGktbmcvY2N1LXN1bjUwaS1oNi1yLmMgICAgICAgIHwgICAyICstCj4+ICBkcml2ZXJz
L2Nsay9zdW54aS1uZy9jY3Utc3VuNTBpLWg2LmMgICAgICAgICAgfCAgIDMgKy0KPj4gIGRyaXZl
cnMvY2xrL3N1bnhpLW5nL2NjdS1zdW44aS1hMjMuYyAgICAgICAgICB8ICAgMyArLQo+PiAgZHJp
dmVycy9jbGsvc3VueGktbmcvY2N1LXN1bjhpLWEzMy5jICAgICAgICAgIHwgICAzICstCj4+ICBk
cml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuOGktYTgzdC5jICAgICAgICAgfCAgIDMgKy0KPj4g
IGRyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdS1zdW44aS1oMy5jICAgICAgICAgICB8ICAgMyArLQo+
PiAgZHJpdmVycy9jbGsvc3VueGktbmcvY2N1LXN1bjhpLXIuYyAgICAgICAgICAgIHwgICAyICst
Cj4+ICBkcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuOWktYTgwLmMgICAgICAgICAgfCAgIDMg
Ky0KPj4gIGRyaXZlcnMvZmlybXdhcmUvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICB8ICAg
NiArCj4+ICBkcml2ZXJzL2Zpcm13YXJlL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgfCAg
IDEgKwo+PiAgZHJpdmVycy9maXJtd2FyZS9zdW54aV9tc2dib3hfZGVtby5jICAgICAgICAgIHwg
MzA3ICsrKysrKysrKysrKysrKysrCj4+ICBkcml2ZXJzL21haWxib3gvS2NvbmZpZyAgICAgICAg
ICAgICAgICAgICAgICAgfCAgMTAgKwo+PiAgZHJpdmVycy9tYWlsYm94L01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgICAgIHwgICAyICsKPj4gIGRyaXZlcnMvbWFpbGJveC9zdW54aS1tc2dib3gu
YyAgICAgICAgICAgICAgICB8IDMyMyArKysrKysrKysrKysrKysrKysKPj4gIDIyIGZpbGVzIGNo
YW5nZWQsIDg0MiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+PiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tYWlsYm94L2FsbHdpbm5l
cixzdW54aS1tc2dib3gueWFtbAo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZmlybXdh
cmUvc3VueGlfbXNnYm94X2RlbW8uYwo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWFp
bGJveC9zdW54aS1tc2dib3guYwo+Pgo+PiAtLSAKPj4gMi4yMS4wCj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IGxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0Cj4+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
