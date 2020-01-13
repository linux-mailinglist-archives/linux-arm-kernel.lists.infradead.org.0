Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7061313907A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:58:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMdQWGYZUXm3Du50Dv+5JNtlzasxyp+m35wS1uik5qM=; b=bvmDj4dWIprW0b
	a78v63zRUdhpgIdVQCfqLtugvRrK5uMWJA12YPtGgrrgdDOTw1amcY8axKs3khnOLpV0gDx/MNhC8
	mmAzjE8d6M65qu8MaCisnWgPoaue/L+d+0ASEkM9PI01cgabQUuZHasJw7yPsgkx0a2hPR1IE1mal
	oYrcUiEXiqyKzsDmGKWH0oIHBYKdMrCSDFJODxqa6aZ1tjgrV2os9oguuIc7guwFEhuQ2Qto++lEB
	dzoVL+tdF2259CvV2RJUpGZ9rGFCkaqQTZErmNEHGRHjJAKPA5APjne24uEU35mJScPJDJcggr2CH
	52zGFgNxk+M9QueLHmEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyM7-0006D0-VC; Mon, 13 Jan 2020 11:58:04 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyLv-0006C6-Nx
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:57:53 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00DBuknD091396;
 Mon, 13 Jan 2020 05:56:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578916606;
 bh=9n718e+eW2JIWIXzt3IYQ2kWyec/YziAStfyqoDrUzE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=siWYpvKyiSQIfqjGzS0WEV/lPdV1/JWIqcXlTspERLmvuoirkRmAsIGRqOljYMpda
 HuuZI8ZdS3/VCiQPQNeZ+35gBgjpipAEZXs67tt95BpR8su2hJeWyMDXYM14FcJHMF
 wEGshRhaA+gEc3Ryioh7I3U+ZCEOAMDp23Il6stg=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00DBuk1M070641
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 13 Jan 2020 05:56:46 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 13
 Jan 2020 05:56:45 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 13 Jan 2020 05:56:45 -0600
Received: from [172.24.145.246] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00DBugXg122482;
 Mon, 13 Jan 2020 05:56:43 -0600
Subject: Re: [PATCH v3 1/3] clocksource: davinci: only enable clockevents once
 tim34 is initialized
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>
References: <20200110171643.18578-1-brgl@bgdev.pl>
 <20200110171643.18578-2-brgl@bgdev.pl>
 <7be95251-7e26-6090-4770-6e4dbebfadd2@linaro.org>
 <CAMRc=McesmYcJv7iqE3rLHFyeTJtnW4Gq1TjMjHGSkpcHNPahw@mail.gmail.com>
 <CAKnoXLygqQ5eSfp+bwixtGVKEFnzw0h7XSPV4qXaGjUg_KtJYQ@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <d0897001-5290-b81d-d480-1c2d92db486c@ti.com>
Date: Mon, 13 Jan 2020 17:26:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKnoXLygqQ5eSfp+bwixtGVKEFnzw0h7XSPV4qXaGjUg_KtJYQ@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_035751_881986_3323ECE3 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFuaWVsLCBCYXJ0LAoKT24gMTEvMDEvMjAgMzo1OSBQTSwgRGFuaWVsIExlemNhbm8gd3Jv
dGU6Cj4gCj4gCj4gT24gU2F0LCAxMSBKYW4gMjAyMCBhdCAxMToyMCwgQmFydG9zeiBHb2xhc3pl
d3NraSA8YnJnbEBiZ2Rldi5wbAo+IDxtYWlsdG86YnJnbEBiZ2Rldi5wbD4+IHdyb3RlOgo+IAo+
ICAgICBwdC4sIDEwIHN0eSAyMDIwIG8gMTg6NTYgRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpj
YW5vQGxpbmFyby5vcmcKPiAgICAgPG1haWx0bzpkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPj4g
bmFwaXNhxYIoYSk6Cj4gICAgID4KPiAgICAgPiBPbiAxMC8wMS8yMDIwIDE4OjE2LCBCYXJ0b3N6
IEdvbGFzemV3c2tpIHdyb3RlOgo+ICAgICA+ID4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8
YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbQo+ICAgICA8bWFpbHRvOmJnb2xhc3pld3NraUBiYXls
aWJyZS5jb20+Pgo+ICAgICA+ID4KPiAgICAgPiA+IFRoZSBETTM2NSBwbGF0Zm9ybSBoYXMgYSBz
dHJhbmdlIHF1aXJrIChvbmx5IHByZXNlbnQgd2hlbiB1c2luZwo+ICAgICBhbmNpZW50Cj4gICAg
ID4gPiB1LWJvb3QgLSBtYWlubGluZSB1LWJvb3QgdjIwMTMuMDEgYW5kIGxhdGVyIHdvcmtzIGZp
bmUpIHdoZXJlIGlmIHdlCj4gICAgID4gPiBlbmFibGUgdGhlIHNlY29uZCBoYWxmIG9mIHRoZSB0
aW1lciBpbiBwZXJpb2RpYyBtb2RlIGJlZm9yZSB3ZQo+ICAgICBkbyBpdHMKPiAgICAgPiA+IGlu
aXRpYWxpemF0aW9uIC0gdGhlIHRpbWUgd29uJ3Qgc3RhcnQgZmxvd2luZyBhbmQgd2UgY2FuJ3Qg
Ym9vdC4KPiAgICAgPiA+Cj4gICAgID4gPiBXaGVuIHVzaW5nIG1vcmUgcmVjZW50IHUtYm9vdCwg
d2UgY2FuIGVuYWJsZSB0aGUgdGltZXIsIHRoZW4KPiAgICAgcmVpbml0aWFsaXplCj4gICAgID4g
PiBpdCBhbmQgYWxsIHdvcmtzIGZpbmUuCj4gICAgID4gPgo+ICAgICA+ID4gVG8gd29yayBhcm91
bmQgdGhpcyBpc3N1ZSBvbmx5IGVuYWJsZSBjbG9ja2V2ZW50cyBvbmNlIHRpbTM0IGlzCj4gICAg
ID4gPiBpbml0aWFsaXplZCBpLmUuIG1vdmUgY2xvY2tldmVudHNfY29uZmlnX2FuZF9yZWdpc3Rl
cigpIGJlbG93IHRpbTM0Cj4gICAgID4gPiBpbml0aWFsaXphdGlvbi4KPiAgICAgPiA+Cj4gICAg
ID4gPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5
bGlicmUuY29tCj4gICAgIDxtYWlsdG86YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4+Cj4gICAg
ID4KPiAgICAgPiBTaGFsbCBJIHRha2UgaXQgdGhyb3VnaCBteSB0cmVlPwo+ICAgICA+Cj4gCj4g
ICAgIE5vdCBzdXJlLCBJJ2Qgc2F5IFNla2hhciBzaG91bGQgdGFrZSBpdCB0aHJvdWdoIGFybS1z
b2MgdG9nZXRoZXIgd2l0aAo+ICAgICB0aGUgbGF0dGVyIHR3byBwYXRjaGVzIGlmIGhlJ3Mgb2sg
d2l0aCB0aGlzLiBMZXQncyB3YWl0IGZvciBoaW0gdG8KPiAgICAgcmVzcG9uZC4KPiAKPiAKPiBK
dXN0IGluIGNhc2U6Cj4gQWNrZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bs
aW5hcm8ub3JnCj4gPG1haWx0bzpkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPj4KCkkgd2FzIGFi
bGUgdG8gdGVzdCB0aGUgc2VyaWVzIG9uIGFsbCA2IERhVmluY2kgU29Dcy4gSSB3aWxsIHNlbmQg
dGhpcwp1cHN0cmVhbSB3aXRoIERhbmllbCdzIGFjay4KClRoYW5rcywKU2VraGFyCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
