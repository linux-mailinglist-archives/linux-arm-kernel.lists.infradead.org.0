Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8C433F8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yoI67iR6MVMb5bOjPkMFkcq56rpGxwKEnpfpEYKTGn8=; b=YNyTsaXHYjigeP
	7h6mzwP1KWn0xGP31zMRNmfQBw5QpIDLcYLCuij+J48IwSb4xvm9/6YuAdlZVc1MjJ2Ra7IUf5uml
	TwWnc7kV+zoRRugHWmn1BimaWD9RkQGGt7WOK4tcg0fWOZSYKfx1A134p2a9a6MUn166TeD8vTXTz
	0Y5CrTKi+LLp2fehC9fLQWyn7u6VOxMF5W7t0WwRHK+Zp543QtMCTr1JtdmGL9X0Y3Ju9q92rNb0i
	VVJnMo4tD4roVALPk8Zhh7aKFESs8ETc2TC2bxMp2ul56PeuHR47JoimFLvXv90hd0P4HB0Z3OMCt
	Gk9/h4aModD2HxfLfS9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3aE-00014Q-64; Tue, 04 Jun 2019 07:10:10 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3a3-000138-0G
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:10:00 +0000
Received: by mail-io1-f66.google.com with SMTP id w25so16464542ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:09:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/dyGdTTgFr5SDiyeRgWoJnn59rllbnhU0YzorU220bU=;
 b=q4rv4duqKWZQCgvA3ZUIKyNRS/8c92Dl0QJDwIhhKw9B+hoLOaMMxUAQkycSDrswoL
 7R63E3YsBmgWwmbLzjyP5tDyJp0aqr6+Qno7EJf/3aMlOj1SbfQlkMyLpa0PSC20pU76
 Iru7LXNirSRzbKoYA8jmZfj4F80AEvIHlS/Vq+SUsouS9VoDBrjI37e2DL5i0F207X4X
 Y4m0Vx55mk5x+r9/0PFmdtufEQWrdp2YPldBKv/4Ppr7jc3StSs6FADMnDMr/D8F8lsR
 yJ37zN/7UNtFkBNinD8v9s+2Pr6h63n1IOcWr67WuzyEqfqBRhEZI74nRjxtpGsAErLP
 ZymA==
X-Gm-Message-State: APjAAAVb6aXzFBE6/rgye8oEYH6AMRHHyp/y+Um2vFHnQ72ahOVA0LsY
 Mh9k8BiY8kR2oRj3iXbhq/KMQ6PEHLkbjq+/lKY=
X-Google-Smtp-Source: APXvYqzwzS9B0U6vS+kuCrIXAEH7n0XFTmscWDGBrdIzjXfqb0pB0sN15VOzg7b+Rn+/u3Y1fcKg2IW0VeKSnXdjHtw=
X-Received: by 2002:a6b:6b0d:: with SMTP id g13mr18398172ioc.55.1559632192937; 
 Tue, 04 Jun 2019 00:09:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
 <CAAObsKBuDDF225otw-2kBKufmpS6ng9feBshUPFKNDGv3pE8Ww@mail.gmail.com>
 <838fa193-3c67-d4c8-8991-78c3c8f89cb6@baylibre.com>
 <CAAObsKBjboa50k0awDtwk5LUNV6_6+NQbpwS=_4QuD0vf70TNA@mail.gmail.com>
 <764f6a3a-c431-cd6b-0225-c7d55ca51a57@baylibre.com>
 <CAJiuCcdTctLixTAL1WLGK-LU4W_hwzaULQJzYeZyPC4eLmtNAQ@mail.gmail.com>
In-Reply-To: <CAJiuCcdTctLixTAL1WLGK-LU4W_hwzaULQJzYeZyPC4eLmtNAQ@mail.gmail.com>
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Date: Tue, 4 Jun 2019 09:09:39 +0200
Message-ID: <CAAObsKA5tq9KhNF5RyqNZP8R2J03+zr7N0Z=jxsTqu24+S8Kow@mail.gmail.com>
Subject: Re: Panfrost impossible to probe without opp table
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_000959_045249_EBAE6656 
X-CRM114-Status: GOOD (  28.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Rob Herring <robh+dt@kernel.org>, ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAzIEp1biAyMDE5IGF0IDE5OjI0LCBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1A
Z21haWwuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4KPiBPbiBGcmksIDMxIE1heSAyMDE5IGF0IDE0
OjEzLCBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+IHdyb3RlOgo+ID4K
PiA+IE9uIDMxLzA1LzIwMTkgMTQ6MDksIFRvbWV1IFZpem9zbyB3cm90ZToKPiA+ID4gT24gRnJp
LCAzMSBNYXkgMjAxOSBhdCAxNDowMywgTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGli
cmUuY29tPiB3cm90ZToKPiA+ID4+Cj4gPiA+PiBIaSBUb21ldSwKPiA+ID4+Cj4gPiA+PiBPbiAz
MS8wNS8yMDE5IDEzOjU5LCBUb21ldSBWaXpvc28gd3JvdGU6Cj4gPiA+Pj4gT24gV2VkLCAyOSBN
YXkgMjAxOSBhdCAyMzoyOSwgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4g
d3JvdGU6Cj4gPiA+Pj4+Cj4gPiA+Pj4+IEhpLAo+ID4gPj4+Pgo+ID4gPj4+PiBJIGhhdmUgcmVi
YXNlIG15IGtlcm5lbCBvbiBsYXRlc3QgNS4yLXJjMiwgYW5kIG15IHBhbmZyb3N0IGRyaXZlciBp
cwo+ID4gPj4+PiBubyBtb3JlIHByb2JpbmcuCj4gPiA+Pj4+Cj4gPiA+Pj4+IFRoZSBpc3N1ZSBp
cyBjb21pbmcgZnJvbSBmMzYxN2I0NDlkMGJjZjNiNWQ4MGE5N2Y1MTQ5OGRjZjc0NjNjZjdlCj4g
PiA+Pj4+ICAgICBkcm0vcGFuZnJvc3Q6IFNlbGVjdCBkZXZmcmVxCj4gPiA+Pj4+Cj4gPiA+Pj4+
ICAgICBDdXJyZW50bHksIHRoZXJlIGlzIHNvbWUgbG9naWMgZm9yIHRoZSBkcml2ZXIgdG8gd29y
ayB3aXRob3V0IGRldmZyZXEuCj4gPiA+Pj4+ICAgICBIb3dldmVyLCB0aGUgZHJpdmVyIGFjdHVh
bGx5IGZhaWxzIHRvIHByb2JlIGlmICFDT05GSUdfUE1fREVWRlJFUS4KPiA+ID4+Pj4KPiA+ID4+
Pj4gICAgIEZpeCB0aGlzIGJ5IHNlbGVjdGluZyBkZXZmcmVxLCBhbmQgZHJvcCB0aGUgYWRkaXRp
b25hbCBjaGVja3MKPiA+ID4+Pj4gICAgIGZvciBkZXZmcmVxLgo+ID4gPj4+Pgo+ID4gPj4+PiBJ
dCBzZWVtcyB0aGF0IHdpdGggdGhpcyBjb21taXQgdGhlIE9QUCB0YWJsZSBpcyBub3cgbWFuZGF0
b3J5Lgo+ID4gPj4+PiBpcyBpdCBpbnRlbnRpb25hbD8KPiA+ID4+Pgo+ID4gPj4+IEhpIENsw6lt
ZW50LAo+ID4gPj4+Cj4gPiA+Pj4gZGV2ZnJlcSBzdXBwb3J0IGlzIGludGVudGlvbmFsbHkgcmVx
dWlyZWQuIEkgZ290IGEgSDY0IGJvYXJkIHdoaWNoIEknbQo+ID4gPj4+IHVzaW5nIHRvIGFkZCBU
NzIwIHN1cHBvcnQgdG8gUGFuZnJvc3QuCj4gPiA+Pgo+ID4gPj4gb3BlcmF0aW5nLXBvaW50cy12
MiBhbmQgY2xvY2tzIGFyZSBvcHRpb25hbCwgZGV2ZnJlcSBzaG91bGQgYmUgb3B0aW9uYWwsCj4g
PiA+PiB0aGlzIHdhcyB0aGUgZGVmYXVsdCBiZWhhdmlvdXIgb2YgdGhlIGZpcnN0IGFwcGxpZWQg
dmVyc2lvbi4KPiA+ID4KPiA+ID4gSSdtIGNvbmNlcm5lZCBieSB0aGUgc2FmZXR5IG9mIHJ1bm5p
bmcgdGhlc2UgR1BVcyBhbGwgdGhlIHRpbWUgYXQKPiA+ID4gdGhlaXIgbWF4aW11bSBmcmVxdWVu
Y2llcy4gTWF5YmUgbm90IG9uIENocm9tZWJvb2tzIGFuZCBvdGhlciBjb25zdW1lcgo+ID4gPiBk
ZXZpY2VzLCBidXQgdGhlIFNCQ3MgSSBoYXZlIGhlcmUgaGF2ZSBhbGwgdmVyeSBjcmFwcHkgaGVh
dAo+ID4gPiBkaXNzaXBhdGlvbi4KPiA+Cj4gPiBTdXJlLCBpdCdzIGxvZ2ljYWwgdG8gaGF2ZSBk
ZXZmcmVxIHJ1bm5pbmcgb24gdGhlc2UgZGV2aWNlcy4KPiA+Cj4gPiA+Cj4gPiA+PiBBbWxvZ2lj
IGR0IGRvZXMgbm90IGhhdmUgb3BlcmF0aW5nLXBvaW50cy12MiwgYW5kIGRldmZyZXEgd29uJ3Qg
YmUgc3VwcG9ydGVkCj4gPiA+PiBzb29uLgo+ID4gPgo+ID4gPiBXaGF0J3MgdGhlIHByb2JsZW0g
d2l0aCBjb21pbmcgdXAgd2l0aCB0aGUgb3BlcmF0aW5nIHBvaW50cz8KPiA+Cj4gPiBCZWNhdXNl
IHRoZSBiaW5kaW5ncyBhcmUgb3B0aW9uYWwgOgo+ID4gT3B0aW9uYWwgcHJvcGVydGllczoKPiA+
Cj4gPiAtIGNsb2NrcyA6IFBoYW5kbGUgdG8gY2xvY2sgZm9yIHRoZSBNYWxpIE1pZGdhcmQgZGV2
aWNlLgo+ID4KPiA+IC0gbWFsaS1zdXBwbHkgOiBQaGFuZGxlIHRvIHJlZ3VsYXRvciBmb3IgdGhl
IE1hbGkgZGV2aWNlLiBSZWZlciB0bwo+ID4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcmVndWxhdG9yL3JlZ3VsYXRvci50eHQgZm9yIGRldGFpbHMuCj4gPgo+ID4gLSBvcGVy
YXRpbmctcG9pbnRzLXYyIDogUmVmZXIgdG8gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL29wcC9vcHAudHh0Cj4gPiAgIGZvciBkZXRhaWxzLgo+ID4KPiA+IFVubGVzcyB5b3UgY2hh
bmdlIHRoZSBiaW5kaW5ncywgaXQncyBtYW5kYXRlZCB0byBiZSBvcHRpb25hbCBieSB0aGUgYmlu
ZGluZ3MuCj4KPiBJIGNhbiBwcm9wb3NlIGEgcGF0Y2ggdG8gZml4IHRoaXMgYnV0IHdoYXQgaXMg
dGhlIGJlc3Qgc29sdXRpb24/Cj4KPiBMZWF2ZSBERVZGUkVRIGNvbmZpZyBtYW5kYXRvcnkgYnV0
IGFsbG93IHRvIHByb2JlIHdpdGhvdXQgb3BwX3RhYmxlPwo+IFJldmVydCB0aGUgY29tbWl0Pwo+
IEZpeCB0aGUgZG9jdW1lbnRhdGlvbiB0byBoYXZlIG9wcCB0YWJsZSBtYW5kYXRvcnk/CgpIaSBD
bMOpbWVudCwKCk5laWwgaGFzIGEgcGF0Y2ggb24gaXRzIHdheSB0byBrZWVwIERFVkZSRVEgY29t
cHVsc29yeSBhdCBidWlsZCB0aW1lLApidXQgaGF2ZSBpdCBkaXNhYmxlZCBhdCBydW50aW1lIGlm
IHdlIGRvbid0IGhhdmUgYSBPUFAgdGFibGUuCgpDaGVlcnMsCgpUb21ldQoKPiBUaGFua3MsCj4g
Q2zDqW1lbnQKPgo+ID4KPiA+IE5laWwKPiA+Cj4gPgo+ID4gPgo+ID4gPiBUaGFua3MsCj4gPiA+
Cj4gPiA+IFRvbWV1Cj4gPiA+Cj4gPiA+PiBOZWlsCj4gPiA+Pgo+ID4gPj4+Cj4gPiA+Pj4gT25j
ZSBJJ20gYWJsZSB0byB0ZXN0IHRoZSBHUFUgcHJvcGVybHkgYWxvbmcgd2l0aCBmcmVxdWVuY3kg
c2NhbGluZywgSQo+ID4gPj4+IHdpbGwgcGluZyB5b3Ugc28geW91IGNhbiByZXRlc3QgYW5kIHJl
c3VibWl0Lgo+ID4gPj4+Cj4gPiA+Pj4gVGhhbmtzLAo+ID4gPj4+Cj4gPiA+Pj4gVG9tZXUKPiA+
ID4+Pgo+ID4gPj4+PiBBY3R1YWxseQo+ID4gPj4+PiBbICAgIDMuMDQ2MjM3XSBwYW5mcm9zdCAx
ODAwMDAwLmdwdTogY2xvY2sgcmF0ZSA9IDQzMjAwMDAwMAo+ID4gPj4+PiBbICAgIDMuMDUxNTkz
XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogYnVzX2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPiA+ID4+
Pj4gWyAgICAzLjA5NjAxMl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1hbGktdDcyMCBpZCAweDcy
MCBtYWpvciAweDEKPiA+ID4+Pj4gbWlub3IgMHgxIHN0YXR1cyAweDAKPiA+ID4+Pj4gWyAgICAz
LjEwMzY4Ml0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGZlYXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0
MCwKPiA+ID4+Pj4gaXNzdWVzOiAwMDAwMDAwMCwyMTA1NDQwMAo+ID4gPj4+PiBbICAgIDMuMTEx
Nzg5XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmVhdHVyZXM6IEwyOjB4MDcxMTAyMDYKPiA+ID4+
Pj4gU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAy
ODIxIEFTOjB4Zgo+ID4gPj4+PiBKUzoweDcKPiA+ID4+Pj4gWyAgICAzLjEyMzQzNV0gcGFuZnJv
c3QgMTgwMDAwMC5ncHU6IHNoYWRlcl9wcmVzZW50PTB4MyBsMl9wcmVzZW50PTB4MQo+ID4gPj4+
PiBbICAgIDMuMTMwNDA1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmF0YWwgZXJyb3IgZHVyaW5n
IGRldmZyZXEgaW5pdAo+ID4gPj4+Pgo+ID4gPj4+PiBXaXRoIGNvbW1pdCByZXZlcnRlZAo+ID4g
Pj4+PiBbICAgIDMuMDM4MjM2XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogY2xvY2sgcmF0ZSA9IDQz
MjAwMDAwMAo+ID4gPj4+PiBbICAgIDMuMDQzNTkzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogYnVz
X2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPiA+ID4+Pj4gWyAgICAzLjA4Nzk5NF0gcGFuZnJvc3Qg
MTgwMDAwMC5ncHU6IG1hbGktdDcyMCBpZCAweDcyMCBtYWpvciAweDEKPiA+ID4+Pj4gbWlub3Ig
MHgxIHN0YXR1cyAweDAKPiA+ID4+Pj4gWyAgICAzLjA5NTY1OF0gcGFuZnJvc3QgMTgwMDAwMC5n
cHU6IGZlYXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKPiA+ID4+Pj4gaXNzdWVzOiAwMDAwMDAw
MCwyMTA1NDQwMAo+ID4gPj4+PiBbICAgIDMuMTAzNzYzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
RmVhdHVyZXM6IEwyOjB4MDcxMTAyMDYKPiA+ID4+Pj4gU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6
MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFTOjB4Zgo+ID4gPj4+PiBKUzoweDcK
PiA+ID4+Pj4gWyAgICAzLjExNTQxMF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IHNoYWRlcl9wcmVz
ZW50PTB4MyBsMl9wcmVzZW50PTB4MQo+ID4gPj4+PiBbICAgIDMuMTIyNzk4XSBbZHJtXSBJbml0
aWFsaXplZCBwYW5mcm9zdCAxLjAuMCAyMDE4MDkwOCBmb3IKPiA+ID4+Pj4gMTgwMDAwMC5ncHUg
b24gbWlub3IgMAo+ID4gPj4+Pgo+ID4gPj4+Pgo+ID4gPj4+PiBUaGFua3MsCj4gPiA+Pj4+IENs
w6ltZW50Cj4gPiA+Pj4+Cj4gPiA+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPiA+Pj4+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4g
PiA+Pj4+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPj4+PiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
PiA+ID4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
ID4gPj4+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4+PiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gPiA+Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwKPiA+ID4+Pgo+ID4gPj4KPiA+ID4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+PiBkcmktZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gPiA+PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+PiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo+ID4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
