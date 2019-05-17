Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E6721C51
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 19:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dz52EkgXbzmKY9+4JGhedRm8hJ4XjXkqITxC8MrGDCQ=; b=iZKFVkW7KjEhLv
	+JXRwUCGikwylarnccfpnWVN4LxNlSxlk2dmBA199ZnyZ04t2/golCykHalTH+KJSbjUeuQ5Xhz66
	k9e7jJmZxVmyMNWPwiyR/QEWT14zMHzc6p8NdQ9KTbWNXDgtzD5b7xjt+jJPGLXVULdmJh9YFleUU
	1hbCcAg3T4qhpbJYOF3nisGxcq54z1PoTm2lbF9/NFy+0CdKTCRtjvJA3DEUhTgckz/XEGXlU7gDm
	V6pnfzrlukiWJm5NWtcoS4yqjV5t0xxQMb8q/j+ntztWOS0BJX1PYpseiHU94mg4SqszFWW5PuNYI
	UGLD1HBO69BX2USq4zwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRgWj-0001LE-1w; Fri, 17 May 2019 17:20:13 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRgWd-0000uA-03
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 17:20:08 +0000
Received: by mail-it1-x142.google.com with SMTP id i10so13192582ite.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 10:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qrLPWyXtnI2gfzaw9iUqYTDRhEhLKXZoqwNA1fL2LAQ=;
 b=PVLNgjcKPNwuCYgyauLWAWQrbFXd/kKCQoF0bXX5cMltLR7fks84XgVP9aZZbfishf
 qA1LlwrEEXBuZPwQvyocwKzNmRInN+wqQOWAWuG+YIki49m7RHhvCA+F8PBQgKPenhI2
 qPJ4eUvcWlE6HJ4q0j9W001nsUtte7prJuBZTU1nlQRKwKBlE4odUnnKHBmhRkJLf0ZB
 l8CYE6vPxhKetIqu7wPGSDrsBoDVinT/sCwDVzrVrhKIND4nJvNzgjJTMAmkFZdcfHYh
 DIDYAwoZNktDZOAkxRSjcQXkVdiXsZuMSJpjBC882SGpOYDSiZRVl5I32G0xTmBpsrE0
 fzAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qrLPWyXtnI2gfzaw9iUqYTDRhEhLKXZoqwNA1fL2LAQ=;
 b=CNJmv+E4QuoI2vcGbiSU4pL6E3ZBBgT8ga7JX9HGGkWfMCkw8kFaj60vSy4/aJ0stS
 dkMAFRB4Sy9sNeH2Q3InJ9obI6lu4VhmAE41t4qluFWwpVIlLyVkHwHpAwdBh2J5JsX0
 xsM7k3npdRQePL+wox8omZJYkjc5yYnyLkR7w+3PPCrPu3a/VXEReBIQ7flQyPHWIb9I
 dbE/ZvV3O9kU6hfs+pdDZq97sjNBJ/lS8Fn041L97J0jrS6O2nUP9MF6CBSCQ1U9xarD
 S94MDJuOC+OJB4RrMxtjocjiJLuqh+yU6LVKvg76TmjwtC7eV/CcBODkTI0rLcgl19KH
 o/GA==
X-Gm-Message-State: APjAAAVRxF4sK1UIPY/sjn4mV2r8x0WsnfSrR/ywoBGv6J9NAsEHEFdE
 NXi12lSkampWaKm6Ew4a0STaMK1eR+NrAIj5/Lg=
X-Google-Smtp-Source: APXvYqy9MqNMwuRaX+ELq5rB4d1R7KQAB9+kT1JeKI6HQFvZCY3iw6/M+suGjbSFqWtAaTTx+zCY9kBtBlyqxKMmsos=
X-Received: by 2002:a05:660c:7cd:: with SMTP id
 e13mr12523632itl.40.1558113605643; 
 Fri, 17 May 2019 10:20:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <20190512214128.qjyys3vfpwdiacib@core.my.home>
 <20190516150252.hf4u3bloo37chy6q@flea>
 <CAEExFWu-T2mGQ9Teo7TQOcJsEzXi_dB=S8CFv7MiwHyu5z4-ow@mail.gmail.com>
 <20190517073151.mz6hcmzubk7iqfre@flea>
In-Reply-To: <20190517073151.mz6hcmzubk7iqfre@flea>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sat, 18 May 2019 01:19:54 +0800
Message-ID: <CAEExFWtban8Fjw6aZ5gdeC2GNk1vdqFoaJB_o-JtYZ_z70AJcQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_102007_074825_51BB1A5D 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org, marc.w.gonzalez@free.fr,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, Linux PM <linux-pm@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, olof@lixom.net, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 enric.balletbo@collabora.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMzozMiBQTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlw
YXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDAyOjEw
OjQ3QU0gKzA4MDAsIEZyYW5rIExlZSB3cm90ZToKPiA+ID4gT24gU3VuLCBNYXkgMTIsIDIwMTkg
YXQgMTE6NDE6MjhQTSArMDIwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiA+ID4gPiA+ICtz
dGF0aWMgaW50IHRzZW5zX2dldF90ZW1wKHZvaWQgKmRhdGEsIGludCAqdGVtcCkKPiA+ID4gPiA+
ID4gK3sKPiA+ID4gPiA+ID4gKyBzdHJ1Y3QgdHNlbnNvciAqcyA9IGRhdGE7Cj4gPiA+ID4gPiA+
ICsgc3RydWN0IHRzZW5zX2RldmljZSAqdG1kZXYgPSBzLT50bWRldjsKPiA+ID4gPiA+ID4gKyBp
bnQgdmFsOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgcmVnbWFwX3JlYWQodG1kZXYtPnJl
Z21hcCwgdG1kZXYtPmNoaXAtPnRlbXBfZGF0YV9iYXNlICsKPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAweDQgKiBzLT5pZCwgJnZhbCk7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyBpZiAo
dW5saWtlbHkodmFsID09IDApKQo+ID4gPiA+ID4gPiArICAgICAgICAgcmV0dXJuIC1FQlVTWTsK
PiA+ID4gPiA+Cj4gPiA+ID4gPiBJJ20gbm90IHN1cmUgd2h5IGEgdmFsIGVxdWFscyB0byAwIHdv
dWxkIGJlIGFzc29jaWF0ZWQgd2l0aCBFQlVTWT8KPiA+ID4gPgo+ID4gPiA+IFRoZXJtYWwgem9u
ZSBkcml2ZXIgY2FuICh3aWxsKSBjYWxsIGdldF90ZW1wIGJlZm9yZSB3ZSBnb3QgdGhlCj4gPiA+
ID4gZmlyc3QgaW50ZXJydXB0IGFuZCB0aGUgdGhlcm1hbCBkYXRhLiBJbiB0aGF0IGNhc2UgdmFs
IHdpbGwgYmUgMC4KPiA+ID4gPgo+ID4gPiA+IFJlc3VsdGluZyBpbjoKPiA+ID4gPgo+ID4gPiA+
ICAodmFsICsgb2Zmc2V0KSAqIHNjYWxlID0gKC0yNzk0KSAqIC02NyA9IDE4NzE5OAo+ID4gPiA+
Cj4gPiA+ID4gMTg3wrBDIGFuZCBpbW1lZGlhdGUgc2h1dGRvd24gZHVyaW5nIGJvb3QgLSBiYXNl
ZCBvbiBjaXJ0aWNhbAo+ID4gPiA+IHRlbXBlcmF0dXJlIGJlaW5nIHJlYWNoZWQuCj4gPiA+ID4K
PiA+ID4gPiBCdXN5IGhlcmUgbWVhbnMsIGdldF90ZW1wIGRvZXMgbm90IHlldCBoYXZlIGRhdGEu
IFRoZXJtYWwgem9uZQo+ID4gPiA+IGRyaXZlciBqdXN0IHJlcG9ydHMgYW55IGVycm9yIHRvIGRt
ZXNnIG91dHB1dC4KPiA+ID4KPiA+ID4gQWgsIHRoYXQgbWFrZXMgc2Vuc2UuCj4gPiA+Cj4gPiA+
IEkgZ3Vlc3MgaWYgd2UncmUgc3dpdGNoaW5nIHRvIGFuIGludGVycnVwdC1iYXNlZCBkcml2ZXIs
IHRoZW4gd2UgY2FuCj4gPiA+IGp1c3QgdXNlIGEgd2FpdHF1ZXVlLCBvciBpcyBnZXRfdGVtcCBz
dXBwb3NlZCB0byBiZSBhdG9taWM/Cj4gPgo+ID4gSSB0aGluayBnZXRfdGVtcCBzaG91bGQgbm90
IGJlIGJsb2Fja2VkLgo+Cj4gV2h5IG5vdD8KCk1heWJlLCBJIGFtIHdyb25nLiBJIGFsc28gd2Fu
dCB0byBrbm93IGlmIHdlIHNob3VsZCBkbyB0aGlzLgoKWWFuZ3RhbwoKPgo+IE1heGltZQo+Cj4g
LS0KPiBNYXhpbWUgUmlwYXJkLCBCb290bGluCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBl
bmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
