Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989E1A548B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDSEHsQdqRjmSF4D9klU1WjkcFBF2kV7GRy1ZCYtfTw=; b=GIPfaxo/KBoLFf
	c6iFxASUUMwh9eORc8d6DVw/slGItrDSzFnEkBMDYkiCsCmNHC7Y3tIXheSDXlWjwU91aEHYf2dZO
	1yqKAxsF+OlJ0BybAuK6KShTCeneG6AMTddB+zslddiQCkkKMI3kI+FVBNsLzW0OlrOu/3464iJE2
	vapZwLsg3nYwskQRPYOJcTo/3HdN3uyhVbbiT/ekuKhq9s2JLGZ00laMeAb8vGaD2hYKKVpa4kiOg
	jlX5BKO9Twh2ty+42fL6Q+TVPfRL6lIiY3MQXxquPzIemRUZK/Px6IcoZoM2zMwHPUw1O8PjAPQQB
	BNNyv8FxVtsVJkmNqRlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4k2h-0003oP-2y; Mon, 02 Sep 2019 10:58:39 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4k2T-0003no-O1
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1567421896; bh=0+YtJ5mB5rWakjDiMfZibOLsuS/yEq29XZ5qfNzcLuU=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=ZbXSnUMVfg4rtkOpS+y5AV70FlL40OX7C2yA4xkApWMjPmylOteNvAaflG151OGc6
 tKkEvcYvWlHD7DXmQqkU8jrSlXCGt5jIyUHDsmX+1pGoVjQ6Gx+M0dxSdNxKgSE+6H
 3qfcFDTOsr6b01Q30YlcLFrpquM4afSkHVZkBWno=
Date: Mon, 2 Sep 2019 12:58:16 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v5 00/18] add thermal driver for h6
Message-ID: <20190902105816.zurkkh2vjfexft7t@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Yangtao Li <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, wens@csie.org, mchehab+samsung@kernel.org,
 davem@davemloft.net, gregkh@linuxfoundation.org,
 Jonathan.Cameron@huawei.com, nicolas.ferre@microchip.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190901215214.f4vbxemdd7mf3gun@core.my.home>
 <20190902072735.zkrueocyz4glc26n@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902072735.zkrueocyz4glc26n@flea>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_035825_953233_888BD644 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>, gregkh@linuxfoundation.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 wens@csie.org, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 mchehab+samsung@kernel.org, rui.zhang@intel.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gTWF4aW1lLAoKT24gTW9uLCBTZXAgMDIsIDIwMTkgYXQgMDk6Mjc6MzVBTSArMDIwMCwg
TWF4aW1lIFJpcGFyZCB3cm90ZToKPiBIaSwKPiAKPiBPbiBTdW4sIFNlcCAwMSwgMjAxOSBhdCAx
MTo1MjoxNFBNICswMjAwLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiA+IEhlbGxvIFlhbmd0YW8s
Cj4gPgo+ID4gT24gU2F0LCBBdWcgMTAsIDIwMTkgYXQgMDU6Mjg6MTFBTSArMDAwMCwgWWFuZ3Rh
byBMaSB3cm90ZToKPiA+ID4gVGhpcyBwYXRjaHNldCBhZGQgc3VwcG9ydCBmb3IgQTY0LCBIMywg
SDUsIEg2IGFuZCBSNDAgdGhlcm1hbCBzZW5zb3IuCj4gPiA+Cj4gPiA+IFRoeCB0byBJY2Vub3d5
IGFuZCBWYXNpbHkuCj4gPiA+Cj4gPiA+IEJUWSwgZG8gYSBjbGVhbnVwIGluIHRoZXJtYWwgbWFr
ZmlsZS4KPiA+Cj4gPiBJJ3ZlIGFkZGVkIHN1cHBvcnQgZm9yIEE4M1QgYW5kIGFsc28gc29tZSBj
bGVhbnVwcywgYWNjb3JkaW5nIHRvIG15Cj4gPiBmZWVkYmFjazoKPiA+Cj4gPiBodHRwczovL21l
Z291cy5jb20vZ2l0L2xpbnV4L2xvZy8/aD10aHMtNS4zCj4gPgo+ID4gRmVlbCBmcmVlIHRvIHBp
Y2sgdXAgd2hhdGV2ZXIgeW91IGxpa2UgZnJvbSB0aGF0IHRyZWUuCj4gPgo+ID4gRm9yIG90aGVy
cywgdGhlcmUgYXJlIGFsc28gRFRTIHBhdGNoZXMgaW4gdGhhdCB0cmVlIGZvciBIMywgSDUsIEE4
M1QsIGFuZCBINiwgc28KPiA+IHRoYXQgc2hvdWwgbWFrZSB0ZXN0aW5nIG9mIHRoaXMgZHJpdmVy
IGVhc2llci4KPiAKPiBJJ20gbm90IGNvbnZpbmNlZCB0aGF0IGFsd2F5cyBleHBhbmRpbmcgdGhl
IG51bWJlciBvZiBTb0Mgc3VwcG9ydGVkIGlzCj4gdGhlIGJlc3Qgc3RyYXRlZ3kgdG8gZ2V0IHRo
aXMgbWVyZ2VkLiBVc3VhbGx5LCBrZWVwaW5nIHRoZSBzYW1lCj4gZmVhdHVyZSBzZXQgYWNyb3Nz
IHZlcnNpb24sIGNvbnNvbGlkYXRpbmcgdGhhdCwgYW5kIHRoZW4gb25jZSBpdCdzIGluCj4gc2Vu
ZGluZyB0aGUgbmV3IFNvQyBzdXBwb3J0IHdvcmtzIGJlc3QuCgpUaGF0J3MgZmluZSBhbmQgYWxs
LCBidXQgSSd2ZSBtb3N0bHkgYWRkZWQgRFQgZGVzY3JpcHRpb25zIGZvciBhbHJlYWR5IHN1cHBv
cnRlZApTb0NzIGFuZCBmaXhlZCBidWdzIGluIHRoZSBkcml2ZXIsIHNvIHRoYXQgcGVvcGxlIGNh
biBhY3R1YWxseSB0ZXN0IHRoZSBleGlzdGluZwpkcml2ZXIuCgpJIHRoaW5rIGFkZGluZyBEVCBj
aGFuZ2VzIHdpbGwgYWN0dWFsbHkgaGVscCBnZXQgbmVlZGVkIGV4cG9zdXJlIGZvciB0aGlzCnBh
dGNoIHNlcmllcy4KCkE4M1Qgc3VwcG9ydCB0aGF0IEkgYWRkZWQsIHdhcyBhY3R1YWxseSBqdXN0
IGEgc21hbGwgY2hhbmdlIHRvIHRoZSBkcml2ZXIuCgpyZWdhcmRzLAoJby4KCj4gTWF4aW1lCj4g
Cj4gLS0KPiBNYXhpbWUgUmlwYXJkLCBCb290bGluCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5l
bCBlbmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5jb20KPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
