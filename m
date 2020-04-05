Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCB519EC46
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 17:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+9zF2oaZ5K3aldG3dhWXddPbRXshK+r3yfQhN9mJnx8=; b=Q2kTfdMAIGpsJpuDm4LirbBTXB
	wZtKct+8pf1xHcnXeuywwU3C2510xngz1AdHn2Q6r8V/zcLSnwPn6xW+Rvlltu9BXCnqJ+Pvjn5YI
	ouzoXBGI3gdKpKYncftgv+pG7kZmR+7iNrgf26b0FQ4mUfKdmQ+9eSZRwhQFU35Nu/ptubf60WQ3E
	rGtNWnTEjsz3xs95fWxjWtpJt4vOAqnr0Lx94ur6/1UVebpWJ2SYjAfovmCoC7c/b1Z8SlOoLt9Kp
	FaWmZHAwIHDWbV4NYGq1QHmy69ZRfoQO6yq+4Eq4Rs4lE7+mdcObIrbId7cHgXXerqC6/3ShJ08EG
	9MfOiSEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6mo-0003IR-Um; Sun, 05 Apr 2020 15:02:10 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6mh-0003Hp-Iv
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 15:02:05 +0000
Received: by mail-il1-x144.google.com with SMTP id t11so12252047ils.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 08:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=g8MbrIxOq0zCTo9fKog8mhMy9bOW8Fg9D9RRomTrVFI=;
 b=c0oIvEOdEgPWSDDAJkRrteqAJ3sCP4mCe/YU5gQyLw7rZEqtGK3507vguvbOdjP0Ku
 l/gsKL4J9b55i0DtEkFtOrwhBm9U/Ud17zTpDyGTAtqirorOHRySO1PQ2DTpj8My2A36
 QI8PVjlCjThg1wzF8PEAbT/Fj2TVpekpwd82Jn6Rm48N7aj2COYNCPr5f5AUPEraQVIb
 RQxjVxFxo/KJcJsMlulaasXOgVZ6b1hpo8jVevu095Ezb4QRJpZai8VErHtcWIpY77xi
 gPJbT3QZJioFrrvD+9Id+v9oBZgWb/axGwLn2rqkmaxybnljKKmMRejVqScpghWMmJKD
 ZOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=g8MbrIxOq0zCTo9fKog8mhMy9bOW8Fg9D9RRomTrVFI=;
 b=CHH66KbMssKI6Qs6J7tYMZqgKxthW7liXJ5NpezD8rE/HoXb0aLtP0onDnn0XFezto
 ZqeexFYmrfPVCTX6adg89PhHm0Mh1PqeQeQ1EU7u0sYq3L5BCTFzRrAxO96ynjW0EHtF
 NO2ron+I0f0Jx4YmhjXEjNLwmjm50Jla49k75K9EpjIhhqgQS2VqBaxV/IK/8T0lyETl
 IzI4Gou4guBiduRhJaqwuwvtYAwWzN4DtoeUjemE9LFwWlM6wFih5nDFOfsPRfhY1Y+b
 hnREZz5VaXGibKXxu+1qbQlsUFzyDFM93Cpl7dRQ0aPC+qx45tw/eFCNRKBhA1KpHhOk
 joHA==
X-Gm-Message-State: AGi0Pub8DWcdbYuzl/EekcYaj3gQUGoSFagYYTOgmzEV0aWfeWtbZdJY
 sTJO0u3Hg+x0DTR06dudcNccfKhDMQrKvFBNhLs=
X-Google-Smtp-Source: APiQypL0dkIH9W+iVFh+3Kch1QpTGXIz6w0urhh9Ynz7E5vaHn9o5pPCdsvh7b7WT0kXp4kHiPPmamoXZdEpSSTdNn8=
X-Received: by 2002:a05:6e02:6cd:: with SMTP id
 p13mr16728576ils.150.1586098922818; 
 Sun, 05 Apr 2020 08:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200405104913.22806-1-peron.clem@gmail.com>
 <20200405115138.vrrvv7spnv6ifm6x@core.my.home>
 <CAJiuCcfAKCs5ZLi_O21eyx-ZraC2Sb_ugQSmOEYm5+eVkQ7ZSw@mail.gmail.com>
 <20200405145443.uycsh73kxmurdmil@core.my.home>
In-Reply-To: <20200405145443.uycsh73kxmurdmil@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 5 Apr 2020 17:01:51 +0200
Message-ID: <CAJiuCceROWv1ni3YZ6rU71O9R__t6ZOgnkZQDjBhJvhqHRAVng@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 0/7] Add support for Allwinner H6 DVFS
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_080203_643740_6C8BBF95 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIDUgQXByIDIwMjAgYXQgMTY6NTQsIE9uZMWZZWogSmlybWFuIDxtZWdvdXNA
bWVnb3VzLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFN1biwgQXByIDA1LCAyMDIwIGF0IDA0
OjMzOjM3UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEhpIE9uZMWZZWosCj4K
PiBbIC4uLiBdCj4KPiA+IEdvb2QgcG9pbnQsIHRoaXMgaW5mb3JtYXRpb24gc2hvdWxkIGJlIGFk
ZGVkIGZvciBib3RoIENQVSBhbmQgR1BVIHJlZ3VsYXRvci4KPiA+IFRoaXMgY291bGQgYmUgbmlj
ZSB0byBjb25maXJtIHRoaXMgcG9pbnQgd2l0aCBhIHNjb3BlLgo+ID4KPiA+IEFsc28gSSByZW1h
cmsgdGhhdCBBbGx3aW5uZXIgdXNlciBoaWdoZXIgdGVtcGVyYXR1cmUgdGhhbiB3aGF0IHdlIHNl
dCA6Cj4gPiBhbGFybV9sb3dfdGVtcCA9IDwxMDUwMDA+Owo+ID4gYWxhcm1faGlnaF90ZW1wID0g
PDExMDAwMD47Cj4gPiBhbGFybV90ZW1wX2h5c3RlcmVzaXMgPSA8MTUwMDA+Owo+ID4gc2h1dF90
ZW1wPSA8MTE1MDAwPjsKPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcmFuZ2VwaS14dW5sb25nL09y
YW5nZVBpSDZfTGludXg0XzkvYmxvYi9tYXN0ZXIvYXJjaC9hcm02NC9ib290L2R0cy9zdW54aS9z
dW41MGl3NnAxLmR0c2kjTDE5MjQKPiA+Cj4gPiBEb24ndCB5b3UgdGhpbmsgdGhhdCB3ZSBjYW4g
cHVzaCBhIGJpdCBoaWdoZXIgdGhlIHRlbXBlcmF0dXJlIGl0J3MKPiA+IGFjdHVhbGx5IGF0IDgw
wrBDID8KPgo+IFdlIHByb2JhYmx5IGNhbi4gQnV0IGp1c3QgNcKwQyBiZXR3ZWVuIGhpZ2ggdGVt
cCBhbmQgY3JpdGljbGEgdGVtcCBpcyBwcm9iYWJseQo+IG5vdCBlbm91Z2guIEknZCBwcm9iYWJs
eSBzZXQgb3VyIHZhbHVlIHRvIHNvbWV0aGluZyBsaWtlIDkwLTEwMMKwQyBzbyB0aGF0IHF1aWNr
Cj4gdGVtcGVyYXR1cmUgc3Bpa2UgYmVmb3JlIHJlZ3VsYXRpb24ga2lja3MgaW4gd291bGQgbm90
IHNodXRkb3duIHRoZSBDUFUuCgpPSyBJIHdpbGwgcHVzaCBpdCB0byA4NcKwQyBhbmQgbGVhdmUg
dGhlIGNyaXRpY2FsIHRvIDEwMMKwQy4KClRlc3QgaXQgYWdhaW4gYW5kIHdpbGwgc2VuZCBhIHYy
CgpSZWdhcmRzLApDbMOpbWVudAoKPgo+IHJlZ2FyZHMsCj4gICAgICAgICBvLgo+Cj4gPiBUaGFu
a3MgZm9yIHRoZSByZXZpZXcsCj4gPiBDbGVtZW50Cj4gPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
