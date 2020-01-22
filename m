Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DD9145D2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 21:33:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OrtbpLsXRNfxG0M6WPZvtTwL12YUEzSqPdcSlfQ939w=; b=Yn5WO8EJn/fnCeVdhSIgq6S7u
	zTl2temzmCi2WVBH5oHcD4xcIIKmtHoZs7jnmEpsD3PoCyLnfiZNBqFiM60E3adrcpyIdwYGua4m0
	Nb8hT+6WEDkfZA0igDFPe5q2JKLRcgsTxA6iMo6OYrWd0gczPzALfMo38TYvXbZuzb3RhGZLzdkeZ
	B0xAPMjwpHtFqyaphseO5JGbMldMf9on1wBYT5ErJeJJU3Od20ajMIKWJb61fWOLnixj51C1PiejP
	NXmNNMPJ0AxTkGUwdW4UTYK6zS88AuUwMyqUCjS8+9uw2jegi3sae0qS8sHujjC5gJOdCk+0OQthj
	3xHkH4YcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuMgz-0007uy-3F; Wed, 22 Jan 2020 20:33:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuMgq-0007uD-5k
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 20:33:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 83EC1AFBB;
 Wed, 22 Jan 2020 20:33:24 +0000 (UTC)
Subject: Re: [PATCH 01/20] ARM: actions: Drop unneeded select of COMMON_CLK
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <c1a790fa-4c60-b054-0f85-412f40e0dec9@suse.de>
Date: Wed, 22 Jan 2020 21:33:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_123328_360180_493D14C9 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjEuMDEuMjAgdW0gMTE6Mzcgc2NocmllYiBHZWVydCBVeXR0ZXJob2V2ZW46Cj4gU3VwcG9y
dCBmb3IgQWN0aW9ucyBTZW1pIFNvQ3MgZGVwZW5kcyBvbiBBUkNIX01VTFRJX1Y3LCBhbmQgdGh1
cyBvbgo+IEFSQ0hfTVVMVElQTEFURk9STS4KPiBBcyB0aGUgbGF0dGVyIHNlbGVjdHMgQ09NTU9O
X0NMSywgdGhlcmUgaXMgbm8gbmVlZCBmb3IgQVJDSF9BQ1RJT05TIHRvCj4gc2VsZWN0IENPTU1P
Tl9DTEsuCj4gCj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5l
c2FzQGdsaWRlci5iZT4KPiBDYzogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgoK
UmV2aWV3ZWQtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KCj4gQ2M6IE1h
bml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4g
LS0tCj4gQWxsIHBhdGNoZXMgaW4gdGhpcyBzZXJpZXMgYXJlIGluZGVwZW5kZW50IG9mIGVhY2gg
b3RoZXIuCj4gQ292ZXIgbGV0dGVyIGF0IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMDAx
MjExMDM0MTMuMTMzNy0xLWdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlCj4gCj4gICBhcmNoL2FybS9t
YWNoLWFjdGlvbnMvS2NvbmZpZyB8IDEgLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1hY3Rpb25zL0tjb25maWcgYi9hcmNo
L2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZwo+IGluZGV4IGI1ZTBhYzk2NWVjMGRkMTAuLjAwZmI0
YmFiY2NkZDk5MWIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1hY3Rpb25zL0tjb25maWcK
PiArKysgYi9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZwo+IEBAIC03LDcgKzcsNiBAQCBt
ZW51Y29uZmlnIEFSQ0hfQUNUSU9OUwo+ICAgCXNlbGVjdCBBUk1fR0xPQkFMX1RJTUVSCj4gICAJ
c2VsZWN0IENBQ0hFX0wyWDAKPiAgIAlzZWxlY3QgQ0xLU1JDX0FSTV9HTE9CQUxfVElNRVJfU0NI
RURfQ0xPQ0sKPiAtCXNlbGVjdCBDT01NT05fQ0xLCj4gICAJc2VsZWN0IEdFTkVSSUNfSVJRX0NI
SVAKPiAgIAlzZWxlY3QgSEFWRV9BUk1fU0NVIGlmIFNNUAo+ICAgCXNlbGVjdCBIQVZFX0FSTV9U
V0QgaWYgU01QCgpUaGFua3MsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBG
ZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
