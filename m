Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C4D1F847B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 19:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTIdhhmRWTJJ3rhx7pGtEjP/sLKgmxHhIly2yZeslxw=; b=oCryR4e2BAsZ3G
	g0CQ1nlvKBSwfTG1cTBICbExp2K+43C5ZMIKud/JDiO8rO3HFWPzJOeGCmPiDjjMAHkaRLtFcxsmv
	2gYRegXQa1wTdyNqDlCktvrK5CHSiiOacC7blaGQgfsoxmvM7wxERQAqDvA1XHkkOsaXtyO/OFrRt
	6C4rgc50OeNc+ElsNFar8aB6wsZFV7pTm2rN6uNs/iK84iODIc9BabNFMsX6Os7rcYq4xK2y6y/Fb
	+WwWavkZs6Nw3MCxIzXBVwVlD6JaxHOQ3kmVHoP95bh2Am0x3Q3UiHgKJq4tUhY/J364mgLwl0aud
	2INwIjGHKwFkiam6FsSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkALS-0002bt-Sq; Sat, 13 Jun 2020 17:53:30 +0000
Received: from mail-ej1-f67.google.com ([209.85.218.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkALL-0002az-5h
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 17:53:24 +0000
Received: by mail-ej1-f67.google.com with SMTP id n24so13265431ejd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 10:53:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3JeOvtc/eAFvXr156ydRZZGyosX/Qqp3aRK+SICpX5s=;
 b=SixH3An6ZFl863+4FuHZHf2LMiMP/Wa319RO0CGUipcMz7f4/7v/MRx+L9EG7MOTau
 LqacfASUDofR5KvrogfdtUQ3wOPiH4pztlDJ9Usj/fD8RfgjeRHEFQvBl4TfGiQPU+x8
 aqUg8C2mSCGiU6Y2mXNKaAtKgzC22H9ZUMdydTGz/Ivp4HwN0OJZ3Qy3GRcyckRr1zrt
 Z2x8HLT1uGTzdWJtcDPZ1xKZoCSMbKcWM70tI9zzVTyWHvPRSisLAwnBh3KQGCqLzwHK
 oBdBlbWA4zQBkF58Rv1wSECR7seJAzZfOQ+LiI00zaJBYgoSjMrWT6xcq/3rJ2CmD/lA
 8bNg==
X-Gm-Message-State: AOAM532cl6LLLf6zfIofKrXEAQCYow/LVLuZpRqGEC/4t9D8dGFaFoLu
 /s/Pd9msGPK68IiSGEsIg7CwyIeMJNO3PCsnwag=
X-Google-Smtp-Source: ABdhPJxBidEPydvBx4KSo0FSYx8i1Uqr0G7Qz/qzjO76L9wCItTl6v+val9pjKo6XeFlXTpivudQHulBPZcm4eDaPxQ=
X-Received: by 2002:a17:906:27c5:: with SMTP id
 k5mr18340389ejc.251.1592070799112; 
 Sat, 13 Jun 2020 10:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200609113049.4035426-3-noltari@gmail.com>
 <1367fcf3-24ed-9106-a329-da5f8e168e17@gmail.com>
 <3E897527-55EB-47DB-99ED-C737725F0F9E@gmail.com>
 <CAAdtpL7dUZ2RqkrqSxiZxDbp4qY-KdtSc7CyuR+rbnRRA2Yvrw@mail.gmail.com>
 <93c429b1-31f4-95c2-1bd9-b3756b396f3a@gmail.com>
In-Reply-To: <93c429b1-31f4-95c2-1bd9-b3756b396f3a@gmail.com>
From: =?UTF-8?Q?Philippe_Mathieu=2DDaud=C3=A9?= <f4bug@amsat.org>
Date: Sat, 13 Jun 2020 19:53:07 +0200
Message-ID: <CAAdtpL6OXziD9Q0dBZzkcq0jPF04rmNd6o_hi7Frm5DejG29mA@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: bcm63xx-gate: add BCM6318 support
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_105323_213892_3AB276CB 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [philippe.mathieu.daude[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>,
 kbuild test robot <lkp@intel.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTAsIDIwMjAgYXQgNTozMiBQTSBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5l
bGxpQGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gNi8xMC8yMDIwIDE6MjkgQU0sIFBoaWxpcHBlIE1h
dGhpZXUtRGF1ZMOpIHdyb3RlOgo+ID4gSGksCj4gPgo+ID4gT24gV2VkLCBKdW4gMTAsIDIwMjAg
YXQgODoxMyBBTSDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMKPiA+IDxub2x0YXJpQGdtYWlsLmNv
bT4gd3JvdGU6Cj4gPj4KPiA+PiBIaSBGbG9yaWFuLAo+ID4+Cj4gPj4+IEVsIDEwIGp1biAyMDIw
LCBhIGxhcyA0OjI3LCBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4gZXNj
cmliacOzOgo+ID4+Pgo+ID4+Pgo+ID4+Pgo+ID4+PiBPbiA2LzkvMjAyMCA0OjMwIEFNLCDDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4gPj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBj
bGtfYmNtNjN4eF90YWJsZV9lbnRyeSBiY202MzE4X2Nsb2Nrc1tdID0gewo+ID4+Pj4gKyAgICB7
IC5uYW1lID0gImFkc2xfYXNiIiwgLmJpdCA9IDAsIH0sCj4gPj4+PiArICAgIHsgLm5hbWUgPSAi
dXNiX2FzYiIsIC5iaXQgPSAxLCB9LAo+ID4+Pj4gKyAgICB7IC5uYW1lID0gIm1pcHNfYXNiIiwg
LmJpdCA9IDIsIH0sCj4gPj4+PiArICAgIHsgLm5hbWUgPSAicGNpZV9hc2IiLCAuYml0ID0gMywg
fSwKPiA+Pj4+ICsgICAgeyAubmFtZSA9ICJwaHltaXBzX2FzYiIsIC5iaXQgPSA0LCB9LAo+ID4+
Pj4gKyAgICB7IC5uYW1lID0gInJvYm9zd19hc2IiLCAuYml0ID0gNSwgfSwKPiA+Pj4+ICsgICAg
eyAubmFtZSA9ICJzYXJfYXNiIiwgLmJpdCA9IDYsIH0sCj4gPj4+PiArICAgIHsgLm5hbWUgPSAi
c2RyX2FzYiIsIC5iaXQgPSA3LCB9LAo+ID4+Pj4gKyAgICB7IC5uYW1lID0gInN3cmVnX2FzYiIs
IC5iaXQgPSA4LCB9LAo+ID4+Pj4gKyAgICB7IC5uYW1lID0gInBlcmlwaF9hc2IiLCAuYml0ID0g
OSwgfSwKPiA+Pj4+ICsgICAgeyAubmFtZSA9ICJjcHVidXMxNjAiLCAuYml0ID0gMTAsIH0sCj4g
Pj4+PiArICAgIHsgLm5hbWUgPSAiYWRzbCIsIC5iaXQgPSAxMSwgfSwKPiA+Pj4+ICsgICAgeyAu
bmFtZSA9ICJzYXIxMjQiLCAuYml0ID0gMTIsIH0sCj4gPj4+Cj4gPj4+IE5pdDogdGhpcyBzaG91
bGQgYmUgc2FyMTI1Cj4gPj4KPiA+PiBOaWNlIGNhdGNoLCBJIHdpbGwgZml4IHRoaXMgaW4gdjIu
Cj4gPj4KPiA+Pj4KPiA+Pj4+ICsgICAgeyAubmFtZSA9ICJtaXBzIiwgLmJpdCA9IDEzLCAuZmxh
Z3MgPSBDTEtfSVNfQ1JJVElDQUwsIH0sCj4gPj4+PiArICAgIHsgLm5hbWUgPSAicGNpZSIsIC5i
aXQgPSAxNCwgfSwKPiA+Pj4+ICsgICAgeyAubmFtZSA9ICJyb2Jvc3cyNTAiLCAuYml0ID0gMTYs
IH0sCj4gPj4+PiArICAgIHsgLm5hbWUgPSAicm9ib3N3MDI1IiwgLmJpdCA9IDE3LCB9LAo+ID4+
Pj4gKyAgICB7IC5uYW1lID0gInNkciIsIC5iaXQgPSAxOSwgLmZsYWdzID0gQ0xLX0lTX0NSSVRJ
Q0FMLCB9LAo+ID4+Pj4gKyAgICB7IC5uYW1lID0gInVzYiIsIC5iaXQgPSAyMCwgfSwKPiA+Pj4K
PiA+Pj4gVGhpcyBzaG91bGQgcHJvYmFibHkgYmUgInVzYmQiIHRvIGluZGljYXRlIHRoaXMgaXMg
dGhlIFVTQiBkZXZpY2UgY2xvY2sKPiA+Pj4gKG5vdCBob3N0KQo+ID4+Cj4gPj4gT2ssIEkgd2ls
bCBjaGFuZ2UgaXQuIEkgZ290IGNvbmZ1c2VkIGJ5IHRoZSBmYWN0IHRoYXQgYm90aCAodXNiZCBh
bmQgdXNiaCkgd2VyZSBwcmVzZW50IG9uIDYzMThfbWFwX3BhcnQuaDoKPiA+PiAjZGVmaW5lIFVT
QkRfQ0xLX0VOICAgICAgICAgKDEgPDwgMjApCj4gPj4gI2RlZmluZSBVU0JIX0NMS19FTiAgICAg
ICAgICgxIDw8IDIwKQo+ID4KPiA+IElzIHRoZXJlIGEgZGF0YXNoZWV0IHRvIHZlcmlmeSB0aGF0
Pwo+Cj4gTm90IGEgcHVibGljIG9uZSwgYnV0IEkgY2FuIGNvbmZpcm0gdGhpcyBpcyBjb3JyZWN0
IGdpdmVuIHRoZSBpbnRlcm5hbAo+IGRhdGFzaGVldC4KCk9LIHRoYW5rIHlvdSBGbG9yaWFuLgoK
PiAtLQo+IEZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
