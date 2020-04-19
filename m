Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57751AFEE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 01:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3URxhusLoXsUu+WXFPN2irZ2SM8WUGEsa3v8JB6sIc=; b=jTAkpT11y9m3kl
	//47QVctmuaHw3nhDTsVhD5yQzrLv8rOF8icv073KvAbMU9EzZFyrcMOOiOt7fJAD+vQnOxdMQmF8
	YUFfvz81HpB5o5FQbyiw9WujQfdm/FX4/+UTz29mSUsmcFRGXws+S9AApb91nGwhiQsDVjgSsBUQ0
	i6TUJR+JIOj4f5ckcMy4mWhYJ8jg4hN8d+I2DTmH6Qw1BlpHid2BuWV2YOMfqvJCayKV2G5zJNR5u
	ZB2XfoFmf6uwblm0yMsYKXKEPmB8BAEz7BOxLZYzHx+ABZNYMxZpCO+QOCWn102ieNMtvWxwlV4cs
	6Ybzsx9sLU477bSe6i+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQJVb-0007b2-Uy; Sun, 19 Apr 2020 23:37:55 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQJVT-0007Z5-R4
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 23:37:49 +0000
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 03JNbPqL016205
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Apr 2020 08:37:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 03JNbPqL016205
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587339446;
 bh=dHYGVONabMvO/3fqJjmu1iNx4sX1iSSOhrK7hBoC0d4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1Y/mC5cSjOjqpukIifxbTf4ZOTcc734y27lhe7F2NzM36fZFJNO0D7agMAvuSwpCX
 BFx9GIno81+7F2FSAqXAf5Up7VqMsgzRhQcGMsvK7137nhos01L27ddnUofyD/W+LW
 +zhzEsRN/Tx0+quOwiG4IWfShstp0Qg4ZAIefSe5cveGyeq3FmZkTRNi4CV3wOxnGy
 mW8NfL8/EFEdFZpPw/BxE+GETTz8Xsnmprf5SEhhJe3pGpc2HSR6bFFgkhuk2IKKuw
 1yUDzADU3hJWO6mIex3waXce/qj5s9DzNnoiSr7qXcMjIFZGqyReZBGZ4EtOijTxUj
 jIXNV4pO3KzDg==
X-Nifty-SrcIP: [209.85.222.47]
Received: by mail-ua1-f47.google.com with SMTP id g10so2950934uae.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 16:37:25 -0700 (PDT)
X-Gm-Message-State: AGi0Pua9sPkvPz856IpZtYNPOrdu4xbMR69U8+42ShTeC0E7eJLFD4G3
 DSZbBEqvxqRrksE/Tw0nncqEX/5k+APC1uRdRiQ=
X-Google-Smtp-Source: APiQypL0f0ARsXfF2YkjuYbE9XS4JBo15E5+kATj6zO54fUCVpSM6MMduRAVPmYIV9I9A/D6qXx46hxUksmaysNJl78=
X-Received: by 2002:ab0:7298:: with SMTP id w24mr6091311uao.95.1587339444497; 
 Sun, 19 Apr 2020 16:37:24 -0700 (PDT)
MIME-Version: 1.0
References: <158614147708.29424.2884940487411120526.stgit@localhost>
 <CAA93ih2ineuFYzA_uhGwmzsznDKacEG=7rK1beWsCkrnR0opuA@mail.gmail.com>
In-Reply-To: <CAA93ih2ineuFYzA_uhGwmzsznDKacEG=7rK1beWsCkrnR0opuA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 20 Apr 2020 08:36:48 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR9tdhqkKft5j59_Z=sJj_wVJBwRysFpShO1HXck7-idw@mail.gmail.com>
Message-ID: <CAK7LNAR9tdhqkKft5j59_Z=sJj_wVJBwRysFpShO1HXck7-idw@mail.gmail.com>
Subject: Re: [PATCH 0/2] dts: uniphier: Add Akebi96 Board support
To: Masami Hiramatsu <masami.hiramatsu@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_163748_225846_A38DFC47 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGlyYW1hdHN1LXNhbgoKCk9uIEZyaSwgQXByIDE3LCAyMDIwIGF0IDI6MzEgUE0gTWFzYW1pIEhp
cmFtYXRzdQo8bWFzYW1pLmhpcmFtYXRzdUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFlh
bWFkYS1zYW4sCj4KPiBDb3VsZCB5b3UgcmV2aWV3IHRoaXMgc2VyaWVzPwoKCldoZXJlIGRpZCB5
b3UgcG9zdCB5b3VyIHNlcmllcz8KCkkgc2VlIHRoaXMgcGluZyBtYWlsIGluCmh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvP3E9QWtlYmk5NgoKQnV0LCBJIGRvIG5vdCBz
ZWUgdGhlIG9yaWdpbmFsIHBvc3QuCgpDb3VsZCB5b3UgcG9pbnQgbWUgdG8gdGhlIHBhdGNod29y
ayBVUkwsIHBsZWFzZT8KCk9uY2UgSSBmaW5kIHRoZSBwYXRjaCBsb2NhdGlvbiwgaXQgaXMgZWFz
eSB0byBoYW5kbGUuClNpbmNlIEkgZG8gbm90IGhhdmUgdGhpcyBib2FyZCwgSSB3aWxsIGp1c3Qg
cXVldWUgaXQgdXAgd2l0aCBubyBldmFsdWF0aW9uLgoKVGhhbmtzLgoKCgo+Cj4gVGhhbmsgeW91
LAo+Cj4gMjAyMOW5tDTmnIg25pelKOaciCkgMTE6NTIgTWFzYW1pIEhpcmFtYXRzdSA8bWFzYW1p
LmhpcmFtYXRzdUBsaW5hcm8ub3JnPjoKPiA+Cj4gPiBIZWxsbywKPiA+Cj4gPiBIZXJlIGlzIGEg
Y291cGxlIG9mIHBhdGNoZXMgdG8gYWRkIGEgZGV2aWNldHJlZSBmb3IgQWtlYmk5NiBib2FyZC4K
PiA+IFRoZSBBa2ViaTk2IGlzIGEgY2VydGlmaWVkIDk2Ym9hcmRzIHdoaWNoIGlzIGJhc2VkIG9u
IFNvY2lvbmV4dAo+ID4gVW5pUGhpZXIgTEQyMCBTb0MuIE1vc3Qgb2YgdGhlIHBhcnQgaXMgc2lt
aWxhciB0byBMRDIwIHJlZmVyZW5jZQo+ID4gYm9hcmQsIGJ1dCB0aGVyZSBhcmUgc29tZSBjaGFu
Z2VzLgo+ID4KPiA+ICAgLSBNQVgzNDIxIFVTQi1TUEkgY2hpcCBvbiBTUEkgcG9ydDMgKGZvciBV
U0IgZ2FkZ2V0IHBvcnQuKQo+ID4gICAtIFNpbXBsZSBmcmFtZSBidWZmZXIgd2l0aCAxMDgwcCBm
aXhlZCByZXNvbHV0aW9uLgo+ID4gICAtIEkyUyBwb3J0IHdoaWNoIGlzIGNvbm5lY3RlZCB0byBh
b3V0MWIgaW5zdGVhZCBvZiBhb3V0MS4KPiA+ICAgLSAzIHNlcmlhbCBwb3J0cywgb25seSBzZXJp
YWwzIGhhcyBDVFMvUlRTLgo+ID4gICAtIE5vIE5BTkQsIG9ubHkgZU1NQyBvbiB0aGUgYm9hcmQu
Cj4gPiAgIC0gT1AtVEVFIHN1cHBvcnQuCj4gPgo+ID4gU2VlIGh0dHBzOi8vd3d3Ljk2Ym9hcmRz
Lm9yZy9wcm9kdWN0L2FrZWJpOTYvIGZvciBkZXRhaWxzLgo+ID4KPiA+IFRoYW5rIHlvdSwKPiA+
Cj4gPiAtLS0KPiA+Cj4gPiBNYXNhbWkgSGlyYW1hdHN1ICgyKToKPiA+ICAgICAgIGR0LWJpbmRp
bmdzOiBhcm06IEFkZCBBa2ViaTk2IGJvYXJkIHN1cHBvcnQKPiA+ICAgICAgIGFybTY0OiBkdHM6
IHVuaXBoaWVyOiBBZGQgc3VwcG9ydCBmb3IgQWtlYmk5Ngo+ID4KPiA+Cj4gPiAgLi4uL2JpbmRp
bmdzL2FybS9zb2Npb25leHQvdW5pcGhpZXIueWFtbCAgICAgICAgICAgfCAgICAxCj4gPiAgYXJj
aC9hcm02NC9ib290L2R0cy9zb2Npb25leHQvTWFrZWZpbGUgICAgICAgICAgICAgfCAgICAxCj4g
PiAgLi4uL2Jvb3QvZHRzL3NvY2lvbmV4dC91bmlwaGllci1sZDIwLWFrZWJpOTYuZHRzICAgfCAg
MjAwICsrKysrKysrKysrKysrKysrKysrCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9zb2Npb25l
eHQvdW5pcGhpZXItbGQyMC5kdHNpICAgfCAgICAyCj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAyMDMg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNo
L2FybTY0L2Jvb3QvZHRzL3NvY2lvbmV4dC91bmlwaGllci1sZDIwLWFrZWJpOTYuZHRzCj4gPgo+
ID4gLS0KPiA+IE1hc2FtaSBIaXJhbWF0c3UgPG1hc2FtaS5oaXJhbWF0c3VAbGluYXJvLm9yZz4K
PiA+Cj4KPgo+IC0tCj4gTWFzYW1pIEhpcmFtYXRzdQoKCgotLQpCZXN0IFJlZ2FyZHMKTWFzYWhp
cm8gWWFtYWRhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
