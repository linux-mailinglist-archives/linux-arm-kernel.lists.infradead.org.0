Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661DF128B49
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 20:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4nECiDhGipg8o7oRIZYKj5pM0dK/94kjL944/8DrGSw=; b=rN72DLiui6o74ZUXLazRBWPSP
	0ERyi4HKqeR6azPjfXv63xHZoP7mFb9n2LpQbSaEF5Yug1OeX/owIj2XHhbz/qd+9avvBCZzvLfxN
	opf/39VmXW16iTSdDozLSi+BDHWm2TZj9V9/cdSA+Yt2dfw5jiAFYdSGOVGaE0Ss71XU18vo3Xv/l
	IxI0QS1D1PZRS4POxP1Vf5F4e1F/AhOLkOR6nEBXrZyA5uSLkpc6bPYrJ3AYSwk2NJx6NAeoz0X5p
	ht9+KZVso+EoL5Hqk3VCzZwrdgI+/FmxqSFgBeFoZf1KfauhK6Pnl6FKZWn7puaDdoJ3+TxtwdNAt
	+eKXyPttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iikrI-0007Mr-Fo; Sat, 21 Dec 2019 19:56:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iikqw-0007AZ-To; Sat, 21 Dec 2019 19:55:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C7C31AC81;
 Sat, 21 Dec 2019 19:55:50 +0000 (UTC)
Subject: Re: [RFC 17/25] leds: tm1628: Prepare Fude Microelectronics AiP1618
To: linux-realtek-soc@lists.infradead.org, linux-leds@vger.kernel.org
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-18-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <56665464-0a2f-709d-56fe-565e45ca6eea@suse.de>
Date: Sat, 21 Dec 2019 20:55:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212033952.5967-18-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_115555_136319_26C8F767 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>,
 linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTIuMTIuMTkgdW0gMDQ6Mzkgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbGVkcy9sZWRzLXRtMTYyOC5jIGIvZHJpdmVycy9sZWRzL2xlZHMtdG0xNjI4
LmMKPiBpbmRleCBlZjg1NzEyYTg0ZjIuLjhhOGZkMTU2Mjg1MyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2xlZHMvbGVkcy10bTE2MjguYwo+ICsrKyBiL2RyaXZlcnMvbGVkcy9sZWRzLXRtMTYyOC5j
ClsuLi5dCj4gQEAgLTQxMSw5ICs0MTIsMzggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB0bTE2Mjhf
aW5mbyBmZDYyOF9pbmZvID0gewo+ICAgCS5kZWZhdWx0X3B3bSA9IDAsCj4gICB9Owo+ICAgCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgdG0xNjI4X21vZGUgYWlwMTYxOF9tb2Rlc1s0XSA9IHsKPiAr
CXsKPiArCQkuZ3JpZF9tYXNrID0gR0VOTUFTSyg0LCAxKSwKPiArCQkuc2VnX21hc2sgPSBHRU5N
QVNLKDgsIDEpLAo+ICsJfSwKPiArCXsKPiArCQkuZ3JpZF9tYXNrID0gR0VOTUFTSyg1LCAxKSwK
PiArCQkuc2VnX21hc2sgPSBHRU5NQVNLKDcsIDEpLAo+ICsJfSwKPiArCXsKPiArCQkuZ3JpZF9t
YXNrID0gR0VOTUFTSyg2LCAxKSwKPiArCQkuc2VnX21hc2sgPSBHRU5NQVNLKDYsIDEpLAo+ICsJ
fSwKClRoZXNlIHRocmVlIHNlZ21lbnQgbWFza3MgYXJlIG9idmlvdXNseSB3cm9uZyAtIHRoZXkg
dmlvbGF0ZSB0aGUgCnNlZ19tYXNrIGJlbG93LCBub3QgbGVhdmluZyB0aGUgZ2FwIGJldHdlZW4g
NSBhbmQgMTIuIEZpeGVkLgoKPiArCXsKPiArCQkuZ3JpZF9tYXNrID0gR0VOTUFTSyg3LCAxKSwK
PiArCQkuc2VnX21hc2sgPSBHRU5NQVNLKDUsIDEpLAo+ICsJfSwKPiArfTsKPiArCj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgdG0xNjI4X2luZm8gYWlwMTYxOF9pbmZvID0gewo+ICsJLmdyaWRfbWFz
ayA9IEdFTk1BU0soNywgMSksCj4gKwkuc2VnX21hc2sgPSBHRU5NQVNLKDE0LCAxMikgfCBHRU5N
QVNLKDUsIDEpLAo+ICsJLm1vZGVzID0gYWlwMTYxOF9tb2RlcywKPiArCS5kZWZhdWx0X21vZGUg
PSAzLAo+ICsJLnB3bV9tYXAgPSB0bTE2MjhfcHdtX21hcCwKPiArCS5kZWZhdWx0X3B3bSA9IDAs
Cj4gK307CltzbmlwXQoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRp
b25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkK
R0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
