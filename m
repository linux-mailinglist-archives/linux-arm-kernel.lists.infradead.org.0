Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6043945781
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gt3zZh9eWitLawxzhZf9t3FcaPkkduJahVZPhnZmzRs=; b=leGB2mpzelzX8s
	RIQXQOnqM+hBacHlIAIfQscF4OjCk38PT5qVC2nF7ou8ReYn04Tvwd0c5yoKBOjM0rw4LsXxG52uE
	JTEY+3ylYLwpJHyUIgRhV6xDt79wbMXjkde4EhclDGMC3dhUe2UotACBobS1aHUuN4A3Va5L1n/lO
	m97T+dHfC7yl+O7fx/cDsdDvGzGs5bJhf4j0H7QXvtQwC62OfDgqCLHBJwHX0yogH3x1R/sP/Oapi
	jzXimT2642Gv4zq10uS7R64LY+yW3MGtOsiJz68GKcjH7i80Z/5vcqukvTSJOWrBguMZnHBVAH3rx
	B+JWO3V5HVCLNcZox9+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhbM-0005Ne-DH; Fri, 14 Jun 2019 08:30:24 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhb8-0005NA-KS
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:30:12 +0000
Received: by mail-yb1-xb44.google.com with SMTP id c7so746165ybs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 01:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nzVcHF0m70Fw+qIor/h4e6MpGLGe8ekBloVHLUtwVtM=;
 b=kuqPHbm9jWzSzqRNBz098asTFfYK0VOUq+5FpWwWh3z6y8vIzdmbN4jHIJT1AKnoi/
 DWqmluxBy1qkR88hqRC53qsxCflNkUKxWdV/XJ+otdmaBVNKEhJKgPO/l/0OD20U8e0Y
 bL18x5wplBC6K9lv1VPa0S79QMnytw+QJaqrDviiMez0vOzpXEyuaK6QX44UzUKqUlbv
 6U5c49IHHv5j6vz6z/nBYcvi5hClp7cbL8V9YAc7xQYfPRjq+zYk9v7LGVDhqSb0ONq9
 CWtHyWSJP1CIWjUPA3IKWfYLb/YGMREJSNsm/MDsMt6zWBzVzQPSWlUEEXqGM2cnGFW3
 OSwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nzVcHF0m70Fw+qIor/h4e6MpGLGe8ekBloVHLUtwVtM=;
 b=CSDfI86L+86spMAHefTwAXzbch/BvzVw4enqs6N5CZXnSYBafphS5Hl6y1Pj6+prnu
 CHTh3jS1J1qr7FE64Vw8jMZ4xxrPGyXKCfZ7GajogJ27OZLGPiG7E0dHIUcyelEW9UxY
 8JgOA3rUTTOmGa9v8VScWGdMopKWLqtezQ9kyfbiGfTJ30ehlPRrm0kmn5Q4Igd8pd84
 1LY5Sb3vpyLZOQFwB4WUUX0pCgpm8GCkad7BfoHbH1V8F8nqBCmDVwcM89MLQAlXe5tX
 aony2jKqjJyZ2RPDY4hdU/MNJ5fheKwl2gNv4wuAYbSauvqB8uX/AbT7pvb/ONVgxP9p
 0crg==
X-Gm-Message-State: APjAAAW7+M022IO1ktcsuQ0tIez/nSgowI0F9IfRaUxb1+cBhjJKaE5G
 dW2yWB5wg0mItq0jb9rgW9zUoLn9ZbFTUadlXhk=
X-Google-Smtp-Source: APXvYqy2kxodppWZiVypCM4BCxN56xAjgKw4jxOCVlJIgXRgaBJbPrms6UcdTL2C9gu+ZsfB0hqWyMivsi8hKhOyo9s=
X-Received: by 2002:a25:ca8d:: with SMTP id
 a135mr42871828ybg.438.1560501008839; 
 Fri, 14 Jun 2019 01:30:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190527200627.8635-1-peron.clem@gmail.com>
In-Reply-To: <20190527200627.8635-1-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Fri, 14 Jun 2019 10:29:57 +0200
Message-ID: <CAJiuCcfUhBxEr=o7VVpPROQZadQh7z1QC0SkWSYt-53Sj3H2qw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Allwinner H6 SPDIF support
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_013010_673936_B391DA5E 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDI3IE1heSAyMDE5IGF0IDIyOjEwLCBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPiB3cm90ZToKPgo+ICpINiBETUEgc3VwcG9ydCBJUyBSRVFVSVJFRCoK
CkRNQSBoYXMgYmVlbiBtZXJnZWQsIHNvIHRoaXMgc2VyaWVzIGNhbiBiZSBtZXJnZSB3aGVuIEFT
b0MgbWFpbnRhaW5lcnMKaGF2ZSByZXZpZXdlZCBpdC4KClJlZ2FyZHMsCkNsw6ltZW50Cgo+Cj4g
QWxsd2lubmVyIEg2IFNvQyBoYXMgYSBTUERJRiBjb250cm9sbGVyIGNhbGxlZCBPbmUgV2lyZSBB
dWRpbyAoT1dBKSB3aGljaAo+IGlzIGRpZmZlcmVudCBmcm9tIHRoZSBwcmV2aW91cyBIMyBnZW5l
cmF0aW9uIGFuZCBub3QgY29tcGF0aWJsZS4KPgo+IERpZmZlcmVuY2UgYXJlIGFuIGluY3JlYXNl
IG9mIGZpZm8gc2l6ZXMsIHNvbWUgbWVtb3J5IG1hcHBpbmcgYXJlIGRpZmZlcmVudAo+IGFuZCB0
aGVyZSBpcyBub3cgdGhlIHBvc3NpYmlsaXR5IHRvIG91dHB1dCB0aGUgbWFzdGVyIGNsb2NrIG9u
IGEgcGluLgo+Cj4gQWN0dWFsbHkgYWxsIHRoZXNlIGZlYXR1cmVzIGFyZSB1bnVzZWQgYW5kIG9u
bHkgYSBiaXQgZm9yIGZsdXNoaW5nIHRoZSBUWAo+IGZpZm8gaXMgcmVxdWlyZWQuCj4KPiBBbHNv
IHRoaXMgc2VyaWVzIHJlcXVpcmVzIHRoZSBETUEgd29ya2luZyBvbiBINiwgYSBmaXJzdCB2ZXJz
aW9uIGhhcyBiZWVuCj4gc3VibWl0dGVkIGJ5IEplcm5laiDFoGtyYWJlY1sxXSBidXQgaGFzIG5v
dCBiZWVuIGFjY2VwdGVkIHlldC4KPgo+IFsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L3Byb2plY3QvbGludXgtYXJtLWtlcm5lbC9saXN0Lz9zZXJpZXM9ODkwMTEKPgo+IENoYW5nZXMg
c2luY2UgdjM6Cj4gIC0gcmVuYW1lIHJlZ19mY3RsX2Z0eCB0byB2YWxfZmN0bF9mdHgKPiAgLSBy
ZWJhc2UgdGhpcyBzZXJpZXMgb24gc291bmQtbmV4dAo+ICAtIGZpeCBkdC1iaW5kaW5ncyBkdWUg
dG8gY2hhbmdlIGluIHNvdW5kLW5leHQKPiAgLSBjaGFuZ2Ugbm9kZSBuYW1lIHNvdW5kX3NwZGlm
IHRvIHNvdW5kLXNwZGlmCj4KPiBDaGFuZ2VzIHNpbmNlIHYyOgo+ICAtIFNwbGl0IHF1aXJrcyBh
bmQgSDYgc3VwcG9ydCBwYXRjaAo+ICAtIEFkZCBzcGVjaWZpYyBzZWN0aW9uIGZvciBxdWlya3Mg
Y29tbWVudAo+Cj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAgLSBSZW1vdmUgSDMgY29tcGF0aWJsZQo+
ICAtIEFkZCBUWCBmaWZvIGJpdCBmbHVzaCBxdWlya3MKPiAgLSBBZGQgSDYgYmluZGluZ3MgaW4g
U1BESUYgZHJpdmVyCj4KPiBDbMOpbWVudCBQw6lyb24gKDcpOgo+ICAgZHQtYmluZGluZ3M6IHNv
dW5kOiBzdW40aS1zcGRpZjogQWRkIEFsbHdpbm5lciBINiBjb21wYXRpYmxlCj4gICBBU29DOiBz
dW40aS1zcGRpZjogTW92ZSBxdWlya3MgdG8gdGhlIHRvcAo+ICAgQVNvQzogc3VuNGktc3BkaWY6
IEFkZCBUWCBmaWZvIGJpdCBmbHVzaCBxdWlya3MKPiAgIEFTb0M6IHN1bjRpLXNwZGlmOiBBZGQg
c3VwcG9ydCBmb3IgSDYgU29DCj4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IEFkZCBTUERJRiBu
b2RlIGZvciBBbGx3aW5uZXIgSDYKPiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJs
ZSBTUERJRiBmb3IgQmVlbGluayBHUzEKPiAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBTdW40
aSBTUERJRiBtb2R1bGUKPgo+ICAuLi4vc291bmQvYWxsd2lubmVyLHN1bjRpLWExMC1zcGRpZi55
YW1sICAgICAgfCAgMSArCj4gIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgICB8ICA0ICsrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni5kdHNpICB8IDM4ICsrKysrKysrKysrKysrCj4gIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25m
aWcgICAgICAgICAgICAgICAgICB8ICAxICsKPiAgc291bmQvc29jL3N1bnhpL3N1bjRpLXNwZGlm
LmMgICAgICAgICAgICAgICAgIHwgNDkgKysrKysrKysrKysrKysrKy0tLQo+ICA1IGZpbGVzIGNo
YW5nZWQsIDg3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMjAuMQo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
