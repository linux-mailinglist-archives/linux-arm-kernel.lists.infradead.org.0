Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA82D1ECEDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Frg5QsQxsLh8cGud+Z94KGrp3aQgtMEfmhu2icsGW44=; b=XvW1um8yuZjAlN
	r93YIiWWeZQtuOWMoUOxlIFhYPwewS2JflDmFFSnA3iDoeVr856xTtfDjPp1Q02k5uHs/aAeqa6VU
	mxUshIlbDrp9fF3NxzLFmvqJY5K76UspptV2RMWtntwk+xEmOZC6CRfzad7IIaqkqvZ7SGKiUQPHC
	UrjdBVvrqDgPjoE+aGPOO0BWcgvcrVCH86RM7D2K/+BY8tptY0wWhd4izwWuf8m8T24hADw7MBck8
	O2iOqU6Ec16+A0WY7XdI9ZzCg3nj2yCp0Xvul8W/pn4frDDe+WaAXNg6F8ak+c3yg4QqCrVwCbU4R
	38TMIUOihMqgw1bysDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRsJ-000252-0S; Wed, 03 Jun 2020 11:48:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRs6-00021w-Go; Wed, 03 Jun 2020 11:47:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id x6so1978481wrm.13;
 Wed, 03 Jun 2020 04:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8yyjDaO/b+3MP+LO9tztKOqPVt2nNrC78Gf79JCQ7+Q=;
 b=KeCYn6pZ0rNcVLm/ig4zWsWuAgfgfQXMVxsAXloca2S4t0ni/U16pdte7iI4p9+enc
 ueF7rOmdZkF1RYUKOB0g2GB2ks0IdCf38U8P31Hj9bRzJo4Z7xqQYY1Erq0YkPGTp46E
 UqO7FvjNoFivV5wckAv3s+4m4zCDXuI/jA4gbphhtFm+CJLgxmGY1l9RMlDyxdJe5dvt
 u1RAF7kAK+1QlwUb/+6ymiqbwOO7SR/3ixEMVUckzME13p/t9qIQWxmteo1E2jQcNTja
 +ikb2TUA11aKTZtKZnYrV181naorK+4dG13FqSeXxVJxnbzqweTWDXWYgOqVNzRFlMIp
 qAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8yyjDaO/b+3MP+LO9tztKOqPVt2nNrC78Gf79JCQ7+Q=;
 b=OLrfm15Dul/JBj2VgyVLwgps2Ka5/C154KC4GhijuSONY6phF5o0sO7qhRdIAgUEWZ
 YTkrz32TfnydHu2PgW0h3kjsSLsiUSyjFD9CV7TQmLV2bh2KKy/D2xHbvnJm0/eVeDjQ
 orKpZZ9Tw8WZ+++eeU2+0TLHlCQ/ZHWXa0BWZgv9Em1creuXgbkIbpKzHZibcRNI2vrh
 gnOlOG5toNWf8cj0oiBsl30vHqZ8GBFSJIZcdZ2THnqN4YcXOWAaXb2RoJ18SLaigOzo
 WwFC6SM6kMIsZZvd1LgXDMHXvz2KV4giSTUiT50X2plnpRKwi049SbyJvXQfmOLpTltW
 vsLg==
X-Gm-Message-State: AOAM530+mT+Q5b2rZRviyzQQJV8ml/21C9XFeJp6cdSlu2QHTodEg5R5
 GxY8llfOAhHsoL2ztoLPr69ecRSnVmDWnVgSgqI=
X-Google-Smtp-Source: ABdhPJwflTwPXjA4P5HUTh5c02UfV6ZCBWlujr3brOF9xdM02IV42Q1K+6j53kRNVCVhPyAYFxlqt/xChpoL/73aNFc=
X-Received: by 2002:adf:e588:: with SMTP id l8mr32932861wrm.255.1591184868713; 
 Wed, 03 Jun 2020 04:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
 <303695cc-d3ea-9f51-1489-07d27d4253d4@oracle.com>
 <CACi5LpOZzdfEKUYAfYxtgeUbk9K6YFVUKLaGS8XoS0kForjH9A@mail.gmail.com>
 <F64A309C-B9C0-45F2-A50D-D677005C33A6@oracle.com>
 <CAJ2QiJJE-jeRL1HPUZCwi1LtV9CBMmYrsOaS6vX1R1sJ6Z1t8g@mail.gmail.com>
 <6EA47B07-5119-49DF-9980-12A2066F22CA@oracle.com>
In-Reply-To: <6EA47B07-5119-49DF-9980-12A2066F22CA@oracle.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Wed, 3 Jun 2020 17:17:12 +0530
Message-ID: <CAJ2QiJJhUCnobrMHui5=6zLzgy3KsoPxrqiH_oYT8Jhb5MkmbA@mail.gmail.com>
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
To: John Donnelly <john.p.donnelly@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_044750_579392_CC94DABF 
X-CRM114-Status: GOOD (  23.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Baoquan He <bhe@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Chen Zhou <chenzhou10@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, RuiRui Yang <dyoung@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>, guohanjun@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hlbiwKCk9uIFR1ZSwgSnVuIDIsIDIwMjAgYXQgODoxMiBQTSBKb2huIERvbm5lbGx5IDxq
b2huLnAuZG9ubmVsbHlAb3JhY2xlLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBPbiBKdW4gMiwgMjAy
MCwgYXQgMTI6MzggQU0sIFByYWJoYWthciBLdXNod2FoYSA8cHJhYmhha2FyLnBraW5AZ21haWwu
Y29tPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIEp1biAyLCAyMDIwIGF0IDM6MjkgQU0gSm9obiBE
b25uZWxseSA8am9obi5wLmRvbm5lbGx5QG9yYWNsZS5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSGkg
LiAgU2VlIGJlbG93ICEKPiA+Pgo+ID4+PiBPbiBKdW4gMSwgMjAyMCwgYXQgNDowMiBQTSwgQmh1
cGVzaCBTaGFybWEgPGJoc2hhcm1hQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+PiBIaSBK
b2huLAo+ID4+Pgo+ID4+PiBPbiBUdWUsIEp1biAyLCAyMDIwIGF0IDE6MDEgQU0gSm9obiBEb25u
ZWxseSA8Sm9obi5QLmRvbm5lbGx5QG9yYWNsZS5jb20+IHdyb3RlOgo+ID4+Pj4KPiA+Pj4+IEhp
LAo+ID4+Pj4KPiA+Pj4+Cj4gPj4+PiBPbiA2LzEvMjAgNzowMiBBTSwgUHJhYmhha2FyIEt1c2h3
YWhhIHdyb3RlOgo+ID4+Pj4+IEhpIENoZW4sCj4gPj4+Pj4KPiA+Pj4+PiBPbiBUaHUsIE1heSAy
MSwgMjAyMCBhdCAzOjA1IFBNIENoZW4gWmhvdSA8Y2hlbnpob3UxMEBodWF3ZWkuY29tPiB3cm90
ZToKPiA+Pj4+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgZW5hYmxlIHJlc2VydmluZyBjcmFzaGtlcm5l
bCBhYm92ZSA0RyBpbiBhcm02NC4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhlcmUgYXJlIGZvbGxvd2lu
ZyBpc3N1ZXMgaW4gYXJtNjQga2R1bXA6Cj4gPj4+Pj4+IDEuIFdlIHVzZSBjcmFzaGtlcm5lbD1Y
IHRvIHJlc2VydmUgY3Jhc2hrZXJuZWwgYmVsb3cgNEcsIHdoaWNoIHdpbGwgZmFpbAo+ID4+Pj4+
PiB3aGVuIHRoZXJlIGlzIG5vIGVub3VnaCBsb3cgbWVtb3J5Lgo+ID4+Pj4+PiAyLiBDdXJyZW50
bHksIGNyYXNoa2VybmVsPVlAWCBjYW4gYmUgdXNlZCB0byByZXNlcnZlIGNyYXNoa2VybmVsIGFi
b3ZlIDRHLAo+ID4+Pj4+PiBpbiB0aGlzIGNhc2UsIGlmIHN3aW90bGIgb3IgRE1BIGJ1ZmZlcnMg
YXJlIHJlcXVpcmVkLCBjcmFzaCBkdW1wIGtlcm5lbAo+ID4+Pj4+PiB3aWxsIGJvb3QgZmFpbHVy
ZSBiZWNhdXNlIHRoZXJlIGlzIG5vIGxvdyBtZW1vcnkgYXZhaWxhYmxlIGZvciBhbGxvY2F0aW9u
Lgo+ID4+Pj4+Pgo+ID4+Pj4+PiBUbyBzb2x2ZSB0aGVzZSBpc3N1ZXMsIGludHJvZHVjZSBjcmFz
aGtlcm5lbD1YLGxvdyB0byByZXNlcnZlIHNwZWNpZmllZAo+ID4+Pj4+PiBzaXplIGxvdyBtZW1v
cnkuCj4gPj4+Pj4+IENyYXNoa2VybmVsPVggdHJpZXMgdG8gcmVzZXJ2ZSBtZW1vcnkgZm9yIHRo
ZSBjcmFzaCBkdW1wIGtlcm5lbCB1bmRlcgo+ID4+Pj4+PiA0Ry4gSWYgY3Jhc2hrZXJuZWw9WSxs
b3cgaXMgc3BlY2lmaWVkIHNpbXVsdGFuZW91c2x5LCByZXNlcnZlIHNwY2lmaWVkCj4gPj4+Pj4+
IHNpemUgbG93IG1lbW9yeSBmb3IgY3Jhc2gga2R1bXAga2VybmVsIGRldmljZXMgZmlyc3RseSBh
bmQgdGhlbiByZXNlcnZlCj4gPj4+Pj4+IG1lbW9yeSBhYm92ZSA0Ry4KPiA+Pj4+Pj4KPiA+Pj4+
Pj4gV2hlbiBjcmFzaGtlcm5lbCBpcyByZXNlcnZlZCBhYm92ZSA0RyBpbiBtZW1vcnksIHRoYXQg
aXMsIGNyYXNoa2VybmVsPVgsbG93Cj4gPj4+Pj4+IGlzIHNwZWNpZmllZCBzaW11bHRhbmVvdXNs
eSwga2VybmVsIHNob3VsZCByZXNlcnZlIHNwZWNpZmllZCBzaXplIGxvdyBtZW1vcnkKPiA+Pj4+
Pj4gZm9yIGNyYXNoIGR1bXAga2VybmVsIGRldmljZXMuIFNvIHRoZXJlIG1heSBiZSB0d28gY3Jh
c2gga2VybmVsIHJlZ2lvbnMsIG9uZQo+ID4+Pj4+PiBpcyBiZWxvdyA0RywgdGhlIG90aGVyIGlz
IGFib3ZlIDRHLgo+ID4+Pj4+PiBJbiBvcmRlciB0byBkaXN0aW5jdCBmcm9tIHRoZSBoaWdoIHJl
Z2lvbiBhbmQgbWFrZSBubyBlZmZlY3QgdG8gdGhlIHVzZSBvZgo+ID4+Pj4+PiBrZXhlYy10b29s
cywgcmVuYW1lIHRoZSBsb3cgcmVnaW9uIGFzICJDcmFzaCBrZXJuZWwgKGxvdykiLCBhbmQgYWRk
IERUIHByb3BlcnR5Cj4gPj4+Pj4+ICJsaW51eCxsb3ctbWVtb3J5LXJhbmdlIiB0byBjcmFzaCBk
dW1wIGtlcm5lbCdzIGR0YiB0byBwYXNzIHRoZSBsb3cgcmVnaW9uLgo+ID4+Pj4+Pgo+ID4+Pj4+
PiBCZXNpZGVzLCB3ZSBuZWVkIHRvIG1vZGlmeSBrZXhlYy10b29sczoKPiA+Pj4+Pj4gYXJtNjQ6
IGtkdW1wOiBhZGQgYW5vdGhlciBEVCBwcm9wZXJ0eSB0byBjcmFzaCBkdW1wIGtlcm5lbCdzIGR0
YihzZWUgWzFdKQo+ID4+Pj4+Pgo+ID4+Pj4+PiBUaGUgcHJldmlvdXMgY2hhbmdlcyBhbmQgZGlz
Y3Vzc2lvbnMgY2FuIGJlIHJldHJpZXZlZCBmcm9tOgo+ID4+Pj4+Pgo+ID4+Pj4+PiBDaGFuZ2Vz
IHNpbmNlIFt2N10KPiA+Pj4+Pj4gLSBNb3ZlIHg4NiBDUkFTSF9BTElHTiB0byAyTQo+ID4+Pj4+
PiBTdWdnZXN0ZWQgYnkgRGF2ZSBhbmQgZG8gc29tZSB0ZXN0LCBtb3ZlIHg4NiBDUkFTSF9BTElH
TiB0byAyTS4KPiA+Pj4+Pj4gLSBVcGRhdGUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Nob3Nlbi50eHQKPiA+Pj4+Pj4gQWRkIGNvcnJlc3BvbmRpbmcgZG9jdW1lbnRhdGlvbiB0
byBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2hvc2VuLnR4dCBzdWdnZXN0ZWQg
YnkgQXJuZC4KPiA+Pj4+Pj4gLSBBZGQgVGVzdGVkLWJ5IGZyb20gSmhvbiBhbmQgcGsKPiA+Pj4+
Pj4KPiA+Pj4+Pj4gQ2hhbmdlcyBzaW5jZSBbdjZdCj4gPj4+Pj4+IC0gRml4IGJ1aWxkIGVycm9y
cyByZXBvcnRlZCBieSBrYnVpbGQgdGVzdCByb2JvdC4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gQ2hhbmdl
cyBzaW5jZSBbdjVdCj4gPj4+Pj4+IC0gTW92ZSByZXNlcnZlX2NyYXNoa2VybmVsX2xvdygpIGlu
dG8ga2VybmVsL2NyYXNoX2NvcmUuYy4KPiA+Pj4+Pj4gLSBEZWxldGUgY3Jhc2hrZXJuZWw9WCxo
aWdoLgo+ID4+Pj4+PiAtIE1vZGlmeSBjcmFzaGtlcm5lbD1YLGxvdy4KPiA+Pj4+Pj4gSWYgY3Jh
c2hrZXJuZWw9WCxsb3cgaXMgc3BlY2lmaWVkIHNpbXVsdGFuZW91c2x5LCByZXNlcnZlIHNwY2lm
aWVkIHNpemUgbG93Cj4gPj4+Pj4+IG1lbW9yeSBmb3IgY3Jhc2gga2R1bXAga2VybmVsIGRldmlj
ZXMgZmlyc3RseSBhbmQgdGhlbiByZXNlcnZlIG1lbW9yeSBhYm92ZSA0Ry4KPiA+Pj4+Pj4gSW4g
YWRkaXRpb24sIHJlbmFtZSBjcmFzaGtfbG93X3JlcyBhcyAiQ3Jhc2gga2VybmVsIChsb3cpIiBm
b3IgYXJtNjQsIGFuZCB0aGVuCj4gPj4+Pj4+IHBhc3MgdG8gY3Jhc2ggZHVtcCBrZXJuZWwgYnkg
RFQgcHJvcGVydHkgImxpbnV4LGxvdy1tZW1vcnktcmFuZ2UiLgo+ID4+Pj4+PiAtIFVwZGF0ZSBE
b2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL2tkdW1wLnJzdC4KPiA+Pj4+Pj4KPiA+Pj4+
Pj4gQ2hhbmdlcyBzaW5jZSBbdjRdCj4gPj4+Pj4+IC0gUmVpbXBsZW1lbnQgbWVtYmxvY2tfY2Fw
X21lbW9yeV9yYW5nZXMgZm9yIG11bHRpcGxlIHJhbmdlcyBieSBNaWtlLgo+ID4+Pj4+Pgo+ID4+
Pj4+PiBDaGFuZ2VzIHNpbmNlIFt2M10KPiA+Pj4+Pj4gLSBBZGQgbWVtYmxvY2tfY2FwX21lbW9y
eV9yYW5nZXMgYmFjayBmb3IgbXVsdGlwbGUgcmFuZ2VzLgo+ID4+Pj4+PiAtIEZpeCBzb21lIGNv
bXBpbGluZyB3YXJuaW5ncy4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gQ2hhbmdlcyBzaW5jZSBbdjJdCj4g
Pj4+Pj4+IC0gU3BsaXQgcGF0Y2ggImFybTY0OiBrZHVtcDogc3VwcG9ydCByZXNlcnZpbmcgY3Jh
c2hrZXJuZWwgYWJvdmUgNEciIGFzCj4gPj4+Pj4+IHR3by4gUHV0ICJtb3ZlIHJlc2VydmVfY3Jh
c2hrZXJuZWxfbG93KCkgaW50byBrZXhlY19jb3JlLmMiIGluIGEgc2VwYXJhdGUKPiA+Pj4+Pj4g
cGF0Y2guCj4gPj4+Pj4+Cj4gPj4+Pj4+IENoYW5nZXMgc2luY2UgW3YxXToKPiA+Pj4+Pj4gLSBN
b3ZlIGNvbW1vbiByZXNlcnZlX2NyYXNoa2VybmVsX2xvdygpIGNvZGUgaW50byBrZXJuZWwva2V4
ZWNfY29yZS5jLgo+ID4+Pj4+PiAtIFJlbW92ZSBtZW1ibG9ja19jYXBfbWVtb3J5X3Jhbmdlcygp
IGkgYWRkZWQgaW4gdjEgYW5kIGltcGxlbWVudCB0aGF0Cj4gPj4+Pj4+IGluIGZkdF9lbmZvcmNl
X21lbW9yeV9yZWdpb24oKS4KPiA+Pj4+Pj4gVGhlcmUgYXJlIGF0IG1vc3QgdHdvIGNyYXNoIGtl
cm5lbCByZWdpb25zLCBmb3IgdHdvIGNyYXNoIGtlcm5lbCByZWdpb25zCj4gPj4+Pj4+IGNhc2Us
IHdlIGNhcCB0aGUgbWVtb3J5IHJhbmdlIFttaW4ocmVnc1sqXS5zdGFydCksIG1heChyZWdzWypd
LmVuZCldCj4gPj4+Pj4+IGFuZCB0aGVuIHJlbW92ZSB0aGUgbWVtb3J5IHJhbmdlIGluIHRoZSBt
aWRkbGUuCj4gPj4+Pj4+Cj4gPj4+Pj4+IFsxXTogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9f
X2h0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9rZXhlYy8yMDIwLU1heS8wMjUx
MjguaHRtbF9fOyEhR3FpdlBWYTdCcmlvIUxuVFNBUmtDdDBWMEZvelIwS21xb29hSDVBRHRkWHZz
M21QZFAzS1JWcUFMbXZTSzJWbUNrSVBJaHNheGJ2cG4xdU0xJAo+ID4+Pj4+PiBbdjFdOiBodHRw
czovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNC8yLzEx
NzRfXzshIUdxaXZQVmE3QnJpbyFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQ
M0tSVnFBTG12U0syVm1Da0lQSWhzYXhidDB4TjlQRSQKPiA+Pj4+Pj4gW3YyXTogaHR0cHM6Ly91
cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzQvOS84Nl9fOyEh
R3FpdlBWYTdCcmlvIUxuVFNBUmtDdDBWMEZvelIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFM
bXZTSzJWbUNrSVBJaHNheGJ1Yjd5VVFIJAo+ID4+Pj4+PiBbdjNdOiBodHRwczovL3VybGRlZmVu
c2UuY29tL3YzL19faHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNC85LzMwNl9fOyEhR3FpdlBW
YTdCcmlvIUxuVFNBUmtDdDBWMEZvelIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZTSzJW
bUNrSVBJaHNheGJuYzR6UFBWJAo+ID4+Pj4+PiBbdjRdOiBodHRwczovL3VybGRlZmVuc2UuY29t
L3YzL19faHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNC8xNS8yNzNfXzshIUdxaXZQVmE3QnJp
byFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1Da0lQ
SWhzYXhidnNBc1pMdSQKPiA+Pj4+Pj4gW3Y1XTogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9f
X2h0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzUvNi8xMzYwX187ISFHcWl2UFZhN0JyaW8hTG5U
U0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4
YmwyNG4tNzkkCj4gPj4+Pj4+IFt2Nl06IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRw
czovL2xrbWwub3JnL2xrbWwvMjAxOS84LzMwLzE0Ml9fOyEhR3FpdlBWYTdCcmlvIUxuVFNBUmtD
dDBWMEZvelIwS21xb29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZTSzJWbUNrSVBJaHNheGJzN3I4
RzJhJAo+ID4+Pj4+PiBbdjddOiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9s
a21sLm9yZy9sa21sLzIwMTkvMTIvMjMvNDExX187ISFHcWl2UFZhN0JyaW8hTG5UU0FSa0N0MFYw
Rm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4YmlGVUg5MEck
Cj4gPj4+Pj4+Cj4gPj4+Pj4+IENoZW4gWmhvdSAoNSk6Cj4gPj4+Pj4+ICB4ODY6IGtkdW1wOiBt
b3ZlIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkgaW50byBjcmFzaF9jb3JlLmMKPiA+Pj4+Pj4g
IGFybTY0OiBrZHVtcDogcmVzZXJ2ZSBjcmFzaGtlbmVsIGFib3ZlIDRHIGZvciBjcmFzaCBkdW1w
IGtlcm5lbAo+ID4+Pj4+PiAgYXJtNjQ6IGtkdW1wOiBhZGQgbWVtb3J5IGZvciBkZXZpY2VzIGJ5
IERUIHByb3BlcnR5LCBsb3ctbWVtb3J5LXJhbmdlCj4gPj4+Pj4+ICBrZHVtcDogdXBkYXRlIERv
Y3VtZW50YXRpb24gYWJvdXQgY3Jhc2hrZXJuZWwgb24gYXJtNjQKPiA+Pj4+Pj4gIGR0LWJpbmRp
bmdzOiBjaG9zZW46IERvY3VtZW50IGxpbnV4LGxvdy1tZW1vcnktcmFuZ2UgZm9yIGFybTY0IGtk
dW1wCj4gPj4+Pj4+Cj4gPj4+Pj4gV2UgYXJlIGdldHRpbmcgIndhcm5fYWxsb2MiIFsxXSB3YXJu
aW5nIGR1cmluZyBib290IG9mIGtkdW1wIGtlcm5lbAo+ID4+Pj4+IHdpdGggYm9vdGFyZ3MgYXMg
WzJdIG9mIHByaW1hcnkga2VybmVsLgo+ID4+Pj4+IFRoaXMgZXJyb3Igb2JzZXJ2ZWQgb24gVGh1
bmRlclgyICBBUk02NCBwbGF0Zm9ybS4KPiA+Pj4+Pgo+ID4+Pj4+IEl0IGlzIG9ic2VydmVkIHdp
dGggbGF0ZXN0IHVwc3RyZWFtIHRhZyAodjUuNy1yYzMpIHdpdGggdGhpcyBwYXRjaCBzZXQKPiA+
Pj4+PiBhbmQgaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9waXBlcm1haWwva2V4ZWMvMjAyMC1NYXkvMDI1MTI4Lmh0bWxfXzshIUdxaXZQVmE3
QnJpbyFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1D
a0lQSWhzYXhiaUlBQWx6dSQKPiA+Pj4+PiBBbHNvICoqd2l0aG91dCoqIHRoaXMgcGF0Y2gtc2V0
Cj4gPj4+Pj4gImh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3d3dy5zcGluaWNz
Lm5ldC9saXN0cy9hcm0ta2VybmVsL21zZzgwNjg4Mi5odG1sX187ISFHcWl2UFZhN0JyaW8hTG5U
U0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUEloc2F4
YmpDNnVqTUEkIgo+ID4+Pj4+Cj4gPj4+Pj4gVGhpcyBpc3N1ZSBjb21lcyB3aGVuZXZlciBjcmFz
aGtlcm5lbCBtZW1vcnkgaXMgcmVzZXJ2ZWQgYWZ0ZXIgMHhjMDAwXzAwMDAuCj4gPj4+Pj4gTW9y
ZSBkZXRhaWxzIGRpc2N1c3NlZCBlYXJsaWVyIGluCj4gPj4+Pj4gaHR0cHM6Ly91cmxkZWZlbnNl
LmNvbS92My9fX2h0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2FybS1rZXJuZWwvbXNnODA2
ODgyLmh0bWxfXzshIUdxaXZQVmE3QnJpbyFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2
czNtUGRQM0tSVnFBTG12U0syVm1Da0lQSWhzYXhiakM2dWpNQSQgIHdpdGhvdXQgYW55Cj4gPj4+
Pj4gc29sdXRpb24KPiA+Pj4+Pgo+ID4+Pj4+IFRoaXMgcGF0Y2gtc2V0IGlzIGV4cGVjdGVkIHRv
IHNvbHZlIHNpbWlsYXIga2luZCBvZiBpc3N1ZS4KPiA+Pj4+PiBpLmUuIGxvdyBtZW1vcnkgaXMg
b25seSB0YXJnZXRlZCBmb3IgRE1BLCBzd2lvdGxiOyBTbyBhYm92ZSBtZW50aW9uZWQKPiA+Pj4+
PiBvYnNlcnZhdGlvbiBzaG91bGQgYmUgY29uc2lkZXJlZC9maXhlZC4gLgo+ID4+Pj4+Cj4gPj4+
Pj4gLS1wawo+ID4+Pj4+Cj4gPj4+Pj4gWzFdCj4gPj4+Pj4gWyAgIDMwLjM2NjY5NV0gRE1JOiBD
YXZpdW0gSW5jLiBTYWJlci9TYWJlciwgQklPUwo+ID4+Pj4+IFRYMi1GVy1SZWxlYXNlLTMuMS1i
dWlsZF8wMS0yODAzLWc3NDI1M2E1NDFhIG1tL2RkL3l5eXkKPiA+Pj4+PiBbICAgMzAuMzY3Njk2
XSBORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDE2Cj4gPj4+Pj4gWyAgIDMwLjM2OTk3
M10gc3dhcHBlci8wOiBwYWdlIGFsbG9jYXRpb24gZmFpbHVyZTogb3JkZXI6NiwKPiA+Pj4+PiBt
b2RlOjB4MShHRlBfRE1BKSwgbm9kZW1hc2s9KG51bGwpLGNwdXNldD0vLG1lbXNfYWxsb3dlZD0w
Cj4gPj4+Pj4gWyAgIDMwLjM2OTk4MF0gQ1BVOiAwIFBJRDogMSBDb21tOiBzd2FwcGVyLzAgTm90
IHRhaW50ZWQgNS43LjAtcmMzKyAjMTIxCj4gPj4+Pj4gWyAgIDMwLjM2OTk4MV0gSGFyZHdhcmUg
bmFtZTogQ2F2aXVtIEluYy4gU2FiZXIvU2FiZXIsIEJJT1MKPiA+Pj4+PiBUWDItRlctUmVsZWFz
ZS0zLjEtYnVpbGRfMDEtMjgwMy1nNzQyNTNhNTQxYSBtbS9kZC95eXl5Cj4gPj4+Pj4gWyAgIDMw
LjM2OTk4NF0gQ2FsbCB0cmFjZToKPiA+Pj4+PiBbICAgMzAuMzY5OTg5XSAgZHVtcF9iYWNrdHJh
Y2UrMHgwLzB4MWY4Cj4gPj4+Pj4gWyAgIDMwLjM2OTk5MV0gIHNob3dfc3RhY2srMHgyMC8weDMw
Cj4gPj4+Pj4gWyAgIDMwLjM2OTk5N10gIGR1bXBfc3RhY2srMHhjMC8weDEwYwo+ID4+Pj4+IFsg
ICAzMC4zNzAwMDFdICB3YXJuX2FsbG9jKzB4MTBjLzB4MTc4Cj4gPj4+Pj4gWyAgIDMwLjM3MDAw
NF0gIF9fYWxsb2NfcGFnZXNfc2xvd3BhdGguY29uc3Rwcm9wLjExMSsweGIxMC8weGI1MAo+ID4+
Pj4+IFsgICAzMC4zNzAwMDZdICBfX2FsbG9jX3BhZ2VzX25vZGVtYXNrKzB4MmI0LzB4MzAwCj4g
Pj4+Pj4gWyAgIDMwLjM3MDAwOF0gIGFsbG9jX3BhZ2VfaW50ZXJsZWF2ZSsweDI0LzB4OTgKPiA+
Pj4+PiBbICAgMzAuMzcwMDExXSAgYWxsb2NfcGFnZXNfY3VycmVudCsweGU0LzB4MTA4Cj4gPj4+
Pj4gWyAgIDMwLjM3MDAxN10gIGRtYV9hdG9taWNfcG9vbF9pbml0KzB4NDQvMHgxYTQKPiA+Pj4+
PiBbICAgMzAuMzcwMDIwXSAgZG9fb25lX2luaXRjYWxsKzB4NTQvMHgyMjgKPiA+Pj4+PiBbICAg
MzAuMzcwMDI3XSAga2VybmVsX2luaXRfZnJlZWFibGUrMHgyMjgvMHgyY2MKPiA+Pj4+PiBbICAg
MzAuMzcwMDMxXSAga2VybmVsX2luaXQrMHgxYy8weDExMAo+ID4+Pj4+IFsgICAzMC4zNzAwMzRd
ICByZXRfZnJvbV9mb3JrKzB4MTAvMHgxOAo+ID4+Pj4+IFsgICAzMC4zNzAwMzZdIE1lbS1JbmZv
Ogo+ID4+Pj4+IFsgICAzMC4zNzAwNjRdIGFjdGl2ZV9hbm9uOjAgaW5hY3RpdmVfYW5vbjowIGlz
b2xhdGVkX2Fub246MAo+ID4+Pj4+IFsgICAzMC4zNzAwNjRdICBhY3RpdmVfZmlsZTowIGluYWN0
aXZlX2ZpbGU6MCBpc29sYXRlZF9maWxlOjAKPiA+Pj4+PiBbICAgMzAuMzcwMDY0XSAgdW5ldmlj
dGFibGU6MCBkaXJ0eTowIHdyaXRlYmFjazowIHVuc3RhYmxlOjAKPiA+Pj4+PiBbICAgMzAuMzcw
MDY0XSAgc2xhYl9yZWNsYWltYWJsZTozNCBzbGFiX3VucmVjbGFpbWFibGU6NDQzOAo+ID4+Pj4+
IFsgICAzMC4zNzAwNjRdICBtYXBwZWQ6MCBzaG1lbTowIHBhZ2V0YWJsZXM6MTQgYm91bmNlOjAK
PiA+Pj4+PiBbICAgMzAuMzcwMDY0XSAgZnJlZToxNTM3NzE5IGZyZWVfcGNwOjIxOSBmcmVlX2Nt
YTowCj4gPj4+Pj4gWyAgIDMwLjM3MDA3MF0gTm9kZSAwIGFjdGl2ZV9hbm9uOjBrQiBpbmFjdGl2
ZV9hbm9uOjBrQgo+ID4+Pj4+IGFjdGl2ZV9maWxlOjBrQiBpbmFjdGl2ZV9maWxlOjBrQiB1bmV2
aWN0YWJsZTowa0IgaXNvbGF0ZWQoYW5vbik6MGtCCj4gPj4+Pj4gaXNvbGF0ZWQoZmlsZSk6MGtC
IG1hcHBlZDowa0IgZGlydHk6MGtCIHdyaXRlYmFjazowa0Igc2htZW06MGtCCj4gPj4+Pj4gc2ht
ZW1fdGhwOiAwa0Igc2htZW1fcG1kbWFwcGVkOiAwa0IgYW5vbl90aHA6IDBrQiB3cml0ZWJhY2tf
dG1wOjBrQgo+ID4+Pj4+IHVuc3RhYmxlOjBrQiBhbGxfdW5yZWNsYWltYWJsZT8gbm8KPiA+Pj4+
PiBbICAgMzAuMzcwMDczXSBOb2RlIDEgYWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246MGtC
Cj4gPj4+Pj4gYWN0aXZlX2ZpbGU6MGtCIGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBr
QiBpc29sYXRlZChhbm9uKTowa0IKPiA+Pj4+PiBpc29sYXRlZChmaWxlKTowa0IgbWFwcGVkOjBr
QiBkaXJ0eTowa0Igd3JpdGViYWNrOjBrQiBzaG1lbTowa0IKPiA+Pj4+PiBzaG1lbV90aHA6IDBr
QiBzaG1lbV9wbWRtYXBwZWQ6IDBrQiBhbm9uX3RocDogMGtCIHdyaXRlYmFja190bXA6MGtCCj4g
Pj4+Pj4gdW5zdGFibGU6MGtCIGFsbF91bnJlY2xhaW1hYmxlPyBubwo+ID4+Pj4+IFsgICAzMC4z
NzAwNzldIE5vZGUgMCBETUEgZnJlZTowa0IgbWluOjBrQiBsb3c6MGtCIGhpZ2g6MGtCCj4gPj4+
Pj4gcmVzZXJ2ZWRfaGlnaGF0b21pYzowS0IgYWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246
MGtCCj4gPj4+Pj4gYWN0aXZlX2ZpbGU6MGtCIGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxl
OjBrQiB3cml0ZXBlbmRpbmc6MGtCCj4gPj4+Pj4gcHJlc2VudDoxMjhrQiBtYW5hZ2VkOjBrQiBt
bG9ja2VkOjBrQiBrZXJuZWxfc3RhY2s6MGtCIHBhZ2V0YWJsZXM6MGtCCj4gPj4+Pj4gYm91bmNl
OjBrQiBmcmVlX3BjcDowa0IgbG9jYWxfcGNwOjBrQiBmcmVlX2NtYTowa0IKPiA+Pj4+PiBbICAg
MzAuMzcwMDg0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAwIDI1MCA2MDYzIDYwNjMKPiA+Pj4+PiBbICAg
MzAuMzcwMDkwXSBOb2RlIDAgRE1BMzIgZnJlZToyNTYwMDBrQiBtaW46NDA4a0IgbG93OjY2NGtC
Cj4gPj4+Pj4gaGlnaDo5MjBrQiByZXNlcnZlZF9oaWdoYXRvbWljOjBLQiBhY3RpdmVfYW5vbjow
a0IgaW5hY3RpdmVfYW5vbjowa0IKPiA+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmls
ZTowa0IgdW5ldmljdGFibGU6MGtCIHdyaXRlcGVuZGluZzowa0IKPiA+Pj4+PiBwcmVzZW50OjI2
OTcwMGtCIG1hbmFnZWQ6MjU2MDAwa0IgbWxvY2tlZDowa0Iga2VybmVsX3N0YWNrOjBrQgo+ID4+
Pj4+IHBhZ2V0YWJsZXM6MGtCIGJvdW5jZTowa0IgZnJlZV9wY3A6MGtCIGxvY2FsX3BjcDowa0Ig
ZnJlZV9jbWE6MGtCCj4gPj4+Pj4gWyAgIDMwLjM3MDA5NF0gbG93bWVtX3Jlc2VydmVbXTogMCAw
IDU4MTMgNTgxMwo+ID4+Pj4+IFsgICAzMC4zNzAxMDBdIE5vZGUgMCBOb3JtYWwgZnJlZTo1ODk0
ODc2a0IgbWluOjk1NTJrQiBsb3c6MTU1MDRrQgo+ID4+Pj4+IGhpZ2g6MjE0NTZrQiByZXNlcnZl
ZF9oaWdoYXRvbWljOjBLQiBhY3RpdmVfYW5vbjowa0IgaW5hY3RpdmVfYW5vbjowa0IKPiA+Pj4+
PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0IgdW5ldmljdGFibGU6MGtCIHdyaXRl
cGVuZGluZzowa0IKPiA+Pj4+PiBwcmVzZW50OjgzODg2MDhrQiBtYW5hZ2VkOjU5NTMxMTJrQiBt
bG9ja2VkOjBrQiBrZXJuZWxfc3RhY2s6MjE2NzJrQgo+ID4+Pj4+IHBhZ2V0YWJsZXM6NTZrQiBi
b3VuY2U6MGtCIGZyZWVfcGNwOjg3NmtCIGxvY2FsX3BjcDoxNzZrQiBmcmVlX2NtYTowa0IKPiA+
Pj4+PiBbICAgMzAuMzcwMTA0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAwIDAgMCAwCj4gPj4+Pj4gWyAg
IDMwLjM3MDEwN10gTm9kZSAwIERNQTogMCo0a0IgMCo4a0IgMCoxNmtCIDAqMzJrQiAwKjY0a0Ig
MCoxMjhrQgo+ID4+Pj4+IDAqMjU2a0IgMCo1MTJrQiAwKjEwMjRrQiAwKjIwNDhrQiAwKjQwOTZr
QiA9IDBrQgo+ID4+Pj4+IFsgICAzMC4zNzAxMTNdIE5vZGUgMCBETUEzMjogMCo0a0IgMCo4a0Ig
MCoxNmtCIDAqMzJrQiAwKjY0a0IgMCoxMjhrQgo+ID4+Pj4+IDAqMjU2a0IgMCo1MTJrQiAwKjEw
MjRrQiAxKjIwNDhrQiAoTSkgNjIqNDA5NmtCIChNKSA9IDI1NjAwMGtCCj4gPj4+Pj4gWyAgIDMw
LjM3MDExOV0gTm9kZSAwIE5vcm1hbDogMio0a0IgKE0pIDMqOGtCIChNRSkgMioxNmtCIChVRSkg
MyozMmtCCj4gPj4+Pj4gKFVNKSAxKjY0a0IgKFUpIDIqMTI4a0IgKE0pIDIqMjU2a0IgKE1FKSAz
KjUxMmtCIChNRSkgMyoxMDI0a0IgKE1FKQo+ID4+Pj4+IDMqMjA0OGtCIChVTUUpIDE0MzYqNDA5
NmtCIChNKSA9IDU4OTM2MDBrQgo+ID4+Pj4+IFsgICAzMC4zNzAxMjldIE5vZGUgMCBodWdlcGFn
ZXNfdG90YWw9MCBodWdlcGFnZXNfZnJlZT0wCj4gPj4+Pj4gaHVnZXBhZ2VzX3N1cnA9MCBodWdl
cGFnZXNfc2l6ZT0xMDQ4NTc2a0IKPiA+Pj4+PiBbICAgMzAuMzcwMTMwXSAwIHRvdGFsIHBhZ2Vj
YWNoZSBwYWdlcwo+ID4+Pj4+IFsgICAzMC4zNzAxMzJdIDAgcGFnZXMgaW4gc3dhcCBjYWNoZQo+
ID4+Pj4+IFsgICAzMC4zNzAxMzRdIFN3YXAgY2FjaGUgc3RhdHM6IGFkZCAwLCBkZWxldGUgMCwg
ZmluZCAwLzAKPiA+Pj4+PiBbICAgMzAuMzcwMTM1XSBGcmVlIHN3YXAgID0gMGtCCj4gPj4+Pj4g
WyAgIDMwLjM3MDEzNl0gVG90YWwgc3dhcCA9IDBrQgo+ID4+Pj4+IFsgICAzMC4zNzAxMzddIDIx
NjQ2MDkgcGFnZXMgUkFNCj4gPj4+Pj4gWyAgIDMwLjM3MDEzOV0gMCBwYWdlcyBIaWdoTWVtL01v
dmFibGVPbmx5Cj4gPj4+Pj4gWyAgIDMwLjM3MDE0MF0gNjEyMzMxIHBhZ2VzIHJlc2VydmVkCj4g
Pj4+Pj4gWyAgIDMwLjM3MDE0MV0gMCBwYWdlcyBod3BvaXNvbmVkCj4gPj4+Pj4gWyAgIDMwLjM3
MDE0M10gRE1BOiBmYWlsZWQgdG8gYWxsb2NhdGUgMjU2IEtpQiBwb29sIGZvciBhdG9taWMKPiA+
Pj4+PiBjb2hlcmVudCBhbGxvY2F0aW9uCj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IER1cmluZyBteSB0
ZXN0aW5nIEkgc2F3IHRoZSBzYW1lIGVycm9yIGFuZCBDaGVuJ3MgIHNvbHV0aW9uIGNvcnJlY3Rl
ZCBpdCAuCj4gPj4+Cj4gPj4+IFdoaWNoIGNvbWJpbmF0aW9uIHlvdSBhcmUgdXNpbmcgb24geW91
ciBzaWRlPyBJIGFtIHVzaW5nIFByYWJoYWthcidzCj4gPj4+IHN1Z2dlc3RlZCBlbnZpcm9ubWVu
dCBhbmQgY2FuIHJlcHJvZHVjZSB0aGUgaXNzdWUKPiA+Pj4gd2l0aCBvciB3aXRob3V0IENoZW4n
cyBjcmFzaGtlcm5lbCBzdXBwb3J0IGFib3ZlIDRHIHBhdGNoc2V0Lgo+ID4+Pgo+ID4+PiBJIGFt
IGFsc28gdXNpbmcgYSBUaHVuZGVyWDIgcGxhdGZvcm0gd2l0aCBsYXRlc3QgbWFrZWR1bXBmaWxl
IGNvZGUgYW5kCj4gPj4+IGtleGVjLXRvb2xzICh3aXRoIHRoZSBzdWdnZXN0ZWQgcGF0Y2gKPiA+
Pj4gPGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvcGlwZXJtYWlsL2tleGVjLzIwMjAtTWF5LzAyNTEyOC5odG1sX187ISFHcWl2UFZhN0JyaW8h
SjZsVWlnNTgtR3c2VEtabkVFWXpFZVNVMzZULTFTcWxCMWtJbVUwMHh0WF9sc3M1VHgtSmJVbUxF
OVRKQzNmb1hCTGckID4pLgo+ID4+Pgo+ID4+PiBUaGFua3MsCj4gPj4+IEJodXBlc2gKPiA+Pgo+
ID4+Cj4gPj4gSSBkaWQgdGhpcyBhY3Rpdml0eSA1IG1vbnRocyBhZ28gYW5kIEkgaGF2ZSBtb3Zl
ZCBvbiB0byBvdGhlciBhY3Rpdml0aWVzLiBNeSBETUEgZmFpbHVyZXMgd2VyZSByZWxhdGVkIHRv
IFBDSSBkZXZpY2VzIHRoYXQgY291bGQgbm90IGJlIGVudW1lcmF0ZWQgYmVjYXVzZSAgbG93LURN
QSBzcGFjZSB3YXMgbm90ICBhdmFpbGFibGUgd2hlbiBjcmFzaGtlcm5lbCB3YXMgbW92ZWQgYWJv
dmUgNEc7IEkgZG9u4oCZdCByZWNhbGwgdGhlIGV4YWN0IHBsYXRmb3JtLgo+ID4+Cj4gPj4KPiA+
Pgo+ID4+IEZvciB0aGlzIGZhaWx1cmUgLAo+ID4+Cj4gPj4+Pj4gRE1BOiBmYWlsZWQgdG8gYWxs
b2NhdGUgMjU2IEtpQiBwb29sIGZvciBhdG9taWMKPiA+Pj4+PiBjb2hlcmVudCBhbGxvY2F0aW9u
Cj4gPj4KPiA+Pgo+ID4+IElzIGR1ZSB0byA6Cj4gPj4KPiA+Pgo+ID4+IDM2MTgwODJjCj4gPj4g
KCJhcm02NCB1c2UgYm90aCBaT05FX0RNQSBhbmQgWk9ORV9ETUEzMiIpCj4gPj4KPiA+PiBXaXRo
IHRoZSBpbnRyb2R1Y3Rpb24gb2YgWk9ORV9ETUEgdG8gc3VwcG9ydCB0aGUgUmFzcGJlcnJ5IERN
QQo+ID4+IHJlZ2lvbiBiZWxvdyAxRywgdGhlIGNyYXNoa2VybmVsIGlzIHBsYWNlZCBpbiB0aGUg
dXBwZXIgNEcKPiA+PiBaT05FX0RNQV8zMiByZWdpb24uIFNpbmNlIHRoZSBjcmFzaGtlcm5lbCBk
b2VzIG5vdCBoYXZlIGFjY2Vzcwo+ID4+IHRvIHRoZSBaT05FX0RNQSByZWdpb24sIGl0IHByaW50
cyBvdXQgY2FsbCB0cmFjZSBkdXJpbmcgYm9vdHVwLgo+ID4+Cj4gPj4gSXQgaXMgZHVlIHRvIGhh
dmluZyB0aGlzIENPTkZJRyBpdGVtICBPTiAgOgo+ID4+Cj4gPj4KPiA+PiBDT05GSUdfWk9ORV9E
TUE9eQo+ID4+Cj4gPj4gVHVybmluZyBvZmYgWk9ORV9ETUEgZml4ZXMgYSBpc3N1ZSBhbmQgUmFz
cGJlcnJ5IFBJIDQgd2lsbAo+ID4+IHVzZSB0aGUgZGV2aWNlIHRyZWUgdG8gc3BlY2lmeSBtZW1v
cnkgYmVsb3cgMUcuCj4gPj4KPiA+Pgo+ID4KPiA+IERpc2FibGluZyBaT05FX0RNQSBpcyB0ZW1w
b3Jhcnkgc29sdXRpb24uICBXZSBtYXkgbmVlZCBwcm9wZXIgc29sdXRpb24KPgo+Cj4gUGVyaGFw
cyB0aGUgUmFzcGJlcnJ5IHBsYXRmb3JtIGNvbmZpZ3VyYXRpb24gZGVwZW5kZW5jaWVzIG5lZWQg
c2VwYXJhdGVkICBmcm9tIOKAnHNlcnZlciBjbGFzc+KAnSBBcm0gIGVxdWlwbWVudCA/ICBPciBh
dXRvLWNvbmZpZ3VyZWQgb24gYm9vdCA/ICBDb25zdWx0IGFuIGV4cGVydCA7LSkKPgo+Cj4KPiA+
Cj4gPj4gSSB3b3VsZCBsaWtlIHRvIHNlZSBDaGVu4oCZcyBmZWF0dXJlIGFkZGVkICwgcGVyaGFw
cyBhcyBFWFBFUklNRU5UQUwsICBzbyB3ZSBjYW4gZ2V0IHNvbWUgY29uZmlndXJhdGlvbiB0ZXN0
aW5nIGRvbmUgb24gaXQuICAgSXQgY29ycmVjdHMgaGF2aW5nIGEgRE1BIHpvbmUgaW4gbG93IG1l
bW9yeSB3aGlsZSBjcmFzaC1rZXJuZWwgaXMgYWJvdmUgNEdCLiAgVGhpcyBoYXMgYmVlbiBnb2lu
ZyBvbiBmb3IgYSB5ZWFyIG5vdy4KPiA+Cj4gPiBJIHdpbGwgYWxzbyBsaWtlIHRoaXMgcGF0Y2gg
dG8gYmUgYWRkZWQgaW4gTGludXggYXMgZWFybHkgYXMgcG9zc2libGUuCj4gPgo+ID4gSXNzdWUg
bWVudGlvbmVkIGJ5IG1lIGhhcHBlbnMgd2l0aCBvciB3aXRob3V0IHRoaXMgcGF0Y2guCj4gPgo+
ID4gVGhpcyBwYXRjaC1zZXQgY2FuIGNvbnNpZGVyIGZpeGluZyBiZWNhdXNlIGl0IHVzZXMgbG93
IG1lbW9yeSBmb3IgRE1BCj4gPiAmIHN3aW90bGIgb25seS4KPiA+IFdlIGNhbiBjb25zaWRlciBy
ZXN0cmljdGluZyBjcmFzaGtlcm5lbCB3aXRoaW4gdGhlIHJlcXVpcmVkIHJhbmdlIGxpa2UgYmVs
b3cKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEva2VybmVsL2NyYXNoX2NvcmUuYyBiL2tlcm5lbC9jcmFz
aF9jb3JlLmMKPiA+IGluZGV4IDdmOWU1YTZkYzQ4Yy4uYmQ2N2I5MGQzNWJkIDEwMDY0NAo+ID4g
LS0tIGEva2VybmVsL2NyYXNoX2NvcmUuYwo+ID4gKysrIGIva2VybmVsL2NyYXNoX2NvcmUuYwo+
ID4gQEAgLTM1NCw3ICszNTQsNyBAQCBpbnQgX19pbml0IHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93
KHZvaWQpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gICAgICAgIH0K
PiA+Cj4gPiAtICAgICAgIGxvd19iYXNlID0gbWVtYmxvY2tfZmluZF9pbl9yYW5nZSgwLCAxVUxM
IDw8IDMyLCBsb3dfc2l6ZSwgQ1JBU0hfQUxJR04pOwo+ID4gKyAgICAgICBsb3dfYmFzZSA9IG1l
bWJsb2NrX2ZpbmRfaW5fcmFuZ2UoMCwweGMwMDAwMDAwLCBsb3dfc2l6ZSwgQ1JBU0hfQUxJR04p
Owo+ID4gICAgICAgIGlmICghbG93X2Jhc2UpIHsKPiA+ICAgICAgICAgICAgICAgIHByX2Vycigi
Q2Fubm90IHJlc2VydmUgJWxkTUIgY3Jhc2hrZXJuZWwgbG93IG1lbW9yeSwKPiA+IHBsZWFzZSB0
cnkgc21hbGxlciBzaXplLlxuIiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAodW5zaWduZWQg
bG9uZykobG93X3NpemUgPj4gMjApKTsKPiA+Cj4gPgo+Cj4gICAgIEkgc3VzcGVjdCAgMHhjMDAw
MDAwMCAgd291bGQgbmVlZCB0byBiZSBhIENPTkZJRyBpdGVtICBhbmQgbm90IGhhcmQtY29kZWQu
Cj4KCmlmIHlvdSBjb25zaWRlciB0aGlzIGFzIHZhbGlkIGNoYW5nZSwgIGNhbiB5b3UgcGxlYXNl
IGluY29ycG9yYXRlIGFzCnBhcnQgb2YgeW91ciBwYXRjaC1zZXQuCgotLXBrLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
