Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F6C7207F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 22:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GjuSUymz/Dr/kqVO9/qCk3aKz6aQYRzTqWM5A4pk8Rg=; b=D8XgLknDCL90QpaboaJrXiYd/
	rrgG6N4n7OiMj8cpHgg30puPSTzFDsxAkBU9NBOVdndkVF2GZEUWKVPnMpquzqZfq7+BlDusB48A2
	guaHlNC+eA/MHkPzET6nkagY/wHGP88V6AQhKDdcYJhvAZc5+tP73EIAsgNPGpv1AqurusTQGt3Nx
	E2MS5l/MK7KhN/QuRRTWVR9ePxmpN8XqVgQNWVWhwW5VssaGmJw5mWG8MX76SLsNZHa4YzLMYoRqv
	gzcHXw+7+Xtz2HdhdcQRMVi/3q8k0RsThU3HJndeuXKuL4lI0BOTzaDNiixMxiAMCSa23rxkX/82V
	xQDEa2FjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq14N-0001AW-2j; Tue, 23 Jul 2019 20:07:31 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq149-00019h-Uy
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 20:07:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1563912435;
 s=strato-dkim-0002; d=hartkopp.net;
 h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=eBK5/xXylihI72CIYlFNwhNnCXMKY7krL4ZR3jC0/wk=;
 b=bBbN6R6Ju0u8U/8x6Cl6p/DRPxoHngMfx22yIk+OijqvC+Kll+Yf0vvINPLMBkxp+H
 XkO+sQ1kFQJZaRNqkXswH9FFpY4TdhV1xR56Gj7NqjL4qP9dP+CIKDF1E+Mi3YHxFxNw
 jQJOP9Wstjau+QiXJ2hRrvW5AOF0A4b5gfa6MQaJIyR0Vl5lDNSLUbfKrUNPJ+BC203r
 p30JZl3sc6snqj/8wUZnJhrRqgCdIcNZaxE0B+l8gkfsQkNPK1LCOfpcreOFEGTgWUgM
 r4nj4TFZmFqD9Su7hmgLcpTNhBEIHvDy51erevx/4ieS9UE3Rltf1jF8fCkoyKn1pv8W
 mGUA==
X-RZG-AUTH: ":P2MHfkW8eP4Mre39l357AZT/I7AY/7nT2yrDxb8mjG14FZxedJy6qgO1o3PMaViOoLMJV8h6liA="
X-RZG-CLASS-ID: mo00
Received: from [192.168.1.200] by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id k05d3bv6NK7BfBs
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 23 Jul 2019 22:07:11 +0200 (CEST)
Subject: Re: TS-219 RTC issue with Debian Buster
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
 <20190723190636.tuzob2w2fznmtsmb@pengutronix.de>
 <4a5c0768-0383-0a16-8d3f-639dc9530abf@hartkopp.net>
 <20190723193443.bqcbrxalng554u76@pengutronix.de>
From: Oliver Hartkopp <socketcan@hartkopp.net>
Message-ID: <d633b585-2e66-3143-29c6-418517869d6b@hartkopp.net>
Date: Tue, 23 Jul 2019 22:07:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723193443.bqcbrxalng554u76@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_130718_585716_4634C0F9 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:12 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gVXdlLAoKT24gMjMuMDcuMTkgMjE6MzQsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgoK
PiBPbiBUdWUsIEp1bCAyMywgMjAxOSBhdCAwOToyMTowNlBNICswMjAwLCBPbGl2ZXIgSGFydGtv
cHAgd3JvdGU6Cj4+IEkgdGhpbmsgSSBhbHJlYWR5IHNvbHZlZCB0aGUgcHJvYmxlbSwgc2VlIGhl
cmU6Cj4+IGh0dHBzOi8vbWFyYy5pbmZvLz9sPWxpbnV4LWFybS1rZXJuZWwmbT0xNTYzOTA4NzU2
MjkyNTkmdz0yCj4gCj4gSU1ITyB0aGUgcmlnaHQgZml4IGlzIHRlYWNoIGh3Y2xvY2sgdG8gaGFu
ZGxlIHlvdXIgcnRjIGNvcnJlY3RseS4KPiBDaGFuZ2luZyB0aGUgZHJpdmVyIGZyb20gPW0gdG8g
PXkgaXMgb25seSBhIHdvcmthcm91bmQuCgpBZ3JlZWQuCgo+IE1heWJlIGFsc28gdXNpbmcgdGhl
IHRpbWUgc3R1ZmYgZnJvbSBzeXN0ZW1kIGluc3RlYWQgb2YgaHdjbG9jayB3aWxsCj4gaGVscF5X
d29yayBhcm91bmQgeW91ciBwcm9ibGVtIChub3Qgc3VyZSB0aG91Z2gpLgo+IAo+IEFsc28gSSB3
b25kZXIgd2h5IHRoZSBpb2N0bCB0byBlbmFibGUgVUlFIGRvZXNuJ3QgZmFpbCBpZiB0aGUgZHJp
dmVyIHNldAo+IC51aWVfdW5zdXBwb3J0ZWQgKGJ1dCBJIGRpZG4ndCBsb29rIGNsb3NlbHkpLgoK
UmlnaHQuIFdoZW4gZXhlY3V0aW5nIHRoZSBpb2N0bCg0LCBSVENfVUlFX09OKSBzeXNjYWxsIGl0
IGp1c3QgZ2V0J3MgCnN0dWNrIGFuZCB0aGUgc2VsZWN0KCkgdGltZW91dCBjYXB0dXJlcyB0aGUg
Y2FsbCBhZnRlciAxMCBzZWNvbmRzLgoKSSB3b3VsZCBoYXZlIGV4cGVjdGVkIHRoYXQgaW9jdGwo
NCwgUlRDX1VJRV9PTikgcmV0dXJucyB3aXRoIHNvbWUgCi1FSU5WQUwgb3IgLUVOT1RTVVBQIHZh
bHVlLgoKSSdtIG5vdCBzdXJlIGlmIGh3Y2xvY2sgbmVlZHMgdGhlIHRyaWdnZXIgZm9yIHByZWNp
c2lvbiByZWFzb25zOgoKaHR0cHM6Ly9naXRodWIuY29tL2thcmVsemFrL3V0aWwtbGludXgvYmxv
Yi9tYXN0ZXIvc3lzLXV0aWxzL2h3Y2xvY2suYyNMMjc2CgouLi4gb3IgaWYgdGhpcyBjYW4gYmUg
b21pdHRlZC4KCj4+IFdpbGwgZmlsZSBhIERlYmlhbiBidWcgZm9yIGl0IC4uLgo+IAo+IE5vdCBz
dXJlIHRoaXMgd2lsbCBoYXZlIHN1Y2Nlc3MuIFRoZXNlIHdlcmUgc3dpdGNoZWQgZnJvbSA9eSB0
byA9bQo+IGJlY2F1c2UgdGhlIGtlcm5lbCBpbWFnZXMgZ290IHRvIGJpZy4KPiAoaHR0cHM6Ly9z
YWxzYS5kZWJpYW4ub3JnL2tlcm5lbC10ZWFtL2xpbnV4L2NvbW1pdC9jNTUwNDNhNDNlYWFjYjlm
ODc2ZGFiZDcxMjczYjA4NGNiMDI0NDQxKQoKVG9vIGxhdGUgOy0pCkkgd2lsbCBqdXN0IHdhaXQg
Zm9yIHRoZSBhbnN3ZXIuCgpCZXN0IHJlZ2FyZHMsCk9saXZlcgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
