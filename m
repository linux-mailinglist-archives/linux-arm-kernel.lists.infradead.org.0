Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036871FCBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 01:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOtnmBC0/G0oD0FYcUJ6DJFJ/kalgk4ghzrU6PRMa9Y=; b=L3XU4lhWPJADnD
	YXK2RhVQciLZ5KKJfqroNWk8ztgoRbONGWaCR32JD0Do1rCi+40zvH3GC0VCkYSEkGy+gv4maLx6H
	29VWKkiHwAsuPp31/H+sKXlSXjjeXdmRA5pKHXXsccnHNEgXhAUp3TmfkEEYaOwYGpSgMZE8KV3hi
	+khZkRzD3G4MQZVsNHXk+Ewv6Y7vzj0AkEvwk3IqNVREz5in74icDEbyaddPRkGiRD5bLEYz422SY
	AuJe2DWfpFZcG5AhfcHtppd9y1ziv+1Zg+rW9oEhsLssGaBZoO4ruqViGR68F6rZz8N+9u/a/P5W+
	qF+mdiqB3lNrP1AAwHQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR3ER-0000Z4-TP; Wed, 15 May 2019 23:22:44 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR3EK-0000Ye-1Z
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 23:22:37 +0000
Received: by mail-oi1-x242.google.com with SMTP id v2so1119089oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 16:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DekUZ017XlDHupokZoz03njj8bKbhio2eWZPwNPjcUk=;
 b=TW2unDWBNncdq8n3xbltWxzgP3f+WBm2Wwu2p901/hslhXWUx1pzOaey+SEv8I/fHb
 VBVIYuOZYqS/gzJemgxPhhffOM18B6uwdrD6hooAggFrw18kMreZqYdQZytxSshhpU9o
 t9z7G9pq8rEljqypIwgDaNWeiHyNpTRU+YQU5skrz1+X6xwn1PwlXrakWgYr5dPp5AuS
 /zwoiV1DtazDQ+OADaw09/LEnyyJkZcV4ERtLsrcjRI36IKn66m7pc5hagh7iwrQ7Rvg
 a+8A0a0NaVsNWO/6vCVzOZfoBPsD6BrOQc9sBVWHCT0hFnadetIkE0LPV9pJzWwB8jM5
 rugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DekUZ017XlDHupokZoz03njj8bKbhio2eWZPwNPjcUk=;
 b=iAZnUzi8nytkwq+odlrweHWsfGZA/9/zXvksckkDHl/zpgNq8jCG++R1Ym2/38XBZV
 l/ljYvZn1FkB5Cg4/9GffJIi4CE7+Wl3NUHet/FnlYrR79hlarzP2KB1Zm+nCAKWZhfS
 sfmt1hxia2vGpIgyF5r2LhSHFGptOdQCN0XM/5Irclh6R/BXc7KvCm0ntJCM9CVh9mmC
 0NP89cWmEz7M+w/cTZvIi8bJftlHcR2kwNRibntnm4Xx/yn4gcuQa24TfmryM/k/hXjh
 PvHR/Ngy2S7ExM93jhfmpzRPMzBgB9Nbw/S53ZI9rbXurOFHonFOy0JkrTp5O1q4X20m
 SU7g==
X-Gm-Message-State: APjAAAXcbJpwmdLAItoUNPZfozFyiJgC/AmZwkiZQOW/2Cb6ObjiV+Dd
 Sd4WrJJfEsPI98D1guBwClcBFNrTFKbYssLWB9Q=
X-Google-Smtp-Source: APXvYqxcJdXBjfI/NQOG54NjdcZMKv2rzobwN/fANlkeKUWtlr4xoy6TQzlw7osgjOY6kacmpcOb0Tz99iKvfhuIlXU=
X-Received: by 2002:aca:5ed7:: with SMTP id s206mr8333849oib.122.1557962553793; 
 Wed, 15 May 2019 16:22:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190513151405.GW17751@phenom.ffwll.local>
 <de50a9da-669f-ab25-2ef2-5ffb90f8ee03@baylibre.com>
 <CAJiuCccuEw0BK6MwROR+XUDvu8AJTmZ5tu=pYwZbGAuvO31pgg@mail.gmail.com>
 <CAJiuCccWa5UTML68JDQq6q8SyNZzVWwQWTOL=+84Bh4EMHGC3A@mail.gmail.com>
 <3c2c9094-69d4-bace-d5ee-c02b7f56ac82@arm.com>
 <CAJiuCcd=gCQJ4mxn3wNhHXveOhFLnYSEs+cnOMHcALPvd7bQZw@mail.gmail.com>
In-Reply-To: <CAJiuCcd=gCQJ4mxn3wNhHXveOhFLnYSEs+cnOMHcALPvd7bQZw@mail.gmail.com>
From: Rob Herring <rob.e.herring@gmail.com>
Date: Wed, 15 May 2019 18:22:22 -0500
Message-ID: <CAC=3edbn1yXih5vP0SwsDkqRB0j5q0c4FL0jhCq9DQ9Wt2-hAA@mail.gmail.com>
Subject: Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_162236_134004_7DB30F52 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rob.e.herring[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgNTowNiBQTSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIFJvYmluLAo+Cj4gT24gVHVlLCAxNCBNYXkgMjAx
OSBhdCAyMzo1NywgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gT24gMjAxOS0wNS0xNCAxMDoyMiBwbSwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4g
PiBIaSwKPiA+ID4KPiA+ID4gT24gVHVlLCAxNCBNYXkgMjAxOSBhdCAxNzoxNywgQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Pgo+ID4gPj4gSGksCj4g
PiA+Pgo+ID4gPj4gT24gVHVlLCAxNCBNYXkgMjAxOSBhdCAxMjoyOSwgTmVpbCBBcm1zdHJvbmcg
PG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPiB3cm90ZToKPiA+ID4+Pgo+ID4gPj4+IEhpLAo+ID4g
Pj4+Cj4gPiA+Pj4gT24gMTMvMDUvMjAxOSAxNzoxNCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+
ID4+Pj4gT24gU3VuLCBNYXkgMTIsIDIwMTkgYXQgMDc6NDY6MDBQTSArMDIwMCwgcGVyb24uY2xl
bUBnbWFpbC5jb20gd3JvdGU6Cj4gPiA+Pj4+PiBGcm9tOiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgo+ID4gPj4+Pj4KPiA+ID4+Pj4+IEhpLAo+ID4gPj4+Pj4KPiA+ID4+
Pj4+IFRoZSBBbGx3aW5uZXIgSDYgaGFzIGEgTWFsaS1UNzIwIE1QMi4gVGhlIGRyaXZlcnMgYXJl
Cj4gPiA+Pj4+PiBvdXQtb2YtdHJlZSBzbyB0aGlzIHNlcmllcyBvbmx5IGludHJvZHVjZSB0aGUg
ZHQtYmluZGluZ3MuCj4gPiA+Pj4+Cj4gPiA+Pj4+IFdlIGRvIGhhdmUgYW4gaW4tdHJlZSBtaWRn
YXJkIGRyaXZlciBub3cgKHNpbmNlIDUuMikuIERvZXMgdGhpcyBzdHVmZiB3b3JrCj4gPiA+Pj4+
IHRvZ2V0aGVyIHdpdGggeW91ciBkdCBjaGFuZ2VzIGhlcmU/Cj4gPiA+Pj4KPiA+ID4+PiBObywg
YnV0IGl0IHNob3VsZCBiZSBlYXN5IHRvIGFkZC4KPiA+ID4+IEkgd2lsbCBnaXZlIGl0IGEgdHJ5
IGFuZCBsZXQgeW91IGtub3cuCj4gPiA+IEFkZGVkIHRoZSBidXNfY2xvY2sgYW5kIGEgcmFtcCBk
ZWxheSB0byB0aGUgZ3B1X3ZkZCBidXQgdGhlIGRyaXZlcgo+ID4gPiBmYWlsIGF0IHByb2JlLgo+
ID4gPgo+ID4gPiBbICAgIDMuMDUyOTE5XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogY2xvY2sgcmF0
ZSA9IDQzMjAwMDAwMAo+ID4gPiBbICAgIDMuMDU4Mjc4XSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
YnVzX2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPiA+ID4gWyAgICAzLjE3OTc3Ml0gcGFuZnJvc3Qg
MTgwMDAwMC5ncHU6IG1hbGktdDcyMCBpZCAweDcyMCBtYWpvciAweDEKPiA+ID4gbWlub3IgMHgx
IHN0YXR1cyAweDAKPiA+ID4gWyAgICAzLjE4NzQzMl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGZl
YXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKPiA+ID4gaXNzdWVzOiAwMDAwMDAwMCwyMTA1NDQw
MAo+ID4gPiBbICAgIDMuMTk1NTMxXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmVhdHVyZXM6IEwy
OjB4MDcxMTAyMDYKPiA+ID4gU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6MHgwMDAwMDgwOSBNZW06
MHgxIE1NVToweDAwMDAyODIxIEFTOjB4Zgo+ID4gPiBKUzoweDcKPiA+ID4gWyAgICAzLjIwNzE3
OF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IHNoYWRlcl9wcmVzZW50PTB4MyBsMl9wcmVzZW50PTB4
MQo+ID4gPiBbICAgIDMuMjM4MjU3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmF0YWwgZXJyb3Ig
ZHVyaW5nIEdQVSBpbml0Cj4gPiA+IFsgICAgMy4yNDQxNjVdIHBhbmZyb3N0OiBwcm9iZSBvZiAx
ODAwMDAwLmdwdSBmYWlsZWQgd2l0aCBlcnJvciAtMTIKPiA+ID4KPiA+ID4gVGhlIEVOT01FTSBp
cyBjb21pbmcgZnJvbSAicGFuZnJvc3RfbW11X2luaXQiCj4gPiA+IGFsbG9jX2lvX3BndGFibGVf
b3BzKEFSTV9NQUxJX0xQQUUsICZwZmRldi0+bW11LT5wZ3RibF9jZmcsCj4gPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBmZGV2KTsKPiA+ID4KPiA+ID4gV2hp
Y2ggaXMgZHVlIHRvIGEgY2hlY2sgaW4gdGhlIHBndGFibGUgYWxsb2MgImNmZy0+aWFzICE9IDQ4
Igo+ID4gPiBhcm0tbHBhZSBpby1wZ3RhYmxlOiBhcm1fbWFsaV9scGFlX2FsbG9jX3BndGFibGUg
Y2ZnLT5pYXMgMzMgY2ZnLT5vYXMgNDAKPiA+ID4KPiA+ID4gRFJJIHN0YWNrIGlzIHRvdGFsbHkg
bmV3IGZvciBtZSwgY291bGQgeW91IGdpdmUgbWUgYSBsaXR0bGUgY2x1ZSBhYm91dAo+ID4gPiB0
aGlzIGlzc3VlID8KPiA+Cj4gPiBIZWgsIHRoaXMgaXMgcHJvYmFibHkgdGhlIG9uZSBiaXQgd2hp
Y2ggZG9lc24ndCByZWFsbHkgY291bnQgYXMgIkRSSSBzdGFjayIuCj4gPgo+ID4gVGhhdCdzIG1l
cmVseSBhIHNvbWV3aGF0LWNvbnNlcnZhdGl2ZSBzYW5pdHkgY2hlY2sgLSBJJ20gcHJldHR5IHN1
cmUgaXQKPiA+ICpzaG91bGQqIGJlIGZpbmUgdG8gY2hhbmdlIHRoZSB0ZXN0IHRvICJjZmctPmlh
cyA+IDQ4IiAoaW8tcGd0YWJsZQo+ID4gaXRzZWxmIG91Z2h0IHRvIGNvcGUpLiBZb3UnbGwganVz
dCBnZXQgdG8gYmUgdGhlIGZpcnN0IHRvIGFjdHVhbGx5IHRlc3QKPiA+IGEgbm9uLTQ4LWJpdCBj
b25maWd1cmF0aW9uIGhlcmUgOikKPgo+IFRoYW5rcyBhIGxvdCwgdGhlIHByb2JlIHNlZW1zIGZp
bmUgbm93IDopCj4KPiBJIHRyeSB0byBydW4gZ2xtYXJrMiA6Cj4gIyBnbG1hcmsyLWVzMi1kcm0K
PiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
Cj4gICAgIGdsbWFyazIgMjAxNy4wNwo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0KPiAgICAgT3BlbkdMIEluZm9ybWF0aW9uCj4gICAgIEdM
X1ZFTkRPUjogICAgIHBhbmZyb3N0Cj4gICAgIEdMX1JFTkRFUkVSOiAgIHBhbmZyb3N0Cj4gICAg
IEdMX1ZFUlNJT046ICAgIE9wZW5HTCBFUyAyLjAgTWVzYSAxOS4xLjAtcmMyCj4gPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+IFtidWlsZF0g
dXNlLXZibz1mYWxzZToKPgo+IEJ1dCBpdCBzZWVtcyB0aGF0IEg2IGlzIG5vdCBzbyBlYXN5IHRv
IGFkZCA6KC4KPgo+IFsgIDM0NS4yMDQ4MTNdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtbXUgaXJx
IHN0YXR1cz0xCj4gWyAgMzQ1LjIwOTYxN10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxl
ZCBQYWdlIGZhdWx0IGluIEFTMCBhdCBWQQo+IDB4MDAwMDAwMDAwMjQwMDQwMAo+IFsgIDM0NS4y
MDk2MTddIFJlYXNvbjogVE9ETwo+IFsgIDM0NS4yMDk2MTddIHJhdyBmYXVsdCBzdGF0dXM6IDB4
ODAwMDAyQzEKPiBbICAzNDUuMjA5NjE3XSBkZWNvZGVkIGZhdWx0IHN0YXR1czogU0xBVkUgRkFV
TFQKPiBbICAzNDUuMjA5NjE3XSBleGNlcHRpb24gdHlwZSAweEMxOiBUUkFOU0xBVElPTl9GQVVM
VF9MRVZFTDEKPiBbICAzNDUuMjA5NjE3XSBhY2Nlc3MgdHlwZSAweDI6IFJFQUQKPiBbICAzNDUu
MjA5NjE3XSBzb3VyY2UgaWQgMHg4MDAwCj4gWyAgMzQ1LjcyOTk1N10gcGFuZnJvc3QgMTgwMDAw
MC5ncHU6IGdwdSBzY2hlZCB0aW1lb3V0LCBqcz0wLAo+IHN0YXR1cz0weDgsIGhlYWQ9MHgyNDAw
NDAwLCB0YWlsPTB4MjQwMDQwMCwgc2NoZWRfam9iPTAwMDAwMDAwOWUyMDRkZTkKPiBbICAzNDYu
MDU1ODc2XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0dXM9MQo+IFsgIDM0Ni4w
NjA2ODBdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBVbmhhbmRsZWQgUGFnZSBmYXVsdCBpbiBBUzAg
YXQgVkEKPiAweDAwMDAwMDAwMDJDMDBBMDAKPiBbICAzNDYuMDYwNjgwXSBSZWFzb246IFRPRE8K
PiBbICAzNDYuMDYwNjgwXSByYXcgZmF1bHQgc3RhdHVzOiAweDgxMDAwMkMxCj4gWyAgMzQ2LjA2
MDY4MF0gZGVjb2RlZCBmYXVsdCBzdGF0dXM6IFNMQVZFIEZBVUxUCj4gWyAgMzQ2LjA2MDY4MF0g
ZXhjZXB0aW9uIHR5cGUgMHhDMTogVFJBTlNMQVRJT05fRkFVTFRfTEVWRUwxCj4gWyAgMzQ2LjA2
MDY4MF0gYWNjZXNzIHR5cGUgMHgyOiBSRUFECj4gWyAgMzQ2LjA2MDY4MF0gc291cmNlIGlkIDB4
ODEwMAo+IFsgIDM0Ni41NjE5NTVdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBncHUgc2NoZWQgdGlt
ZW91dCwganM9MSwKPiBzdGF0dXM9MHg4LCBoZWFkPTB4MmMwMGEwMCwgdGFpbD0weDJjMDBhMDAs
IHNjaGVkX2pvYj0wMDAwMDAwMGI1NWE5YTg1Cj4gWyAgMzQ2LjU3MzkxM10gcGFuZnJvc3QgMTgw
MDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEKPiBbICAzNDYuNTc4NzA3XSBwYW5mcm9zdCAxODAw
MDAwLmdwdTogVW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCj4gMHgwMDAwMDAwMDAy
QzAwQjgwCj4gWyAgMzQ2LjU3ODcwN10gUmVhc29uOiBUT0RPCj4gWyAgMzQ2LjU3ODcwN10gcmF3
IGZhdWx0IHN0YXR1czogMHg4MDAwMDJDMQo+IFsgIDM0Ni41Nzg3MDddIGRlY29kZWQgZmF1bHQg
c3RhdHVzOiBTTEFWRSBGQVVMVAo+IFsgIDM0Ni41Nzg3MDddIGV4Y2VwdGlvbiB0eXBlIDB4QzE6
IFRSQU5TTEFUSU9OX0ZBVUxUX0xFVkVMMQo+IFsgIDM0Ni41Nzg3MDddIGFjY2VzcyB0eXBlIDB4
MjogUkVBRAo+IFsgIDM0Ni41Nzg3MDddIHNvdXJjZSBpZCAweDgwMDAKPiBbICAzNDcuMDczOTQ3
XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogZ3B1IHNjaGVkIHRpbWVvdXQsIGpzPTAsCj4gc3RhdHVz
PTB4OCwgaGVhZD0weDJjMDBiODAsIHRhaWw9MHgyYzAwYjgwLCBzY2hlZF9qb2I9MDAwMDAwMDBj
ZjZhZjhlOAo+IFsgIDM0Ny4xMDQxMjVdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtbXUgaXJxIHN0
YXR1cz0xCj4gWyAgMzQ3LjEwODkzMF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQ
YWdlIGZhdWx0IGluIEFTMCBhdCBWQQo+IDB4MDAwMDAwMDAwMjgwMDkwMAo+IFsgIDM0Ny4xMDg5
MzBdIFJlYXNvbjogVE9ETwo+IFsgIDM0Ny4xMDg5MzBdIHJhdyBmYXVsdCBzdGF0dXM6IDB4ODEw
MDAyQzEKPiBbICAzNDcuMTA4OTMwXSBkZWNvZGVkIGZhdWx0biB0aGkgc3RhdHVzOiBTTEFWRSBG
QVVMVAo+IFsgIDM0Ny4xMDg5MzBdIGV4Y2VwdGlvbiB0eXBlIDB4QzE6IFRSQU5TTEFUSU9OX0ZB
VUxUX0xFVkVMMQo+IFsgIDM0Ny4xMDg5MzBdIGFjY2VzcyB0eXBlIDB4MjogUkVBRAo+IFsgIDM0
Ny4xMDg5MzBdIHNvdXJjZSBpZCAweDgxMDAKPiBbICAzNDcuNjE3OTUwXSBwYW5mcm9zdCAxODAw
MDAwLmdwdTogZ3B1IHNjaGVkIHRpbWVvdXQsIGpzPTEsCj4gc3RhdHVzPTB4OCwgaGVhZD0weDI4
MDA5MDAsIHRhaWw9MHgyODAwOTAwLCBzY2hlZF9qb2I9MDAwMDAwMDA5MzI1ZmRiNwo+IFsgIDM0
Ny42Mjk5MDJdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtbXUgaXJxIHN0YXR1cz0xCj4gWyAgMzQ3
LjYzNDY5Nl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFT
MCBhdCBWQQo+IDB4MDAwMDAwMDAwMjgwMEE4MAoKSXMgdGhpcyAzMiBvciA2NCBiaXQgdXNlcnNw
YWNlPyBJIHRoaW5rIDY0LWJpdCBkb2VzIG5vdCB3b3JrIHdpdGgKVDd4eC4gWW91IG1pZ2h0IG5l
ZWQgdGhpc1sxXS4gWW91IG1heSBhbHNvIGJlIHRoZSBmaXJzdCB0byB0cnkgVDcyMCwKc28gaXQg
Y291bGQgYmUgc29tZXRoaW5nIGVsc2UuCgpSb2IKClsxXSBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvbWVzYS9tZXNhL21lcmdlX3JlcXVlc3RzLzY1MAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
