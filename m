Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2E7AC555
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 10:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqnXkPZ7s97BxquqGy9DzQUwAU5nAOgX5Ja0Rr4lIvc=; b=m1UIL3qf8rUY8w
	3IjMMWKl48FlhtnSA0DDZki5dat5qIzaRLuW0/cArUFiNtrjCEkrjSoIG/Vi4UknCX2r6Ccx/Opmp
	LDk+5r4kC7PZiQ+/SNbwF1thfvUwqX8YUG8oSL3LejDcDi3Z7wWVWvHroXMweNbu9/GkOqnaX2go4
	mmWP5j2Uz0/mVoBb8/WuZLjOzhRtbklqMt5FJyvN6sZGNoL386OApSVL/CLugvCQaRK4uGVpwvlII
	s8H1nHK5AWPr9M02ff1XVsDA3ZT7sozRM58/9SBfij/LC0Qb5VMJXI7BX0QbvfdgeXTNBQ5oaBRaO
	PmRDwgN/G2u3UpC9Cmlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Vyz-0002Oe-B9; Sat, 07 Sep 2019 08:22:09 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Vyd-0002OL-Lp
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 08:21:48 +0000
Received: by mail-qt1-f195.google.com with SMTP id g13so9680712qtj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 01:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SqY8ipdjRhPdcT06V8HKR0Y7vgkgALycJ+/dO+E7hb4=;
 b=BioDSBj5ZxIrCetv4UpqcSwtJWDQN9Ffl69InPaNxj9RXaeU1eAgWnakS1rvPXy9TK
 V9ablGgLDK24nAHfX5Lb4jlRk4mPKl1hjNhqhj2mG6ADtcwwPoncalelrRB5mtTgjM+T
 b3cSUmG8hTvfy1iOznQw1858J7iCY6uNjxPFHdhmjPUMCnkZbCk7HBd4ha2uRu93I8tn
 haOBslCdk0siNl0Us3cUZKOxc9B0ZukIAig8/Goyqku+ubo40k3B16A7qxjUzFSflX/H
 6m54dG+j4a1rZd1agNendtu1CB5Uy2W0JM0I5zN2wCNgPdSlXOhAMHdUYjFAAw3qern5
 S0eQ==
X-Gm-Message-State: APjAAAV1QZkbQWdpduTBDKYDAxbNtdfXH6nrLsF5TkoPJdzG26k569QT
 TGtRpMWiAOW/mMU6GlXZ2VCI0/ILQyMc+E42cLE=
X-Google-Smtp-Source: APXvYqzRYVVMyM77Vt8gvI+FbKLaNN+wwlYJ0v6SQkWNMVU/hob4fIebzW9qddRL6uNYcNSgC61iAhB/e3TAzYo2s7s=
X-Received: by 2002:a0c:d084:: with SMTP id z4mr8031422qvg.63.1567844505515;
 Sat, 07 Sep 2019 01:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
 <CAMRc=Me_7aw_RvU_tZnVUgduN2wWYGqJ7hQirQ2RLzxGiPujvQ@mail.gmail.com>
 <CAMRc=MdCviMA4gakqFS3+F-nU2XkdmmZbCb-m1mBJdGRHufKGg@mail.gmail.com>
 <27eb964a-bc6c-3a0d-c2c4-48e908465986@ti.com>
 <CAMpxmJX7osgdzx1Lc=627RpHZDs+ha8a6=AnhaQJ5HkLVp-xKg@mail.gmail.com>
In-Reply-To: <CAMpxmJX7osgdzx1Lc=627RpHZDs+ha8a6=AnhaQJ5HkLVp-xKg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 7 Sep 2019 10:21:29 +0200
Message-ID: <CAK8P3a0+kfDbGrcFi5TLxNNpoOM6u6KRW+PaLFNSQJ9BTxX=-w@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_012147_714683_EB657CB7 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgOTo1NSBBTSBCYXJ0b3N6IEdvbGFzemV3c2tpCjxiZ29s
YXN6ZXdza2lAYmF5bGlicmUuY29tPiB3cm90ZToKPiDFm3IuLCAyOCBzaWUgMjAxOSBvIDA5OjQ0
IFNla2hhciBOb3JpIDxuc2VraGFyQHRpLmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBBY3R1YWxseSBJ
IHRlc3RlZCB0aGlzIHdpdGhvdXQgdGhlIGNsb2Nrc291cmNlIGNvbnZlcnNpb24gYW5kIGl0IHdv
cmtzCj4gLSB0aGUgcHJldmlvdXMgZHJpdmVyIHN0aWxsIHNlbGVjdHMgcmVsZXZhbnQgY29uZmln
IG9wdGlvbnMuIEJ1dCBJCj4gdGhpbmsgeW91J3JlIHJpZ2h0IC0gaXQncyB3b3J0aCBwaWNraW5n
IHVwIGFsbCB0aGUgYnVnIGZpeGVzIGZyb20gdGhpcwo+IHNlcmllcyBhbmQgdGhlbiBtZXJnaW5n
IHRoZSByZXN0IG9uY2UgZG0zNjUgaXNzdWUgaXMgZml4ZWQuCgpJIGp1c3QgaGFkIGFub3RoZXIg
bG9vayBhdCB0aGUgc2VyaWVzIGFuZCBmb3VuZCB0aGF0IHRoZSBkcml2ZXIgZml4ZXMKKHBhdGNo
ZXMgMSBhbmQgMikgYXJlIHF1ZXVlZCBpbiBsaW51eC1uZXh0LCBhbmQgcGF0Y2ggMyB3YXMgbWVy
Z2VkLgoKSWYgeW91IGxpa2UsIEkgY291bGQgcHV0IHRoZSByZW1haW5pbmcgdHdvIHBhdGNoZXMg
aW50byB0aGUgYXJtL2xhdGUgYnJhbmNoCmFuZCBzZW5kIHRoYXQgYWZ0ZXIgdGhlIG1lZGlhIGFu
ZCBzdGFnaW5nIHRyZWVzIGFyZSBtZXJnZWQgaW50byBtYWlubGluZS4KCiAgICAgIEFybmQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
