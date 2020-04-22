Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3751B498A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 18:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRXQAaS1twCUGNn+lbI5AAaB6yeoLlmXkD6hgKUse/c=; b=jZWMVp3XgWY86i
	zeYD6+TFGzsiKVH3hABqRe3INfNeUi0Ntz0C+OkH724cbEiJry6r4LecY2yzE0krqOYCw9MJS/F3W
	9KDjQ7/IWPh3QsPEAVu4AZaecjX/JbFHOv8+ATv5DJT76DoLPs/mI+mlhBo9xpmZbHgvOfY3TPIJc
	QDMB7u0R0zBd2IdkwnUQKHlNweCiG9IVgS6RzaPXMq90adRxcql1Ds4zCHAuUFlhfeEH5HYE2nlNX
	LVA6R+q9Mmx8QNnQZ/IpyylYkW2ReK2GpEZmygeWPi/R/YVRFaCn65uxgLFgYjzsWTG3O5ECqUR0p
	mkXNUvkWm8OMNA7T7Qow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHrr-0001dy-Ag; Wed, 22 Apr 2020 16:04:55 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHrQ-0001PG-IC
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 16:04:30 +0000
Received: by mail-ua1-x942.google.com with SMTP id i5so2212828uaq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 09:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=R6uBiNfit5YCO191/wwIsaUUqzxSLO/g5l1s37v3Z3w=;
 b=Q91bHmJwQtHKONLOIZVoVWCWA8wv4FJ6D+5JbGFlH88Y+/P8I6LlZJbyat1zNpYnaf
 r9JaIC2uFsoEs8V9fc21pNnrEnBTY0z4mPbLva9ly4DlnJCI1pxsfQi5Qf874n/YBWXp
 P6OzTz4nF2sutRlKNThQUqe+3ohrfIMiGWGbk/+l+YxGCV+2ATZ8bK8jV/D6rCN/17ja
 05VW2Ria5KGkfQS3EngD394SpfJwwdv2/Ps+LXsLN29JPBGNyGewMdFTTABE14T4A4yC
 4FASMLFN6kKn19Mg17U9anWakRdEGFgCyYqTvdEdi8pWvqQQpmzFhTBHb+r8UUDTIxGJ
 nqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=R6uBiNfit5YCO191/wwIsaUUqzxSLO/g5l1s37v3Z3w=;
 b=HAmaIQCbom0pQHmCcMdxNAr4T/CeVs/VVs2lUJEq+dEkCxy2rU8jPLxZ9slIVVwKEE
 /tSciGmuz2ARyID1grOYLwK1chaoLw2Msme6tQiPLpQf1lsOdIu/0QGXbwChKSneHZG+
 rFYCjOCjppRRgYpNoxwcwSSljDnCaUPs+TGzENSt/7LljO4fpjLgMhLvv/EFJy6QIwXb
 2+Ym6dkZaQCpNGFmwYmeAmmy2RPY4OYwy81MbYgRT4brSnCQ8OmP5p8gJZmpKVm+v6Up
 IvZJDiCNg1x0TWt4wSYz9sBJisze7BdI7VMRSyPTbekelOYLdV+SyTAiMI7tVpT+FwS0
 E9SQ==
X-Gm-Message-State: AGi0PubZLYxb8MDp6araQUSDp8fv8B8sk/iZwgTOhWe0TZ77TeHHFSgP
 EPisdJwCjnJwJarwWtvJ40we6FXzP0n7HFJWh+dOMg==
X-Google-Smtp-Source: APiQypLRD/Imtj1vYufqpjP3oiW2KCXvoVlKWsNAdbd7j7U51hZYh0PP2WQvQ0URi1Cr71o91VK7Yv/5O96ZLwzvEtY=
X-Received: by 2002:a67:ead1:: with SMTP id s17mr20427811vso.200.1587571464862; 
 Wed, 22 Apr 2020 09:04:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200420161831.5043-1-ludovic.barre@st.com>
 <CAPDyKFqC3fdnQ9CMYhS-=5MiCET=r5Az2S5oFoA2v1gdDeGO3w@mail.gmail.com>
 <CAPDyKFrHcoVd=GKPB70gOFE8STOnTJrJbcZzE_DEgFWh1Vhszg@mail.gmail.com>
 <1d9cefd1-aaed-1eb5-92f2-b1f45b4da2ac@st.com>
In-Reply-To: <1d9cefd1-aaed-1eb5-92f2-b1f45b4da2ac@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Apr 2020 18:03:48 +0200
Message-ID: <CAPDyKFpri4VBnH9nbqUa4L=3o_h+fSZ052v7AG_9MhJX2gKgCQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: mmci_sdmmc: fix power on issue due to pwr_reg
 initialization
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_090428_629896_DDDC4718 
X-CRM114-Status: GOOD (  24.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMiBBcHIgMjAyMCBhdCAxNTo0MCwgTHVkb3ZpYyBCQVJSRSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Cj4gaGkgVWxmCj4KPiBMZSA0LzIxLzIwIMOgIDExOjM4IEFNLCBV
bGYgSGFuc3NvbiBhIMOpY3JpdCA6Cj4gPiBPbiBUdWUsIDIxIEFwciAyMDIwIGF0IDExOjI1LCBV
bGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiBN
b24sIDIwIEFwciAyMDIwIGF0IDE4OjE4LCBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0
LmNvbT4gd3JvdGU6Cj4gPj4+Cj4gPj4+IFRoaXMgcGF0Y2ggZml4IGEgcG93ZXItb24gaXNzdWUs
IGFuZCBhdm9pZCB0byByZXRyeSB0aGUgcG93ZXIgc2VxdWVuY2UuCj4gPj4+Cj4gPj4+IEluIHBv
d2VyIG9mZiBzZXF1ZW5jZTogc2RtbWMgbXVzdCBzZXQgcHdyX3JlZyBpbiAicG93ZXItY3ljbGUi
IHN0YXRlCj4gPj4+ICh2YWx1ZSAweDIpLCB0byBwcmV2ZW50IHRoZSBjYXJkIGZyb20gYmVpbmcg
c3VwcGxpZWQgdGhyb3VnaCB0aGUgc2lnbmFsCj4gPj4+IGxpbmVzIChhbGwgdGhlIGxpbmVzIGFy
ZSBkcml2ZW4gbG93KS4KPiA+Pj4KPiA+Pj4gSW4gcG93ZXIgb24gc2VxdWVuY2U6IHdoZW4gdGhl
IHBvd2VyIGlzIHN0YWJsZSwgc2RtbWMgbXVzdCBzZXQgcHdyX3JlZwo+ID4+PiBpbiAicG93ZXIt
b2ZmIiBzdGF0ZSAodmFsdWUgMHgwKSB0byBkcml2ZSBhbGwgc2lnbmFsIHRvIGhpZ2ggYmVmb3Jl
IHRvCj4gPj4+IHNldCAicG93ZXItb24iLgo+ID4+Cj4gPj4gSnVzdCBhIHF1ZXN0aW9uIHRvIGdh
aW4gZnVydGhlciB1bmRlcnN0YW5kaW5nLgo+ID4+Cj4gPj4gTGV0J3MgYXNzdW1lIHRoYXQgdGhl
IGNvbnRyb2xsZXIgaXMgYSBwb3dlci1vbiBzdGF0ZSwgYmVjYXVzZSBpdCdzCj4gPj4gYmVlbiBp
bml0aWFsaXplZCBieSB0aGUgYm9vdCBsb2FkZXIuIFdoZW4gdGhlIG1tYyBjb3JlIHRoZW4gc3Rh
cnRzIHRoZQo+ID4+IHBvd2VyLW9uIHNlcXVlbmNlIChub3QgZG9pbmcgYSBwb3dlci1vZmYgZmly
c3QpLCB3b3VsZCAkc3ViamVjdCBwYXRjaAo+ID4+IHRoZW4gY2F1c2UgdGhlCj4gPj4gTU1DSVBP
V0VSIHRvIHJlbWFpbiBhcyBpcywgb3IgaXMgaXQgZ29pbmcgdG8gYmUgb3ZlcndyaXR0ZW4/Cj4K
PiBPbiBzZG1tYyBjb250cm9sbGVyLCB0aGUgUFdSQ1RSTFsxOjBdIGZpZWxkIG9mIE1NQ0lQT1dF
UiByZWdpc3RlciBhbGxvdwo+IHRvIG1hbmFnZSBzZCBsaW5lcyBhbmQgaGFzIGEgc3BlY2lmaWMg
YmFoYXZpb3IuCj4KPiBQV1JDVFJMIHZhbHVlOgo+ICAgLSAweDA6IEFmdGVyIHJlc2V0LCBSZXNl
dDogdGhlIFNETU1DIGlzIGRpc2FibGVkIGFuZCB0aGUgY2xvY2sgdG8gdGhlCj4gICAgICAgICAg
Q2FyZCBpcyBzdG9wcGVkLCBTRE1NQ19EWzc6MF0sIGFuZCBTRE1NQ19DTUQgYXJlIEhpWiBhbmQK
PiAgICAgICAgICBTRE1NQ19DSyBpcyBkcml2ZW4gbG93Lgo+ICAgICAgICAgIFdoZW4gd3JpdHRl
biAwMCwgcG93ZXItb2ZmOiB0aGUgU0RNTUMgaXMgZGlzYWJsZWQgYW5kIHRoZSBjbG9jawo+ICAg
ICAgICAgIHRvIHRoZSBjYXJkIGlzIHN0b3BwZWQsIFNETU1DX0RbNzowXSwgU0RNTUNfQ01EIGFu
ZCBTRE1NQ19DSwo+ICAgICAgICAgIGFyZSBkcml2ZW4gaGlnaC4KPgo+ICAgLSAweDI6IFBvd2Vy
LWN5Y2xlLCB0aGUgU0RNTUMgaXMgZGlzYWJsZWQgYW5kIHRoZSBjbG9jayB0byB0aGUgY2FyZCBp
cwo+ICAgICAgICAgIHN0b3BwZWQsIFNETU1DX0RbNzowXSwgU0RNTUNfQ01EIGFuZCBTRE1NQ19D
SyBhcmUgZHJpdmVuIGxvdy4KPgo+ICAgLSAweDM6IFBvd2VyLW9uOiB0aGUgY2FyZCBpcyBjbG9j
a2VkLCBUaGUgZmlyc3QgNzQgU0RNTUNfQ0sgY3ljbGVzIHRoZQo+ICAgICAgICAgIFNETU1DIGlz
IHN0aWxsIGRpc2FibGVkLiBBZnRlciB0aGUgNzQgY3ljbGVzIHRoZSBTRE1NQyBpcwo+ICAgICAg
ICAgIGVuYWJsZWQgYW5kIHRoZSBTRE1NQ19EWzc6MF0sIFNETU1DX0NNRCBhbmQgU0RNTUNfQ0sg
YXJlCj4gICAgICAgICAgY29udHJvbGxlZCBhY2NvcmRpbmcgdGhlIFNETU1DIG9wZXJhdGlvbi4K
PiAgICAgICAgICAqKkFueSBmdXJ0aGVyIHdyaXRlIHdpbGwgYmUgaWdub3JlZCwgUFdSQ1RSTCB2
YWx1ZQo+ICAgICAgICAgIHdpbGwga2VlcCAweDMqKi4gd2hlbiB0aGUgU0RNTUMgaXMgT04gKDB4
Mykgb25seSBhIHJlc2V0IGNvdWxkCj4gICAgICAgICAgY2hhbmdlIHB3cmN0cmwgdmFsdWUgYW5k
IHRoZSBzdGF0ZSBvZiBzZG1tYyBsaW5lcy4KPgo+IFNvIGlmIHRoZSBsaW5lcyBhcmUgYWxyZWFk
eSAiT04iLCB0aGUgcG93ZXItb24gc2VxdWVuY2UgKGRlY3JpYmVkIGluCj4gY29tbWl0IG1lc3Nh
Z2UpIG5vdCBvdmVyd3JpdGUgdGhlIHB3Y3RybCBmaWVsZCBhbmQgbm90IGRpc3R1cmIgdGhlIHNk
bW1jCj4gbGluZXMuCgpUaGFua3MgZm9yIHRoZSBkZXRhaWxlZCBpbmZvcm1hdGlvbiwgbXVjaCBh
cHByZWNpYXRlZCEKCj4KPiA+Pgo+ID4+IEkgYW0gYSBsaXR0bGUgd29ycmllZCB0aGF0IHdlIG1h
eSBzdGFydCB0byByZWx5IG9uIGJvb3QgbG9hZGVyCj4gPj4gY29uZGl0aW9ucywgd2hpY2ggaXNu
J3QgcmVhbGx5IHdoYXQgd2Ugd2FudCBlaXRoZXIuLi4KPiA+Pgo+Cj4gV2Ugbm90IGRlcGVuZCBv
ZiBib290IGxvYWRlciBjb25kaXRpb25zLgo+Cj4gVGhpcyBwYXRjaCBzaW1wbHkgYWxsb3dzIHRv
IGRyaXZlIGhpZ2ggdGhlIHNkIGxpbmVzIGJlZm9yZSB0byBzZXQKPiAicG93ZXItb24iIHZhbHVl
IChubyBlZmZlY3QgaWYgYWxyZWFkeSBwb3dlciBPTikuCgpZZXAsIHRoYW5rcyEKCj4KPiA+Pj4K
PiA+Pj4gVG8gYXZvaWQgd3JpdGluZyB0aGUgc2FtZSB2YWx1ZSB0byB0aGUgcG93ZXIgcmVnaXN0
ZXIgc2V2ZXJhbCB0aW1lcywgdGhpcwo+ID4+PiByZWdpc3RlciBpcyBjYWNoZWQgYnkgdGhlIHB3
cl9yZWcgdmFyaWFibGUuIEF0IHByb2JlIHB3cl9yZWcgaXMgaW5pdGlhbGl6ZWQKPiA+Pj4gdG8g
MCBieSBremFsbG9jIG9mIG1tY19hbGxvY19ob3N0Lgo+ID4+Pgo+ID4+PiBMaWtlIHB3cl9yZWcg
dmFsdWUgaXMgMCBhdCBwcm9iaW5nLCB0aGUgcG93ZXIgb24gc2VxdWVuY2UgZmFpbCBiZWNhdXNl
Cj4gPj4+IHRoZSAicG93ZXItb2ZmIiBzdGF0ZSBpcyBub3Qgd3JpdGVzICh2YWx1ZSAweDApIGFu
ZCB0aGUgbGluZXMKPiA+Pj4gcmVtYWluIGRyaXZlIHRvIGxvdy4KPiA+Pj4KPiA+Pj4gVGhpcyBw
YXRjaCBpbml0aWFsaXplcyAicHdyX3JlZyIgdmFyaWFibGUgd2l0aCBwb3dlciByZWdpc3RlciB2
YWx1ZS4KPiA+Pj4gVGhpcyBpdCBkb25lIGluIHNkbW1jIHZhcmlhbnQgaW5pdCB0byBub3QgZGlz
dHVyYiBkZWZhdWx0IG1tY2kgYmVoYXZpb3IuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IEx1
ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+ID4+Cj4gPj4gQmVzaWRlcyB0aGUg
Y29tbWVudCwgdGhlIGNvZGUgYW5kIHRoZSBhcHByb2FjaCBzZWVtcyByZWFzb25hYmxlIHRvIG1l
Lgo+ID4KPiA+IEFub3RoZXIgcmVsYXRlZCBxdWVzdGlvbi4gSSBqdXN0IHJlYWxpemVkIHdoeSB5
b3UgcHJvYmFibHkgaGF2ZW4ndCBzZXQKPiA+IC5wd3JyZWdfbm9wb3dlciBmb3IgdGhlIHZhcmlh
bnRfc3RtMzJfc2RtbWMgYW5kIHZhcmlhbnRfc3RtMzJfc2RtbWN2Mi4KPiA+Cj4gPiBJIGd1ZXNz
IGl0J3MgYmVjYXVzZSB5b3UgbmVlZCBhIHNsaWdodGx5IGRpZmZlcmVudCB3YXkgdG8gcmVzdG9y
ZSB0aGUKPiA+IGNvbnRleHQgb2YgTU1DSVBPV0VSIHJlZ2lzdGVyIGF0IC0+cnVudGltZV9yZXN1
bWUoKSwgcmF0aGVyIHRoYW4ganVzdAo+ID4gcmUtd3JpdGluZyBpdCB3aXRoIHRoZSBzYXZlZCBy
ZWdpc3RlciB2YWx1ZXMuIElzIHRoaXMgc29tZXRoaW5nIHRoYXQKPiA+IHlvdSBhcmUgbG9va2lu
ZyBpbnRvIGFzIHdlbGw/Cj4KPiBZZXMgZXhhY3RseSwgdGhlIHNlcXVlbmNlIGlzIHNsaWdodGx5
IGRpZmZlcmVudC4gSSBjYW4ndCB3cml0ZSAwIG9uCj4gbW1jaV9ydW50aW1lX3N1c3BlbmQsIGFu
ZCBjYW4ndCBqdXN0IHJlLXdyaXRpbmcgdGhlIHNhdmVkIHJlZ2lzdGVyLgoKU28sIGl0IHNlZW1z
IGxpa2UgeW91IG5lZWQgdG8gdXNlIHRoZSAtPnNldF9pb3MoKSBjYWxsYmFjaywgdG8KcmUtY29u
ZmlndXJlIHRoZSBjb250cm9sbGVyIGNvcnJlY3RseS4KCkp1c3QgdGVsbCBpZiB5b3UgbmVlZCBt
b3JlIGhlbHAgdG8gbWFrZSB0aGF0IHdvcmssIG90aGVyd2lzZSBJIGFtIGhlcmUKdG8gcmV2aWV3
IHlvdXIgcGF0Y2hlcy4KCkluIHJlZ2FyZHMgdG8gJHN1YmplY3QgcGF0Y2gsIEkgaGF2ZSBhcHBs
aWVkIGl0IGZvciBuZXh0LCB0aGFua3MhCgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
