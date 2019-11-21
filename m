Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3408110518A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 12:38:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+u9yfstdxqBZu8K1/5jsWNQ7gJNrAsKSnB5W/Zyfe6M=; b=r/K/6iu1+vhlJF
	j9ZxaFMiWcCBoS0Dw/aHlRqfjr3Tu6OzCRA6en6GoM0o1WK+5QZ4bz9AZEScrxy+6bsbKrPoLw7wY
	uhtPs3uXeDIuCB1US04YDpihOAOJOKNOHYwOJQHmK9lHNKgQof6FHC6RoKlhHCjIYOlQf0389pRcE
	tQv4tiufyiBvZ/AcCmaXJzldacaw3xoHM4/tnBK4D6gwzJGfXeq9CRVTno2cImJwGPzcCD4d2LpiN
	fAMgb3xnjRGsjvObXw92EsPsJ2p4XP7ldA7/bLvxlgedYDGjDhpTMM4HUeGCF4TerWHFd0k6XAPso
	112EOzPynWuY9qqIz3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXknA-0000eh-7y; Thu, 21 Nov 2019 11:38:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkn1-0000eB-1T
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 11:38:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id x26so3044806wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 03:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ymYVwgS3u3Is3vut5facTUt0ewbtP1AkLC3XruiyyFw=;
 b=OJ6+E/4mIpJrfVzL/CzFsbRw9we7mEYlDp7DNWT6XbKCr1OrAw8g8vkoD6Zs3L6d8R
 hFeiCRE2bXcNKEx3SQ90HrjFvdsXhWvMLEA7FVszTd/tmVlXQO1/2/3WJztfGHejQgTE
 WkdYVkpVof2pqJKS4FIm4spQpy+ApI2GQrGbcWnv/TG+Wd/zda3fYSCiV/DrJBGNfcaN
 Qa7hf0RMxxsUcNWy9dpER6xwRV8EVUvOq33j0V4M1c4CwKJVcmbM53K2QQtDUFtd4jq9
 rlmman9bZojiY3ADvfPfD+x20y1L1m2pbHD+y+1UQ5T6clpXW2zDmEZDepGYU5ULxFGE
 +1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ymYVwgS3u3Is3vut5facTUt0ewbtP1AkLC3XruiyyFw=;
 b=te9LXOgVDj3EsmLv3VSic0Hf1ub+EvdQuUd6USGSvqnKUfmG691o64OAcNVGhVKyo1
 KF2lFLeEJNADKemDigiSTiXBAtjz6GPryyigc/YRyoM045O3Cmqm8FzdYHVun4qaKxyn
 8TxK9BTYfSyy2mPxlBYWI6hv6Kw4wCB4exmKgFETTQb4J1eNavvgwcdgHL4/li37t7+W
 G1HRFPVLMELNTVeMG4InLscbbUNIB6ToWyMNq/o/6J4nEpw6/oSLZpSuK6WHlcWA2Zw2
 992s8HkvinOUa9l2WXFMksBoaJyXkLuPb2vanOiYkKkHa85RPilSkT5u2V5+poDz1ZN4
 58yA==
X-Gm-Message-State: APjAAAVNEmLvMtX3+EPqgOeeyKjnD/GOFloec4sJvHDYavRDlZYDh4Vp
 SpQA4vG9qyfIt1OaZFbLhjP2z+I9Y6fnIgoCGZg=
X-Google-Smtp-Source: APXvYqyR9LDxGzxU1MMCH+7C5pWOo65/JRU9WwJr6HTbFIdaYXl6lkFahCsi/SxbBT63istEhq66gV2+uvSK+1/4UPs=
X-Received: by 2002:a7b:c934:: with SMTP id h20mr2550286wml.56.1574336294490; 
 Thu, 21 Nov 2019 03:38:14 -0800 (PST)
MIME-Version: 1.0
References: <20191119175319.16561-1-peron.clem@gmail.com>
 <20191119175319.16561-6-peron.clem@gmail.com>
 <20191121073647.phutknyb3tzp44ye@pengutronix.de>
In-Reply-To: <20191121073647.phutknyb3tzp44ye@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 21 Nov 2019 12:38:03 +0100
Message-ID: <CAJiuCcd3p-=G9TEadARPmCs6cS7gi61M4CaxX17=NOHwo9onzA@mail.gmail.com>
Subject: Re: [PATCH v7 5/8] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_033823_188354_4EA91138 
X-CRM114-Status: GOOD (  30.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVGh1LCAyMSBOb3YgMjAxOSBhdCAwODozNiwgVXdlIEtsZWluZS1Lw7ZuaWcK
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBIZWxsbyBDbMOpbWVu
dCwKPgo+IE9uIFR1ZSwgTm92IDE5LCAyMDE5IGF0IDA2OjUzOjE2UE0gKzAxMDAsIENsw6ltZW50
IFDDqXJvbiB3cm90ZToKPiA+IEZyb206IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0Bz
aW9sLm5ldD4KPiA+Cj4gPiBQV00gY29yZSBoYXMgYW4gb3B0aW9uIHRvIGJ5cGFzcyB3aG9sZSBs
b2dpYyBhbmQgb3V0cHV0IHVuY2hhbmdlZCBzb3VyY2UKPiA+IGNsb2NrIGFzIFBXTSBvdXRwdXQu
IFRoaXMgaXMgYWNoaWV2ZWQgYnkgZW5hYmxpbmcgYnlwYXNzIGJpdC4KPiA+Cj4gPiBOb3RlIHRo
YXQgd2hlbiBieXBhc3MgaXMgZW5hYmxlZCwgbm8gb3RoZXIgc2V0dGluZyBoYXMgYW55IG1lYW5p
bmcsIG5vdAo+ID4gZXZlbiBlbmFibGUgYml0Lgo+ID4KPiA+IFRoaXMgbW9kZSBvZiBvcGVyYXRp
b24gaXMgbmVlZGVkIHRvIGFjaGlldmUgaGlnaCBlbm91Z2ggZnJlcXVlbmN5IHRvCj4gPiBzZXJ2
ZSBhcyBjbG9jayBzb3VyY2UgZm9yIEFDMjAwIGNoaXAgd2hpY2ggaXMgaW50ZWdyYXRlZCBpbnRv
IHNhbWUKPiA+IHBhY2thZ2UgYXMgSDYgU29DLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5l
aiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+IFNpZ25lZC1vZmYtYnk6IENs
w6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJz
L3B3bS9wd20tc3VuNGkuYyB8IDkyICsrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDY0IGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9u
cygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZl
cnMvcHdtL3B3bS1zdW40aS5jCj4gPiBpbmRleCBjZTgzZDQ3OWJhMGUuLmExZDg4NTFiMThmMCAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiArKysgYi9kcml2ZXJz
L3B3bS9wd20tc3VuNGkuYwo+ID4gQEAgLTMsNiArMywxMCBAQAo+ID4gICAqIERyaXZlciBmb3Ig
QWxsd2lubmVyIHN1bjRpIFB1bHNlIFdpZHRoIE1vZHVsYXRpb24gQ29udHJvbGxlcgo+ID4gICAq
Cj4gPiAgICogQ29weXJpZ2h0IChDKSAyMDE0IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUu
YmVsbG9uaUBmcmVlLWVsZWN0cm9ucy5jb20+Cj4gPiArICoKPiA+ICsgKiBMaW1pdGF0aW9uczoK
PiA+ICsgKiAtIFdoZW4gb3V0cHV0aW5nIHRoZSBzb3VyY2UgY2xvY2sgZGlyZWN0bHksIHRoZSBQ
V00gbG9naWMgd2lsbCBiZSBieXBhc3NlZAo+ID4gKyAqICAgYW5kIHRoZSBjdXJyZW50bHkgcnVu
bmluZyBwZXJpb2QgaXMgbm90IGd1YXJhbnRlZWQgdG8gYmUgY29tcGxldGVkCj4gPiAgICovCj4g
Pgo+ID4gICNpbmNsdWRlIDxsaW51eC9iaXRvcHMuaD4KPiA+IEBAIC03Myw2ICs3Nyw3IEBAIHN0
YXRpYyBjb25zdCB1MzIgcHJlc2NhbGVyX3RhYmxlW10gPSB7Cj4gPgo+ID4gIHN0cnVjdCBzdW40
aV9wd21fZGF0YSB7Cj4gPiAgICAgICBib29sIGhhc19wcmVzY2FsZXJfYnlwYXNzOwo+ID4gKyAg
ICAgYm9vbCBoYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0Owo+ID4gICAgICAgdW5zaWduZWQgaW50
IG5wd207Cj4gPiAgfTsKPiA+Cj4gPiBAQCAtMTE4LDYgKzEyMywyMCBAQCBzdGF0aWMgdm9pZCBz
dW40aV9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwKPiA+Cj4gPiAgICAgICB2
YWwgPSBzdW40aV9wd21fcmVhZGwoc3VuNGlfcHdtLCBQV01fQ1RSTF9SRUcpOwo+ID4KPiA+ICsg
ICAgIC8qCj4gPiArICAgICAgKiBQV00gY2hhcHRlciBpbiBINiBtYW51YWwgaGFzIGEgZGlhZ3Jh
bSB3aGljaCBleHBsYWlucyB0aGF0IGlmIGJ5cGFzcwo+ID4gKyAgICAgICogYml0IGlzIHNldCwg
bm8gb3RoZXIgc2V0dGluZyBoYXMgYW55IG1lYW5pbmcuIEV2ZW4gbW9yZSwgZXhwZXJpbWVudAo+
ID4gKyAgICAgICogcHJvdmVkIHRoYXQgYWxzbyBlbmFibGUgYml0IGlzIGlnbm9yZWQgaW4gdGhp
cyBjYXNlLgo+ID4gKyAgICAgICovCj4gPiArICAgICBpZiAoKHZhbCAmIEJJVF9DSChQV01fQllQ
QVNTLCBwd20tPmh3cHdtKSkgJiYKPiA+ICsgICAgICAgICBzdW40aV9wd20tPmRhdGEtPmhhc19k
aXJlY3RfbW9kX2Nsa19vdXRwdXQpIHsKPiA+ICsgICAgICAgICAgICAgc3RhdGUtPnBlcmlvZCA9
IERJVl9ST1VORF9VUF9VTEwoTlNFQ19QRVJfU0VDLCBjbGtfcmF0ZSk7Cj4gPiArICAgICAgICAg
ICAgIHN0YXRlLT5kdXR5X2N5Y2xlID0gRElWX1JPVU5EX1VQX1VMTChzdGF0ZS0+cGVyaW9kLCAy
KTsKPiA+ICsgICAgICAgICAgICAgc3RhdGUtPnBvbGFyaXR5ID0gUFdNX1BPTEFSSVRZX05PUk1B
TDsKPiA+ICsgICAgICAgICAgICAgc3RhdGUtPmVuYWJsZWQgPSB0cnVlOwo+ID4gKyAgICAgICAg
ICAgICByZXR1cm47Cj4gPiArICAgICB9Cj4gPiArCj4gPiAgICAgICBpZiAoKFBXTV9SRUdfUFJF
U0NBTCh2YWwsIHB3bS0+aHdwd20pID09IFBXTV9QUkVTQ0FMX01BU0spICYmCj4gPiAgICAgICAg
ICAgc3VuNGlfcHdtLT5kYXRhLT5oYXNfcHJlc2NhbGVyX2J5cGFzcykKPiA+ICAgICAgICAgICAg
ICAgcHJlc2NhbGVyID0gMTsKPiA+IEBAIC0xNDksMTMgKzE2OCwyMyBAQCBzdGF0aWMgdm9pZCBz
dW40aV9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwKPiA+Cj4gPiAgc3RhdGlj
IGludCBzdW40aV9wd21fY2FsY3VsYXRlKHN0cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdt
LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgcHdtX3N0YXRl
ICpzdGF0ZSwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyICpkdHksIHUzMiAq
cHJkLCB1bnNpZ25lZCBpbnQgKnByc2NscikKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdTMyICpkdHksIHUzMiAqcHJkLCB1bnNpZ25lZCBpbnQgKnByc2NsciwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgYm9vbCAqYnlwYXNzKQo+ID4gIHsKPiA+ICAgICAgIHU2NCBj
bGtfcmF0ZSwgZGl2ID0gMDsKPiA+ICAgICAgIHVuc2lnbmVkIGludCBwdmFsLCBwcmVzY2FsZXIg
PSAwOwo+ID4KPiA+ICAgICAgIGNsa19yYXRlID0gY2xrX2dldF9yYXRlKHN1bjRpX3B3bS0+Y2xr
KTsKPiA+Cj4gPiArICAgICAqYnlwYXNzID0gc3RhdGUtPmVuYWJsZWQgJiYKPiA+ICsgICAgICAg
ICAgICAgICAoc3RhdGUtPnBlcmlvZCAqIGNsa19yYXRlID49IE5TRUNfUEVSX1NFQykgJiYKPiA+
ICsgICAgICAgICAgICAgICAoc3RhdGUtPnBlcmlvZCAqIGNsa19yYXRlIDwgMiAqIE5TRUNfUEVS
X1NFQykgJiYKPiA+ICsgICAgICAgICAgICAgICAoc3RhdGUtPmR1dHlfY3ljbGUgKiBjbGtfcmF0
ZSAqIDIgPj0gTlNFQ19QRVJfU0VDKTsKPiA+ICsKPiA+ICsgICAgIC8qIFNraXAgY2FsY3VsYXRp
b24gb2Ygb3RoZXIgcGFyYW1ldGVycyBpZiB3ZSBieXBhc3MgdGhlbSAqLwo+ID4gKyAgICAgaWYg
KCpieXBhc3MgJiYgc3VuNGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KQo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ICsKPgo+IEhtbSwgc28gaWYgbXkgUFdNIGRv
ZXNuJ3Qgc3VwcG9ydCB0aGUgYnlwYXNzIGJpdCAqYnlwYXNzIG1pZ2h0IHN0aWxsIGJlCj4gdHJ1
ZSBvbiByZXR1cm4gb2Ygc3VuNGlfcHdtX2NhbGN1bGF0ZS4gSXQgZG9lc24ndCBodXJ0IGJlY2F1
c2UgdGhlIHZhbHVlCj4gaXMgb25seSB1c2VkIGFmdGVyIGFub3RoZXIgY2hlY2sgb2YgaGFzX2Rp
cmVjdF9tb2RfY2xrX291dHB1dCwgYnV0IHN0aWxsCj4gdGhpcyBpcyBhIGJpdCBjb25mdXNpbmcu
CgpPayB3aWxsIGNoYW5nZSB0aGlzCgo+Cj4gPiAgICAgICBpZiAoc3VuNGlfcHdtLT5kYXRhLT5o
YXNfcHJlc2NhbGVyX2J5cGFzcykgewo+ID4gICAgICAgICAgICAgICAvKiBGaXJzdCwgdGVzdCB3
aXRob3V0IGFueSBwcmVzY2FsZXIgd2hlbiBhdmFpbGFibGUgKi8KPiA+ICAgICAgICAgICAgICAg
cHJlc2NhbGVyID0gUFdNX1BSRVNDQUxfTUFTSzsKPiA+IEBAIC0yMDIsMTAgKzIzMSwxMSBAQCBz
dGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBw
d21fZGV2aWNlICpwd20sCj4gPiAgewo+ID4gICAgICAgc3RydWN0IHN1bjRpX3B3bV9jaGlwICpz
dW40aV9wd20gPSB0b19zdW40aV9wd21fY2hpcChjaGlwKTsKPiA+ICAgICAgIHN0cnVjdCBwd21f
c3RhdGUgY3N0YXRlOwo+ID4gLSAgICAgdTMyIGN0cmw7Cj4gPiArICAgICB1MzIgY3RybCwgcGVy
aW9kLCBkdXR5LCB2YWw7Cj4gPiAgICAgICBpbnQgcmV0Owo+ID4gLSAgICAgdW5zaWduZWQgaW50
IGRlbGF5X3VzOwo+ID4gKyAgICAgdW5zaWduZWQgaW50IGRlbGF5X3VzLCBwcmVzY2FsZXI7Cj4g
PiAgICAgICB1bnNpZ25lZCBsb25nIG5vdzsKPiA+ICsgICAgIGJvb2wgYnlwYXNzOwo+ID4KPiA+
ICAgICAgIHB3bV9nZXRfc3RhdGUocHdtLCAmY3N0YXRlKTsKPiA+Cj4gPiBAQCAtMjIwLDQzICsy
NTAsNDggQEAgc3RhdGljIGludCBzdW40aV9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlw
LCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAo+ID4gICAgICAgc3Bpbl9sb2NrKCZzdW40aV9wd20t
PmN0cmxfbG9jayk7Cj4gPiAgICAgICBjdHJsID0gc3VuNGlfcHdtX3JlYWRsKHN1bjRpX3B3bSwg
UFdNX0NUUkxfUkVHKTsKPiA+Cj4gPiAtICAgICBpZiAoKGNzdGF0ZS5wZXJpb2QgIT0gc3RhdGUt
PnBlcmlvZCkgfHwKPiA+IC0gICAgICAgICAoY3N0YXRlLmR1dHlfY3ljbGUgIT0gc3RhdGUtPmR1
dHlfY3ljbGUpKSB7Cj4gPiAtICAgICAgICAgICAgIHUzMiBwZXJpb2QsIGR1dHksIHZhbDsKPiA+
IC0gICAgICAgICAgICAgdW5zaWduZWQgaW50IHByZXNjYWxlcjtuIHdyaXRlIHRoZSByZWdpc3Rl
ciBhbmQgcmV0dXJuCkJ1dAo+ID4gKyAgICAgcmV0ID0gc3VuNGlfcHdtX2NhbGN1bGF0ZShzdW40
aV9wd20sIHN0YXRlLCAmZHV0eSwgJnBlcmlvZCwgJnByZXNjYWxlciwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgJmJ5cGFzcyk7Cj4gPiArICAgICBpZiAocmV0KSB7Cj4gPiAr
ICAgICAgICAgICAgIGRldl9lcnIoY2hpcC0+ZGV2LCAicGVyaW9kIGV4Y2VlZHMgdGhlIG1heGlt
dW0gdmFsdWVcbiIpOwo+ID4gKyAgICAgICAgICAgICBzcGluX3VubG9jaygmc3VuNGlfcHdtLT5j
dHJsX2xvY2spOwo+ID4gKyAgICAgICAgICAgICBpZiAoIWNzdGF0ZS5lbmFibGVkKQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShzdW40aV9wd20tPmNsayk7
Cj4gPiArICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiArICAgICB9Cj4gPgo+ID4gLSAgICAg
ICAgICAgICByZXQgPSBzdW40aV9wd21fY2FsY3VsYXRlKHN1bjRpX3B3bSwgc3RhdGUsCj4gPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmR1dHksICZwZXJpb2QsICZw
cmVzY2FsZXIpOwo+ID4gLSAgICAgICAgICAgICBpZiAocmV0KSB7Cj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgZGV2X2VycihjaGlwLT5kZXYsICJwZXJpb2QgZXhjZWVkcyB0aGUgbWF4aW11bSB2
YWx1ZVxuIik7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgc3Bpbl91bmxvY2soJnN1bjRpX3B3
bS0+Y3RybF9sb2NrKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBpZiAoIWNzdGF0ZS5lbmFi
bGVkKQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVw
YXJlKHN1bjRpX3B3bS0+Y2xrKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0
Owo+Cj4gVGhpcyB3b3VsZCBiZSBhIGJpdCBlYXNpZXIgdG8gcmV2aWV3IGlmIHRoaXMgY29tbWl0
IHdhcyBzcGxpdCBpbnRvIHR3bwo+IHBhdGNoZXMuIE9uZSB0aGF0IGRyb3BzIHRoZSBjaGVjayBm
b3IgY3N0YXRlLnBlcmlvZCAhPSBzdGF0ZS0+cGVyaW9kIGV0Ywo+ICh3aGljaCBvdGhlcndpc2Ug
aXMgbmVhcmx5IGVtcHR5IHdoZW4gaWdub3Jpbmcgd2hpdGVzcGFjZSBjaGFuZ2VzKSwgYW5kCj4g
YSBzZWNvbmQgdGhhdCB0aGVuIGFkZHMgYnlwYXNzIHN1cHBvcnQuCgpPawoKPgo+Cj4gPiArICAg
ICBpZiAoc3VuNGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KSB7Cj4gPiAr
ICAgICAgICAgICAgIGlmIChieXBhc3MpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjdHJs
IHw9IEJJVF9DSChQV01fQllQQVNTLCBwd20tPmh3cHdtKTsKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAvKiBXZSBjYW4gc2tpcCBhcHBseSBvZiBvdGhlciBwYXJhbWV0ZXJzICovCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgZ290byBieXBhc3NfbW9kZTsKPgo+IEkgd291bGQgcHJlZmVyIHRv
IHVzZSBnb3RvIG9ubHkgZm9yIGVycm9yIGhhbmRsaW5nLiBOb3Qgc3VyZSBpZiB0aGVyZSBpcwo+
IGEgbmljZSB3YXkgdG8gZG8gdGhhdC4KCkFzIHRoZSBQV00gaXMgbmVjZXNzYXJpbHkgZW5hYmxl
ZCB3ZSBjYW4gd3JpdGUgdGhlIHJlZ2lzdGVyIGFuZCByZXR1cm4KYnV0IG5vdCBzdXJlIGl0J3Mg
bW9yZSBwcm9wZXIuCgpzdW40aV9wd21fd3JpdGVsKHN1bjRpX3B3bSwgY3RybCwgUFdNX0NUUkxf
UkVHKTsKc3Bpbl91bmxvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2NrKTsKcmV0dXJuIDA7CgpSZWdh
cmRzLApDbMOpbWVudAoKPgo+ID4gKyAgICAgICAgICAgICB9IGVsc2Ugewo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIGN0cmwgJj0gfkJJVF9DSChQV01fQllQQVNTLCBwd20tPmh3cHdtKTsKPiA+
ICAgICAgICAgICAgICAgfQo+ID4gKyAgICAgfQo+Cj4gQmVzdCByZWdhcmRzCj4gVXdlCj4KPiAt
LQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8IFV3ZSBLbGVp
bmUtS8O2bmlnICAgICAgICAgICAgfAo+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAg
ICAgICAgICAgICB8IGh0dHBzOi8vd3d3LnBlbmd1dHJvbml4LmRlLyB8CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
