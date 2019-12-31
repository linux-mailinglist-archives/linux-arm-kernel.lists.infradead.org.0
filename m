Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA7112D7C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 11:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S63+OSP6I3e05MlaQaArHbSQV3liZvQYcSOZCTd5/4=; b=QACnSN+Mz456P7
	7qAdrb9pPM/CsMcBl/ravdBcXxKRF4XMw6Oan8oP2sEzSRxw596BeS/DP7FZzXX4Uu3i1KNs5DpPW
	D47FMF5ZA3hFzPv7O+6RfYSR5dpWRKV4BL28wYZBagjKdQOvS1f9U9Nv3aluYCTGQ8cKAvmlQjKAB
	jnQy88/41Pm+RaY2T41uf+46CxMHFwXyKaQ8moZixFm/Jkxc7qWiIti0rOu2Z8UWd0OPXGh/MnzXc
	uMeXMD9r/oK48Xr4L6qm14oHyhDlMlyKJaIEpWOumHYw/QhdEhXOYv9rRogP2tcB7T6oBPIti6WR5
	edv7LTvT6IE/RhUKwEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEMS-0002vE-Sq; Tue, 31 Dec 2019 10:02:48 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEMJ-0002ul-4p
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 10:02:40 +0000
Received: by mail-ed1-f68.google.com with SMTP id c26so34886211eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 02:02:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IZNO2B93r2pFFlnRWI7aH+tyFL6pJezUFxkzlZmNo64=;
 b=SNgt1Zi6QnpayufcEUAqbylmMztu8jCZ6XntcKfvz7H6/lkUmvr+siJ5ViahA6I/7+
 rZeSMY4QLmGh+kb3QAXHGXMkCWpDlw5aY5OXc+os/JfFIipR5GnKzj/NFcZnNi1wsKOW
 F7PraGWC5J0b8UFCKThBqRYQ/dUevxT3Xr5VBZCykNwwiBCGgd49UOJI1RhuiKy6oteT
 vM+6/PfRQAkI/KDvAbyRtUFgHoIh+vID/CqT38bspg5Gnv+UrMzn0jhp6WdtYNa+OLcN
 Ha0jZNcBjM8Cmd96i6qx+Ldyc82csY6wTzUWYreB/WHzTQtqBg1GejORKlSFi0WgRW2l
 XQIQ==
X-Gm-Message-State: APjAAAV/hwBJ+WoNMgcSJFuowwF+59Sjhw2wbk5rA+9eGTSbbILTtUBN
 2Dh+sZLlrU+XndDZV9Y6TIY=
X-Google-Smtp-Source: APXvYqxFwi68FxTrovhQw9UWqT1zbwtC7DLhd+1ydbZmMVil9u27U+QxKMg991OwmjSp7qoqklGktw==
X-Received: by 2002:a50:a7a5:: with SMTP id i34mr74736915edc.128.1577786557398; 
 Tue, 31 Dec 2019 02:02:37 -0800 (PST)
Received: from pi3 ([194.230.155.138])
 by smtp.googlemail.com with ESMTPSA id dd17sm5908761edb.9.2019.12.31.02.02.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 02:02:36 -0800 (PST)
Date: Tue, 31 Dec 2019 11:02:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@samsung.com>
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
Message-ID: <20191231100234.GA7024@pi3>
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com>
 <20191230154405.GC4918@pi3>
 <2922135223b01126277ef92a53e6b294bc17bb5c.camel@samsung.com>
 <20191231092254.GA6939@pi3>
 <99427c18b1fcca3bc21e69609500abdbbef59167.camel@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99427c18b1fcca3bc21e69609500abdbbef59167.camel@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_020239_187840_3FADE078 
X-CRM114-Status: GOOD (  37.03  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMzEsIDIwMTkgYXQgMTA6NDE6NDdBTSArMDEwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gT24gVHVlLCAyMDE5LTEyLTMxIGF0IDEwOjIyICswMTAwLCBLcnp5c3p0b2YgS296
bG93c2tpIHdyb3RlOgo+ID4gT24gVHVlLCBEZWMgMzEsIDIwMTkgYXQgMDg6MTg6MDFBTSArMDEw
MCwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4gPiA+IEhpLAo+ID4gPiAKPiA+ID4gT24gTW9uLCAy
MDE5LTEyLTMwIGF0IDE2OjQ0ICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4g
PiA+IE9uIEZyaSwgRGVjIDIwLCAyMDE5IGF0IDEyOjU2OjUwUE0gKzAxMDAsIEFydHVyIMWad2ln
b8WEIHdyb3RlOgo+ID4gPiA+ID4gVGhpcyBwYXRjaCBhZGRzIHRoZSBmb2xsb3dpbmcgcHJvcGVy
dGllcyB0byB0aGUgRXh5bm9zNDQxMiBEVDoKPiA+ID4gPiA+ICAgLSBleHlub3MsaW50ZXJjb25u
ZWN0LXBhcmVudC1ub2RlOiB0byBkZWNsYXJlIGNvbm5lY3Rpb25zIGJldHdlZW4KPiA+ID4gPiA+
ICAgICBub2RlcyBpbiBvcmRlciB0byBndWFyYW50ZWUgUE0gUW9TIHJlcXVpcmVtZW50cyBiZXR3
ZWVuIG5vZGVzOwo+ID4gPiA+ID4gICAtICNpbnRlcmNvbm5lY3QtY2VsbHM6IHJlcXVpcmVkIGJ5
IHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBOb3RlIHRo
YXQgI2ludGVyY29ubmVjdC1jZWxscyBpcyBhbHdheXMgemVybyBhbmQgbm9kZSBJRHMgYXJlIG5v
dAo+ID4gPiA+ID4gaGFyZGNvZGVkIGFueXdoZXJlLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+Cj4gPiA+ID4g
PiAtLS0KPiA+ID4gPiA+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21t
b24uZHRzaSB8IDUgKysrKysKPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspCj4gPiA+ID4gCj4gPiA+ID4gVGhlIG9yZGVyIG9mIHBhdGNoZXMgaXMgY29uZnVzaW5nLiBQ
YXRjaGVzIDQgYW5kIDYgYXJlIHNwbGl0IC0gZG8gdGhlCj4gPiA+ID4gZGVwZW5kIG9uIDU/IEkg
ZG91YnQgYnV0Li4uCj4gPiA+IAo+ID4gPiBMZXQgbWUgZWxhYm9yYXRlOgo+ID4gPiAKPiA+ID4g
VGhlIG9yZGVyIG9mIHRoZSBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGlzIHN1Y2ggdGhhdCBldmVy
eSBzdWJzZXF1ZW50Cj4gPiA+IHBhdGNoIGFkZHMgc29tZSBmdW5jdGlvbmFsaXR5IChhbmQsIG9m
IGNvdXJzZSwgYXBwbHlpbmcgcGF0Y2hlcyBvbmUtYnktb25lCj4gPiA+IHlpZWxkcyBhIHdvcmtp
bmcga2VybmVsIGF0IGV2ZXJ5IHN0ZXApLiBTcGVjaWZpY2FsbHkgZm9yIHBhdGNoZXMgMDQtLTA3
Ogo+ID4gPiAKPiA+ID4gIC0tIHBhdGNoIDA0IGFkZHMgaW50ZXJjb25uZWN0IF9wcm92aWRlcl8g
cHJvcGVydGllcyBmb3IgRXh5bm9zNDQxMjsKPiA+ID4gIC0tIHBhdGNoIDA1IGltcGxlbWVudHMg
aW50ZXJjb25uZWN0IHByb3ZpZGVyIGxvZ2ljIChkZXBlbmRzIG9uIHBhdGNoIDA0KTsKPiA+ID4g
IC0tIHBhdGNoIDA2IGFkZHMgaW50ZXJjb25uZWN0IF9jb25zdW1lcl8gcHJvcGVydGllcyBmb3Ig
RXh5bm9zNDQxMiBtaXhlcjsKPiA+ID4gIC0tIHBhdGNoIDA3IGltcGxlbWVudHMgaW50ZXJjb25u
ZWN0IGNvbnN1bWVyIGxvZ2ljIChkZXBlbmRzIG9uIHBhdGNoZXMKPiA+ID4gICAgIDA1ICYgMDYp
Owo+ID4gPiAKPiA+ID4gTXkgcmVhc29uaW5nIGlzIHRoYXQgdGhpcyBvcmRlciBhbGxvd3MgdG8g
ZS5nLiwgbWVyZ2UgdGhlIGludGVyY29ubmVjdAo+ID4gPiBwcm92aWRlciBmb3IgZXh5bm9zLWJ1
cyBhbmQgbGVhdmUgdGhlIGNvbnN1bWVycyBmb3IgbGF0ZXIgKG5vdCBsaW1pdGVkIHRvCj4gPiA+
IHRoZSBtaXhlcikuIEkgaG9wZSB0aGlzIG1ha2VzIHNlbnNlLgo+ID4gCj4gPiBJdCBpcyB3cm9u
Zy4gVGhlIGRyaXZlciBzaG91bGQgbm90IGRlcGVuZCBvbiBEVFMgY2hhbmdlcyBiZWNhdXNlOgo+
ID4gMS4gRFRTIGFsd2F5cyBnbyB0aHJvdWdoIHNlcGFyYXRlIGJyYW5jaCBhbmQgdHJlZSwgc28g
bGFzdCBwYXRjaAo+ID4gICAgd2lsbCBoYXZlIHRvIHdhaXQgdXAgdG8gMyBjeWNsZXMgKCEhISks
Cj4gPiAyLiBZb3UgYnJlYWsgYmFja3dhcmQgY29tcGF0aWJpbGl0eS4KPiAKPiBJdCBpcyB1cCB0
byB0aGUgZGVmaW5pdGlvbiBvZiAiZGVwZW5kcyIuIFRoZSBkcml2ZXIgaXMgX25vdF8gYnJva2Vu
IHdpdGhvdXQKPiB0aGUgRFRTIHBhdGNoZXMsIGJ1dCB0aGUgaW50ZXJjb25uZWN0IGZ1bmN0aW9u
YWxpdHkgd2lsbCBub3QgYmUgYXZhaWxhYmxlLgo+IAo+IFRoZSBvbmx5IHJlcXVpcmVtZW50IGlz
IHRoYXQgaWYgd2Ugd2FudCB0byBoYXZlIGEgd29ya2luZyBpbnRlcmNvbm5lY3QKPiBjb25zdW1l
ciwgdGhlcmUgbmVlZHMgdG8gYmUgYSB3b3JraW5nIGludGVyY29ubmV0IHByb3ZpZGVyIChhbmQg
SSB1c2VkCj4gdGhlIHdvcmQgImRlcGVuZHMiIHRvIHNwZWNpZnkgd2hhdCBuZWVkcyB3aGF0IGlu
IG9yZGVyIHRvIHdvcmsgYXMgaW50ZW5kZWQpLgo+IAoKVGhlIG9yZGVyIG9mIHBhdGNoZXMgc2hv
dWxkIHJlZmxlY3QgZmlyc3Qgb2YgYWxsIHJlYWwgZGVwZW5kZW5jeS4KV2hldGhlciBpdCBjb21w
aWxlcywgd29ya3MgYXQgYWxsIGFuZCBkb2VzIG5vdCBicmVhayBhbnl0aGluZy4gIExvZ2ljYWwK
ZGVwZW5kZW5jeSBvZiAid2hlbiB0aGUgZmVhdHVyZSB3aWxsIHN0YXJ0IHdvcmtpbmciIGlzCmly
cmVsZXZhbnQgdG8gRFRTIGJlY2F1c2UgRFRTIGdvZXMgaW4gc2VwYXJhdGUgd2F5IGFuZCBkcml2
ZXIgaXMKaW5kZXBlbmRlbnQgb2YgaXQuCgo+IEkgc3RpbGwgdGhpbmsgdGhlIG9yZGVyIG9mIHRo
ZXNlIHBhdGNoZXMgaXMgdGhlIG1vc3QgbG9naWNhbCBvbmUgZm9yIHNvbWVvbmUKPiByZWFkaW5n
IHRoaXMgUkZDIGFzIGEgd2hvbGUuCgpJIGFtIHNvcnJ5IGJ1dCBpdCBicmluZ3Mgb25seSBjb25m
dXNpb24uIERUUyBpcyBvcnRob2dvbmFsIG9mIHRoZQpkcml2ZXIgY29kZS4gWW91IGNvdWxkIGV2
ZW4gcG9zdCB0aGUgcGF0Y2hzZXQgd2l0aG91dCBEVFMgKGFsdGhvdWdoIHRoZW4KaXQgd291bGQg
cmFpc2UgcXVlc3Rpb25zIHdoZXJlIGlzIHRoZSB1c2VyIG9mIGl0LCBidXQgc3RpbGwsIHlvdQpj
b3VsZCkuCgpGdXJ0aGVyLCBEVFMgZGVzY3JpYmVzIGFsc28gaGFyZHdhcmUgc28geW91IGNvdWxk
IHNlbmQgY2VydGFpbiBEVFMKcGF0Y2hlcyB3aXRob3V0IGRyaXZlciBpbXBsZW1lbnRhdGlvbiB0
byBkZXNjcmliZSB0aGUgaGFyZHdhcmUuCgpEcml2ZXIgY29kZSBhbmQgRFRTIGFyZSBraW5kIG9m
IGRpZmZlcmVudCB3b3JsZHMgc28gbWl4aW5nIHRoZW0gdXAgZm9yCmxvZ2ljYWwgcmV2aWV3IGRv
ZXMgbm90IHJlYWxseSBtYWtlIGFueSBzZW5zZS4KCk5vdCBtZW50aW9uaW5nIGl0IGlzIGRpZmZl
cmVudCB0aGFuIG1vc3Qgb2Ygb3RoZXIgcGF0Y2hlcyBvbiBtYWlsaW5nCmxpc3RzLgoKQlRXLCBp
dCBpcyB0aGUgc2FtZSBhcyBiaW5kaW5ncyB3aGljaCBzaG91bGQgKGFsbW9zdCkgYWx3YXlzIGdv
IGZpcnN0IGFzCnNlcGFyYXRlIHBhdGNoZXMuCgo+IAo+ID4gSW4gY2VydGFpbiBjYXNlcyBkZXBl
bmRlbmN5IG9uIERUUyBjaGFuZ2VzIGlzIG9rOgo+ID4gMS4gQ2xlYW5pbmcgdXAgZGVwcmVjYXRl
ZCBwcm9wZXJ0aWVzLAo+ID4gMi4gSWdub3JpbmcgdGhlIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkg
Zm9yIGUuZy4gbmV3IHBsYXRmb3Jtcy4KPiA+IAo+ID4gTm9uZSBvZiB0aGVzZSBhcmUgYXBwbGlj
YWJsZSBoZXJlLgo+ID4gCj4gPiBZb3UgbmVlZCB0byByZXdvcmsgaXQsIHB1dCBEVFMgY2hhbmdl
cyBhdCB0aGUgZW5kLiBUaGlzIGNsZWFybHkgc2hvd3MKPiA+IHRoYXQgdGhlcmUgaXMgbm8gd3Jv
bmcgZGVwZW5kZW5jeS4KPiA+IAo+ID4gPiAKPiA+ID4gPiBBZGp1c3QgdGhlIHRpdGxlIHRvIG1h
dGNoIHRoZSBjb250ZW50cyAtIHlvdSBhcmUgbm90IGFkZGluZyBiaW5kaW5ncyBidXQKPiA+ID4g
PiBwcm9wZXJ0aWVzIHRvIGJ1cyBub2Rlcy4gQWxzbyB0aGUgcHJlZml4IGlzIEFSTTogKGxvb2sg
YXQgcmVjZW50Cj4gPiA+ID4gY29tbWl0cykuCj4gPiA+IAo+ID4gPiBPSy4KPiA+ID4gCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEy
LW9kcm9pZC1jb21tb24uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lk
LWNvbW1vbi5kdHNpCj4gPiA+ID4gPiBpbmRleCA0Y2UzZDc3YTY3MDQuLmQ5ZDcwZWFjZmNhZiAx
MDA2NDQKPiA+ID4gPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lk
LWNvbW1vbi5kdHNpCj4gPiA+ID4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEy
LW9kcm9pZC1jb21tb24uZHRzaQo+ID4gPiA+ID4gQEAgLTkwLDYgKzkwLDcgQEAKPiA+ID4gPiA+
ICAmYnVzX2RtYyB7Cj4gPiA+ID4gPiAgCWV4eW5vcyxwcG11LWRldmljZSA9IDwmcHBtdV9kbWMw
XzM+LCA8JnBwbXVfZG1jMV8zPjsKPiA+ID4gPiA+ICAJdmRkLXN1cHBseSA9IDwmYnVjazFfcmVn
PjsKPiA+ID4gPiA+ICsJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiA+ID4gPiAKPiA+ID4g
PiBUaGlzIGRvZXMgbm90IGxvb2sgbGlrZSBwcm9wZXJ0eSBvZiBPZHJvaWQgYnV0IEV4eW5vczQ0
MTIgb3IgRXh5bm9zNC4KPiA+ID4gCj4gPiA+IFN0cmFuZ2VseSBlbm91Z2gsIHRoaXMgZmlsZSBp
cyB3aGVyZSB0aGUgJ2V4eW5vcyxwYXJlbnQtYnVzJyAoYWthLiAnZGV2ZnJlcScpCj4gPiA+IHBy
b3BlcnRpZXMgYXJlIGxvY2F0ZWQgKGFuZCBldmVyeXRoaW5nIGluIHRoaXMgUkZDIGNvbmNlcm5z
IGRldmZyZXEpLgo+ID4gCj4gPiBJIGNhbm5vdCBmaW5kIGV4eW5vcyxwYXJlbnQtYnVzIGluIGV4
eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpLiBDYW4KPiA+IHlvdSBlbGFib3JhdGU/Cj4gCj4g
Q3VycmVudGx5IGEgbmFtZSBjaGFuZ2UgaXMgYmVpbmcgbWFkZTogJ2RldmZyZXEnIC0+ICdleHlu
b3MscGFyZW50LWJ1cycKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMzA0
NTQ5Lwo+IChhIGRlcGVuZGVuY3kgb2YgdGhpcyBSRkM7IGFsc28gYXZhaWxhYmxlIGluIGRldmZy
ZXEtdGVzdGluZyBicmFuY2gpCgpJIHNlZS4gVGhhdCBwcm9wZXJ0eSBhbHNvIGRvZXMgbm90IGxv
b2sgbGlrZSBib2FyZCAoT2Ryb2lkKSBzcGVjaWZpYyBzbwppdCBzaG91bGQgYmUgbW92ZWQgdG8g
RXh5bm9zNDQxMiBEVFNJLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
