Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54367103C82
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AX+LuUayQUEgonsV8bQehJ8dKyyVwxgHkmNT6SMuVY=; b=ReIVtBUKiE/GX3
	3sT8H7c16l7LxaDsT5bfWqRepp8IfiteMXj5YjCV/dQ7GtD3yMonWKF9XlAlDLypDwLqCKjIzBaZM
	dX8SKb2hGorBTBntaTuBTMRNS2Zvym/2L+vvWTiqGmhMFlNUctG02k+obS6AzpZqalKuml7oHSFMC
	NEyAZlcs64jqCehdBbRUvrJZuL7usxpancQexKtrKT5KttA+3Vz5Tg+tQB7KAT+zITmqanoHJj8/0
	jr7CKdZdxnLdNx/nGDJ/+7QOeh1kIclptdugTMB4e0SiimKpdOBvY+SNDw2qQFh8LSAxm+HLsvBfE
	zXg+gXIn5UT+5/b9xrAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQIz-0000R8-6C; Wed, 20 Nov 2019 13:46:01 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQIn-0000Q0-KA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 13:45:51 +0000
Received: by mail-il1-x141.google.com with SMTP id d83so23428784ilk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 05:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CgtC9U1pFRMoXuEqIqpJlmsw3VQlHrD4MMxLF0Vx8xg=;
 b=f9v0k+tmuEKwj5AFNUmMvv40wkogZJAKmCuPbUcRSyVSro9EOqDDGQUbGbNnFxuafy
 M8+nR8SfAxXQSWe5lkbuIRV42ZNm0BUahg5Pa7RSMFMqj4aT1Prn3NpFgDUDOxzOIBz2
 S4kZCLvmzc+qOhteX9wJjgzlrGNGsYocmCcus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CgtC9U1pFRMoXuEqIqpJlmsw3VQlHrD4MMxLF0Vx8xg=;
 b=LenAFjar5siiPR+4PuKisqUX9hM9ouWlt8myj5mYWwImM55kZHG9UCvU39dzgJwVa/
 B7DZYGvWsGWuV58EaLIm3xPYHZ3XCjyW3ML1qJ2Eb6b8N00d163J2jZUEw24rsXiMhIq
 UFDPYjvB/nK/Bq2+yNhnq8pnQcosuCnmLOiFP2iiXLYf8hHhAe7yvKt1KGvMIKO8gvX/
 V9b0pq35sfHEZktEWyZbPaxNyvrJCMUAnZq4wWwtbxf5XPSsmfG60+SaR+uPIotUGkMV
 2LE9DvXxltmsL4xsuDgAt04HeYYbl5ipgcWKHeeMVzBbEFGn95GpAMXiSPpUmLBwOUUE
 nLcg==
X-Gm-Message-State: APjAAAUeBOMB2LdmTUr1hif+V6FtEbWQ3cBE4+F3Y6jGD2IaEn++DT1J
 mbuOx7lQBVLe9PoBeFvmLumhBhPTPJ9zpgt7auWtUg==
X-Google-Smtp-Source: APXvYqw3MjUmdfjEYcoiBovAQmlP74ZDtmiuO4AZQCwKvD8ckXU62L4h/ai9eP9F51LEWbRnEd7dIEmZ63LdAHGL5Ac=
X-Received: by 2002:a92:5d8f:: with SMTP id e15mr3572412ilg.173.1574257548126; 
 Wed, 20 Nov 2019 05:45:48 -0800 (PST)
MIME-Version: 1.0
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <20191120113923.11685-5-jagan@amarulasolutions.com> <5644395.EDGZVd1YuU@diego>
In-Reply-To: <5644395.EDGZVd1YuU@diego>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 20 Nov 2019 19:15:35 +0530
Message-ID: <CAMty3ZA+p2pWokLrwnkv6_q0G8d76AntE5Kar4JN8MN48O9VSw@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: dts: rockchip: Add Radxa Carrier board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_054550_502833_021BCA91 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Tom Cubie <tom@radxa.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCA2OjU1IFBNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgSmFnYW4sCj4KPiBBbSBNaXR0d29jaCwg
MjAuIE5vdmVtYmVyIDIwMTksIDEyOjM5OjIyIENFVCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiBD
YXJyaWVyIGJvYXJkIG9mdGVuIHJlZmVycmVkIGFzIGJhc2Vib2FyZC4gRm9yIG1ha2luZwo+ID4g
Y29tcGxldGUgU0JDLCB0aGUgYXNzb2NpYXRlZCBTT00gd2lsbCBtb3VudCBvbiB0b3Agb2YKPiA+
IHRoaXMgY2FycmllciBib2FyZC4KPiA+Cj4gPiBSYWR4YSBoYXMgYSBjYXJyaWVyIGJvYXJkIHdo
aWNoIHN1cHBvcnRzIG9uIGJvYXJkCj4gPiBwZXJpcGhlcmFscywgcG9ydHMgbGlrZSBVU0ItMi4w
LCBVU0ItMy4wLCBIRE1JLCBNSVBJIERTSS9DU0ksCj4gPiBlRFAsIEV0aGVybmV0LCBQQ0llLCBV
U0ItQywgNDAtUGluIEdQSU8gaGVhZGVyIGFuZCBldGMuCj4gPgo+ID4gQ3VycmVudGx5IHRoaXMg
Y2FycmllciBib2FyZCBjYW4gYmUgdXNlZCB0b2dldGhlciB3aXRoCj4gPiBWTUFSQyBSSzMzOTlQ
b3IgU09NIGZvciBtYWtpbmcgUm9jayBQSSBOMTAgU0JDLgo+ID4KPiA+IFNvIGFkZCB0aGlzIGNh
cnJpZXIgYm9hcmQgZHRzaSBhcyBhIHNlcGFyYXRlIGZpbGUgaW4KPiA+IEFSTSBkaXJlY3Rvcnks
IHNvLXRoYXQgdGhlIHNhbWUgY2FuIHJldXNlIGl0IGluIGJvdGgKPiA+IGFybTMyIGFuZCBhcm02
NCB2YXJpYW50cyBvZiBSb2NrY2hpcCBTT01zLgo+Cj4gRG8geW91IHJlYWxseSB0aGluayBzb21l
b25lIHdpbGwgY3JlYXRlIGFuIGFybTMyIHNvYyB1c2luZyB0aGF0Cj4gY2FycmllciBib2FyZD8K
Clllcywgd2UgaGF2ZSBSb2NrIFBpIE44IHdoaWNoIGlzIHVzaW5nIHNhbWUgY2FycmllciBib2Fy
ZCBkZXNpZ24gd2l0aAooKyBleHRlcm5hbCBjb2RlYykgb24gdG9wIG9mIFJLMzI4OCBTT00uIEkg
ZGlkbid0IG1lbnRpb25lZCBvbiB0aGUKY29tbWl0IG1lc3NhZ2Ugc2luY2UgcmFkeGEgZG9lc24n
dCBvZmZpY2lhbGx5IGFubm91bmNlZCBvbiB0aGUKd2Vic2l0ZS4KCj4KPiBTaW1pbGFybHkgc28g
ZmFyIEkgZG9uJ3QgdGhpbmsgd2UgaGF2ZW4ndCBldmVuIHNlZW4gYSBsb3Qgb2YgcmV1c2UKPiBv
ZiBleGlzdGluZyBjYXJyaWVyIGJvYXJkcyBhdCBhbGwsIG90aGVyIHRoYW4gdGhlaXIgaW5pdGlh
bCBjb21iaW5hdGlvbi4KPgo+IFNvIG1heWJlIGp1c3QgaGF2aW5nIHRoZSBjb250ZW50IG9mIHlv
dXIKPiAgICAgICAgIHJvY2tjaGlwLXJhZHhhLWNhcnJpZXJib2FyZC5kdHNpCj4gaW4KPiAgICAg
ICAgIHJvY2tjaGlwL3JrMzM5OXByby1yb2NrLXBpLW4xMC5kdHMKPiBmcm9tIHBhdGNoIDUgbWln
aHQgYmUgYSBiZXR0ZXIgc3RhcnQgLSBhdCBsZWFzdCB1bnRpbCB0aGVyZSBpcyBhbnkKPiBmdXJ0
aGVyIHVzYWdlIC0gaWYgYXQgYWxsPwoKQnV0LCB0aGlzIHBhcnRpY3VsYXIgZGVzaWduIGhhcyBw
cm9wZXIgdXNlIGNhc2UuCjEuIHJrMzM5OXBybyBTT00gKyBjYXJyaWVyIGJvYXJkIChSb2NrIFBp
IE4xMCkKMi4gcmszMjg4IFNPTSArIGNhcnJpZXIgYm9hcmQgKFJvY2sgUGkgTjgpCgo+Cj4gQWxz
byByb2NrY2hpcC1yYWR4YS1jYXJyaWVyYm9hcmQgbWlnaHQgZXZlbiBiZSBvdmVybHkgZ2VuZXJp
Ywo+IGFzIHRoZXJlIG1heSBiZSBtdWx0aXBsZSBjYXJyaWVyYm9hcmRzIGZyb20gUmFkeGEgbGF0
ZXIgb24uCgpJJ20gc2xpZ2h0bHkgZGlzYWdyZWUgb2YgaGF2aW5nIG92ZXJsYXkgaGVyZSwgc2lu
Y2UgdGhlc2UgYXJlIGZpeGVkCmRlc2lnbiBjb21iaW5hdGlvbnMuIHdoZXJlIFNPTSB3aXRoIHJl
c3BlY3RpdmUgY2FycmllciBib2FyZCBpcwptYW5kYXRvcnkgdG8gbWFrZSBmaW5hbCBib2FyZC4g
VW5kZXJzdGFuZCB0aGF0IHdlIGNhbiBoYXZlIGEKbWFpbnRlbmFuY2Ugb3Zlci1haGVhZCBpZiB3
ZSBoYXZlIG11bHRpcGxlIGNhcnJpZXIgYm9hcmRzLCBidXQgcmlnaHQKbm93IHJhZHhhIGhhcyBv
bmx5IG9uZSBjYXJyaWVyIGJvYXJkIHdpdGggMiBzZXRzIG9mIFNPTSdzIGNvbWJpbmF0aW9ucwp0
aGF0IGluZGVlZCBmaXQgbGlrZSBhIGRldiBib2FyZCwgc28gdGhlcmUgaXMgdW51c2VkIGNhcnJp
ZXIgYm9hcmQuCgpKYWdhbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
