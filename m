Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41183340E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYHCWp9Wr2+dCKxZNw1f3WwVLApokxNzqefZEbqy7k4=; b=MCbLsJS8+fJb8S
	1jMO75+eMWPFNAejeXMi7ZDsYsGE7BMXVRKJ7ajvKVOV6uDwedB2vHUhsbgW8pMI7/537N3x/9JIB
	Uh3qb3QJSkK71nF3eZY3hu98eEOq7Tu2uew8ObXO/s20aXL7EK/9mAMIh24QK7xNF8qoA6/uVMszo
	1iG67hhQrG0ReGyTCHCFgwZDlFJuF9qfrQwDDuPgoAfrLQqt3iE2FMkloalQOoROeSsxQM99HXUR9
	L+RjdqU82Q0YDGyVkvW/M6j2/FU/cV9wHm3JMGZgJ0bRA+CEOE1/D9Gu+WQH3pLf2XElcnh0BVh6F
	IfEbVjds+46Sp0LyVR4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4KH-0000OR-E0; Tue, 04 Jun 2019 07:57:45 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4KA-0000NN-1S
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:57:39 +0000
Received: by mail-yw1-xc44.google.com with SMTP id 186so8647913ywo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4WGXL8K710JQlhNGsaGE3qX+hCb16g7Z+hCwVBhReMw=;
 b=oaO/ZPrxrv/ciLDxSSCiQFsikALHZPhmf+XJ2f1fG/XemNOniN3VrSuxpbJU34zncj
 NRdDutfCg7mNkyjioxPQWK6KkZOmLW4DzhetTzcm0DuKaq7rpxCWM4rPbTE0OoWaaCyl
 6j4Lm6a6zl/zoFdOdh+eUzBsTaMab+vlA5NdR3xnDHyPEoMjHcCA8W2uRj57yiopl/do
 dh8NWfk+S0ScXbK1w/3tYUU3d+scum/NtjjwAO9bJPrHgziHsMhj6sNmxaFvUwnjGNx8
 kgvu/25P7IjWuZXkVmJfSFfxPdOCrycVX/V2E4NR6kXLODL/tjGU2JhJT+q3G9KoQzh3
 q7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4WGXL8K710JQlhNGsaGE3qX+hCb16g7Z+hCwVBhReMw=;
 b=ITpCqKrVyrhGNKaRYKmZAAomeZJ3QB6acCiruRDOTFdgSErr4pcbdB5f7tvesTBbO1
 71wD1Y3WXPzMDwCHFeWHLdOK7YwYP9pb4Zkb3uUWxW+MDfSp+ikItpHMIzZWbG5FgHhQ
 R+N1exJwkRIG/RJrkqsXeDPbhyDKWHJ09RhrCzLjZPF2VfVfz4WAT8F1KXQHklgAnRXx
 o0qY9vMXDwwlD46RPqKT069QR5CEc9RrKnMwpLAPJhqlUaIQlseDhEqV4TBPxBWSqycY
 IOvbEj4FwwOtk+oW5mqenW9Oin747RiCGDe4zNJ3CL/ROTxBZG3fih9d5rHyhD5fbalQ
 S2Hg==
X-Gm-Message-State: APjAAAXsmDUfeaui8+nDr1/1wGLTz+Y8nm2VUIkcSu8koZyVl791yBv0
 b3/jlYK+RCgmGZWAJlSdwUaqzRWU+cRYtw47Gzc=
X-Google-Smtp-Source: APXvYqybGl9h0sfjgLb5GyRmKlyMK2xbJlsl5+nQxM076bmC5KTB5DuziJzslKrKWfgSkXwzKZrCZwNU+Xb2Itzu06s=
X-Received: by 2002:a81:6109:: with SMTP id v9mr136799ywb.457.1559635056770;
 Tue, 04 Jun 2019 00:57:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
 <CAAObsKBuDDF225otw-2kBKufmpS6ng9feBshUPFKNDGv3pE8Ww@mail.gmail.com>
 <838fa193-3c67-d4c8-8991-78c3c8f89cb6@baylibre.com>
 <CAAObsKBjboa50k0awDtwk5LUNV6_6+NQbpwS=_4QuD0vf70TNA@mail.gmail.com>
 <764f6a3a-c431-cd6b-0225-c7d55ca51a57@baylibre.com>
 <CAJiuCcdTctLixTAL1WLGK-LU4W_hwzaULQJzYeZyPC4eLmtNAQ@mail.gmail.com>
 <CAAObsKA5tq9KhNF5RyqNZP8R2J03+zr7N0Z=jxsTqu24+S8Kow@mail.gmail.com>
In-Reply-To: <CAAObsKA5tq9KhNF5RyqNZP8R2J03+zr7N0Z=jxsTqu24+S8Kow@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 4 Jun 2019 09:57:25 +0200
Message-ID: <CAJiuCce8pF=i3pg6O0okWJSvVwZ-TmgwXxVTXeAh-DMBAhN8Tg@mail.gmail.com>
Subject: Re: Panfrost impossible to probe without opp table
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_005738_105919_D2390EC8 
X-CRM114-Status: GOOD (  29.64  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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

SGkgVG9tZXUsCgpPbiBUdWUsIDQgSnVuIDIwMTkgYXQgMDk6MDksIFRvbWV1IFZpem9zbyA8dG9t
ZXUudml6b3NvQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAzIEp1biAyMDE5IGF0
IDE5OjI0LCBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPiB3cm90ZToKPiA+
Cj4gPiBIaSwKPiA+Cj4gPgo+ID4gT24gRnJpLCAzMSBNYXkgMjAxOSBhdCAxNDoxMywgTmVpbCBB
cm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24g
MzEvMDUvMjAxOSAxNDowOSwgVG9tZXUgVml6b3NvIHdyb3RlOgo+ID4gPiA+IE9uIEZyaSwgMzEg
TWF5IDIwMTkgYXQgMTQ6MDMsIE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNv
bT4gd3JvdGU6Cj4gPiA+ID4+Cj4gPiA+ID4+IEhpIFRvbWV1LAo+ID4gPiA+Pgo+ID4gPiA+PiBP
biAzMS8wNS8yMDE5IDEzOjU5LCBUb21ldSBWaXpvc28gd3JvdGU6Cj4gPiA+ID4+PiBPbiBXZWQs
IDI5IE1heSAyMDE5IGF0IDIzOjI5LCBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwu
Y29tPiB3cm90ZToKPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+IEhpLAo+ID4gPiA+Pj4+Cj4gPiA+ID4+
Pj4gSSBoYXZlIHJlYmFzZSBteSBrZXJuZWwgb24gbGF0ZXN0IDUuMi1yYzIsIGFuZCBteSBwYW5m
cm9zdCBkcml2ZXIgaXMKPiA+ID4gPj4+PiBubyBtb3JlIHByb2JpbmcuCj4gPiA+ID4+Pj4KPiA+
ID4gPj4+PiBUaGUgaXNzdWUgaXMgY29taW5nIGZyb20gZjM2MTdiNDQ5ZDBiY2YzYjVkODBhOTdm
NTE0OThkY2Y3NDYzY2Y3ZQo+ID4gPiA+Pj4+ICAgICBkcm0vcGFuZnJvc3Q6IFNlbGVjdCBkZXZm
cmVxCj4gPiA+ID4+Pj4KPiA+ID4gPj4+PiAgICAgQ3VycmVudGx5LCB0aGVyZSBpcyBzb21lIGxv
Z2ljIGZvciB0aGUgZHJpdmVyIHRvIHdvcmsgd2l0aG91dCBkZXZmcmVxLgo+ID4gPiA+Pj4+ICAg
ICBIb3dldmVyLCB0aGUgZHJpdmVyIGFjdHVhbGx5IGZhaWxzIHRvIHByb2JlIGlmICFDT05GSUdf
UE1fREVWRlJFUS4KPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+ICAgICBGaXggdGhpcyBieSBzZWxlY3Rp
bmcgZGV2ZnJlcSwgYW5kIGRyb3AgdGhlIGFkZGl0aW9uYWwgY2hlY2tzCj4gPiA+ID4+Pj4gICAg
IGZvciBkZXZmcmVxLgo+ID4gPiA+Pj4+Cj4gPiA+ID4+Pj4gSXQgc2VlbXMgdGhhdCB3aXRoIHRo
aXMgY29tbWl0IHRoZSBPUFAgdGFibGUgaXMgbm93IG1hbmRhdG9yeS4KPiA+ID4gPj4+PiBpcyBp
dCBpbnRlbnRpb25hbD8KPiA+ID4gPj4+Cj4gPiA+ID4+PiBIaSBDbMOpbWVudCwKPiA+ID4gPj4+
Cj4gPiA+ID4+PiBkZXZmcmVxIHN1cHBvcnQgaXMgaW50ZW50aW9uYWxseSByZXF1aXJlZC4gSSBn
b3QgYSBINjQgYm9hcmQgd2hpY2ggSSdtCj4gPiA+ID4+PiB1c2luZyB0byBhZGQgVDcyMCBzdXBw
b3J0IHRvIFBhbmZyb3N0Lgo+ID4gPiA+Pgo+ID4gPiA+PiBvcGVyYXRpbmctcG9pbnRzLXYyIGFu
ZCBjbG9ja3MgYXJlIG9wdGlvbmFsLCBkZXZmcmVxIHNob3VsZCBiZSBvcHRpb25hbCwKPiA+ID4g
Pj4gdGhpcyB3YXMgdGhlIGRlZmF1bHQgYmVoYXZpb3VyIG9mIHRoZSBmaXJzdCBhcHBsaWVkIHZl
cnNpb24uCj4gPiA+ID4KPiA+ID4gPiBJJ20gY29uY2VybmVkIGJ5IHRoZSBzYWZldHkgb2YgcnVu
bmluZyB0aGVzZSBHUFVzIGFsbCB0aGUgdGltZSBhdAo+ID4gPiA+IHRoZWlyIG1heGltdW0gZnJl
cXVlbmNpZXMuIE1heWJlIG5vdCBvbiBDaHJvbWVib29rcyBhbmQgb3RoZXIgY29uc3VtZXIKPiA+
ID4gPiBkZXZpY2VzLCBidXQgdGhlIFNCQ3MgSSBoYXZlIGhlcmUgaGF2ZSBhbGwgdmVyeSBjcmFw
cHkgaGVhdAo+ID4gPiA+IGRpc3NpcGF0aW9uLgo+ID4gPgo+ID4gPiBTdXJlLCBpdCdzIGxvZ2lj
YWwgdG8gaGF2ZSBkZXZmcmVxIHJ1bm5pbmcgb24gdGhlc2UgZGV2aWNlcy4KPiA+ID4KPiA+ID4g
Pgo+ID4gPiA+PiBBbWxvZ2ljIGR0IGRvZXMgbm90IGhhdmUgb3BlcmF0aW5nLXBvaW50cy12Miwg
YW5kIGRldmZyZXEgd29uJ3QgYmUgc3VwcG9ydGVkCj4gPiA+ID4+IHNvb24uCj4gPiA+ID4KPiA+
ID4gPiBXaGF0J3MgdGhlIHByb2JsZW0gd2l0aCBjb21pbmcgdXAgd2l0aCB0aGUgb3BlcmF0aW5n
IHBvaW50cz8KPiA+ID4KPiA+ID4gQmVjYXVzZSB0aGUgYmluZGluZ3MgYXJlIG9wdGlvbmFsIDoK
PiA+ID4gT3B0aW9uYWwgcHJvcGVydGllczoKPiA+ID4KPiA+ID4gLSBjbG9ja3MgOiBQaGFuZGxl
IHRvIGNsb2NrIGZvciB0aGUgTWFsaSBNaWRnYXJkIGRldmljZS4KPiA+ID4KPiA+ID4gLSBtYWxp
LXN1cHBseSA6IFBoYW5kbGUgdG8gcmVndWxhdG9yIGZvciB0aGUgTWFsaSBkZXZpY2UuIFJlZmVy
IHRvCj4gPiA+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3VsYXRvci9y
ZWd1bGF0b3IudHh0IGZvciBkZXRhaWxzLgo+ID4gPgo+ID4gPiAtIG9wZXJhdGluZy1wb2ludHMt
djIgOiBSZWZlciB0byBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvb3BwL29wcC50
eHQKPiA+ID4gICBmb3IgZGV0YWlscy4KPiA+ID4KPiA+ID4gVW5sZXNzIHlvdSBjaGFuZ2UgdGhl
IGJpbmRpbmdzLCBpdCdzIG1hbmRhdGVkIHRvIGJlIG9wdGlvbmFsIGJ5IHRoZSBiaW5kaW5ncy4K
PiA+Cj4gPiBJIGNhbiBwcm9wb3NlIGEgcGF0Y2ggdG8gZml4IHRoaXMgYnV0IHdoYXQgaXMgdGhl
IGJlc3Qgc29sdXRpb24/Cj4gPgo+ID4gTGVhdmUgREVWRlJFUSBjb25maWcgbWFuZGF0b3J5IGJ1
dCBhbGxvdyB0byBwcm9iZSB3aXRob3V0IG9wcF90YWJsZT8KPiA+IFJldmVydCB0aGUgY29tbWl0
Pwo+ID4gRml4IHRoZSBkb2N1bWVudGF0aW9uIHRvIGhhdmUgb3BwIHRhYmxlIG1hbmRhdG9yeT8K
Pgo+IEhpIENsw6ltZW50LAo+Cj4gTmVpbCBoYXMgYSBwYXRjaCBvbiBpdHMgd2F5IHRvIGtlZXAg
REVWRlJFUSBjb21wdWxzb3J5IGF0IGJ1aWxkIHRpbWUsCj4gYnV0IGhhdmUgaXQgZGlzYWJsZWQg
YXQgcnVudGltZSBpZiB3ZSBkb24ndCBoYXZlIGEgT1BQIHRhYmxlLgoKVGhhbmtzLApDbMOpbWVu
dAoKPgo+IENoZWVycywKPgo+IFRvbWV1Cj4KPiA+IFRoYW5rcywKPiA+IENsw6ltZW50Cj4gPgo+
ID4gPgo+ID4gPiBOZWlsCj4gPiA+Cj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBUaGFua3MsCj4gPiA+
ID4KPiA+ID4gPiBUb21ldQo+ID4gPiA+Cj4gPiA+ID4+IE5laWwKPiA+ID4gPj4KPiA+ID4gPj4+
Cj4gPiA+ID4+PiBPbmNlIEknbSBhYmxlIHRvIHRlc3QgdGhlIEdQVSBwcm9wZXJseSBhbG9uZyB3
aXRoIGZyZXF1ZW5jeSBzY2FsaW5nLCBJCj4gPiA+ID4+PiB3aWxsIHBpbmcgeW91IHNvIHlvdSBj
YW4gcmV0ZXN0IGFuZCByZXN1Ym1pdC4KPiA+ID4gPj4+Cj4gPiA+ID4+PiBUaGFua3MsCj4gPiA+
ID4+Pgo+ID4gPiA+Pj4gVG9tZXUKPiA+ID4gPj4+Cj4gPiA+ID4+Pj4gQWN0dWFsbHkKPiA+ID4g
Pj4+PiBbICAgIDMuMDQ2MjM3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogY2xvY2sgcmF0ZSA9IDQz
MjAwMDAwMAo+ID4gPiA+Pj4+IFsgICAgMy4wNTE1OTNdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBi
dXNfY2xvY2sgcmF0ZSA9IDEwMDAwMDAwMAo+ID4gPiA+Pj4+IFsgICAgMy4wOTYwMTJdIHBhbmZy
b3N0IDE4MDAwMDAuZ3B1OiBtYWxpLXQ3MjAgaWQgMHg3MjAgbWFqb3IgMHgxCj4gPiA+ID4+Pj4g
bWlub3IgMHgxIHN0YXR1cyAweDAKPiA+ID4gPj4+PiBbICAgIDMuMTAzNjgyXSBwYW5mcm9zdCAx
ODAwMDAwLmdwdTogZmVhdHVyZXM6IDAwMDAwMDAwLDEwMzA5ZTQwLAo+ID4gPiA+Pj4+IGlzc3Vl
czogMDAwMDAwMDAsMjEwNTQ0MDAKPiA+ID4gPj4+PiBbICAgIDMuMTExNzg5XSBwYW5mcm9zdCAx
ODAwMDAwLmdwdTogRmVhdHVyZXM6IEwyOjB4MDcxMTAyMDYKPiA+ID4gPj4+PiBTaGFkZXI6MHgw
MDAwMDAwMCBUaWxlcjoweDAwMDAwODA5IE1lbToweDEgTU1VOjB4MDAwMDI4MjEgQVM6MHhmCj4g
PiA+ID4+Pj4gSlM6MHg3Cj4gPiA+ID4+Pj4gWyAgICAzLjEyMzQzNV0gcGFuZnJvc3QgMTgwMDAw
MC5ncHU6IHNoYWRlcl9wcmVzZW50PTB4MyBsMl9wcmVzZW50PTB4MQo+ID4gPiA+Pj4+IFsgICAg
My4xMzA0MDVdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBGYXRhbCBlcnJvciBkdXJpbmcgZGV2ZnJl
cSBpbml0Cj4gPiA+ID4+Pj4KPiA+ID4gPj4+PiBXaXRoIGNvbW1pdCByZXZlcnRlZAo+ID4gPiA+
Pj4+IFsgICAgMy4wMzgyMzZdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBjbG9jayByYXRlID0gNDMy
MDAwMDAwCj4gPiA+ID4+Pj4gWyAgICAzLjA0MzU5M10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGJ1
c19jbG9jayByYXRlID0gMTAwMDAwMDAwCj4gPiA+ID4+Pj4gWyAgICAzLjA4Nzk5NF0gcGFuZnJv
c3QgMTgwMDAwMC5ncHU6IG1hbGktdDcyMCBpZCAweDcyMCBtYWpvciAweDEKPiA+ID4gPj4+PiBt
aW5vciAweDEgc3RhdHVzIDB4MAo+ID4gPiA+Pj4+IFsgICAgMy4wOTU2NThdIHBhbmZyb3N0IDE4
MDAwMDAuZ3B1OiBmZWF0dXJlczogMDAwMDAwMDAsMTAzMDllNDAsCj4gPiA+ID4+Pj4gaXNzdWVz
OiAwMDAwMDAwMCwyMTA1NDQwMAo+ID4gPiA+Pj4+IFsgICAgMy4xMDM3NjNdIHBhbmZyb3N0IDE4
MDAwMDAuZ3B1OiBGZWF0dXJlczogTDI6MHgwNzExMDIwNgo+ID4gPiA+Pj4+IFNoYWRlcjoweDAw
MDAwMDAwIFRpbGVyOjB4MDAwMDA4MDkgTWVtOjB4MSBNTVU6MHgwMDAwMjgyMSBBUzoweGYKPiA+
ID4gPj4+PiBKUzoweDcKPiA+ID4gPj4+PiBbICAgIDMuMTE1NDEwXSBwYW5mcm9zdCAxODAwMDAw
LmdwdTogc2hhZGVyX3ByZXNlbnQ9MHgzIGwyX3ByZXNlbnQ9MHgxCj4gPiA+ID4+Pj4gWyAgICAz
LjEyMjc5OF0gW2RybV0gSW5pdGlhbGl6ZWQgcGFuZnJvc3QgMS4wLjAgMjAxODA5MDggZm9yCj4g
PiA+ID4+Pj4gMTgwMDAwMC5ncHUgb24gbWlub3IgMAo+ID4gPiA+Pj4+Cj4gPiA+ID4+Pj4KPiA+
ID4gPj4+PiBUaGFua3MsCj4gPiA+ID4+Pj4gQ2zDqW1lbnQKPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4+
Pj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+ID4gPj4+PiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gPj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiA+ID4gPj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4+PiBkcmktZGV2
ZWwgbWFpbGluZyBsaXN0Cj4gPiA+ID4+PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gPiA+ID4+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaS1kZXZlbAo+ID4gPiA+Pj4KPiA+ID4gPj4KPiA+ID4gPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPj4gZHJpLWRldmVsIG1haWxpbmcg
bGlzdAo+ID4gPiA+PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+ID4+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCj4g
PiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
