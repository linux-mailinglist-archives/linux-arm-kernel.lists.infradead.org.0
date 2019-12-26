Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F9D12AC45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 13:48:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWKsLVPKiAh+UYIBLJfnPEGyavbZZDBqKZxrFBjvzVY=; b=MbehQBja58s4Y5
	48fTYPd+/ow0bVEdB7tsgpF6g6e9jNlNjRyDmcSyYwVpM0ei2jKfj/Naz1sGP17ZYJmE69zCPvrrG
	eyb3qoLy96kBc+IFGMzorTESxJnwrKw5JFIc3VYfQDCxZB9sZXaqdrNiSG+LMQeTFohIQtzjkYiqx
	8l25dIOz93dxMCDYjkix3eF01INbCFKQ2JdPHVGEzO1UeaE3TU2574k8HxhTEEM7yxv2B5jLtZ4hv
	MaQxZkaaUjey6CzmvxOY8Ua27obrV5Z25qxKlYvgUWJIdod+IdMqRUkvrXorJESlK5w+C+Vkv/eFf
	/mxUQMpOfNfJH6xALR+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikSZK-0001KD-IL; Thu, 26 Dec 2019 12:48:46 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikSZ9-0001JP-TH
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 12:48:37 +0000
Received: by mail-io1-xd44.google.com with SMTP id c16so19589831ioo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 04:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Qyu5/qGz7cbokfaVr/Hbo6e3ec8nfhc/yTVZxVcJAHc=;
 b=YefnrY+EbXXFw6NCNms+uP2FauCYX8EKKW7IStqcgZ54KItrEGn/LydFpjMviil83f
 IW1I3cuFJuujnMkaahO8vjHIvrmwA2q81wpVQCAVyvqSefBHQd6tnGsnfs70RejWHS45
 9M3N3yI3DsqIK6LzRuXKOBTf6Rkkyra6B55MxKyi7GiAlGbcApJ2snZ6JYLsUp4tChO9
 +FUQkpP5R3u0L9oJhT8ittb4GYvz6lo/boEJwrBNG5+BL2XERJCWwtoiABAshfGI4jVC
 9hZxJMGZUN+z+Zxks+onaDk2szb+ZRO3a0mWxmJFRVlb5Xz7drOwssgD6oCH6BmfRFt9
 wkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Qyu5/qGz7cbokfaVr/Hbo6e3ec8nfhc/yTVZxVcJAHc=;
 b=eCtXvYbxoIgg4bj8C4QeI2RqkGD7DpokWggj2XqIK1PCciR/s7eiRMr3v2etTBIoGT
 yxllQlK2D9GOdc5kTgH+b8cnQ0rxCghjsy19GX5sKboLO4v1o4JXXA4vOLJ0vOZfm6dp
 BN8cWQxAf+lSHavQm4EehveNmg4mICjykCHUBhm0jdQXkDKVaH6vfiLjjJQ0C2h/x97o
 L5G19R6uYqDNAY64Dtr/7JPKJsmjaPFQH8JSDzf7YdiVfx14jGRHGf694VYjEEk7s22Y
 1VQwFMglhxPs9Nuqm8UvdKF4RQSmZn5NAwh8QZprYmHLSzRb/ZLPz/PzRocA9xGQ53XV
 e+BA==
X-Gm-Message-State: APjAAAXrEakjROrKKvfMr1TGmNy5PLNxYjL2MRWz2Qien7ZC2PbqCYYi
 vCNt5PcES+QLe7HMDLPiRLK6fe5MnXoMLPiGtDA=
X-Google-Smtp-Source: APXvYqzgTHGdCwlE1xHWPIw+T/zvXXg/5Q23YMQERnKG40D0J11GZjNSHiZT89pjLxBM19FDQcJcvzXznwVR1Scakqc=
X-Received: by 2002:a6b:c410:: with SMTP id y16mr28959521ioa.18.1577364514436; 
 Thu, 26 Dec 2019 04:48:34 -0800 (PST)
MIME-Version: 1.0
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
 <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
 <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
 <20191226104419.GA26677@Red>
In-Reply-To: <20191226104419.GA26677@Red>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Thu, 26 Dec 2019 20:47:47 +0800
Message-ID: <CAEExFWtNZM3QSSMEksK=-opKZqxvCqyG2=3=iCo3VU6tfie64w@mail.gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Corentin Labbe <clabbe.montjoie@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_044835_947465_69272809 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMjYsIDIwMTkgYXQgNjo0NCBQTSBDb3JlbnRpbiBMYWJiZQo8Y2xhYmJlLm1v
bnRqb2llQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIERlYyAyNiwgMjAxOSBhdCAxMDoy
Nzo1MUFNICswMTAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gT24gVHVlLCBEZWMgMjQsIDIw
MTkgYXQgMDc6MzA6NTVQTSArMDEwMCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gPiA+IE9uIDE5
LzEyLzIwMTkgMTg6MzMsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4gPiA+ID4gSGksCj4gPiA+ID4K
PiA+ID4gPiBPbiBUaHUsIERlYyAxOSwgMjAxOSBhdCAwOToyODoxNkFNIC0wODAwLCBWYXNpbHkg
S2hvcnV6aGljayB3cm90ZToKPiA+ID4gPj4gVGhpcyBwYXRjaHNldCBhZGRzIGRyaXZlciBmb3Ig
dGhlcm1hbCBzZW5zb3IgaW4gQTY0LCBBODNULCBIMywgSDUsCj4gPiA+ID4+IEg2IGFuZCBSNDAg
U29Dcy4KPiA+ID4gPgo+ID4gPiA+IFRoYW5rcyBhZ2FpbiBmb3Igd29ya2luZyBvbiB0aGlzLgo+
ID4gPiA+Cj4gPiA+ID4gSSdsbCBtZXJnZSB0aGUgRFQgcGF0Y2hlcyB3aGVuIHRoZSBkcml2ZXIg
d2lsbCBoYXZlIGJlZW4gbWVyZ2VkLgo+ID4gPgo+ID4gPiBJJ3ZlIGFwcGxpZWQgcGF0Y2hlcyAx
ICYgMi4KPiA+ID4KPiA+ID4gVGhleSBhcmUgaW4gdGhlIHRlc3RpbmcgYnJhbmNoIGFuZCB3aWxs
IGdvIHRvIHRoZSBsaW51eC1uZXh0IGJyYW5jaCBhcwo+ID4gPiBzb29uIGFzIHRoZSBrZXJuZWxj
aSBwYXNzZXMuCj4gPgo+ID4gSSBqdXN0IG1lcmdlZCBhbGwgdGhlIG90aGVyIHBhdGNoZXMgKGV4
Y2VwdCB0aGUgcGF0Y2ggNiwgZm9yIHRoZSBINiwKPiA+IGFzIHJlcXVlc3RlZCBieSBWYXNpbHkg
b24gSVJDKS4KPiA+Cj4KPiBIZWxsbwo+Cj4gVmFzaWx5IGFza2VkIHRvIG5vdCBhcHBseSBINiBk
dWUgdG8gbXkgdGVzdCBmYWlsbGluZyBvbiBoNiBhbmQgc2luY2UgaGUgZGlkbnQgb3duIGFueSBI
NiBody4KPiBCdXQgaXQgd2FzIGZhaWxsaW5nIGR1ZSBteSBmYXVsdCAoYSBmYWlsbGluZyBidWls
ZCkuCj4KPiBTbyB0aGUgcGF0Y2hzZXQgd29yayBwZXJmZWN0IG9uIEg2IChvcGkxKywgb3BpMywg
cGluZUg2NCBib3RoIG1vZGVsIEEgYW5kIEIpIGFzIHJlcG9ydGVkIGJ5IG15IGFuc3dlciB0byB0
aGlzIHRocmVhZC4KCkhJIENvcmVudGluLAoKQWx0aG91Z2ggaXQgaXMgbm90IGNhbGlicmF0ZWQs
IGl0IHNob3VsZCB3b3JrIG9uIHRoZSBSNDAuIENhbiB5b3UgZ2l2ZQpteSBwYXRjaCBhIHRyeT8K
ClRoeO+8jApZYW5ndGFvCgo+Cj4gUmVnYXJkcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
