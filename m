Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B8611735
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQ/YiuEU/K8WicbkaIRmAvppDRO3GjfwUceb7dCwbEY=; b=rbQ7rIvieRyNAo
	VzZFIcMct6WxB4847Z8A+edrLHwtWYx3CgEvgl6Hp1MgmpTy3N2ORNdhTQwbIZELzV61z3iffcxZB
	SDhjlqLWGCFQ/ij9zchUsl2cYwO4jhWzmW9bd2zQaIXgp7YCqBsIGKujLOogp2T7kpqNpBHiaeCWX
	7rk12X65ojSHx1w3NKEzZjtxfzBKA3a+BFVvnWNcOUISIyvTMzz3vUNk4mRCLrdGD/JREOikFbO53
	SA9AdmRee6xFBA2CHmkG5UkudiLieIGjZj47avqNi4qtDPZSUEql+iYUYFpCXNgQHChHDrAcLpHXS
	bB1pY/EE1tph3EsH3yBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8uU-0002im-7b; Thu, 02 May 2019 10:25:50 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8uK-0002dE-Ll; Thu, 02 May 2019 10:25:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8C0C1ADF0;
 Thu,  2 May 2019 10:25:38 +0000 (UTC)
Subject: Re: [PATCH] clk: actions: Use the correct style for SPDX License
 Identifier
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190501070707.GA5619@nishad>
 <057d9b37-7475-1902-bce7-6d519c2e0fdf@suse.de>
 <20190502070746.GA16247@kroah.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <315de620-b638-aea4-d8d2-e00f5a493625@suse.de>
Date: Thu, 2 May 2019 12:25:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502070746.GA16247@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_032540_868633_E20002E0 
X-CRM114-Status: GOOD (  12.46  )
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

QW0gMDIuMDUuMTkgdW0gMDk6MDcgc2NocmllYiBHcmVnIEtyb2FoLUhhcnRtYW46Cj4gT24gV2Vk
LCBNYXkgMDEsIDIwMTkgYXQgMTA6MjA6NDRQTSArMDIwMCwgQW5kcmVhcyBGw6RyYmVyIHdyb3Rl
Ogo+PiArIGxpbnV4LWFjdGlvbnMKPj4KPj4gQW0gMDEuMDUuMTkgdW0gMDk6MDcgc2NocmllYiBO
aXNoYWQgS2FtZGFyOgo+Pj4gVGhpcyBwYXRjaCBjb3JyZWN0cyB0aGUgU1BEWCBMaWNlbnNlIElk
ZW50aWZpZXIgc3R5bGUKPj4+IGluIGhlYWRlciBmaWxlcyByZWxhdGVkIHRvIENsb2NrIERyaXZl
cnMgZm9yIEFjdGlvbnMgU2VtaSBTb2NzLgo+Pj4gRm9yIEMgaGVhZGVyIGZpbGVzIERvY3VtZW50
YXRpb24vcHJvY2Vzcy9saWNlbnNlLXJ1bGVzLnJzdAo+Pj4gbWFuZGF0ZXMgQy1saWtlIGNvbW1l
bnRzIChvcHBvc2VkIHRvIEMgc291cmNlIGZpbGVzIHdoZXJlCj4+PiBDKysgc3R5bGUgc2hvdWxk
IGJlIHVzZWQpCj4+IFsuLi5dCj4+PiAgZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtY29tbW9uLmgg
ICAgICAgfCAyICstCj4+PiAgZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtY29tcG9zaXRlLmggICAg
fCAyICstCj4+PiAgZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtZGl2aWRlci5oICAgICAgfCAyICst
Cj4+PiAgZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtZmFjdG9yLmggICAgICAgfCAyICstCj4+PiAg
ZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtZml4ZWQtZmFjdG9yLmggfCAyICstCj4+PiAgZHJpdmVy
cy9jbGsvYWN0aW9ucy9vd2wtZ2F0ZS5oICAgICAgICAgfCAyICstCj4+PiAgZHJpdmVycy9jbGsv
YWN0aW9ucy9vd2wtbXV4LmggICAgICAgICAgfCAyICstCj4+PiAgZHJpdmVycy9jbGsvYWN0aW9u
cy9vd2wtcGxsLmggICAgICAgICAgfCAyICstCj4+PiAgZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wt
cmVzZXQuaCAgICAgICAgfCAyICstCj4+PiAgOSBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDkgZGVsZXRpb25zKC0pCj4+Cj4+IFdoZXJlJ3MgdGhlIHByYWN0aWNhbCBiZW5lZml0IG9m
IHRoaXMgcGF0Y2g/IFRoZXNlIGFyZSBhbGwgcHJpdmF0ZQo+PiBoZWFkZXJzIHVzZWQgZnJvbSBD
IGZpbGVzLCBzbyB0aGV5IGNhbiBoYW5kbGUgQysrIGNvbW1lbnRzIGp1c3QgZmluZSwKPj4gb3Ro
ZXJ3aXNlIHdlIHdvdWxkJ3ZlIHNlZW4gYnVpbGQgZmFpbHVyZXMuCj4gCj4gUGxlYXNlIHJlYWQg
RG9jdW1lbnRhdGlvbi9wcm9jZXNzL2xpY2Vuc2UtcnVsZXMucnN0LCB0aGUgc2VjdGlvbgo+IGVu
dGl0bGVkICJTdHlsZSIsIGZvciB3aGF0IHRoZSBkb2N1bWVudGVkIGZvcm1hdHMgYXJlIGZvciBT
UERYIGxpbmVzLAo+IGRlcGVuZGluZyBvbiB0aGUgZmlsZSB0eXBlLgoKVGhhdCBkb2VzIGluIG5v
IHdheSBhbnN3ZXIgbXkgcXVlc3Rpb24hIFlvdSBjb252ZW5pZW50bHkgZHJvcHBlZCBteQpwYXJh
Z3JhcGggaW5kaWNhdGluZyB0aGF0IEkgdW5kZXJzdGFuZCB3aHkgd2Ugd291bGQgZG8gdGhhdCBm
b3IgcHVibGljCmhlYWRlcnMgaW4gaW5jbHVkZS8sIGJ1dCBub25lIG9mIHRoZXNlIHByaXZhdGUg
aGVhZGVycyBoZXJlIGFyZSBpbmNsdWRlZAppbiAubGRzIGZpbGVzLiBTbyB0aGVyZSByZWFsbHkg
c2VlbXMgdG8gYmUgbm8gYmVuZWZpdCBvZiBzd2l0Y2hpbmcgZnJvbQpvbmUgc3R5bGUgdG8gYW5v
dGhlciBmb3IgaW4tdHJlZSBjb2RlLgoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgTGludXgg
R21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJ
bWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJu
YmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
