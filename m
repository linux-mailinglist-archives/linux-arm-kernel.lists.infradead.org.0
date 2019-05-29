Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5648B2D720
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsKNjnS8hu/2st2Eky2D0qdHuWPoUtbaA3q/ULP5+UI=; b=ZmGSZv8Ji8CRqk
	vIQIu7p+LR9NHUpA4Lm7HnIyTsKwu6ke1BvyXBzgrJc7y5GLffECFVNg3iURysbS1JI2KYHsHCc2l
	UAxwqVjSmDfZcXv56Bk4dSSHY1ihzACoQkkE/Ld99MyZoOxubF4bAj0THc2qtKPuI9jAQCBzaxlcL
	rpcfo3vXZus1tpo98KzoQSX0OaRYxFfzOVC3VTJNrEZiCMYXGYpKyuNAww5SD8myuO8+gfOfv/SBf
	WUJ7MuTSXAy2TtIDY26ggj1WKT1toOTwjLPFOP5SOhXiXv6vVlFGiCLIVL7eShjCBdpNSz4sLBKpS
	0N21jXOKERnVL28gLtpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtRM-0005z6-6L; Wed, 29 May 2019 07:56:04 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtRF-0005yk-44
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:55:58 +0000
Received: by mail-yb1-xb44.google.com with SMTP id p8so432483ybo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 00:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Osn05iDZ9YCFVG1ZvG0QdOmP+zixCsnWvYuWdS++NU4=;
 b=iMD9Kwq2WvoN0BcWVK6saJsnqWZYziNtKrS/SyqMm0kUw/ROxdkvC9WZOr+bZWORMc
 uV0m//OEWkL4DLgIlHxt8upkxIiLVegk2oDhicTK/pXirfj/dY9NB+Odeb5jDVO6MuuY
 A2+Lh/z4sOvFaaOuf4TqINSk1EHCy17ANuw1HF6TBX0R4r4GNJcC/q2QJZlygfQkMGRO
 +A8o2ufbM2pnECngH4NJIbAhqUwWJiRCE3n0sF7IPzt5GArm5hVuSzNnwVw7cvY9RV0w
 EF+N/vRHL/2I1nbzpo+aO5le/c8GtrVtsmR6RCEH5Bo5MZZCDplfUu2ksRdfYB1HySLP
 EvCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Osn05iDZ9YCFVG1ZvG0QdOmP+zixCsnWvYuWdS++NU4=;
 b=BAs1Uf6cxrYLmkEfL6wP700saKV4MCIj/fHGaV8K5RHYsSSR97tZZnaxv0XstLvMAS
 6KJPe8yylzuG6rfz3CjmC8uFDbbERMUds9O/vW7Hz2eHEPNsjEiXbgZVhWdmN/31Dx4x
 n6KoWH+tfFRkgkU8DXWt5is6lKtCH5Btdc7gHifmMfinpo+/JAP/PnjpAbT62EW7l03r
 cOYSTcEnu+nYP7Cy6mlifytTCQqbqFb3sgp4p7CtxPLmEVuazjHmaL6uDK7ZTPQLhlkV
 CTIaMfqg8FPOx4PsXbPCmqIRz0nmo9tOKZ4aEl2/5k4D8uEogdPtwrrQCque4t6oOeyP
 D5mw==
X-Gm-Message-State: APjAAAXO4DFJ4yXaSXPAQOpQzMgvg/qTgEduOSzFgbTDuiudrVZReKAS
 SpNXsFVb3N5cHvMs92n+O8+LThCIPljlDKi16NM=
X-Google-Smtp-Source: APXvYqyGJzi6yznBfh/xZBx33+jcZ1K80IstRlOacxmR/ZeKXYZ51BBwHuo38owcJrO9U70Ny2c0AFM9ulI8unoKmrs=
X-Received: by 2002:a25:340e:: with SMTP id b14mr20130906yba.82.1559116554895; 
 Wed, 29 May 2019 00:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190527134805.j7t4ffstrnhdml47@core.my.home>
 <CAJiuCcdnQa0TArduT4yBbUyd+dOaM0cQ1JcRUQLXLR6s_5e8sA@mail.gmail.com>
 <20190527163117.hpealt6cttqzqdxz@core.my.home>
 <20190527172337.5qxh5qeqnul55gsb@core.my.home>
 <CAJiuCccnRCqez2uG-pU8XY4Z=5S8rDwFB3rgsBovPHY1Uxyazw@mail.gmail.com>
 <20190527193016.yxngu5grsqnctx3z@core.my.home>
 <20190527195330.pugb7ypvnyv32fug@core.my.home>
 <CAJiuCccpnEqw_tGXST+WtGmZLbE+=wN1Hn9HKrk1+4WsW-abiA@mail.gmail.com>
 <20190528180447.zlrdfmn73fntnf4n@core.my.home>
 <20190529071945.mrbgurcvl2jvpm5r@flea>
In-Reply-To: <20190529071945.mrbgurcvl2jvpm5r@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 29 May 2019 09:55:43 +0200
Message-ID: <CAJiuCcdAnwOO=uexmUMM2qSomxgOHfa432d-KxX-N7Jg+Ekipg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2 00/10] Allwinner A64/H6 IR support
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_005557_192664_DF2A867A 
X-CRM114-Status: GOOD (  40.18  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIDI5IE1heSAyMDE5IGF0IDA5OjE5LCBNYXhpbWUgUmlwYXJkIDxtYXhpbWUu
cmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWF5IDI4LCAyMDE5IGF0IDA4
OjA0OjQ3UE0gKzAyMDAsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+ID4gSGVsbG8gQ2zDqW1lbnQs
Cj4gPgo+ID4gT24gVHVlLCBNYXkgMjgsIDIwMTkgYXQgMDY6MjE6MTlQTSArMDIwMCwgQ2zDqW1l
bnQgUMOpcm9uIHdyb3RlOgo+ID4gPiBIaSBPbmTFmWVqLAo+ID4gPgo+ID4gPiBPbiBNb24sIDI3
IE1heSAyMDE5IGF0IDIxOjUzLCAnT25kxZllaiBKaXJtYW4nIHZpYSBsaW51eC1zdW54aQo+ID4g
PiA8bGludXgtc3VueGlAZ29vZ2xlZ3JvdXBzLmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBI
aSBDbMOpbWVudCwKPiA+ID4gPgo+ID4gPiA+IE9uIE1vbiwgTWF5IDI3LCAyMDE5IGF0IDA5OjMw
OjE2UE0gKzAyMDAsIHZlcmVqbmEgd3JvdGU6Cj4gPiA+ID4gPiBIaSBDbMOpbWVudCwKPiA+ID4g
PiA+Cj4gPiA+ID4gPiBPbiBNb24sIE1heSAyNywgMjAxOSBhdCAwODo0OTo1OVBNICswMjAwLCBD
bMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+ID4gPiA+IEhpIE9uZHJlaiwKPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEknbSB0ZXN0aW5nIG9uIE9yYW5nZSBQaSAzLgo+
ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gV2l0aCB5b3VyIHBhdGNoZXMsIEkgZ2V0IGtlcm5l
bCBsb2NrdXAgYWZ0ZXIgfjEgbWludXRlIG9mIHVzZSAoc3NoIHN0b3BzCj4gPiA+ID4gPiA+ID4g
cmVzcG9uZGluZy9zZXJpYWwgY29uc29sZSBzdG9wcyByZXNwb25kaW5nKS4gSSBkb24ndCBoYXZl
IFJDIGNvbnRyb2xsZXIgdG8gdGVzdAo+ID4gPiA+ID4gPiA+IHRoZSBDSVIuIEJ1dCBqdXN0IGVu
YWJsaW5nIHRoZSBDSVIgY2F1c2VzIGtlcm5lbCB0byBoYW5nIHNob3J0bHkgYWZ0ZXIgYm9vdC4K
PiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEkgdHJpZWQgYm9vdGluZyBtdWx0aXBsZSB0aW1l
cy4gT3RoZXIgcmVzdWx0czoKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IGJvb3QgMjoKPiA+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IC0gc3NoIGhhbmdzIGV2ZW4gYmVmb3JlIGNvbm5lY3Rp
bmcgKGV0aGVybmV0IGNyYXNoZXMvaXMgcmVzZXQpCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
PiBJTkZPOiByY3Vfc2NoZWQgZGV0ZWN0ZWQgc3RhbGxzIG9uIENQVXMvdGFza3M6Cj4gPiA+ID4g
PiA+ID4gcmN1OiAgICAwLS4uLi46ICgxIEdQcyBiZWhpbmQpIGlkbGU9NjRhLzAvMHgzIHNvZnRp
cnE9NDA5MS80MDkxIGZxcz0yNDM3Cj4gPiA+ID4gPiA+ID4gZHdtYWMtc3VuOGkgNTAyMDAwMC5l
dGhlcm5ldCBldGgwOiBSZXNldCBhZGFwdGVyLgo+ID4gPiA+ID4gPiA+IHJjdTogSU5GTzogcmN1
X3NjaGVkIGRldGVjdGVkIGV4cGVkaXRlZCBzdGFsbHMgb24gQ1BVcy90YXNrczogeyAwLS4uLiB9
IDU2OTYgamlmZmllcyBzOiA4MSByb290OiAweDEvLgo+ID4gPiA+ID4gPiA+IHJjdTogYmxvY2tp
bmcgcmN1X25vZGUgc3RydWN0dXJlczoKPiA+ID4gPiA+ID4gPiAgcmN1OiBJTkZPOiByY3Vfc2No
ZWQgZGV0ZWN0ZWQgc3RhbGxzIG9uIENQVXMvdGFza3M6Cj4gPiA+ID4gPiA+ID4gcmN1OiAgICAw
LS4uLi46ICgxIEdQcyBiZWhpbmQpIGlkbGU9NjRhLzAvMHgzIHNvZnRpcnE9NDA5MS80MDkxIGZx
cz05NzE0Cj4gPiA+ID4gPiA+ID4gcmN1OiBJTkZPOiByY3Vfc2NoZWQgZGV0ZWN0ZWQgZXhwZWRp
dGVkIHN0YWxscyBvbiBDUFVzL3Rhc2tzOiB7IDAtLi4uIH0gMjE1NjggamlmZmllcyBzOiA4MSBy
b290OiAweDEvLgo+ID4gPiA+ID4gPiA+IHJjdTogYmxvY2tpbmcgcmN1X25vZGUgc3RydWN0dXJl
czoKPiA+ID4gPiA+ID4gPiByY3U6IElORk86IHJjdV9zY2hlZCBkZXRlY3RlZCBzdGFsbHMgb24g
Q1BVcy90YXNrczoKPiA+ID4gPiA+ID4gPiByY3U6ICAgIDAtLi4uLjogKDEgR1BzIGJlaGluZCkg
aWRsZT02NGEvMC8weDMgc29mdGlycT00MDkxLzQwOTEgZnFzPTE3MjAzCj4gPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiBhYm92ZSBtZXNzYWdlcyBhcHBlYXIgcmVndWxhcmx5Lgo+ID4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+ID4gYm9vdCAzOgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gcmN1
OiBJTkZPOiByY3Vfc2NoZWQgZGV0ZWN0ZWQgc3RhbGxzIG9uIENQVXMvdGFza3M6Cj4gPiA+ID4g
PiA+ID4gcmN1OiAgICAwLS4uLi46ICg5IEdQcyBiZWhpbmQpIGlkbGU9OTkyLzAvMHgzIHNvZnRp
cnE9NjEyMy82MTIzIGZxcz0yNjAwCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+IFNvbWV0aW1lcyBzZXJpYWwgY29uc29sZSBrZWVwcyB3b3JraW5nLiBTb21ldGltZXMg
aXQgbG9ja3MgdXAgdG9vIChidXQgbm90Cj4gPiA+ID4gPiA+ID4gZnJlcXVlbnRseSkuIFN0b3Jh
Z2UgbG9ja3MgdXAgYWx3YXlzIChhbnkgcHJvZ3JhbSB0aGF0IHdhcyBub3QgcnVuIGJlZm9yZQo+
ID4gPiA+ID4gPiA+IHRoZSBjcmFzaCBjYW4ndCBiZSBzdGFydGVkIGFuZCBsb2NrIHVwIHRoZSBr
ZXJuZWwgaGFyZCwgcHJvZ3JhbXMgdGhhdAo+ID4gPiA+ID4gPiA+IHdlcmUgZXhlY3V0ZWQgcHJp
b3IsIGNhbiBiZSBydW4gYWdhaW4pLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiBFeGFjdGx5IHRoZSBzYW1lIGtlcm5lbCBidWlsZCBvbiBINSBzZWVtcyB0byB3b3Jr
IChvciBhdCBsZWFzdCBJIHdhcyBub3QgYWJsZSB0bwo+ID4gPiA+ID4gPiA+IHRyaWdnZXIgdGhl
IGNyYXNoKS4gU28gdGhpcyBzZWVtcyB0byBiZSBsaW1pdGVkIHRvIEg2IGZvciBub3cuCj4gPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBJIHN1c3BlY3QgdGhhdCB0aGUgY3Jhc2ggb2NjdXJzIHNv
b25lciBpZiBJIHZhcnkgdGhlIGxpZ2h0ICh0dXJuIG9uL29mZiB0aGUgdGFibGUKPiA+ID4gPiA+
ID4gPiBsYW1wIGxpZ2h0KS4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IFdpdGhvdXQgeW91
ciBwYXRjaGVzLCBldmVyeXRoaW5nIHdvcmtzIGZpbmUgb24gSDYsIGFuZCBJIG5ldmVyIHNlZQo+
ID4gPiA+ID4gPiA+IGNyYXNoZXMvbG9ja3Vwcy4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+
IEkgdGlyZWQgcGh5c2ljYWxseSBjb3ZlcmluZyB0aGUgSVIgcmVjZWl2ZXIsIGFuZCB0aGF0IGhl
bHBzIHByZXZlbnRpbmcgdGhlCj4gPiA+ID4gPiA+ID4gY3Jhc2guIEFzIHNvb24gYXMgSSB1bmNv
dmVyIGl0LCB0aGUgY3Jhc2ggaGFwcGVucyBhZ2FpbiBpbiAxcyBvciBzbzoKPiA+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiA+IHJjdTogSU5GTzogcmN1X3NjaGVkIGRldGVjdGVkIHN0YWxscyBvbiBD
UFVzL3Rhc2tzOgo+ID4gPiA+ID4gPiA+IHJjdTogICAgMC0uLi4uOiAoMSBHUHMgYmVoaW5kKSBp
ZGxlPTRlYS8wLzB4MyBzb2Z0aXJxPTQ0ODMvNDQ4NCBmcXM9MjQ0NAo+ID4gPiA+ID4gPiA+IHJj
dTogSU5GTzogcmN1X3NjaGVkIGRldGVjdGVkIHN0YWxscyBvbiBDUFVzL3Rhc2tzOgo+ID4gPiA+
ID4gPiA+IHJjdTogICAgMC0uLi4uOiAoMSBHUHMgYmVoaW5kKSBpZGxlPTRlYS8wLzB4MyBzb2Z0
aXJxPTQ0ODMvNDQ4NCBmcXM9OTc3Nwo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gVGhpcyB0
aW1lIEkgZ290IHRoZSBodW5nIHRhc2sgYW5kIHJlYm9vdDogKHByb2JhYmx5IG5vdCBkaXJlY3Rs
eSByZWxhdGVkKQo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gSU5GTzogdGFzayBmaW5kOjU2
MCBibG9ja2VkIGZvciBtb3JlIHRoYW4gMTIwIHNlY29uZHMuCj4gPiA+ID4gPiA+ID4gICAgICAg
Tm90IHRhaW50ZWQgNS4yLjAtcmMyKyAjNwo+ID4gPiA+ID4gPiA+ICJlY2hvIDAgPiAvcHJvYy9z
eXMva2VybmVsL2h1bmdfdGFza190aW1lb3V0X3NlY3MiIGRpc2FibGVzIHRoaXMgbWVzc2FnZS4K
PiA+ID4gPiA+ID4gPiBmaW5kICAgICAgICAgICAgRCAgICAwICAgNTYwICAgIDU1MSAweDAwMDAw
MDAwCj4gPiA+ID4gPiA+ID4gQ2FsbCB0cmFjZToKPiA+ID4gPiA+ID4gPiAgX19zd2l0Y2hfdG8r
MHg2Yy8weDkwCj4gPiA+ID4gPiA+ID4gIF9fc2NoZWR1bGUrMHgxZjQvMHg1NzgKPiA+ID4gPiA+
ID4gPiAgc2NoZWR1bGUrMHgyOC8weGE4Cj4gPiA+ID4gPiA+ID4gIGlvX3NjaGVkdWxlKzB4MTgv
MHgzOAo+ID4gPiA+ID4gPiA+ICBfX2xvY2tfcGFnZSsweDEyYy8weDIwOAo+ID4gPiA+ID4gPiA+
ICBwYWdlY2FjaGVfZ2V0X3BhZ2UrMHgyMzgvMHgyZTgKPiA+ID4gPiA+ID4gPiAgX19nZXRfbm9k
ZV9wYWdlKzB4NmMvMHgzMTAKPiA+ID4gPiA+ID4gPiAgZjJmc19nZXRfbm9kZV9wYWdlKzB4MTQv
MHgyMAo+ID4gPiA+ID4gPiA+ICBmMmZzX2lnZXQrMHg3MC8weGM2MAo+ID4gPiA+ID4gPiA+ICBm
MmZzX2xvb2t1cCsweGNjLzB4MjE4Cj4gPiA+ID4gPiA+ID4gIF9fbG9va3VwX3Nsb3crMHg3OC8w
eDE2MAo+ID4gPiA+ID4gPiA+ICBsb29rdXBfc2xvdysweDNjLzB4NjAKPiA+ID4gPiA+ID4gPiAg
d2Fsa19jb21wb25lbnQrMHgxZTQvMHgyZTAKPiA+ID4gPiA+ID4gPiAgcGF0aF9sb29rdXBhdC5p
c3JhLjEzKzB4NWMvMHgxZTAKPiA+ID4gPiA+ID4gPiAgZmlsZW5hbWVfbG9va3VwLnBhcnQuMjMr
MHg2Yy8weGU4Cj4gPiA+ID4gPiA+ID4gIHVzZXJfcGF0aF9hdF9lbXB0eSsweDRjLzB4NjAKPiA+
ID4gPiA+ID4gPiAgdmZzX3N0YXR4KzB4NzgvMHhkOAo+ID4gPiA+ID4gPiA+ICBfX3NlX3N5c19u
ZXdmc3RhdGF0KzB4MjQvMHg0OAo+ID4gPiA+ID4gPiA+ICBfX2FybTY0X3N5c19uZXdmc3RhdGF0
KzB4MTgvMHgyMAo+ID4gPiA+ID4gPiA+ICBlbDBfc3ZjX2hhbmRsZXIrMHg5Yy8weDE3MAo+ID4g
PiA+ID4gPiA+ICBlbDBfc3ZjKzB4OC8weGMKPiA+ID4gPiA+ID4gPiBLZXJuZWwgcGFuaWMgLSBu
b3Qgc3luY2luZzogaHVuZ190YXNrOiBibG9ja2VkIHRhc2tzCj4gPiA+ID4gPiA+ID4gQ1BVOiAx
IFBJRDogMzQgQ29tbToga2h1bmd0YXNrZCBOb3QgdGFpbnRlZCA1LjIuMC1yYzIrICM3Cj4gPiA+
ID4gPiA+ID4gSGFyZHdhcmUgbmFtZTogT3JhbmdlUGkgMyAoRFQpCj4gPiA+ID4gPiA+ID4gQ2Fs
bCB0cmFjZToKPiA+ID4gPiA+ID4gPiAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4ZjgKPiA+ID4gPiA+
ID4gPiAgc2hvd19zdGFjaysweDE0LzB4MjAKPiA+ID4gPiA+ID4gPiAgZHVtcF9zdGFjaysweGE4
LzB4Y2MKPiA+ID4gPiA+ID4gPiAgcGFuaWMrMHgxMjQvMHgyZGMKPiA+ID4gPiA+ID4gPiAgcHJv
Y19kb2h1bmdfdGFza190aW1lb3V0X3NlY3MrMHgwLzB4NDAKPiA+ID4gPiA+ID4gPiAga3RocmVh
ZCsweDEyMC8weDEyOAo+ID4gPiA+ID4gPiA+ICByZXRfZnJvbV9mb3JrKzB4MTAvMHgxOAo+ID4g
PiA+ID4gPiA+IFNNUDogc3RvcHBpbmcgc2Vjb25kYXJ5IENQVXMKPiA+ID4gPiA+ID4gPiBLZXJu
ZWwgT2Zmc2V0OiBkaXNhYmxlZAo+ID4gPiA+ID4gPiA+IENQVSBmZWF0dXJlczogMHgwMDAyLDIw
MDAyMDAwCj4gPiA+ID4gPiA+ID4gTWVtb3J5IExpbWl0OiBub25lCj4gPiA+ID4gPiA+ID4gUmVi
b290aW5nIGluIDMgc2Vjb25kcy4uCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+IE1lYW53aGlsZSBINSBiYXNlZCBib2FyZCBub3cgcnVucyBmb3IgMTUgbWludXRlcyB3
aXRob3V0IGlzc3Vlcy4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IFNvIHRvIHN1bSB1cDoK
PiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IC0gdGhlc2UgY3Jhc2hlcyBhcmUgZGVmaW5pdGVs
eSBINiBJUiByZWxhdGVkCj4gPiA+ID4gPiA+ID4gICAtIHRoZSBzYW1lIGtlcm5lbCwgb24gSDUg
d29ya3MKPiA+ID4gPiA+ID4gPiAgIC0gY292ZXJpbmcgdGhlIHNlbnNvciBwcmV2ZW50cyB0aGUg
Y3Jhc2hlcyBvbiBINgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gU28gd2Ugc2hvdWxkIHBy
b2JhYmx5IGhvbGQgb24gd2l0aCB0aGUgc2VyaWVzLCB1bnRpbCB0aGlzIGlzIGZpZ3VyZWQgb3V0
Lgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGFua3MgZm9yIHRlc3RpbmcsIGJ1dCBJIHRoaW5r
IGl0J3MgbW9yZSBoYXJkd2FyZSByZWxhdGVkLgo+ID4gPiA+ID4gPiBJdCBzZWVtcyB0aGF0IHlv
dXIgSVIgaXMgZmxvb2RlZCBvciBtaXNjb25maWd1cmVkIGZvciB5b3VyIGJvYXJkLgo+ID4gPiA+
ID4gPiBDb3VsZCB5b3UgYWRkIGEgc2ltcGxlIHByaW50IGluIHRoZSAic3VueGlfaXJfaXJxIgo+
ID4gPiA+ID4KPiA+ID4gPiA+IFllcywgSSBnZXQgZmxvb2Qgb2YgSVJRcyB3aXRoIHN0YXR1cyA9
IDB4MzAuIChhZnRlciBJIHR1cm4gb24gdGhlIGxhbXAsCj4gPiA+ID4gPiBidXQgaXQgcGVyc2lz
dHMgZXZlbiBhZnRlciBJIHR1cm4gaXQgb2ZmIGFuZCBjb3ZlciB0aGUgSVIgc2Vuc29yKS4KPiA+
ID4gPgo+ID4gPiA+IEludGVyZXN0aW5nbHksIHN0YXR1cyBhbHNvIGNvbnRhaW5zIFJBQywgYW5k
IGl0J3MgMCBpbiB0aGlzIGNhc2UuIFNvIHRoZQo+ID4gPiA+IGludGVycnVwdCBpZiBmaXJpbmcg
d2l0aCAiTm8gYXZhaWxhYmxlIGRhdGEgaW4gUlggRklGTyIgcmVwZWF0ZWRseS4gUmVnYXJkbGVz
cwo+ID4gPiA+IG9mIGlucHV0Lgo+ID4gPiA+Cj4gPiA+ID4gU28gdGhlcmUncyBzb21ldGhpbmcg
ZWxzZSB1cC4KPiA+ID4KPiA+ID4gUmVhbGx5IHdlaXJkIGluZGVlZC4uLgo+ID4gPgo+ID4gPiBJ
IGhhdmUgcHVzaGVkIGEgbmV3IHZlcnNpb24sIHdoZXJlIEkgZGlkbid0IGVuYWJsZWQgdGhlIHN1
cHBvcnQgZm9yCj4gPiA+IG90aGVycyBINiBib2FyZCBhbmQgdGhlIGNvdmVyIGxldHRlciBpbmNs
dWRlIGEgbGluayB0byB0aGlzIHRocmVhZC4KPiA+ID4KPiA+ID4gSXQgd291bGQgYmUgZ3JlYXQg
aWYgb3RoZXIgc3VueGkgdXNlcnMgY291bGQgdGVzdCB0aGlzIHNlcmllcywgdG8KPiA+ID4gY2hl
Y2sgaWYgdGhpcyBpc3N1ZSBpbiBwcmVzZW50IGluIG90aGVyIE9QaTMgLyBQaW5lIEg2NC4KPiA+
Cj4gPiBJIGRvbid0IGtub3cgaWYgdGhpcyBpcyBlbm91Z2guIEknZCByYXRoZXIgcHJlZmVyIGlm
IHRoZSBkcml2ZXIgaGFzIGEgd2F5Cj4gPiBvZiBkZXRlY3RpbmcgdGhpcyBzaXR1YXRpb24gYW5k
IHNodXR0aW5nIHRoZSBtb2R1bGUgZG93biwgYXQgdGhlIHZlcnkgbGVhc3QsCj4gPiBpbnN0ZWFk
IG9mIHRha2luZyBkb3duIHRoZSBlbnRpcmUgc3lzdGVtIHdpdGggSVJRIGZsb29kLgo+ID4KPiA+
IEl0IG1heSBiZSBkZXRlY3RhYmxlIGJ5IGNoZWNraW5nIFJBQyA9PSAwIHdoZW4gUlggRklGTyBh
dmFpbGFibGUgaW50ZXJydXB0Cj4gPiBmbGFnIGlzIHNldC4KPiA+Cj4gPiBPdGhlcndpc2UsIHRo
aXMgd2lsbCBldmVudHVhbGx5IGJlIGZvcmdvdHRlbiAoY292ZXIgbGV0dGVycyBhcmUgbm90IGV2
ZW4gc3RvcmVkCj4gPiBpbiBnaXQpLCBhbmQgc29tZW9uZSB3aWxsIGZhbGwgaW50byB0aGUgdHJh
cCBhZ2FpbiwgYWZ0ZXIgZW5hYmxpbmcgcl9pciBvbgo+ID4gdGhlaXIgYm9hcmQsIGFuZCBlbmQg
dXAgY2hhc2luZyB0aGVpciB0YWlsIGZvciBhIGRheS4gSSd2ZSBpbml0aWFsbHkgb25seSBmb3Vu
ZAo+ID4gdGhpcyBpcyBJUiBkcml2ZXIgaXNzdWUgYWZ0ZXIgYSBsb25nIHVucGxlYXNhbnQgZGVi
dWdnaW5nIHNlc3Npb24sIGNoYXNpbmcgb3RoZXIKPiA+IG1vcmUgb2J2aW91cyBpZGVhcyAoYXMg
d2hlbiB0aGlzIGhhcHBlbnMgdGhlcmUncyBhYnNvbHV0ZWx5IG5vdGhpbmcgaW4gdGhlIGxvZwo+
ID4gaW5kaWNhdGluZyB0aGlzIGlzIElSIGlzc3VlKS4KPgo+IFJldHVybmluZyBJUlFfTk9ORSBp
biB0aGUgaGFuZGxlciB3aWxsIGRpc2FibGUgdGhlIGludGVycnVwdCBsaW5lCj4gYWZ0ZXIgMTAw
LDAwMCAoSSB0aGluaz8pIG9jY3VyZW5jZXMuIFRoYXQgbWlnaHQgYmUgYSBnb29kIHdvcmthcm91
bmQsCj4gYnV0IHdlIGRlZmluaXRlbHkgd2FudCB0byBoYXZlIGEgY29tbWVudCB0aGVyZSA6KQo+
CgpUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uLAoKSSB3aWxsIHByb3Bvc2UgYSBwYXRjaCB0byBy
ZXR1cm4gSVJRX05PTkUgaWYgRmlmbyBpcyBlbXB0eSB3aGVuIFJBIGlzIHNldHRlZC4KCkp1c3Qg
YSBjb21tZW50IGluIHRoZSBJUlEgaGFuZGxpbmcgd2UgYXJlIGFjdHVhbGx5IGxvb2tpbmcgYXQg
dGhlClJYU1RBIHJlZ2lzdGVyIGFuZCB1c2luZyB0aGUgUlhJTlQgYml0ID8KSXMgdGhlcmUgYW55
IHJlYXNvbiBmb3IgZG9pbmcgdGhhdCA/CgpUaGFua3MsCkNsw6ltZW50CgoKPiBNYXhpbWUKPgo+
IC0tCj4gTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwg
ZW5naW5lZXJpbmcKPiBodHRwczovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
