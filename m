Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08461E4BE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 19:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJPN/+HkHOuqFahoFyHq1VGDLrT8wuAkhwRM2uH7CXA=; b=dDFwxm5KQajUtN
	OvsNn19yX3vvhXS68jhW7652tDfuNoyiwQ/Kn/mPYYbj4C2Wg0Vl9eEUc+nBK6kMJav0V0yjAS2XB
	k8pPHfANbSLOiR71uaX3ILqaHyRQMNbTBD60JJB9aAlazKYoPpMx7auEbY7xXyAipAmRBdhRINc3x
	3R+8g3wTMJ3fN1HigVjAqZVTDy9IP+RzZG8t5ca6tdrkEv6MUjL6I4y5rfeiuHOk+PUuvikvJl+dF
	T46zfCigIyzcGqpfZJBoivIav+BkvJtiMruWP27qB1Z/upKW/t4MXLJ31nIAADtS0Yo1SGCT0HVvR
	cmj9fNPhvTx/wbRXbqfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzsi-0005qj-Fp; Wed, 27 May 2020 17:30:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzsS-00056v-8F
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 17:30:05 +0000
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F624208B8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 17:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590600603;
 bh=AYuJ67xsI+CFY7fGg0P0jYxtF43oU5VTBcAFmEh+qxc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EJWWhLbk5Lz6+Rnb8QcUPDoQATBQVp2Iy6kvhQD7FufGToEqZw0WNmKoEZY+OeWoD
 4rrHCNZGyQtw7/B8k5ncP5E/pc9LDYXrZg2pq9TIrd9nknM4w/xTPrhulgOkCsTMPa
 pFSZ0noNeWbaxVUSiUxAum/0PU6fIzcy/VTy7wWw=
Received: by mail-oi1-f176.google.com with SMTP id x23so22439638oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 10:30:03 -0700 (PDT)
X-Gm-Message-State: AOAM532DYhmz/rGNRVtO/KWYBuSpF3GkPUIDzhMhbBMljBN4ex3CFiKl
 oFc+09m5Bj7fCpy30UNq8YFZSXTsRfQ7eq4qdg==
X-Google-Smtp-Source: ABdhPJw6llfBTCOQ2yPHWqoilVklcwSd7RUIwXqOE8eWot1HvhdFljn/0QocEk0zHloG/X0FBFCjJl7CKzBHAp2PxaU=
X-Received: by 2002:aca:d4d5:: with SMTP id l204mr3572243oig.147.1590600602702; 
 Wed, 27 May 2020 10:30:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
 <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
 <20200526014444.GB6179@pendragon.ideasonboard.com>
 <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
In-Reply-To: <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 27 May 2020 11:29:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJgQajnKdQ1Bt6YFX04fX0VGz44Q3kBdLLR04OzhWrH5A@mail.gmail.com>
Message-ID: <CAL_JsqJgQajnKdQ1Bt6YFX04fX0VGz44Q3kBdLLR04OzhWrH5A@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi, adv7511.txt: convert
 to yaml
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_103004_343684_E940029F 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wei Xu <xuwei5@hisilicon.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgMTowMyBBTSBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0
QGxpbnV4LW02OGsub3JnPiB3cm90ZToKPgo+IEhpIExhdXJlbnQsCj4KPiBPbiBUdWUsIE1heSAy
NiwgMjAyMCBhdCAzOjQ0IEFNIExhdXJlbnQgUGluY2hhcnQKPiA8bGF1cmVudC5waW5jaGFydEBp
ZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPiA+IE9uIE1vbiwgTWF5IDI1LCAyMDIwIGF0IDA5OjQz
OjM1QU0gKzAyMDAsIFJpY2FyZG8gQ2HDsXVlbG8gd3JvdGU6Cj4gPiA+IE9uIGp1ZSAxNC0wNS0y
MDIwIDE4OjIyOjM5LCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gPiA+ID4gSWYgd2Ugd2Fu
dCB0byBiZSBtb3JlIHN0cmljdCBhbmQgcmVxdWlyZSB0aGUgZGVmaW5pdGlvbiBvZiBhbGwgdGhl
Cj4gPiA+ID4gPiBzdXBwbGllcywgdGhlcmUgd2lsbCBiZSBtYW55IG1vcmUgRFRzIGNoYW5nZXMg
aW4gdGhlIHNlcmllcywgYW5kIEknbSBub3QKPiA+ID4gPiA+IHN1cmUgSSdsbCBiZSBhYmxlIHRv
IGRvIHRoYXQgaW4gYSByZWFzb25hYmxlIGFtb3VudCBvZiB0aW1lLiBJJ20gbG9va2luZwo+ID4g
PiA+ID4gYXQgdGhlbSBhbmQgaXQncyBub3QgYWx3YXlzIGNsZWFyIHdoaWNoIHJlZ3VsYXRvcnMg
dG8gdXNlIG9yIGlmIHRoZXkgYXJlCj4gPiA+ID4gPiBldmVuIGRlZmluZWQuCj4gPiA+ID4KPiA+
ID4gPiBXZSBjYW4gZGVjb3VwbGUgdGhlIHR3byB0aG91Z2ggKEkgdGhpbmspLiBUaGUgYmluZGlu
Z3Mgc2hvdWxkIHJlZmxlY3QKPiA+ID4gPiB3aGF0IHdlIGNvbnNpZGVyIHJpZ2h0LCBhbmQgdGhl
IGR0cyBmaWxlcyBjb3VsZCBiZSBmaXhlZCBvbiB0b3AuCj4gPiA+Cj4gPiA+IERvIHlvdSBoYXZl
IGEgc3VnZ2VzdGlvbiBvbiBob3cgdG8gZG8gdGhpcz8gSWYgd2UgZGVjb3VwbGUgdGhlIHR3bwo+
ID4gPiB0YXNrcyBtb3N0IG9mIHRoZSB3b3JrIHdvdWxkIGJlIHNlYXJjaGluZyBmb3IgRFRzIHRv
IGZpeCBhbmQgZmluZGluZyBhCj4gPiA+IHdheSB0byBmaXggZWFjaCBvbmUgb2YgdGhlbSwgYW5k
IHVubGVzcyBJIGRvIHRoaXMgX2JlZm9yZV8gdGhlIGJpbmRpbmcKPiA+ID4gY29udmVyc2lvbiBJ
J2xsIGdldCBhIGxvdCBvZiBkdGJzX2NoZWNrIGVycm9ycy4KPiA+Cj4gPiBSb2Igc2hvdWxkIGFu
c3dlciB0aGlzIHF1ZXN0aW9uIGFzIGl0IHdpbGwgYmUgaGlzIGRlY2lzaW9uLCBidXQgSSd2ZQo+
ID4gcGVyc29uYWxseSBuZXZlciBjb25zaWRlcmVkIG5vbi1jb21wbGlhbnQgRFQgc291cmNlcyB0
byBiZSBhbiBvYnN0YWNsZQo+ID4gdG8gYmluZGluZ3MgY29udmVyc2lvbiB0byBZQU1MLiBUaGUg
RFQgc291cmNlcyBzaG91bGQgYmUgZml4ZWQsIGJ1dCBJCj4gPiBkb24ndCBzZWUgaXQgYXMgYSBw
cmVyZXF1aXNpdGUgKGFsdGhvdWdoIGl0J3MgYSBnb29kIHByYWN0aWNlKS4KClRoZXJlJ3MgY3Vy
cmVudGx5IG5vIHJlcXVpcmVtZW50IHRoYXQgYmluZGluZyBzY2hlbWEgZG9uJ3QgaW50cm9kdWNl
Cndhcm5pbmdzIGluIGR0cyBmaWxlcy4gVGhhdCBzaG91bGQgY2hhbmdlIHdoZW4vaWYgd2UgZ2V0
IHRvIGEgd2FybmluZwpmcmVlIHN0YXRlIChwcm9iYWJseSBwZXIgcGxhdGZvcm0vZmFtaWx5KS4g
SSBkb24ndCB0aGluayB3ZSdyZSBjbG9zZQpvbiBhbnkgcGxhdGZvcm0/IChJZiB3ZSBhcmUsIEkn
ZCBsaWtlIHRvIHN0YXJ0IHRyYWNraW5nIHRoYXQpLiBJdCBpcwpnb29kIHRvIHBheSBhdHRlbnRp
b24gdG8gdGhlIHdhcm5pbmdzIHlvdSBnZXQgdGhvdWdoIGFzIHRoZSBzY2hlbWEgbWF5Cm5vdCBi
ZSBkb2luZyB3aGF0IHlvdSBleHBlY3Qgb3IgdGhlIGJpbmRpbmcgcmVhbGx5IGRvZXNuJ3QgbWF0
Y2gKcmVhbGl0eS4KCj4gSSBkbyBteSBiZXN0IHRvIGF2b2lkIGludHJvZHVjaW5nIHJlZ3Jlc3Np
b25zIHdoZW4gdGhlIGJpbmRpbmcgY29udmVyc2lvbnMKPiBnbyB1cHN0cmVhbS4KCk1lYW5pbmcg
eW91IGZpeCB0aGUgZHRzIGZpbGVzIG9yIG1hc3NhZ2UgdGhlIHNjaGVtYSB0byBtYXRjaD8gSWYg
d2UKanVzdCBhZGp1c3Qgc2NoZW1hIHRvIG1hdGNoLCB3aGF0J3MgdGhlIHBvaW50IGluIHRoaXMg
ZWZmb3J0PyBXZQpzaG91bGQgZmluZCB0aGluZ3Mgd3Jvbmcgb3IgaWxsIGRlZmluZWQuCgpSb2IK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
