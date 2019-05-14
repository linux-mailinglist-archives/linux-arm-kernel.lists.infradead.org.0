Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE521CBA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 17:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4YK4eYVX5oAu1Itd2qJhrTyyWa9oNAXQdJtb/+TxVQ=; b=W0+42m2ymFz94c
	ILiKiHy2VjGqm6qB6bbLvNmPsqzXoZmCsHl183SP8II8d8vToD98r8kLLlal6ES7H8q0Rz2MGlPxV
	9qxiv+OGsKuFRIYcQG2NzKHuWJFxI7yl1cpvLhwoSj45C3CTs4wwv7U6upmk+o9D0c+AoNBiwfdtG
	hRGk0v8iYGSkb056HbrbXbGsWcDMB79qN6HwQTADN5K8cy2ktF82pOTmftBFy5CvUrZeWB0qCEzGm
	M+4bS6FNQW6paRjbmS2bhm5nNmm7dSUvCzsAXYtgsZtSvLiequR8oUWWdu5PAKeGNyHTYhbJy9YVl
	QErsxPeyvopl+eayGeHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZBY-0007On-Me; Tue, 14 May 2019 15:17:44 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZBR-0007Nz-Ik
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 15:17:39 +0000
Received: by mail-yw1-xc41.google.com with SMTP id a130so14243312ywe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 08:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XlpJYHLmPG7Uggd9+oaIZ1OeCPKgknlGwcKeYgcPgps=;
 b=dmpRF7RZxloSc1IpirAVs4uHNLPmixu1h5DGL0kn80zjR4NMuvwbzk04I71iyTq+I6
 FFq4icPffkFrDE80DZkTbIEQCePFMc6rrKjiDUKR2yLzjDDytq3bmNcVsvDM4YW+CNgz
 uh+dqa4DzyxtUGio4Fzqq7gmif5BzLB2GD3La6kHR6PqSV8Jh38XdxUXeygbQJkkyz8V
 pMx1cxToi+sqCT0rMD5tgdgdT7YAYp9JAD8Ama+b8XJW5XO4LWLh0vYiEtHW60/m4NRb
 FlkhmS5dSRhK2bO96CC0vcQwG/KLBjyZbG4F2bclAP8r1VMdbOAfq01Px1CG3FiVoVTU
 jTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XlpJYHLmPG7Uggd9+oaIZ1OeCPKgknlGwcKeYgcPgps=;
 b=aODDw+JpXYbntEhNRxjpUTAGmlGFtp8WuYgPFUOlENPGXThQ0qRTsE9bWE1puKUnY8
 nhIQd8rySm7r3bJCjMew6pfl3drUtJw9clkROxW4HiSaD/Fnz+SzmJNsc91bacswkSLb
 MEGk/tNF9h+JGPT1str7/zj4YYhxPrvt1rpIOBYjYMKJXSxbMbdVCfsxkE43qOxXKd9W
 vDgsiZyOK9PuksI1s9RUPj1Y+GqKrZbeV9zN57HxQFSv9EALttZ+QKvctvUG9r1DaJMZ
 FpClGRNmtTVQGYIQLQz1L8T5jz6/jQTZjkmje2rRF80oykVjz4i7xuxFuX01bNWKQkAr
 0OWg==
X-Gm-Message-State: APjAAAUR5LznDY1X5qktxOI7VdHdwFCoXJG2IUDNZ5tRGtG39uPIR/YX
 YcVKgEqjWFEI4i71yz4wEFZzE1YZ/gAwMJLlzKY=
X-Google-Smtp-Source: APXvYqxEriT2XkWrsa7sMupzbhPrCGn4wsQkd2YWnSKAQ8Mjc/v1DzNBx9GbGA3XQKwGm9ujepe0XUdZIaO+zUVSBaE=
X-Received: by 2002:a25:9b88:: with SMTP id v8mr17000341ybo.153.1557847055669; 
 Tue, 14 May 2019 08:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190513151405.GW17751@phenom.ffwll.local>
 <de50a9da-669f-ab25-2ef2-5ffb90f8ee03@baylibre.com>
In-Reply-To: <de50a9da-669f-ab25-2ef2-5ffb90f8ee03@baylibre.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 14 May 2019 17:17:24 +0200
Message-ID: <CAJiuCccuEw0BK6MwROR+XUDvu8AJTmZ5tu=pYwZbGAuvO31pgg@mail.gmail.com>
Subject: Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_081737_621145_BB64AAD7 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIDE0IE1heSAyMDE5IGF0IDEyOjI5LCBOZWlsIEFybXN0cm9uZyA8bmFybXN0
cm9uZ0BiYXlsaWJyZS5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiAxMy8wNS8yMDE5IDE3OjE0
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gU3VuLCBNYXkgMTIsIDIwMTkgYXQgMDc6NDY6
MDBQTSArMDIwMCwgcGVyb24uY2xlbUBnbWFpbC5jb20gd3JvdGU6Cj4gPj4gRnJvbTogQ2zDqW1l
bnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+Pgo+ID4+IEhpLAo+ID4+Cj4gPj4g
VGhlIEFsbHdpbm5lciBINiBoYXMgYSBNYWxpLVQ3MjAgTVAyLiBUaGUgZHJpdmVycyBhcmUKPiA+
PiBvdXQtb2YtdHJlZSBzbyB0aGlzIHNlcmllcyBvbmx5IGludHJvZHVjZSB0aGUgZHQtYmluZGlu
Z3MuCj4gPgo+ID4gV2UgZG8gaGF2ZSBhbiBpbi10cmVlIG1pZGdhcmQgZHJpdmVyIG5vdyAoc2lu
Y2UgNS4yKS4gRG9lcyB0aGlzIHN0dWZmIHdvcmsKPiA+IHRvZ2V0aGVyIHdpdGggeW91ciBkdCBj
aGFuZ2VzIGhlcmU/Cj4KPiBObywgYnV0IGl0IHNob3VsZCBiZSBlYXN5IHRvIGFkZC4KSSB3aWxs
IGdpdmUgaXQgYSB0cnkgYW5kIGxldCB5b3Uga25vdy4KCj4KPiBDbMOpbWVudCwgbm8gbmVlZCB0
byByZXNlbmQgdGhlIGZpcnN0IHBhdGNoLCBpdCdzIG5vdyBvbgo+IGxpbnVzIG1hc3Rlci4KT2sK
ClRoYW5rcywKQ2xlbWVudAoKPgo+IENvdWxkIHlvdSBhbHNvIGFkZCBzdXBwb3J0IGZvciB0aGUg
YnVzIGNsb2NrIGluIHBhbmZyb3N0Cj4gaW4gdGhlIHNhbWUgcGF0Y2hzZXQgc2luY2UgaXQncyBh
bHNvIG9uIG1hc3RlciBub3cgPwo+Cj4gTmVpbAo+Cj4gPiAtRGFuaWVsCj4gPgo+ID4+IFRoZSBm
aXJzdCBwYXRjaCBpcyBmcm9tIE5laWwgQW1zdHJvbmcgYW5kIGhhcyBiZWVuIGFscmVhZHkKPiA+
PiBtZXJnZWQgaW4gbGludXgtYW1sb2dpYy4gSXQgaXMgcmVxdWlyZWQgZm9yIHRoaXMgc2VyaWVz
Lgo+ID4+Cj4gPj4gVGhlIHNlY29uZCBwYXRjaCBpcyBmcm9tIEljZW5vd3kgWmhlbmcgd2hlcmUg
SSBjaGFuZ2VkIHRoZQo+ID4+IG9yZGVyIGhhcyByZXF1aXJlZCBieSBSb2IgSGVycmluZy4KPiA+
PiBTZWU6IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA2OTk4MjkvCj4gPj4K
PiA+PiBUaGFua3MsCj4gPj4gQ2zDqW1lbnQKPiA+Pgo+ID4+IENoYW5nZXMgaW4gdjQ6Cj4gPj4g
IC0gQWRkIFJvYiBIZXJyaW5nIHJldmlld2VkLWJ5IHRhZwo+ID4+ICAtIFJlc2VudCB3aXRoIGNv
cnJlY3QgTWFpbnRhaW5lcnMKPiA+Pgo+ID4+IENoYW5nZXMgaW4gdjMgKFRoYW5rcyB0byBNYXhp
bWUgUmlwYXJkKToKPiA+PiAgLSBSZWF1dGhvciBJY2Vub3d5IGZvciBoZXIgcGF0Y2gKPiA+Pgo+
ID4+IENoYW5nZXMgaW4gdjIgKFRoYW5rcyB0byBNYXhpbWUgUmlwYXJkKToKPiA+PiAgLSBEcm9w
IEdQVSBPUFAgVGFibGUKPiA+PiAgLSBBZGQgY2xvY2tzIGFuZCBjbG9jay1uYW1lcyBpbiByZXF1
aXJlZAo+ID4+Cj4gPj4gQ2zDqW1lbnQgUMOpcm9uICg2KToKPiA+PiAgIGR0LWJpbmRpbmdzOiBn
cHU6IG1hbGktbWlkZ2FyZDogQWRkIEg2IG1hbGkgZ3B1IGNvbXBhdGlibGUKPiA+PiAgIGFybTY0
OiBkdHM6IGFsbHdpbm5lcjogQWRkIEFSTSBNYWxpIEdQVSBub2RlIGZvciBINgo+ID4+ICAgYXJt
NjQ6IGR0czogYWxsd2lubmVyOiBBZGQgbWFsaSBHUFUgc3VwcGx5IGZvciBQaW5lIEg2NAo+ID4+
ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBBZGQgbWFsaSBHUFUgc3VwcGx5IGZvciBCZWVsaW5r
IEdTMQo+ID4+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBBZGQgbWFsaSBHUFUgc3VwcGx5IGZv
ciBPcmFuZ2VQaSBCb2FyZHMKPiA+PiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRkIG1hbGkg
R1BVIHN1cHBseSBmb3IgT3JhbmdlUGkgMwo+ID4+Cj4gPj4gSWNlbm93eSBaaGVuZyAoMSk6Cj4g
Pj4gICBkdC1iaW5kaW5nczogZ3B1OiBhZGQgYnVzIGNsb2NrIGZvciBNYWxpIE1pZGdhcmQgR1BV
cwo+ID4+Cj4gPj4gTmVpbCBBcm1zdHJvbmcgKDEpOgo+ID4+ICAgZHQtYmluZGluZ3M6IGdwdTog
bWFsaS1taWRnYXJkOiBBZGQgcmVzZXRzIHByb3BlcnR5Cj4gPj4KPiA+PiAgLi4uL2JpbmRpbmdz
L2dwdS9hcm0sbWFsaS1taWRnYXJkLnR4dCAgICAgICAgIHwgMjcgKysrKysrKysrKysrKysrKysr
Kwo+ID4+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzICAgfCAg
NSArKysrCj4gPj4gIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS0zLmR0cyAg
ICB8ICA1ICsrKysKPiA+PiAgLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0
c2kgICAgIHwgIDUgKysrKwo+ID4+ICAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1w
aW5lLWg2NC5kdHMgfCAgNSArKysrCj4gPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpICB8IDE0ICsrKysrKysrKysKPiA+PiAgNiBmaWxlcyBjaGFuZ2VkLCA2
MSBpbnNlcnRpb25zKCspCj4gPj4KPiA+PiAtLQo+ID4+IDIuMTcuMQo+ID4+Cj4gPgo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
