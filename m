Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B931BE3F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KfWqvenH5IKDmDxl3lTkkgXsfpOstCL7dXYKP5F0hQ=; b=Lttw39jM5e9F7I
	h1QcgXUs3TntFaOANRp61QOW0h9LFjJ4aNqK0fYB6OcSMUemosajvZmrOn/J6fk6TmLBHQr715CL1
	ellh5LboYmXF7WFdSASb6iguxpixr5bvFarQqEyn1BWFtZ7bhLt3E8Fbg0VhzrUD3kI01e+izS4EQ
	Wi0yePK1CWhPYwzh6P4GoygZQSFcpemimGkLCunpb3YJ7VpAnYjeQr6oJ3XG2p4QoxFGq4l8FGAEY
	1vH4eFHOVw10yEdK9yvFjne4TqUzR/I3+BG01ygZ1rgad83EflcsPIuEe5VAEaAKpz/IZJSbMneUg
	a32lvG99KNXTL4Y9Tysg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpeG-00027f-Jy; Wed, 29 Apr 2020 16:33:24 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpe4-00025R-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:33:14 +0000
Received: by mail-io1-xd41.google.com with SMTP id b12so2872600ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 09:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xrYwlO7xNNj9fkAP9oHGsbabPQftzUzMxzOAeS45YvA=;
 b=Mc66UOQw3PSrCzfUt6SnAmBJoNfERd9Wgtuu4ajltmzI21Ad5iqV7T71c8OI9Ovx1v
 UxxzA7h0TGO5GWL2VglyGBffnr0d9cScTY/ANtdLj0LwQo17VUHpUGaHhYFzDP/1b7BU
 BfZr9vzg7bEQgtQESFGg168Xj7ZbCChxBeJCm2xCHo5xHMwqcMWh7EjbdDjwYLXpiWdZ
 WTO4n9KOYAOMQ2e2FzTKWPrQn/hqw7ZzpvEdmn8h8jKEvVkwydzGC1PJkMhEo1I34irb
 w4g4l2QH3Po8cb4YZCx2yMeR8mEoalay7vXdec9wI4PhU7O8tihJA0koPXKOOtxaarIq
 JCOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xrYwlO7xNNj9fkAP9oHGsbabPQftzUzMxzOAeS45YvA=;
 b=oHAdpYBquVbidWyewDRCr5C5FU2lunNQK4lqYcLFErjpywxe22lOiy0wWXL8urzW1q
 l3VfFJFXouUWabsKo7hdM1VR0fg/ajjUGbAoP0wxxr9GIp99JemCNQRRRnq4xRqnsdGT
 I8u1QAeDmicdLoJx86uNu3JBqrqfbLS973D2Mr2fxs41kY41k7i4hwTGQnT8rra6nUhY
 HptcdNpVV6OfUAlfMnvO6m5P5aA3IbEd/KR/YQ00aVIXO9XhA+R7zYaqcdYc42LZgxO7
 ILlm+1Pz0un/Sl/JQ8JhOWVJ5PHHwlbf7xNbKY729UT9QkjbgFpNdKVEr/o3ThUsh5rZ
 cfGg==
X-Gm-Message-State: AGi0Pua/v9hROyu7g/n+/FQFCno6u9WtEreg2MxrB03AkJoxwjgxL3Xr
 9TcJDMtQGbR+L7Rk2iJUvYs7hPm9Dxei3A/TeOI=
X-Google-Smtp-Source: APiQypKu3/he3vcgwJi5RApDarGi5QWrtRiRJCHqu6zQTJlBLBWHScAvv0k9XsP7FCPb/0GQhJgoWCNAfwSwS562ako=
X-Received: by 2002:a05:6602:2fcd:: with SMTP id
 v13mr30928449iow.124.1588177991512; 
 Wed, 29 Apr 2020 09:33:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-4-peron.clem@gmail.com>
 <20200428081321.ht3el26yqhsnyfm4@gilmour.lan>
 <CAJiuCcdVs_drs40Q6537BYfz24F7NmC6B8S5-Lt4V4ggs-FXWA@mail.gmail.com>
 <20200429123529.y24dpy63wxq7uvkt@gilmour.lan>
In-Reply-To: <20200429123529.y24dpy63wxq7uvkt@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 29 Apr 2020 18:33:00 +0200
Message-ID: <CAJiuCcfXqizcq_JuXRCsqEqM2562cr1SGJ0pmy07jcJxAXojOw@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-i2s: Add support for H6 I2S
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_093313_027340_6236B2A5 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gV2VkLCAyOSBBcHIgMjAyMCBhdCAxNDozNSwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gT24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMTA6
NTU6NDdBTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gPiA+ICtzdGF0aWMgaW50
IHN1bjUwaV9pMnNfc2V0X3NvY19mbXQoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLAo+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgZm10KQo+ID4g
Pgo+ID4gPiBUaGUgYWxpZ25tZW50IGlzIG9mZiBoZXJlCj4gPiA+Cj4gPiA+ID4gK3sKPiA+ID4g
PiArICAgICB1MzIgbW9kZSwgdmFsOwo+ID4gPiA+ICsgICAgIHU4IG9mZnNldDsKPiA+ID4gPiAr
Cj4gPiA+ID4gKyAgICAgLyoKPiA+ID4gPiArICAgICAgKiBEQUkgY2xvY2sgcG9sYXJpdHkKPiA+
ID4gPiArICAgICAgKgo+ID4gPiA+ICsgICAgICAqIFRoZSBzZXR1cCBmb3IgTFJDSyBjb250cmFk
aWN0cyB0aGUgZGF0YXNoZWV0LCBidXQgdW5kZXIgYQo+ID4gPiA+ICsgICAgICAqIHNjb3BlIGl0
J3MgY2xlYXIgdGhhdCB0aGUgTFJDSyBwb2xhcml0eSBpcyByZXZlcnNlZAo+ID4gPiA+ICsgICAg
ICAqIGNvbXBhcmVkIHRvIHRoZSBleHBlY3RlZCBwb2xhcml0eSBvbiB0aGUgYnVzLgo+ID4gPiA+
ICsgICAgICAqLwo+ID4gPgo+ID4gPiBEaWQgeW91IGNoZWNrIHRoaXMgb3IgaGFzIGl0IGJlZW4g
Y29weS1wYXN0ZWQ/Cj4gPgo+ID4gY29weS1wYXN0ZWQsIEkgd2lsbCBjaGVjayB0aGlzLgo+Cj4g
SXQncyBub3QgZ29pbmcgdG8gYmUgZWFzeSB0byBkbyB0aGlzIGlmIHlvdSBvbmx5IGhhdmUgYSBi
b2FyZCB3aXRoIEhETUkuIElmIHlvdQo+IGNhbid0IHRlc3QgdGhhdCBlYXNpbHksIGp1c3QgcmVt
b3ZlIHRoZSBjb21tZW50IChvciBtYWtlIGl0IGV4cGxpY2l0IHRoYXQgeW91Cj4gY29weSBwYXN0
ZWQgaXQ/KSwgbm8gY29tbWVudCBpcyBiZXR0ZXIgdGhhbiBhIHdyb25nIG9uZS4KCkkgaGF2ZSB0
YWxrZWQgd2l0aCBNYXJjdXMgQ29vcGVyIGl0IG1heSBiZSBhYmxlIHRvIHRlc3QgdGhpcyB0aGlz
IHdlZWstZW5kLgpBbHNvIHRoaXMgY2FuIGV4cGxhaW4gd2h5IHdlIG5lZWQgdGhlICIKc2ltcGxl
LWF1ZGlvLWNhcmQsZnJhbWUtaW52ZXJzaW9uOyIgaW4gdGhlIGRldmljZS10cmVlLgoKSWYgdGhp
bmsgdGhpcyBmaXggaGFzIGJlZW4gaW50cm9kdWNlZCBieSB5b3UsIGNvcnJlY3Q/IENvdWxkIHlv
dSBzYXkKb24gd2hpY2ggU29DIGRpZCB5b3Ugc2VlIHRoaXMgaXNzdWU/CgpUaGFua3MKQ2xlbWVu
dAoKPgo+IE1heGltZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
