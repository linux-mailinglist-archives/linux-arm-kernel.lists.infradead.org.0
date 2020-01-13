Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF00138F09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+uiyYLOm2mzgL3JgjkJObit9ItANnw9j/Gel+KDlRM=; b=hAFRZcniUyJvRK
	+avAnvKkgb472Zr2xXjM1SSWjnNoEV/SqcXoKHNqeVO6+N/rfgO1lBOzLBEMszULpATxrmH4Po/DQ
	+BzWGXRSx1sbvTTpgEk6bbfp1ltBUvTmWWcRW1ZWE5IB/8K1Jn8HBl5ymK2kDYOl83l4PEBWNL1i6
	M5rXDL1YrD4kYkPC3rVn+1frJGyOzvDVQriCZiOyXnpSmuAVaZfhIingzJGqR3xlYRTIlduj5V5H7
	tpv3KSfU6lPc4tHwVshBdNHKqpZVCPPXZrd5s5FVSbaMHSMMGVdvSYRCbvJPiM2l3/e61vtUxvueq
	KhlOhsAIrABBY2SzXQrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwxi-0000lX-8m; Mon, 13 Jan 2020 10:28:46 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwxJ-0000br-Gz; Mon, 13 Jan 2020 10:28:23 +0000
Received: by mail-ed1-x543.google.com with SMTP id j17so7980446edp.3;
 Mon, 13 Jan 2020 02:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iMaJqGe+/87KiNUvJjKYz57OCMd9euJzaVWaUN0lP1s=;
 b=DObAAOFbSbrVsGeQHDd10Vzw+tqaEuBubMD9TEHteChXl3Os6q57ah95lTayO9eabr
 4H8lfic+3PgOkOYTAmV9yTJ5Rd17E7OyzZZmH6MvfpcrduFUp2wPJuFxohfeg9RHwr1l
 XtNYo0ro+an7eUtSAAvkNbMR6TasOwacC/o0rhmpmTaMO4K9IvJ4kbQAAwny4MY9z6q/
 +KLC9BGC9NsZS1hjdc//LeCh68StWNhrw5FHOZ15I/LsTIIfvhhzIFJ0v1RT/3CpXbgY
 QT19mQoAGaH9rq7xwv2sjdTE/NsDMw/GXBgONCEvOUpG56varewMdFKAHBZ6Pg23b5MK
 S/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iMaJqGe+/87KiNUvJjKYz57OCMd9euJzaVWaUN0lP1s=;
 b=D4A4txA99XjQ0JFFbX1znAB9NHkcQiqMhX1T6+blVhOzJ0ix+AupQn1fPpzKmt0s01
 EwhE5PJv+SahrLFl1HhzXBQQEVgKXXh2/+kWNm0bUfuIeynZQPyBWlACRrlCdboZPWh0
 5grS/FHO1FgiSRjPurQNb7qTvog6f9m/Vk5LQ7j1s7LJTSROXMTNkzEpOZacDccUiQu0
 NbBgKIVdmxxUX+baClvPKrQtD6hZYRMw78bEAyWuFLuXYb5Vmpy4rsZGbHOgWqjhu/gv
 CtC0KwxzBK5JKL7fyEvyATTbnHLIHVwDQLKnymJilOA1mxMrDrlq0U3QdiS10LgUspEV
 1+3A==
X-Gm-Message-State: APjAAAXruuDmRUiOXZ8CtHtFYf2zrcjTSd0ntHoo/vRFt9uFd4Qv9Mfi
 8oIEf/gmvNFzKyQ6yt6wBKjK+2xVbeNtt87MCG8=
X-Google-Smtp-Source: APXvYqyePqN9rysuFPmxEhUlGyUdY4qvbz40qryhjRRm5hpgejdUM23whTYnPjgS7seBJrNUneoHgAgsHduYxvuLJZQ=
X-Received: by 2002:a17:906:504d:: with SMTP id
 e13mr16068802ejk.103.1578911300006; 
 Mon, 13 Jan 2020 02:28:20 -0800 (PST)
MIME-Version: 1.0
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-6-alobakin@dlink.ru>
 <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
 <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
 <CA+h21hoSoZT+ieaOu8N=MCSqkzey0L6HeoXSyLtHjZztT0S9ug@mail.gmail.com>
 <0002a7388dfd5fb70db4b43a6c521c52@dlink.ru>
In-Reply-To: <0002a7388dfd5fb70db4b43a6c521c52@dlink.ru>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Mon, 13 Jan 2020 12:28:09 +0200
Message-ID: <CA+h21hqZoLrU7nL3Vo0KcmFnOxNxQPwoOVSEd6styyjK7XO+5w@mail.gmail.com>
Subject: Re: [PATCH RFC net-next 05/19] net: dsa: tag_ar9331: add GRO callbacks
To: Alexander Lobakin <alobakin@dlink.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_022821_608817_4B952539 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Edward Cree <ecree@solarflare.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@mellanox.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMyBKYW4gMjAyMCBhdCAxMTo0NiwgQWxleGFuZGVyIExvYmFraW4gPGFsb2Jha2lu
QGRsaW5rLnJ1PiB3cm90ZToKPgo+IFZsYWRpbWlyIE9sdGVhbiB3cm90ZSAxMy4wMS4yMDIwIDEy
OjQyOgo+ID4gSGkgQWxleGFuZGVyLAo+ID4KPiA+IE9uIE1vbiwgMTMgSmFuIDIwMjAgYXQgMTE6
MjIsIEFsZXhhbmRlciBMb2Jha2luIDxhbG9iYWtpbkBkbGluay5ydT4KPiA+IHdyb3RlOgo+ID4+
Cj4gPj4gQ1BVIHBvcnRzIGNhbid0IGJlIGJyaWRnZWQgYW55d2F5Cj4gPj4KPiA+PiBSZWdhcmRz
LAo+ID4+IOGatyDhm5Yg4ZqiIOGapiDhmqAg4ZqxCj4gPgo+ID4gVGhlIGZhY3QgdGhhdCBDUFUg
cG9ydHMgY2FuJ3QgYmUgYnJpZGdlZCBpcyBhbHJlYWR5IG5vdCBpZGVhbC4KPiA+IE9uZSBjYW4g
aGF2ZSBhIERTQSBzd2l0Y2ggd2l0aCBjYXNjYWRlZCBzd2l0Y2hlcyBvbiBlYWNoIHBvcnQsIHNv
IGl0Cj4gPiBhY3RzIGxpa2UgTiBEU0EgbWFzdGVycyAobm90IGFzIERTQSBsaW5rcywgc2luY2Ug
dGhlIHRhZ2dlcnMgYXJlCj4gPiBpbmNvbXBhdGlibGUpLCB3aXRoIGVhY2ggc3dpdGNoIGZvcm1p
bmcgaXRzIG93biB0cmVlLiBJdCBpcyBkZXNpcmFibGUKPiA+IHRoYXQgdGhlIHBvcnRzIG9mIHRo
ZSBEU0Egc3dpdGNoIG9uIHRvcCBhcmUgYnJpZGdlZCwgc28gdGhhdAo+ID4gZm9yd2FyZGluZyBi
ZXR3ZWVuIGNhc2NhZGVkIHN3aXRjaGVzIGRvZXMgbm90IHBhc3MgdGhyb3VnaCB0aGUgQ1BVLgo+
Cj4gT2gsIEkgc2VlLiBCdXQgY3VycmVudGx5IERTQSBpbmZyYSBmb3JiaWRzIHRoZSBhZGRpbmcg
RFNBIG1hc3RlcnMgdG8KPiBicmlkZ2VzIElJUkMuIENhbid0IG5hbWUgaXQgZ29vZCBvciBiYWQg
ZGVjaXNpb24sIGJ1dCB3YXMgaW50cm9kdWNlZAo+IHRvIHByZXZlbnQgYWNjaWRlbnRhbCBwYWNr
ZXQgZmxvdyBicmVha2luZyBvbiBEU0Egc2V0dXBzLgo+CgpJIGp1c3Qgd2FudGVkIHRvIHBvaW50
IG91dCB0aGF0IHNvbWUgcGVvcGxlIGFyZSBnb2luZyB0byBiZSBsb29raW5nIGF0CndheXMgYnkg
d2hpY2ggdGhlIEVUSF9QX1hEU0EgaGFuZGxlciBjYW4gYmUgbWFkZSB0byBwbGF5IG5pY2Ugd2l0
aCB0aGUKbWFzdGVyJ3MgcnhfaGFuZGxlciwgYW5kIHRoYXQgaXQgd291bGQgYmUgbmljZSB0byBh
dCBsZWFzdCBub3QgbWFrZQp0aGUgbGltaXRhdGlvbiB3b3JzZSB0aGFuIGl0IGlzIGJ5IGNvbnZl
cnRpbmcgZXZlcnl0aGluZyB0bwpyeF9oYW5kbGVycyAod2hpY2ggImN1cnJlbnRseSIgY2FuJ3Qg
YmUgc3RhY2tlZCwgZnJvbSB0aGUgY29tbWVudHMgaW4KbmV0ZGV2aWNlLmgpLgoKPiA+IC1WbGFk
aW1pcgo+Cj4gUmVnYXJkcywKPiDhmrcg4ZuWIOGaoiDhmqYg4ZqgIOGasQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
