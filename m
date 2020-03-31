Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB61199F70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 21:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAML1rrt878CVgG+aYBeFO54mAIZzh2W17YqS7PIZcQ=; b=TLaORnSDV82AMI
	mLdS/PRj+2SRwS9IBS3RaQQvrOTOk3DTsYPCJ+hbutZPiU9dTfaOme96bJtQVIkM7FbOhoCRg4tef
	NIE4w5dM+4P7OfAEKH3AtuDm7d9bS0nSk1ZnTyIoVFq4SdMOQuVFZwtvdjR/wPHPyg8DY8/y2rMjL
	3w4/JI0rvPub0Qnm0OqMeqNegq9V+29Y7+XwHP3oUIMBm26T+D9VLhNfyZEjeQgE162CBAa0W3bWC
	TQ+TjSTQb8KMwX02oehk23ZOjSORhS4Frt7UzJH07WgsDmcqWhJJrlHz4UrXZP7OmsfMuTQV5cmyf
	U/FNI+inZgV8O6nHrolQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMu9-0005W9-EG; Tue, 31 Mar 2020 19:50:33 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMu0-0005VZ-1f
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 19:50:26 +0000
Received: by mail-lj1-x241.google.com with SMTP id p10so23091723ljn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 12:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=X256ALwK5y07kseIZ6IR1HB5ThpSSuN2SFQNhjFvy0E=;
 b=ZgLTHTqLQ4cgNG/+c5jZkvDccdqSN0bOVAuoPDGOfNKVrsD6RXGajLVSY5WXytSsiR
 BUnkmWiqT20BpsHIjY0msUWB5RywR0/ts0548l0fcNiSEtchz8r3sqQG4vW8jTtpY7vX
 E9LOJnkfWBR6Gs8c2mNdD1uZbCDs26EAJL1vBBDHme2HHBZpWiuqtTtSIE6YogCVk3fn
 KZofGL8JdFhSUrbl2H1yIZ4TRY9FJu52UvDaOVqByshWmbmlxm2IQvB2aqU1vQNZa2VQ
 btuZpcdF6coy8RLyh2Yf7PKAsFSOq+Z6mhzzMOos6v8P1fDLJX/Ql2nRFft886DPI4CU
 S41Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=X256ALwK5y07kseIZ6IR1HB5ThpSSuN2SFQNhjFvy0E=;
 b=NlY/sqFyFjtfCwaP7qmcboPdxKI5peN1WLnwJ7ipvX1f9sQsyVLSX7cQkwVuoDoEhq
 T4U/HOuUuPNihwCZ2MbsxnfrC8oSsuBMeRbLPvCTey/EIgUVdP8yCXrp1ftKmhiFre2i
 bAsBlYyzaB7FODZb6rJLaoMun41RF1Q3J2aUcJHbAjubd+oC5mz1XWw9Tn/GcgGAxoJI
 C1xanofS9ngKliReLgBB2fruK8aq9Zkt/CzE2jsHIp7EQ7kBNdGWZIuqW33lPZBnXkHG
 zB+5mdRlh8EJXXwBB6XPoxPxNlrR3B0Fb6h+nbPYF0oloAWt7ChmHoWGo0pToVevTTMQ
 Pd6w==
X-Gm-Message-State: AGi0PubcY8dZc2+leILRIUomNH1xFZNcPaIk+whWFRpBRNIWbJp/q5PH
 dsSQKSBMZsOrgXsWXvjpp9EY5PhJ
X-Google-Smtp-Source: APiQypIkX62G++r/IinoOQmvz0Wce1CkF4mtiU3Y6aDWipfkDEXstwXUqy+bH2vDScHB5Pjp4MGk2w==
X-Received: by 2002:a2e:96c4:: with SMTP id d4mr3383250ljj.19.1585684221896;
 Tue, 31 Mar 2020 12:50:21 -0700 (PDT)
Received: from pablo-laptop ([2a02:a315:5445:5300:a576:7878:f185:517a])
 by smtp.googlemail.com with ESMTPSA id o21sm9242407ljg.71.2020.03.31.12.50.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 12:50:21 -0700 (PDT)
Message-ID: <8a77ca985214cb0058e4defe4dcaa27a79eafacc.camel@gmail.com>
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
From: =?UTF-8?Q?Pawe=C5=82?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>, Paul Cercueil
 <paul@crapouillou.net>
Date: Tue, 31 Mar 2020 21:50:19 +0200
In-Reply-To: <da888000-52b6-b0c6-76ac-8fc535d07a5d@samsung.com>
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net> <20200313090011.GB7416@pi3>
 <CGME20200318142549eucas1p1793027850923ebad20b4691cba676671@eucas1p1.samsung.com>
 <D6.31.03891.A6F227E5@epmailinsp8.samsung.com>
 <6c549058-00f9-8526-a272-48c538166ccf@samsung.com>
 <X7728Q.UX8A28S31JO92@crapouillou.net>
 <6ca59c1b-2676-e69d-e4eb-4667a81d155f@samsung.com>
 <d9fe575926342b355f76e1f38fef62f0d7d38075.camel@gmail.com>
 <da888000-52b6-b0c6-76ac-8fc535d07a5d@samsung.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_125024_490663_817EADED 
X-CRM114-Status: GOOD (  26.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pawel.mikolaj.chmiel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDIwLTAzLTMxIGF0IDIxOjI5ICswMjAwLCBNYXJlayBTenlwcm93c2tpIHdyb3Rl
Ogo+IEhpCj4gCj4gT24gMjAyMC0wMy0zMSAxNzoyOSwgUGF3ZcWCIENobWllbCB3cm90ZToKPiA+
IE9uIFR1ZSwgMjAyMC0wMy0zMSBhdCAxNTo1NSArMDIwMCwgTWFyZWsgU3p5cHJvd3NraSB3cm90
ZToKPiA+ID4gSGkgUGF1bCwKPiA+ID4gCj4gPiA+IE9uIDIwMjAtMDMtMzEgMTU6MDksIFBhdWwg
Q2VyY3VlaWwgd3JvdGU6Cj4gPiA+ID4gQ2M6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWou
Y2htaWVsQGdtYWlsLmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBIaSBNYXJlaywKPiA+ID4gPiAKPiA+
ID4gPiBMZSBtYXIuIDMxIG1hcnMgMjAyMCDDoCA3OjM2LCBNYXJlayBTenlwcm93c2tpCj4gPiA+
ID4gPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4gYSDDqWNyaXQgOgo+ID4gPiA+ID4gSGkgUGF1
bCwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gT24gMjAyMC0wMy0xOCAxNToyNSwgUGF1bCBDZXJjdWVp
bCB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ICAgICsgICAgfTsKPiA+ID4gPiA+ID4gPiA+ICAgICsK
PiA+ID4gPiA+ID4gPiA+ICAgICsgICAgdHNwX3JlZzogcmVndWxhdG9yLTEgewo+ID4gPiA+ID4g
PiA+ID4gICAgKyAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gPiA+
ID4gPiA+ID4gICAgKyAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAiVFNQX0ZJWEVEX1ZPTFRBR0VT
IjsKPiA+ID4gPiA+ID4gPiA+ICAgICsgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0g
PDMzMDAwMDA+Owo+ID4gPiA+ID4gPiA+ID4gICAgKyAgICAgICAgcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiA+ID4gPiA+ID4gPiAgICArICAgICAgICBncGlvID0gPCZn
cGwwIDMgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiA+ID4gPiA+ID4gPiAgICArICAgICAgICBzdGFy
dHVwLWRlbGF5LXVzID0gPDcwMDAwPjsKPiA+ID4gPiA+ID4gPiA+ICAgICsgICAgICAgIGVuYWJs
ZS1hY3RpdmUtaGlnaDsKPiA+ID4gPiA+ID4gPiA+ICAgICsgICAgICAgIHJlZ3VsYXRvci1ib290
LW9uOwo+ID4gPiA+ID4gPiA+ID4gICAgKyAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+
ID4gPiA+ID4gPiAgIGFsd2F5cy1vbiBhbmQgYm9vdC1vbiBzaG91bGQgbm90IGJlIG5lZWRlZC4g
WW91IGhhdmUgYSBjb25zdW1lcgo+ID4gPiA+ID4gPiA+IGZvciB0aGlzCj4gPiA+ID4gPiA+ID4g
ICByZWd1bGF0b3IuCj4gPiA+ID4gPiA+ICAgQWJvdXQgdGhpczogdGhlIHRvdWNoc2NyZWVuIGRy
aXZlciBkb2VzIG5vdCB1c2UgYSByZWd1bGF0b3IsIHNvIEkKPiA+ID4gPiA+ID4gICBiZWxpZXZl
IHRoYXQncyB3aHkgdGhlc2UgcHJvcGVydGllcyB3ZXJlIGhlcmUuCj4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiAgIEkgc2VudCBwYXRjaGVzIHVwc3RyZWFtIHRvIGFkZHJlc3MgdGhlIGlzc3VlOgo+
ID4gPiA+ID4gPiAgIGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdXJsP2s9ZThhZWRjMjkt
YjUzMDcyYjMtZThhZjU3NjYtMGNjNDdhMzM2ZmFlLTc1OTU3OWZkNTc2ZDgzODImdT1odHRwczov
L2xrbWwub3JnL2xrbWwvMjAyMC8zLzE1Lzk0Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gICBJIGJlbGlldmUgdGhpcyBtZWFucyBJIGNhbm5vdCBtZXJnZSB0aGUgaTkxMDAg
ZGV2aWNldHJlZSB1bnRpbCBpdCBpcwo+ID4gPiA+ID4gPiAgIGFja2VkLgo+ID4gPiA+ID4gT25l
IG1vcmUgaW5mb3JtYXRpb24gLSBzaW1pbGFyIGNoYW5nZSBoYXMgYmVlbiBhbHJlYWR5IHBvc3Rl
ZCwgYnV0IGl0Cj4gPiA+ID4gPiBsb29rcyBpdCBnb3QgbG9zdCB0aGVuOiBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3BhdGNoLzEwNTUwOTAzLwo+ID4gPiA+IEkgd2FzIGF3YXJlIG9mIHRo
aXMgcGF0Y2gsIGJ1dCBkaWRuJ3Qga25vdyBpdCB3YXMgc2VudCB1cHN0cmVhbS4KPiA+ID4gPiAK
PiA+ID4gPiBUaGlzIG90aGVyIHBhdGNoIHVzZXMgdHdvIHJlZ3VsYXRvcnMsIHZkZC9hdmRkIGJ1
dCBkb2Vzbid0IGdpdmUgYW55Cj4gPiA+ID4gcmVhc29uIHdoeS4KPiA+ID4gPiAKPiA+ID4gSSd2
ZSBjaGVja2VkIHRoZSBVbml2ZXJzYWxDMjEwIHNjaGVtYXRpYywgd2hpY2ggdXNlcyB0aGUgc2Ft
ZQo+ID4gPiB0b3VjaHNjcmVlbiBjaGlwLiBUaGVyZSBhcmUgMiBzdXBwbGllcyB0byB0aGUgdG91
Y2hzY3JlZW4gY2hpcDogMi44ViBWREQKPiA+ID4gYW5kIDMuM1YgQVZERC4gQm90aCBhcmUgZW5h
YmxlZCBieSB0aGUgc2FtZSBHUElPIHBpbiB0aG91Z2guIFRoZXJlIGlzCj4gPiA+IGhvd2V2ZXIg
bm8gcmVzZXQgR1BJTyBwaW4gdGhlcmUuCj4gPiBIaQo+ID4gRG9uJ3QgcmVtZW1iZXIgbm93IGhv
dyBpdCB3b3JrZWQgb24gR2FsYXh5IFMxLCBidXQgaXQgbG9va3MgbGlrZSBpdCBoYXMKPiA+IHRo
ZSBzYW1lIHNldHVwIC0gdHdvIHJlZ3VsYXRvcnMgZW5hYmxlZCBieSBvbmUgR1BJTyBwaW4uCj4g
Cj4gSXQgaXMgcXVpdGUgY29tbW9uIGZvciB0aGUgcmVndWxhdG9ycyB0byBzaGFyZSB0aGUgZW5h
YmxlIEdQSU8gbGluZSwgc28gCj4gdGhpcyBpcyBub3QgYW4gaXNzdWUuIFJlZ3VsYXRvciBmcmFt
ZXdvcmsgc3VwcG9ydHMgc3VjaCBjb25maWd1cmF0aW9uIAo+IGZvciBhZ2VzLiBJJ20gY3VyaW91
cyBhYm91dCB0aGUgcmVzZXQgR1BJTyBsaW5lLCB3aGljaCB3ZXJlIG1hZGUgCj4gbWFuZGF0b3J5
IGZvciB0aGUgcmVndWxhdG9ycyBjb250cm9sIGluIHlvdXIgcGF0Y2guIEkgZGlkbid0IGZpbmQg
aXQgb24gCj4gYW55IHNjaGVtYXRpYyBvZiB0aGUgZGV2aWNlcyB3aXRoIHRoaXMgdG91Y2ggc2Ny
ZWVuLCBidXQgSSBkb24ndCBoYXZlIGEgCj4gc2NoZW1hdGljIG9mIHRoZSBHYWxheHkgUzEuIElN
SE8gdGhlIHJlc2V0IHNpZ25hbCBpcyBzaW1wbHkgZGVyaXZlZCBmcm9tIAo+IHRoZSBzdXBwbHkg
cmVndWxhdG9ycyB3aXRoIHNvbWUgc2ltcGxlIGNpcmN1aXQsIGJ1dCBJIGRvbid0IGhhdmUgCj4g
c2NoZW1hdGljIG9mIHRoYXQgcGFydC4KSGkKUmVnYXJkaW5nIHRoaXMgY2hhbmdlIC0gaXQgd2Fz
IHN1Z2dlc3RlZCBkdXJpbmcgcmV2aWV3IG9mIHYxIHZlcnNpb24gb2YKdGhvc2UgcGF0Y2hlcy4g
SXQncyBmaXJzdCByZXBseSBoZXJlIApodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNo
LzEwNTI0MDA3LwoKPiAKPiBCZXN0IHJlZ2FyZHMKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
