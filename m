Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51091B0980
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xl08kmGGnOHWXlergR6eOcvxK8t+ylg7ZpsJ9XBLJzU=; b=UNO9dp/yrUIDzCYJ8OrMUEHeCq
	+9X/xpsoBFqaQUXEvXg5U+U291Hk3f+qpDD69Q0NSXFbMfI9bFGm0+S86B35r2JsxPf19JhoNY0Tv
	Kdyf3fYQagAh8sz61DqlNSmM8vzLmldPgTbeWhIDNSCdOYJs/Z4xPjW8ZO38CL8R1J1CPpNnrEuEk
	7gKoxmMeOLNEAw37FckFGbl3Kn5X4KicXUx8ZmP72pVYyUbq79bcTGaac8DrhHpcMazqnXbw+IqMU
	KBooONRXs8+TLPH3bEFvJ8GGhwRJ+8gt8j2ld8iVmQekOkBOSyHmh/VcwoRyIWJ17BPrbpaEuuQvO
	hAxbkKoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVfc-0005Jq-6B; Mon, 20 Apr 2020 12:37:04 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVfK-0005A8-IN
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:36:49 +0000
Received: by mail-il1-x142.google.com with SMTP id x2so8222669ilp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 05:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=3CbBWYh3hEo1SFuuYgcjEPFrVgBlthpwlzKPfvsK3P8=;
 b=OnKx+7tMLS9s7A35dAv/MXJHdXi9YmU0JJngPdWlBRJbsp72/7AK1nIUIq5NLA1x0b
 4AY1rZIBKD++FBAWGobX88d/U2lEQSNH6GwdGormJXygNhWfmr1I0JhLqTUKt04LlGUI
 vfzUqLuOl04JQNi0CHCZquQHcekDYvpH8SFHIXD+iTuR1cRGzL36UBQ/R+OARcJ7LUW9
 R6Ojjm/taf/ATJ0UMHZwcpr+LTnkEsqgPZ+tLMEjNjBfTK++C6DprOuT5+qekXICL8Dq
 S7z8oqcOsBAtsBN8DRVtLMTNkz+hMBzoaE6dgU4/3Jz+dJ0qxQkMNIJJuwaWKR/KwU52
 OGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=3CbBWYh3hEo1SFuuYgcjEPFrVgBlthpwlzKPfvsK3P8=;
 b=BNQ1qlfPK/YoqanK7vVNMKQj6EEnTGleNgyZAVRZYSWZRxacLLevsX7WFws3LlwJPk
 Vf1oOaKrZvPwfB1mn3uvj+ue9cHU5VwtzEmWpr1q9EVf2KnM3gkKIT3O4MvUu1dIeM4F
 ztVNA7dkajywzufR2PEo/+GWFR3vCSaAccoV3A17isrWAkIaStaWMZlS1cHUOknRqTBv
 DCTVNJxgfc09mlS2HUi011Rn39ws3WvQAFI+S1FA9qjCub4uWN+wMHR0VI0nTZKlQ1DQ
 GgLeOJI+jpTDOL3L9/Qn72osJl6PUF+IeeyVSAoL5aCWK8D6u/ObheGdlXdwbmtctitr
 e7rg==
X-Gm-Message-State: AGi0PuaE7/X7xe2NyDAxYMS3tDo7G0yKFS2jTve7ABuIvT2N6XQ5mjk4
 KtT0b2m+ESUXJ8EN4IcTMx1aWbFNGrojTfy2lB8=
X-Google-Smtp-Source: APiQypJ7cU3/3DFBtvn21b9ZEhxAqE5SzZ3rQEgwk7x7gdmwz5XCiiVekQ8ec+23r8/gkwpU5CnetJcsAcu0jPwouYM=
X-Received: by 2002:a05:6e02:111:: with SMTP id
 t17mr4674601ilm.59.1587386203290; 
 Mon, 20 Apr 2020 05:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200419135011.18010-1-peron.clem@gmail.com>
 <20200420084547.q5xqlbnmug7l45p2@gilmour.lan>
 <20200420103927.uvzotrolz2inz6q2@core.my.home>
In-Reply-To: <20200420103927.uvzotrolz2inz6q2@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 20 Apr 2020 14:36:32 +0200
Message-ID: <CAJiuCcdDge21pRmN8LzKv_tMqBoD9KHg96MUxDS9gp0+xbroJg@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Add support for Allwinner H6 DVFS
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 Maxime Ripard <maxime@cerno.tech>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_053646_865145_A06C0F82 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kcmVqLCBNYXhpbWUsCgpPbiBNb24sIDIwIEFwciAyMDIwIGF0IDEyOjM5LCBPbmTFmWVq
IEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+Cj4gSGkgTWF4aW1lLAo+Cj4gT24g
TW9uLCBBcHIgMjAsIDIwMjAgYXQgMTA6NDU6NDdBTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3cm90
ZToKPiA+IEhpLAo+ID4KPiA+IE9uIFN1biwgQXByIDE5LCAyMDIwIGF0IDAzOjUwOjA0UE0gKzAy
MDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gTm93IHRoYXQgcmVxdWlyZWQgZHJpdmVy
cyBhcmUgbWVyZ2VkIHdlIGNhbiBjb250aWJ1dGUgb24gRFZGUwo+ID4gPiBzdXBwb3J0IGZvciBB
bGx3aW5uZXIgSDYuCj4gPiA+Cj4gPiA+IFRoaXMgc2VyaWUgaXMgYmFzZWQgb24gWWFuZ3RhbyBM
aSBzZXJpZVswXSBhbmQgT25kxZllaiBKaXJtYW4gd29ya1sxXS4KPiA+ID4KPiA+ID4gTW9zdCBv
ZiB0aGUgT1BQIHRhYmxlcyBhcmUgdGFrZW4gZnJvbSBvcmlnaW5hbCB2ZW5kb3Iga2VybmVsWzJd
Lgo+ID4gPiBQbHVzIHRoZXJlIGFyZSBuZXcgQ1BVIGZyZXF1ZW5jaWVzIGF0IDEuNkdIeiwgMS43
R0h6IGFuZCAxLjhHSHouCj4gPiA+Cj4gPiA+IEkgd3JvdGUgYSBzaW1wbGUgc2NyaXB0IHRvIHJh
bmRvbWx5IHNldCBhIGZyZXF1ZW5jeSBkdXJpbmcKPiA+ID4gYSByYW5kb20gdGltZVszXS4gVGhp
cyBzY3JpcHQgaXMgcXVpdGUgc3RyZXNzZnVsbCBhbmQgc2V0IHNvbWUgaGlnaAo+ID4gPiBmcmVx
dWVuY3kgd2l0aG91dCBjaGVja2luZyB0ZW1wZXJhdHVyZS4gVGhpcyBjYW4gcmVzdWx0IG9uIGJl
aGF2aW9yCj4gPiA+IHRoYXQgd2hvdWxkIG5vdCBvY2N1cnMgd2l0aCB0aGUgcmVhbCBjcHVmcmVx
IGZyYW1ld29yay4KPiA+ID4gQXMgTWF4aW1lIHBvaW50IG91dCBJIGFsc28gdGVzdGVkIHdpdGgg
Y3B1ZnJlcS1sanQtc3RyZXNzLXRlc3QKPiA+ID4gKGZvdW5kIGhlcmUgaHR0cHM6Ly9naXRodWIu
Y29tL3NzdmIvY3B1YnVybi1hcm0pLgo+ID4gPiBUaGlzIHNjcmlwdCBkb2Vzbid0IHRyaWdnZXIg
YW55IGlzc3VlLgo+ID4gPiBJIGFsc28gdGVzdCB0aGF0IHRoYXQgb2ZmbGluaW5nIENQVTAgYW5k
IGRvaW5nIERWRlMgb24gb3RoZXIgQ1BVcwo+ID4gPiB3b3Jrcy4gQXMgQ1BVIHJlZ3VsYXRvciBp
cyBvbmx5IHNldCBmb3IgQ1BVMC4KPiA+ID4KPiA+ID4gVGhlIEdQVSBkZXZmcmVxIHdhcyBkcm9w
IGFzIHRoZSByZWd1bGF0b3IgaXMgc3RpbGwgbm90IHByb3Blcmx5Cj4gPiA+IGRyaXZlIGJ5IHBh
bmZyb3N0IGRyaXZlcls0XS4KPiA+ID4gSSB3aWxsIHJlLWludHJvZHVjZSBpdCBsYXRlci4KPiA+
ID4KPiA+ID4gT25kxZllaiBKaXJtYW4gaGFzIGFuIE9yYW5nZSBQaSAzLCBKZXJuZWogaGFzIGEg
UGluZUg2NCBhbmQgYSBUYW5peAo+ID4gPiBUWDYgYm9hcmRzIGFuZCBJIGhhdmUgYSBCZWVsaW5r
IEdTMSBib2FyZCBzbyBJIGhhdmUgZW5hYmxlIHRoZXNlCj4gPiA+IGJvYXJkcy4gQnV0IENQVSBE
ZXZmcmVxIGlzIHJlYWxseSB0b3VjaHkgaGFzIGl0IGRlcGVuZHMgb246Cj4gPiA+IGJvYXJkIGRl
c2lnbiwgU29DIHNwZWVkX2dyYWRlIGFuZCBlbnZpcm9uZW1lbnQgd2hpY2ggY2FuIGFmZmVjdAo+
ID4gPiB0aGVybWFsIGNvb2xpbmcgYW5kIGhhdmUgZGlmZmVyZW50IGJlaGF2aW9yIGZvciBkaWZm
ZXJlbnQgdXNlci4KPiA+ID4KPiA+ID4gSWYgcGVvcGxlIGNhbiB0ZXN0IHRoaXMgc2VyaWUgYW5k
IGdpdmUgZmVlZGJhY2ssIEkgd2lsbCB0cnkgdG8KPiA+ID4gaW50cm9kdWNlIHRoaXMgaW4gTGli
cmVFbGVjIHRyZWUsIHNvIExFIGNvbW11bml0eSBjYW4gdGVzdCBpdC4KPiA+Cj4gPiBBcHBsaWVk
IGFsbCBvZiB0aGVtLCB0aGFua3MhCj4KPiBQbGVhc2UgYWxzbyBhcHBseSAiW1BBVENIIHYyIDEv
N10gYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogQWRkCj4gY2xvY2sgdG8gQ1BVIGNvcmVzIiBm
cm9tIHRoZSB2MiBzZXJpZXMsIG90aGVyd2lzZSBjcHVmcmVxIHdpbGwKPiBub3Qgd29yay4KPgo+
IEkgY2FuIGFsc28gc2VuZCBhIG1pc3NpbmcgcGF0Y2ggYWRkaW5nIHRoZSB0cmlwIHBvaW50cywg
YW5kIGNwdQo+IGFzIGEgY29vbGluZyBkZXZpY2UsIHRoYXQgSSBsaW5rZWQgaW4gbXkgb3RoZXIg
cmVwbHkgdG8gdGhpcyBwYXRjaAo+IHNlcmllcyBhZnRlcndhcmRzLCBpZiBDbMOpbWVudCB3YW50
cy4KCkluZGVlZCBJIGhhdmUgc2VudCB1c2luZyB0aGUgZm9sbG93aW5nIGNtZCA6ICJnaXQgc2Vu
ZC1lbWFpbCAtLXRvPVhYWFggSEVBRH43Igpmcm9tIHRoZSBwcmV2aW91cyB2ZXJzaW9uLgoKSSBz
aG91bGQgaGFkIGRvIEluc3RlYWQ6ICJnaXQgc2VuZC1lbWFpbCAtLXRvPVhYWFggbmV4dC9tYXN0
ZXIgIgoKU29ycnkgZm9yIHRoYXQgOigKQ2zDqW1lbnQKCj4KPiByZWdhcmRzLAo+ICAgICAgICAg
by4KPgo+ID4gTWF4aW1lCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
