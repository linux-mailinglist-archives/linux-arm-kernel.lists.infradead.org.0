Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A781EB206
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 01:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Js94i/QP7PcmXHYj1WJzbRHTHuu+K43AB6aXRZcadsc=; b=dUhsB20vN97GgJ
	A8hoYpvoJgton69bLfYEnGucCn/4p9fKVobuLejeno6VnSozMPE8pUC9H69yhUrqm9Eju5v4EWHs9
	DsnI6iLhWddQUgwMZMrC7CUsC5MG9B4SwNMYqQRKiOEk4HB6y+ryozQPgnMZevtvKqXyS+ogJ42H5
	R7gHXoRdW3IDdF2FNyNaH2DdjKRdTwALJyoU1DzheaVCFh3CGlyK/Tn4iy9+5phI1WK1iLhWSuZb8
	ab6McSHnioZm2NbshNCUKe5TjChR5pNaOXfMr7kYnx+e2kM0KJdTJ/EIQjj7F3Os2Os38DI2PHc9a
	MzW9nXcm7l5sm4kJOzRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jftcK-0003QM-MO; Mon, 01 Jun 2020 23:13:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jftcC-0003Q1-Uw
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 23:13:10 +0000
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5A76207BB
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 23:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591053187;
 bh=QjmorbqlDGfNfmG/jRLD/FFAzah/loEc/rFGjs/2nSU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jvN6gMFQAKmZKgBpt6+gDdvSu+hs+C7mAbDcEZ0J+O8aOel8LN1TESCT9Uf5peoLn
 gYpFGP2mVHOlVa6THmkzYXoftHTCVrvAhrPomVbEkTkUZhl6ZSyNqDjS4U/Dv5mVwj
 7S2HvnBqEZ+YkjCNVjqmhha6SFMa5zqR0DSVrj14=
Received: by mail-oi1-f171.google.com with SMTP id p70so5715181oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 16:13:07 -0700 (PDT)
X-Gm-Message-State: AOAM533rvLfwCr0zrJsAdobpD+MQZh/+0nzFBdB5FRxQnE41V4u3v+vO
 ydYvQJ5Wn6IMyY3OGvP+wS4D+KjDZhDZzUq+Ug==
X-Google-Smtp-Source: ABdhPJwTLGMeFHhzeNeGSkirnsYqDpNgDMfVQCkPvIwg+63gjEopfekc02y7O5fOCKqGSpuy3uOOFy9kYwDGxedk7N0=
X-Received: by 2002:aca:4e55:: with SMTP id c82mr1144810oib.147.1591053187169; 
 Mon, 01 Jun 2020 16:13:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-5-andre.przywara@arm.com>
 <20200528024810.GA232303@roeck-us.net>
 <48afb8bb-a22a-54df-7751-55b7b84c3c88@arm.com>
 <22687572-becf-7b4e-9759-cfba44677a1d@arm.com>
In-Reply-To: <22687572-becf-7b4e-9759-cfba44677a1d@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 1 Jun 2020 17:12:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLgNDd-+rrYD=Y0Hm=NaV7f0NbBFb9uhhYhzM6LjxnXZg@mail.gmail.com>
Message-ID: <CAL_JsqLgNDd-+rrYD=Y0Hm=NaV7f0NbBFb9uhhYhzM6LjxnXZg@mail.gmail.com>
Subject: Re: [PATCH v3 04/20] arm64: dts: arm: vexpress: Move fixed devices
 out of bus node
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_161309_036975_B5AC4194 
X-CRM114-Status: GOOD (  26.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMSwgMjAyMCBhdCA0OjE1IEFNIEFuZHLDqSBQcnp5d2FyYSA8YW5kcmUucHJ6
eXdhcmFAYXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiAyOC8wNS8yMDIwIDE0OjMwLCBBbmRyw6kgUHJ6
eXdhcmEgd3JvdGU6Cj4KPiBIaSwKPgo+ID4gT24gMjgvMDUvMjAyMCAwMzo0OCwgR3VlbnRlciBS
b2VjayB3cm90ZToKPiA+Cj4gPiBIaSBHdWVudGVyLAo+ID4KPiA+PiBPbiBXZWQsIE1heSAxMywg
MjAyMCBhdCAxMTozMDowMEFNICswMTAwLCBBbmRyZSBQcnp5d2FyYSB3cm90ZToKPiA+Pj4gVGhl
IGRldmljZXRyZWUgY29tcGlsZXIgY29tcGxhaW5zIHdoZW4gRFQgbm9kZXMgd2l0aG91dCBhIHJl
ZyBwcm9wZXJ0eQo+ID4+PiBsaXZlIGluc2lkZSBhIChzaW1wbGUpIGJ1cyBub2RlOgo+ID4+PiBX
YXJuaW5nIChzaW1wbGVfYnVzX3JlZyk6IE5vZGUgL2J1c0A4MDAwMDAwL21vdGhlcmJvYXJkLWJ1
cy9yZWZjbGszMmtoego+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgIG1pc3Npbmcgb3Ig
ZW1wdHkgcmVnL3JhbmdlcyBwcm9wZXJ0eQo+ID4+Pgo+ID4+PiBNb3ZlIHRoZSBmaXhlZCBjbG9j
a3MsIHRoZSBmaXhlZCByZWd1bGF0b3IsIHRoZSBsZWRzIGFuZCB0aGUgY29uZmlnIGJ1cwo+ID4+
PiBzdWJ0cmVlIHRvIHRoZSByb290IG5vZGUsIHNpbmNlIHRoZXkgZG8gbm90IGRlcGVuZCBvbiBh
bnkgYnVzc2VzLgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyZSBQcnp5d2FyYSA8YW5k
cmUucHJ6eXdhcmFAYXJtLmNvbT4KPiA+Pgo+ID4+IFRoaXMgcGF0Y2ggcmVzdWx0cyBpbiB0cmFj
ZWJhY2tzIHdoZW4gYm9vdGluZyB0aGUgdmV4cHJlc3MtYTE1IG1hY2hpbmUKPiA+PiB3aXRoIHZl
eHByZXNzLXYycC1jYTE1LXRjMSBkZXZpY2V0cmVlIGZpbGUgaW4gcWVtdS4gUmV2ZXJ0aW5nIGl0
IGFzIHdlbGwKPiA+PiBhcyB0aGUgc3Vic2VxdWVudCBwYXRjaGVzIGFmZmVjdGluZyB0aGUgc2Ft
ZSBmaWxlICh0byBhdm9pZCByZXZlcnQKPiA+PiBjb25mbGljdHMpIGZpeGVzIHRoZSBwcm9ibGVt
Lgo+ID4KPiA+IE1hbnkgdGhhbmtzIGZvciB0aGUgaGVhZHMgdXAhIEkgd2FzIGFibGUgdG8gcmVw
cm9kdWNlIGl0IGhlcmUuIE9uIHRoZQo+ID4gZmlyc3QgZ2xhbmNlIGl0IGxvb2tzIGxpa2UgdGhl
IFVBUlQgaXMgcHJvYmVkIGJlZm9yZSB0aGUgY2xvY2tzIG5vdywKPiA+IGJlY2F1c2UgdGhlIHRy
YXZlcnNhbCBvZiB0aGUgY2hhbmdlZCBEVCBsZWFkcyB0byBhIGRpZmZlcmVudCBwcm9iZQo+ID4g
b3JkZXIuIEkgd2lsbCBsb29rIGludG8gaG93IHRvIGZpeCB0aGlzLgo+Cj4gVHVybmVkIG91dCB0
byBiZSBhIGJpdCBtb3JlIGNvbXBsaWNhdGVkOgo+IFRoZSBhcm0sdmV4cHJlc3MsY29uZmlnLWJ1
cyBkcml2ZXIgd2Fsa3MgdXAgdGhlIGRldmljZSB0cmVlIHRvIGZpbmQgYQo+IGFybSx2ZXhwcmVz
cyxzaXRlIHByb3BlcnR5IFsxXS4gV2l0aCB0aGlzIHBhdGNoIHRoZSBmaXJzdCBwYXJlbnQgbm9k
ZQo+IHdpdGggdGhhdCBwcm9wZXJ0eSBpdCBmaW5kcyBpcyBub3cgdGhlIHJvb3Qgbm9kZSwgd2l0
aCB0aGUgd3Jvbmcgc2l0ZSBJRAo+ICgweGYgaW5zdGVhZCBvZiAweDApLiBTbyBpdCBxdWVyaWVz
IHRoZSB3cm9uZyBjbG9ja3MgKHRob3NlIElEcyBhcmUKPiBhY3R1YWxseSByZXNlcnZlZCB0aGVy
ZSksIGFuZCBRRU1VIHJlcG9ydHMgYmFjayAiMCIsIGNvbnNlcXVlbnRseSBbMl0uCj4gRmluZGlu
ZyBhIGNsb2NrIGZyZXF1ZW5jeSBpbiB0aGUgcmFuZ2Ugb2YgWzAsIDBdIHdvbid0IGdldCB2ZXJ5
IGZhci4KPgo+IFBvc3NpYmxlIHNvbHV0aW9ucyBhcmU6Cj4gMSkgSnVzdCBrZWVwIHRoZSBtY2Mg
YW5kIGl0cyBjaGlsZHJlbiBhdCB3aGVyZSBpdCBpcyBpbiBtYWlubGluZSByaWdodAo+IG5vdywg
c28gKnBhcnRseSogcmV2ZXJ0aW5nIHRoaXMgcGF0Y2guIFRoaXMgaGFzIHRoZSBwcm9ibGVtIG9m
IHN0aWxsCj4gcHJvZHVjaW5nIGEgZHRjIHdhcm5pbmcsIHNvIGtpbmQgb2YgZGVmZWF0cyB0aGUg
cHVycG9zZSBvZiB0aGlzIHBhdGNoLgo+Cj4gMikgQWRkIGEgImFybSx2ZXhwcmVzcyxzaXRlID0g
PDA+OyIgbGluZSB0byB0aGUgIm1jYyIgbm9kZSBpdHNlbGYuCj4gV29ya3MsIGJ1dCBsb29rcyBz
b21ld2hhdCBkb2RneSwgYXMgdGhlIG1jYyBub2RlIHNob3VsZCByZWFsbHkgYmUgYQo+IGNoaWxk
IG9mIHRoZSBtb3RoZXJib2FyZCBub2RlLCBhbmQgd2Ugc2hvdWxkIG5vdCBoYWNrIGFyb3VuZCB0
aGlzLgo+Cj4gMykgRGlnIGRlZXBlciBhbmQgZml4IHRoZSBEVCBpbiBhIHdheSB0aGF0IG1ha2Vz
IGR0YyBoYXBweS4gTWlnaHQKPiBpbnZvbHZlIChkdW1teT8pIHJhbmdlcyBvciByZWcgcHJvcGVy
dGllcy4gTXkgZ3V0IGZlZWxpbmcgaXMgdGhhdAo+IGFybSx2ZXhwcmVzcy1zeXNyZWcsZnVuYyBz
aG91bGQgcmVhbGx5IGhhdmUgYmVlbiAicmVnIiBpbiB0aGUgZmlyc3QKPiBwbGFjZSwgYnV0IHRo
YXQncyB0b28gbGF0ZSB0byBjaGFuZ2Ugbm93LCBhbnl3YXkuCj4KPiBJIHdpbGwgcG9zdCAyKSBh
cyBhIGZpeCBpZiAzKSB0dXJucyBvdXQgdG8gYmUgbm90IGZlYXNpYmxlLgoKSSB3b3VsZCBqdXN0
IGRvIDEpLgoKVG8gc29tZSBleHRlbnQsIHRoZSB3YXJuaW5ncyBhcmUgZm9yIGF2b2lkaW5nIHBv
b3IgZGVzaWduIG9uIG5ldwpiaW5kaW5ncy4gV2UgbmVlZCBhIHdheSB0byBkaXN0aW5ndWlzaCBi
ZXR3ZWVuIGV4aXN0aW5nIGJvYXJkcyBhbmQgbmV3Cm9uZXMuIE1heWJlIGR0cyBuZWVkcyB0byBs
ZWFybiBzb21lIHdhcm5pbmcgZGlzYWJsZSBhbm5vdGF0aW9ucyBvciB3ZQpuZWVkIHBlciB0YXJn
ZXQgd2FybmluZyBzZXR0aW5ncyAoRFRDX0ZMQUdTX2Zvby5kdGIgPykuIE9yIG1heWJlIHRoaXMK
Y2hlY2sgaXMganVzdCB0b28gc3RyaWN0LgoKClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
