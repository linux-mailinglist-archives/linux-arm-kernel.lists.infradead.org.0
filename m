Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27613367D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+5D+IgOHrsBzdyIS0Te9qFqdCw/1/UfofT2GT0F7+k=; b=r3xZYQ9oqDm9iH
	fOmvV94z35E2svMyBQOacoxwq5K7M4HmudXFbGZw6k7BFRvWAjvG2ullS8kpUEPxzuAK+5AnAmx/L
	S25IqcOhQWvgW/F2DseMFqI0iN57SDNHZ/LIB6T9UIc3LU5rX0tqOTn18s8IKiXS6ce91oWjPJ4zi
	oNP75DOM2Lkskv6rQ6r+gXoyM2UIPE7JylK1DhuBuIWUNajXh8pWSMaUUp0QZgPvZTvlXZ25ce9Qz
	v9ncjrBPAGTTdctbGTbCxPt5lDbn5ZiYD4I82BYhWcpf+hlFG6eoFwLdM7+4HgNka+swQYrFifgKm
	69QJtY8uSbypijVeMmfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqgp-0007l7-KQ; Mon, 03 Jun 2019 17:24:07 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqgi-0007kf-TL
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:24:02 +0000
Received: by mail-yw1-xc43.google.com with SMTP id k70so7859647ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SJQ1EvhXiPFoRTY7y59fLBURq76nYQyY2UFnkpfiYsc=;
 b=uDhvhY05bKbwigE93By7iRW8LzNmE19BJ2pEZLkuM69znXy15ZF+d2CIiiD33J+Pwn
 v6BimOoMzdo3LzcMwSMKPPHRtZp70ohuUYe6OIq8UDbn/SXAFaJp69w9IBmgyZJjwe7H
 9dkax/ksj686Kd1uX9i6youyOwUYp/hdGG6MURsADl239gk7xxtGvzNzMxTJCqNvRWSu
 PszXOyr3Lwyfb+fic11BYD/ksilkBddMdKW6iyjtvFwp2aD/27Bbc0olW0R5E4kkWh0k
 elO0P87MXv8o3mocPjvC1OaqYRMbty5KwkKvR0/xoAbzM0Fz4dsBckq/6ss1ppqbMIPx
 pbsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SJQ1EvhXiPFoRTY7y59fLBURq76nYQyY2UFnkpfiYsc=;
 b=AJqLXmdUyS9SsSnKZsPCN4Tj/RkPwByhplTgfY1aIJ8UVu/sGYTX4xpmuF2hZfP6CZ
 MAQB1ZYO3hgNenbsIHiZMmRZA4L7d5ZG0x/fuUMBRmUdM3mUUVi4+UnQ/ZqHIQcVo9nk
 3u5pVRXXB2QqcZiWiwLL1mI75BQrmfIfBzyVM2xpZOtI/DCW1KHn4RMGFqGp5X/MNbeO
 k6tJjHCXQIkyGWgI76VCnQNlqeiH9aKkAFrZXkqf0V+67Rf2fPTn/5Td2u9r81oG/g6Q
 ABVprB82b1Gpj49WpOvyYDnQ6iWat8kUTH0WB4VtFskrgZy47biT0S01jV6IjF1TyCys
 yKZw==
X-Gm-Message-State: APjAAAUzA5uFNV2dk7hgCzsMDlZ5GpR3NuNIPhnEYMy9yJkID10Qj7MS
 6r/mv/+g31HBsjA/Csuo+xYLnpkPrFwCZt9wReM=
X-Google-Smtp-Source: APXvYqxwhKfaFTQvI3OjDcqjBs50EKvL4FDQJubpXTOLpYtC822yss71+w78uQ+l83jpeO1kPLU4YfyMDEi52yipvsI=
X-Received: by 2002:a0d:de01:: with SMTP id h1mr14011657ywe.349.1559582638910; 
 Mon, 03 Jun 2019 10:23:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
 <CAAObsKBuDDF225otw-2kBKufmpS6ng9feBshUPFKNDGv3pE8Ww@mail.gmail.com>
 <838fa193-3c67-d4c8-8991-78c3c8f89cb6@baylibre.com>
 <CAAObsKBjboa50k0awDtwk5LUNV6_6+NQbpwS=_4QuD0vf70TNA@mail.gmail.com>
 <764f6a3a-c431-cd6b-0225-c7d55ca51a57@baylibre.com>
In-Reply-To: <764f6a3a-c431-cd6b-0225-c7d55ca51a57@baylibre.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 3 Jun 2019 19:23:47 +0200
Message-ID: <CAJiuCcdTctLixTAL1WLGK-LU4W_hwzaULQJzYeZyPC4eLmtNAQ@mail.gmail.com>
Subject: Re: Panfrost impossible to probe without opp table
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_102400_945654_20D029A1 
X-CRM114-Status: GOOD (  23.32  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>, ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoKT24gRnJpLCAzMSBNYXkgMjAxOSBhdCAxNDoxMywgTmVpbCBBcm1zdHJvbmcgPG5hcm1z
dHJvbmdAYmF5bGlicmUuY29tPiB3cm90ZToKPgo+IE9uIDMxLzA1LzIwMTkgMTQ6MDksIFRvbWV1
IFZpem9zbyB3cm90ZToKPiA+IE9uIEZyaSwgMzEgTWF5IDIwMTkgYXQgMTQ6MDMsIE5laWwgQXJt
c3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBIaSBUb21l
dSwKPiA+Pgo+ID4+IE9uIDMxLzA1LzIwMTkgMTM6NTksIFRvbWV1IFZpem9zbyB3cm90ZToKPiA+
Pj4gT24gV2VkLCAyOSBNYXkgMjAxOSBhdCAyMzoyOSwgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5j
bGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gSGksCj4gPj4+Pgo+ID4+Pj4gSSBo
YXZlIHJlYmFzZSBteSBrZXJuZWwgb24gbGF0ZXN0IDUuMi1yYzIsIGFuZCBteSBwYW5mcm9zdCBk
cml2ZXIgaXMKPiA+Pj4+IG5vIG1vcmUgcHJvYmluZy4KPiA+Pj4+Cj4gPj4+PiBUaGUgaXNzdWUg
aXMgY29taW5nIGZyb20gZjM2MTdiNDQ5ZDBiY2YzYjVkODBhOTdmNTE0OThkY2Y3NDYzY2Y3ZQo+
ID4+Pj4gICAgIGRybS9wYW5mcm9zdDogU2VsZWN0IGRldmZyZXEKPiA+Pj4+Cj4gPj4+PiAgICAg
Q3VycmVudGx5LCB0aGVyZSBpcyBzb21lIGxvZ2ljIGZvciB0aGUgZHJpdmVyIHRvIHdvcmsgd2l0
aG91dCBkZXZmcmVxLgo+ID4+Pj4gICAgIEhvd2V2ZXIsIHRoZSBkcml2ZXIgYWN0dWFsbHkgZmFp
bHMgdG8gcHJvYmUgaWYgIUNPTkZJR19QTV9ERVZGUkVRLgo+ID4+Pj4KPiA+Pj4+ICAgICBGaXgg
dGhpcyBieSBzZWxlY3RpbmcgZGV2ZnJlcSwgYW5kIGRyb3AgdGhlIGFkZGl0aW9uYWwgY2hlY2tz
Cj4gPj4+PiAgICAgZm9yIGRldmZyZXEuCj4gPj4+Pgo+ID4+Pj4gSXQgc2VlbXMgdGhhdCB3aXRo
IHRoaXMgY29tbWl0IHRoZSBPUFAgdGFibGUgaXMgbm93IG1hbmRhdG9yeS4KPiA+Pj4+IGlzIGl0
IGludGVudGlvbmFsPwo+ID4+Pgo+ID4+PiBIaSBDbMOpbWVudCwKPiA+Pj4KPiA+Pj4gZGV2ZnJl
cSBzdXBwb3J0IGlzIGludGVudGlvbmFsbHkgcmVxdWlyZWQuIEkgZ290IGEgSDY0IGJvYXJkIHdo
aWNoIEknbQo+ID4+PiB1c2luZyB0byBhZGQgVDcyMCBzdXBwb3J0IHRvIFBhbmZyb3N0Lgo+ID4+
Cj4gPj4gb3BlcmF0aW5nLXBvaW50cy12MiBhbmQgY2xvY2tzIGFyZSBvcHRpb25hbCwgZGV2ZnJl
cSBzaG91bGQgYmUgb3B0aW9uYWwsCj4gPj4gdGhpcyB3YXMgdGhlIGRlZmF1bHQgYmVoYXZpb3Vy
IG9mIHRoZSBmaXJzdCBhcHBsaWVkIHZlcnNpb24uCj4gPgo+ID4gSSdtIGNvbmNlcm5lZCBieSB0
aGUgc2FmZXR5IG9mIHJ1bm5pbmcgdGhlc2UgR1BVcyBhbGwgdGhlIHRpbWUgYXQKPiA+IHRoZWly
IG1heGltdW0gZnJlcXVlbmNpZXMuIE1heWJlIG5vdCBvbiBDaHJvbWVib29rcyBhbmQgb3RoZXIg
Y29uc3VtZXIKPiA+IGRldmljZXMsIGJ1dCB0aGUgU0JDcyBJIGhhdmUgaGVyZSBoYXZlIGFsbCB2
ZXJ5IGNyYXBweSBoZWF0Cj4gPiBkaXNzaXBhdGlvbi4KPgo+IFN1cmUsIGl0J3MgbG9naWNhbCB0
byBoYXZlIGRldmZyZXEgcnVubmluZyBvbiB0aGVzZSBkZXZpY2VzLgo+Cj4gPgo+ID4+IEFtbG9n
aWMgZHQgZG9lcyBub3QgaGF2ZSBvcGVyYXRpbmctcG9pbnRzLXYyLCBhbmQgZGV2ZnJlcSB3b24n
dCBiZSBzdXBwb3J0ZWQKPiA+PiBzb29uLgo+ID4KPiA+IFdoYXQncyB0aGUgcHJvYmxlbSB3aXRo
IGNvbWluZyB1cCB3aXRoIHRoZSBvcGVyYXRpbmcgcG9pbnRzPwo+Cj4gQmVjYXVzZSB0aGUgYmlu
ZGluZ3MgYXJlIG9wdGlvbmFsIDoKPiBPcHRpb25hbCBwcm9wZXJ0aWVzOgo+Cj4gLSBjbG9ja3Mg
OiBQaGFuZGxlIHRvIGNsb2NrIGZvciB0aGUgTWFsaSBNaWRnYXJkIGRldmljZS4KPgo+IC0gbWFs
aS1zdXBwbHkgOiBQaGFuZGxlIHRvIHJlZ3VsYXRvciBmb3IgdGhlIE1hbGkgZGV2aWNlLiBSZWZl
ciB0bwo+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3VsYXRvci9yZWd1
bGF0b3IudHh0IGZvciBkZXRhaWxzLgo+Cj4gLSBvcGVyYXRpbmctcG9pbnRzLXYyIDogUmVmZXIg
dG8gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL29wcC9vcHAudHh0Cj4gICBmb3Ig
ZGV0YWlscy4KPgo+IFVubGVzcyB5b3UgY2hhbmdlIHRoZSBiaW5kaW5ncywgaXQncyBtYW5kYXRl
ZCB0byBiZSBvcHRpb25hbCBieSB0aGUgYmluZGluZ3MuCgpJIGNhbiBwcm9wb3NlIGEgcGF0Y2gg
dG8gZml4IHRoaXMgYnV0IHdoYXQgaXMgdGhlIGJlc3Qgc29sdXRpb24/CgpMZWF2ZSBERVZGUkVR
IGNvbmZpZyBtYW5kYXRvcnkgYnV0IGFsbG93IHRvIHByb2JlIHdpdGhvdXQgb3BwX3RhYmxlPwpS
ZXZlcnQgdGhlIGNvbW1pdD8KRml4IHRoZSBkb2N1bWVudGF0aW9uIHRvIGhhdmUgb3BwIHRhYmxl
IG1hbmRhdG9yeT8KClRoYW5rcywKQ2zDqW1lbnQKCj4KPiBOZWlsCj4KPgo+ID4KPiA+IFRoYW5r
cywKPiA+Cj4gPiBUb21ldQo+ID4KPiA+PiBOZWlsCj4gPj4KPiA+Pj4KPiA+Pj4gT25jZSBJJ20g
YWJsZSB0byB0ZXN0IHRoZSBHUFUgcHJvcGVybHkgYWxvbmcgd2l0aCBmcmVxdWVuY3kgc2NhbGlu
ZywgSQo+ID4+PiB3aWxsIHBpbmcgeW91IHNvIHlvdSBjYW4gcmV0ZXN0IGFuZCByZXN1Ym1pdC4K
PiA+Pj4KPiA+Pj4gVGhhbmtzLAo+ID4+Pgo+ID4+PiBUb21ldQo+ID4+Pgo+ID4+Pj4gQWN0dWFs
bHkKPiA+Pj4+IFsgICAgMy4wNDYyMzddIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBjbG9jayByYXRl
ID0gNDMyMDAwMDAwCj4gPj4+PiBbICAgIDMuMDUxNTkzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
YnVzX2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPiA+Pj4+IFsgICAgMy4wOTYwMTJdIHBhbmZyb3N0
IDE4MDAwMDAuZ3B1OiBtYWxpLXQ3MjAgaWQgMHg3MjAgbWFqb3IgMHgxCj4gPj4+PiBtaW5vciAw
eDEgc3RhdHVzIDB4MAo+ID4+Pj4gWyAgICAzLjEwMzY4Ml0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6
IGZlYXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKPiA+Pj4+IGlzc3VlczogMDAwMDAwMDAsMjEw
NTQ0MDAKPiA+Pj4+IFsgICAgMy4xMTE3ODldIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBGZWF0dXJl
czogTDI6MHgwNzExMDIwNgo+ID4+Pj4gU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6MHgwMDAwMDgw
OSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFTOjB4Zgo+ID4+Pj4gSlM6MHg3Cj4gPj4+PiBbICAg
IDMuMTIzNDM1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogc2hhZGVyX3ByZXNlbnQ9MHgzIGwyX3By
ZXNlbnQ9MHgxCj4gPj4+PiBbICAgIDMuMTMwNDA1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmF0
YWwgZXJyb3IgZHVyaW5nIGRldmZyZXEgaW5pdAo+ID4+Pj4KPiA+Pj4+IFdpdGggY29tbWl0IHJl
dmVydGVkCj4gPj4+PiBbICAgIDMuMDM4MjM2XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogY2xvY2sg
cmF0ZSA9IDQzMjAwMDAwMAo+ID4+Pj4gWyAgICAzLjA0MzU5M10gcGFuZnJvc3QgMTgwMDAwMC5n
cHU6IGJ1c19jbG9jayByYXRlID0gMTAwMDAwMDAwCj4gPj4+PiBbICAgIDMuMDg3OTk0XSBwYW5m
cm9zdCAxODAwMDAwLmdwdTogbWFsaS10NzIwIGlkIDB4NzIwIG1ham9yIDB4MQo+ID4+Pj4gbWlu
b3IgMHgxIHN0YXR1cyAweDAKPiA+Pj4+IFsgICAgMy4wOTU2NThdIHBhbmZyb3N0IDE4MDAwMDAu
Z3B1OiBmZWF0dXJlczogMDAwMDAwMDAsMTAzMDllNDAsCj4gPj4+PiBpc3N1ZXM6IDAwMDAwMDAw
LDIxMDU0NDAwCj4gPj4+PiBbICAgIDMuMTAzNzYzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmVh
dHVyZXM6IEwyOjB4MDcxMTAyMDYKPiA+Pj4+IFNoYWRlcjoweDAwMDAwMDAwIFRpbGVyOjB4MDAw
MDA4MDkgTWVtOjB4MSBNTVU6MHgwMDAwMjgyMSBBUzoweGYKPiA+Pj4+IEpTOjB4Nwo+ID4+Pj4g
WyAgICAzLjExNTQxMF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IHNoYWRlcl9wcmVzZW50PTB4MyBs
Ml9wcmVzZW50PTB4MQo+ID4+Pj4gWyAgICAzLjEyMjc5OF0gW2RybV0gSW5pdGlhbGl6ZWQgcGFu
ZnJvc3QgMS4wLjAgMjAxODA5MDggZm9yCj4gPj4+PiAxODAwMDAwLmdwdSBvbiBtaW5vciAwCj4g
Pj4+Pgo+ID4+Pj4KPiA+Pj4+IFRoYW5rcywKPiA+Pj4+IENsw6ltZW50Cj4gPj4+Pgo+ID4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+IGxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPj4+PiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiA+Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo+ID4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ID4+PiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPj4+
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+Pj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKPiA+Pj4KPiA+Pgo+ID4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gZHJpLWRl
dmVsIG1haWxpbmcgbGlzdAo+ID4+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
