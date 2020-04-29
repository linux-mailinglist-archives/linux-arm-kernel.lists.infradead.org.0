Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BDA1BD9EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46nnDbtgzT0cmCxXul2F7s2yQzMlj7acFpdU4fMc0FE=; b=SsJaRaSoa0WYpY
	6KDukvgjxO5B5yKKsQI7C/BIVwk9D5hAifAHOcqi47Wx12DL7iCInrWE0/KeB8mAPUpYHvaHBhhL8
	mVLAaBmrINNOrkQ9VmGOTpvRbWrOjutFOWxq6tcgmwKzQEBk/4KTnW4aGjp04ttAvKrIr+uKawrEg
	ZumuNNSAKSjecxgvLWUSbxIaDdLyGYgVbeR9BSeUvgWrYPjOtZp2ptKXSq5kz0crJ3TqJohoa8NvK
	J95glFjGZSH+M4sWRKYzFf3086kRRTZST0aMdzhE9BJxmWoD8Vwz9TSm6oK5XCW7sQfY5k0Ipb+mP
	5Q0dGDqIWkUCyCK+yjCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTkBB-000817-BI; Wed, 29 Apr 2020 10:43:01 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTkAv-0007z7-Rf
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:42:47 +0000
Received: by mail-il1-x143.google.com with SMTP id q10so1979398ile.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 03:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HQCeKCJ5flepvrlwaiupKHsPEVU0GNt4+HY/TULi0WE=;
 b=AtVONm21nVueyYOEjkLYejUuBgYmxhMXAOBhsMlPX4Y63BJoJJznDF9cqHZmyfgW0O
 04PtTzKuPGXkTqiqqqBvOSFQU/tY5aTy3h+MquydTM6cAPaBtEd6QeD2Uzsepwoacgm7
 EUrA3PX0EU8XgdtbJ+bZsdmKkufFj0oNquC3cxRGn+RecOq7qZDjjp7hZ3uPz2wH+Ry3
 NBfwS8axrMNb1W6FT32Z/fQgaiBUd8Qps4nva+s2HqC0qOFnAJ9rzcatLlD9PeMgx70t
 136uEHWPN8bvCD/EyvQ9ojuvl8tslWqieT1qIV8Aa3jT2L0yGihxHY1V4GtkXlSo53l+
 B9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HQCeKCJ5flepvrlwaiupKHsPEVU0GNt4+HY/TULi0WE=;
 b=TmjEiIg+1cIf9V+YZAMMgfJKI4mCzX2MnUYOJDM3bGbmt3RYCjAfjlP9Zwzdz6/goF
 o4lk7VC86OdQZDlBKJZla7xwayw534CC2/y3e/zQDVKeDmJuCPkIUxXjHDOa42gUl3DT
 fRg5e7y1suFELtOmJ++Na+idkDgY/77GDLt7+ALSPPFLH8B/E8k+20qrGK1f6mq3sckQ
 FwIzn24Gg7P8UZv9ygqJqIxqAzF2Ts8xnjYXmpECu60+o3C5GIEFOwms3A7Zse4StTSH
 T8GLNOcUt3k0mlFGg2cBqgpBJDcW5DUGspRS5GiXY83JAPmY1lbVIPXSYeaokIaitaDV
 aS2Q==
X-Gm-Message-State: AGi0PuZ+zbaAOC5jB4hqHYIXtyQ9WPuGqhvnXXklJPni2Ra36MdjjoCb
 cms6m2q6r4KwhDS8KoaVvHwDgcz0AlfsFjVR5JU=
X-Google-Smtp-Source: APiQypKL531i2NUS2jYYEqcP5uqHNVeBcZJLsXULczyPxkeF1g0mvYUtPJLWYzGXNriIVhhoi4PDnZCKXk4FbGoGWwc=
X-Received: by 2002:a92:d443:: with SMTP id r3mr31485691ilm.293.1588156964317; 
 Wed, 29 Apr 2020 03:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
 <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
 <031ee5d3-8a30-82ee-76db-c0e8a1073046@arm.com>
 <CAGb2v65rRbRpUTdkTF3hd5LnLQQt19YVOyVzM5te5XNVhQQH=A@mail.gmail.com>
 <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
In-Reply-To: <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 29 Apr 2020 12:42:33 +0200
Message-ID: <CAJiuCceGDm3HJydesXvL=Wr1_LCAsewfKAB73YV5J7eAgTRpOA@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_034245_925240_084EC2D5 
X-CRM114-Status: GOOD (  31.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Takashi Iwai <tiwai@suse.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIDI5IEFwciAyMDIwIGF0IDEwOjE3LCBNYXhpbWUgUmlwYXJkIDxtYXhpbWVA
Y2Vybm8udGVjaD4gd3JvdGU6Cj4KPiBPbiBXZWQsIEFwciAyOSwgMjAyMCBhdCAwMjoyNDowMFBN
ICswODAwLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiBPbiBXZWQsIEFwciAyOSwgMjAyMCBhdCAx
OjExIEFNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+ID4gPgo+
ID4gPiBPbiAyMDIwLTA0LTI4IDU6NDkgcG0sIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4g
PiBIaSBNYXJrLCBSb2IsCj4gPiA+ID4KPiA+ID4gPiBPbiBUdWUsIDI4IEFwciAyMDIwIGF0IDE4
OjA0LCBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4gd3JvdGU6Cj4gPiA+ID4+Cj4g
PiA+ID4+IE9uIFR1ZSwgQXByIDI4LCAyMDIwIGF0IDEwOjU0OjAwQU0gKzAyMDAsIENsw6ltZW50
IFDDqXJvbiB3cm90ZToKPiA+ID4gPj4+IEhpIE1heGltZSwKPiA+ID4gPj4+Cj4gPiA+ID4+PiBP
biBUdWUsIDI4IEFwciAyMDIwIGF0IDEwOjAwLCBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8u
dGVjaD4gd3JvdGU6Cj4gPiA+ID4+Pj4KPiA+ID4gPj4+PiBPbiBTdW4sIEFwciAyNiwgMjAyMCBh
dCAwMjowNDozOVBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+ID4+Pj4+IEZy
b206IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4gPiA+Pj4+Pgo+ID4g
PiA+Pj4+PiBBZGQgYSBzaW1wbGUtc291bmRjYXJkIHRvIGxpbmsgYXVkaW8gYmV0d2VlbiBIRE1J
IGFuZCBJMlMuCj4gPiA+ID4+Pj4+Cj4gPiA+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBT
a3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+ID4gPj4+Pj4gU2lnbmVkLW9mZi1i
eTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+Cj4gPiA+ID4+Pj4+IFNpZ25l
ZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiA+ID4+
Pj4+IC0tLQo+ID4gPiA+Pj4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1hNjQuZHRzaSB8IDIxICsrKysrKysrKysrKysrKysrKysKPiA+ID4gPj4+Pj4gICAxIGZpbGUg
Y2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQo+ID4gPiA+Pj4+Pgo+ID4gPiA+Pj4+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpCj4gPiA+ID4+Pj4+IGlu
ZGV4IGU1NmUxZTNkNGI3My4uMDhhYjZiNWU3MmE1IDEwMDY0NAo+ID4gPiA+Pj4+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKPiA+ID4gPj4+Pj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpCj4gPiA+
ID4+Pj4+IEBAIC0xMDIsNiArMTAyLDI1IEBACj4gPiA+ID4+Pj4+ICAgICAgICAgICAgICAgIHN0
YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ID4+Pj4+ICAgICAgICB9Owo+ID4gPiA+Pj4+Pgo+ID4g
PiA+Pj4+PiArICAgICBoZG1pX3NvdW5kOiBoZG1pLXNvdW5kIHsKPiA+ID4gPj4+Pj4gKyAgICAg
ICAgICAgICBjb21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1jYXJkIjsKPiA+ID4gPj4+Pj4gKyAg
ICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxmb3JtYXQgPSAiaTJzIjsKPiA+ID4gPj4+Pj4g
KyAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gImFsbHdpbm5lcixoZG1pIjsK
PiA+ID4gPj4+Pgo+ID4gPiA+Pj4+IEknbSBub3Qgc3VyZSB3aGF0IHRoZSB1c3VhbCBjYXJkIG5h
bWUgc2hvdWxkIGJlIGxpa2UgdGhvdWdoLiBJIHdvdWxkIGFzc3VtZSB0aGF0Cj4gPiA+ID4+Pj4g
dGhpcyBzaG91bGQgYmUgc29tZXRoaW5nIHNwZWNpZmljIGVub3VnaCBzbyB0aGF0IHlvdSdyZSBh
YmxlIHRvIGRpZmZlcmVudGlhdGUKPiA+ID4gPj4+PiBiZXR3ZWVuIGJvYXJkcyAvIFNvQyBzbyB0
aGF0IHRoZSB1c2Vyc3BhY2UgY2FuIGNob29zZSBhIGRpZmZlcmVudCBjb25maWd1cmF0aW9uCj4g
PiA+ID4+Pj4gYmFzZWQgb24gaXQ/Cj4gPiA+ID4+Pgo+ID4gPiA+Pj4gSSByZWFsbHkgZG9uJ3Qg
a25vdyB3aGF0IHdlIHNob3VsZCB1c2UgaGVyZSwKPiA+ID4gPj4+IEkganVzdCBoYXZlIGEgbG9v
ayBhdCBvdGhlciBTb0M6Cj4gPiA+ID4+PiByazMzMjg6ICJIRE1JIgo+ID4gPiA+Pj4gcmszMzk5
OiAiaGRtaS1zb3VuZCIKPiA+ID4gPj4+IHI4YTc3NGMwLWNhdDg3NDogIkNBVDg3NCBIRE1JIHNv
dW5kIgo+ID4gPiA+Pj4KPiA+ID4gPj4+IEJ1dCBtYXliZSBpdCdzIHRpbWUgdG8gaW50cm9kdWNl
IHByb3BlciBuYW1lOgo+ID4gPiA+Pj4gV2hhdCBhYm91dCA6Cj4gPiA+ID4+PiBwYXQKPiA+ID4g
Pj4+IHN1bjUwaS1oNi1oZG1pCj4gPiA+ID4+Cj4gPiA+ID4+IEl0J3MgcHJldHR5IG11Y2ggd2hh
dCB3ZSd2ZSBiZWVuIHVzaW5nIGZvciB0aGUgb3RoZXIgc291bmQgY2FyZHMgd2UgaGF2ZSwgc28g
aXQKPiA+ID4gPj4gbWFrZXMgc2Vuc2UgdG8gbWUuCj4gPiA+ID4KPiA+ID4gPiBJIGhhdmUgYSBx
dWVzdGlvbiByZWdhcmRpbmcgdGhlIHNpbXBsZS1hdWRpby1jYXJkLG5hbWUuCj4gPiA+ID4gSW4g
dGhpcyBwYXRjaCwgSSB3b3VsZCBsaWtlIHRvIGludHJvZHVjZSBhIHNpbXBsZS1hdWRpby1jYXJk
IGZvciB0aGUKPiA+ID4gPiBBbGx3aW5uZXIgQTY0IEhETUkuCj4gPiA+ID4KPiA+ID4gPiBXaGF0
IHNob3VsZCBiZSB0aGUgcHJlZmVycmVkIG5hbWUgZm9yIHRoaXMgc291bmQgY2FyZD8KPiA+ID4g
PiAic3VuNTBpLWE2NC1oZG1pIiA/ICJhbGx3aW5uZXIsIHN1bjUwaS1hNjQtaGRtaSIgPwo+ID4g
Pgo+ID4gPiBJIGNhbiBhdCBsZWFzdCBzcGVhayBmb3IgUkszMzI4LCBhbmQgdGhlIHJlYXNvbmlu
ZyB0aGVyZSB3YXMgdGhhdCBhcyB0aGUKPiA+ID4gdXNlciBsb29raW5nIGF0IHdoYXQgYGFwbGF5
IC1sYCBzYXlzLCBJIGRvbid0IGdpdmUgYSBob290IGFib3V0IHdoYXQgdGhlCj4gPiA+IFNvQyBt
YXkgYmUgY2FsbGVkLCBJIHNlZSB0d28gY2FyZHMgYW5kIEkgd2FudCB0byBrbm93LCB3aXRoIHRo
ZSBsZWFzdAo+ID4gPiBhbW91bnQgb2YgdW5jZXJ0YWludHksIHdoaWNoIG9uZSB3aWxsIG1ha2Ug
dGhlIHNvdW5kIGNvbWUgb3V0IG9mIHRoZQo+ID4gPiBwb3J0IHRoYXQncyBsYWJlbGxlZCAiSERN
SSIgb24gdGhlIGJveCA7KQo+ID4KPiA+IEkgYWdyZWUuIFRoZSB1c2VyIHJlYWxseSBkb2Vzbid0
IGNhcmUgd2hhdCBTb0MgdGhlIHN5c3RlbSB1c2VzLiBUaGUgb25seQo+ID4gcmVhbCByZXF1aXJl
bWVudCBpcyB0byBiZSBhYmxlIHRvIHRlbGwgd2hpY2ggb3V0cHV0IHRoZSBjYXJkIGlzIHJlbGF0
ZWQKPiA+IHRvLCBpLmUuIGlzIGl0IG9uYm9hcmQgb3IgYW4gZXh0ZXJuYWwgREFDLCBpcyBpdCBh
bmFsb2cgb3IgSERNSSwgZXRjLi4KPgo+IFllYWgsIGJ1dCBpdCdzIGV4YWN0bHkgdGhlIHBvaW50
Lgo+Cj4gSWYgd2UgYWxzbyBlbmQgdXAgd2l0aCAiSERNSSIgYXMgb3VyIGNhcmQgbmFtZSwgdGhl
biB0aGUgdXNlcnNwYWNlIGhhcyBubyB3YXkgdG8KPiB0ZWxsIGFueW1vcmUgaWYgaXQncyBydW5u
aW5nIGZyb20gYW4gcmszMzI4IG9yIGFuIGFsbHdpbm5lciBTb0MsIG9yIHNvbWV0aGluZwo+IGVs
c2UgZW50aXJlbHkuIEFuZCB0aGVyZWZvcmUgaXQgY2Fubm90IHJlYWxseSBjb25maWd1cmUgYW55
dGhpbmcgdG8gd29yayBvdXQgb2YKPiB0aGUgYm94IGFueW1vcmUuCgpZZXMgdGhlIGZpbmFsIHVz
ZXIgZG9lc24ndCBjYXJlIGlmIGl0J3Mgc3VuNTBpIEE2NCBIRE1JIG9yIHN1bjUwaSBINgpIRE1J
LCBidXQgbGlrZSBNYXhpbWUgc2FpZCBiZXR3ZWVuIGZpbmFsIHVzZXIgYW5kIHRoZSBzb3VuZC1j
YXJkIG5hbWUKeW91IG1heSB3YW50IHRvIGhhdmUgYSBjb25maWd1cmF0aW9uIGxheWVyLgpUaGlz
IGNvbmZpZ3VyYXRpb24gbGF5ZXIgY2FuIGFwcGx5IGRpZmZlcmVudCBzZXR0aW5ncyBkZXBlbmRp
bmcgb24gdGhlCnNvdW5kIGNhcmQuCkhhdmluZyB0b28gZ2VuZXJpYyBuYW1lIHdpbGwgbWFrZSBp
bXBvc3NpYmxlIHNwZWNpZmljIGNhcmQgY29uZmlndXJhdGlvbi4KCkFsc28geW91IGNhbiBoYXZl
IHNwZWNpZmljIG5hbWUgcGVyIGJvYXJkIHdoaWNoIGNhbiBiZSBxdWl0ZSBjbGVhciBmb3IKZmlu
YWwgdXNlci4KIC0gc3VuNTBpLWE2NC1oZG1pCiAtIHN1bjUwaS1hNjQtc3BkaWYKaXMgbm90IHNv
IGhhcmQgdG8gdW5kZXJzdGFuZCB0aGF0IG9uZSBwb2ludCB0byB0aGUgSERNSSB3aGVyZWFzIHRo
ZQpvdGhlciBwb2ludCB0byBTUERJRi4KClJlZ2FyZHMsCkNsZW1lbnQKCj4KPiBNYXhpbWUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
