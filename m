Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC375708DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooeAGcLirE/m/HtUr4l34pKMwXvdbUibFUAqlopxQd4=; b=Guu5dPMvaGYV3N
	tPkV63MKjirmUAh/ODdhuTNNSSDcYloJX4Zp8PRK3MS40so8ydXXLjhHbpakvZaZeLzhX+KqkHnyn
	Bl0DqJJiJcdDK8Odtp1QMVhQ1fAeKv7s/sNCuIsVlGgV/K9lqVTRJ+Z5aBBJFXNLnIwOPClkEijQl
	/QZtB58GNf1UShjxlFZr1gNBRA0wqmFlZatlOORpwJ7jSuF2m9WLUf65P2xaOGnNaMx211gkO7u6t
	chSLgseg0tv2KgxfmK16KGrMjQtcnDNYa05sEl5jvjO+DwiJ4DCrJagOH7AY4fOzyjUITIX1yLqOO
	Cd4yZwyZ3GIIZrn5rGsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdMB-0001lj-5z; Mon, 22 Jul 2019 18:48:19 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdLs-0001ii-MW
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:48:02 +0000
Received: by mail-yw1-xc41.google.com with SMTP id u141so16160533ywe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lnE336ol7UtWWyvT7pstYIwsA7GlNHlOv0FUk0/J68Y=;
 b=BURfqZq7P/O/sG44ork/tTKY1izQw7U9rjQEfM/z1B77XiJamgEIBCWQ0OxEtHl0s0
 f0y2qGZE6pl91DrsChbghyv2ENPnN7X1qm1HtcQFkywwf+QvYPBPa8TQb7xV9LdsRaKg
 NpZGST16ISEdIFvk7GiT1k4LrvHK1rZJtpMiWsnrYTTvSm9+NsccBRd1fXZ6vxsF0Vwa
 +2FQFcJSgKuB3Fvs5TGUooQ27UgvqUxXes+rpgPNWYuBPu36CFFQHFVPEApr/U16u6JW
 Se0+gfnHFgrmm8PSp/xN9JvirgBNC9Q4JHfiprsPBJb/jNIMYKd9JrIuXe09cIPALkb8
 EAxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lnE336ol7UtWWyvT7pstYIwsA7GlNHlOv0FUk0/J68Y=;
 b=elAM01asKHu2Kb8HkNSHAYb2VXvl5TWGGanVkQW1Pi1LLcEzCzmIudN9t5uXUlv7Sc
 ytWb7IZwKRARFFA/6xP39gqYAprcZ4IcxvhGLwcZcYRd0KqnOf5aVcofU55atX59xS5g
 2dPGQAUaNz32fB1JKTJWXwcAPXzNh4n1YwyJ8C9OlhMaHCpa9NwUGdFGMPNRu905Kgre
 ZXBhZHIMSfclpo7r8oLLrcbcqPYXrory7e18cPrj93xo05/o4RbBWxG7R/p9j4LZ1pyi
 gflF31ZSGXU2KL3fJSVAQ6k6XMtXzx5OY0/qpDwwnCzglmOc8LS2zo3hV7wpZilz3y8a
 VJcQ==
X-Gm-Message-State: APjAAAV5aXNHzTf8zUeMQILDiV+Xzjc5hscJ59x/XQ4XZaapP5tlYlNY
 t//CHGhQ/UZTvHz5jtpktttZcdXIgT6tyhbKNcQ=
X-Google-Smtp-Source: APXvYqx/tuXnxs2Gu9sEhEFXA6paSQTqA/Ul5WtWTjJWRdhdJzhu+zXmbi8TUw0r6bbvPPDpILKJ8v+oDhe9S7MbBtw=
X-Received: by 2002:a81:5957:: with SMTP id n84mr41206570ywb.234.1563821278770; 
 Mon, 22 Jul 2019 11:47:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190607231100.5894-1-peron.clem@gmail.com>
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 22 Jul 2019 20:48:47 +0200
Message-ID: <CAJiuCcetkGEpD_BrOvipi3yhy_TWgFYSVuLoExcw5=7nyPhY7A@mail.gmail.com>
Subject: Re: [PATCH v5 00/13] Allwinner A64/H6 IR support
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_114800_749168_802E864D 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIHNlcmllcyByZWNlaXZlZCBhY2sgZnJvbSBkZXZpY2UtdHJlZSwgbWVkaWEgYW5k
IHN1bnhpIG1haW50YWluZXJzLgoKQ2FuIHBhdGNoIDIvMy80IGdvZXMgdG8gbGludXgtbWVkaWEg
YW5kIHRoZSByZXN0IHRvIGxpbnV4LXN1bnhpID8KClRoYW5rcywKQ2zDqW1lbnQKCk9uIFNhdCwg
OCBKdW4gMjAxOSBhdCAwMToxMSwgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNv
bT4gd3JvdGU6Cj4KPiBIaSwKPgo+IEE2NCBJUiBzdXBwb3J0IHNlcmllc1sxXSBwb2ludGVkIG91
dCB0aGF0IGFuIEEzMSBiaW5kaW5ncyBzaG91bGQgYmUKPiBpbnRyb2R1Y2VkLgo+Cj4gVGhpcyBz
ZXJpZXMgaW50cm9kdWNlIHRoZSBBMzEgY29tcGF0aWJsZSBiaW5kaW5ncywgdGhlbiBzd2l0Y2gg
aXQgb24KPiB0aGUgYWxyZWFkeSBleGlzdGluZyBib2FyZC4KPgo+IEZpbmFsbHkgaW50cm9kdWNl
IEE2NCBhbmQgSDYgc3VwcG9ydC4KPgo+IEkgaGF2ZSByZWVuYWJsZSB0aGUgb3RoZXIgSDYgYm9h
cmRzIElSIHN1cHBvcnQgYXMgT25kcmVqIHNvbHZlIHRoZSBpc3N1ZS4KPgo+IFJlZ2FyZHMsCj4g
Q2zDqW1lbnQKPgo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gv
MTAzMTM5MC8jMTIyMTQ2NAo+IFsyXSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS81LzI3LzMy
MQo+IFszXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwOTc1NTYzLwo+Cj4g
Q2hhbmdlcyBzaW5jZSB2NDoKPiAgLSBSZXVzZSBkZWZpbmVzIGZvciBSWFNUQSBiaXRzIGRlZmlu
aXRpb24KPgo+IENoYW5nZXMgc2luY2UgdjM6Cj4gIC0gUmVlbmFibGUgSVIgZm9yIG90aGVyIEg2
IGJvYXJkcwo+ICAtIEFkZCBSWFNUQSBiaXRzIGRlZmluaXRpb24KPiAgLSBBZGQgU2VhbiBZb3Vu
ZydzICJBY2tlZC1ieSIgdGFncwo+Cj4gQ2hhbmdlcyBzaW5jZSB2MjoKPiAgLSBEaXNhYmxlIElS
IGZvciBvdGhlciBINiBib2FyZHMKPiAgLSBTcGxpdCBEVFMgcGF0Y2ggZm9yIEgzL0g1Cj4gIC0g
SW50cm9kdWNlIElSIHF1aXJrcwo+Cj4gQ2zDqW1lbnQgUMOpcm9uICgxMSk6Cj4gICBkdC1iaW5k
aW5nczogbWVkaWE6IHN1bnhpLWlyOiBBZGQgQTMxIGNvbXBhdGlibGUKPiAgIG1lZGlhOiByYzog
SW50cm9kdWNlIHN1bnhpX2lyX3F1aXJrcwo+ICAgbWVkaWE6IHJjOiBzdW54aTogQWRkIEEzMSBj
b21wYXRpYmxlCj4gICBtZWRpYTogcmM6IHN1bnhpOiBBZGQgUlhTVEEgYml0cyBkZWZpbml0aW9u
Cj4gICBBUk06IGR0czogc3VueGk6IFByZWZlciBBMzEgYmluZGluZ3MgZm9yIElSCj4gICBBUk06
IGR0czogc3VueGk6IFByZWZlciBBMzEgYmluZGluZ3MgZm9yIElSCj4gICBkdC1iaW5kaW5nczog
bWVkaWE6IHN1bnhpLWlyOiBBZGQgQTY0IGNvbXBhdGlibGUKPiAgIGR0LWJpbmRpbmdzOiBtZWRp
YTogc3VueGktaXI6IEFkZCBINiBjb21wYXRpYmxlCj4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6
IGg2OiBBZGQgSVIgcmVjZWl2ZXIgbm9kZQo+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjog
RW5hYmxlIElSIG9uIEg2IGJvYXJkcwo+ICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIElSIFNV
TlhJIG9wdGlvbgo+Cj4gSWdvcnMgTWFrZWpldnMgKDEpOgo+ICAgYXJtNjQ6IGR0czogYWxsd2lu
bmVyOiBhNjQ6IEFkZCBJUiBub2RlCj4KPiBKZXJuZWogU2tyYWJlYyAoMSk6Cj4gICBhcm02NDog
ZHRzOiBhbGx3aW5uZXI6IGE2NDogRW5hYmxlIElSIG9uIE9yYW5nZSBQaSBXaW4KPgo+ICAuLi4v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQgICAgfCAxMSArKy0KPiAgYXJj
aC9hcm0vYm9vdC9kdHMvc3VuNmktYTMxLmR0c2kgICAgICAgICAgICAgIHwgIDIgKy0KPiAgYXJj
aC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC5kdHNpICAgICAgICAgICAgIHwgIDIgKy0KPiAgYXJj
aC9hcm0vYm9vdC9kdHMvc3VuOWktYTgwLmR0c2kgICAgICAgICAgICAgIHwgIDIgKy0KPiAgYXJj
aC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaSAgICAgICAgICAgIHwgIDIgKy0KPiAgLi4u
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vcmFuZ2VwaS13aW4uZHRzIHwgIDQgKwo+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kgfCAxOCArKysrCj4gIC4u
Li9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgICB8ICA0ICsKPiAgLi4u
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kgICAgIHwgIDQgKwo+ICAuLi4v
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgfCAgNCArCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpICB8IDE5ICsrKysKPiAgYXJj
aC9hcm02NC9jb25maWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgIHwgIDEgKwo+ICBkcml2
ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jICAgICAgICAgICAgICAgICAgfCA4OCArKysrKysrKysr
KysrKy0tLS0tCj4gIDEzIGZpbGVzIGNoYW5nZWQsIDEzNSBpbnNlcnRpb25zKCspLCAyNiBkZWxl
dGlvbnMoLSkKPgo+IC0tCj4gMi4yMC4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
