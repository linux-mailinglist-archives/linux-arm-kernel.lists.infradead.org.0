Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23530105BCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 22:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fz8GxTrwJhlycSDfhZs9oCbho5iRCjsyGEGvqW01no=; b=KXLvI+8Dt+IjYN
	9dSg3ORqjjZTjT6LSDzw2cloFf6v2IQKoL7+4Q2NhDeptoh6NZOgsGOwO/sBVxdrY+zITKsW2cpvT
	l8rmOfljwq2U8yCGT9D9iP56HidWSA2HNUCbYjHiDaXnkpq44+WEkg1HY+1+qmhF0cY9SKT2iXpKm
	4Q8oAyw/t3v3zSlqNb8+yDt9c2Ne9WZXsxBtGqjtEfV6w3gqoTTbdYFsU+uMNslYDjjRLy49JFgUK
	8lR/ZKU5/y9eM0fhFGYoBLSeOnji/TbL2um5pOSBjf5J3IrSjQj5NXDGXSWzw7Lk60J7tuYMro1Rd
	P5eljr9FAz5U/749Oz+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXttc-0008Vg-TO; Thu, 21 Nov 2019 21:21:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXttU-0008VA-Pf
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 21:21:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id z19so5368796wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 13:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fO4pVQEm2tFvrKejphNId6GyRDtMLOe3dOR2m5M+DPY=;
 b=s905Hwyo2yzylx0oL6H5bsMpUU1msMF4sTnrz0kdukk+xXjNVZI2KGslsDI5yvUfhm
 wYwuGluIV86LmSwVjU36FhBTiiPilX8BTbwXBwSQ+LeRzbabzs0WYBzQqGLm0B1+n8J4
 hzKm8vmVsch25/auxKlWT2f1hNVjBgzZVHCqI3+tFuocIpLksD3FlaN7dpPVTIYdArhb
 7avvjNw4SNyyOAGvk4gPiz/QVDeOfwC08rvrKRWgiItm22pcSvo5tPSGrkvHetqUBhq9
 r6WXm1/kSY+BGB0DaBiBdBTb5xodgvxYV91TcjYXxOcRFpO2NAr7IJGNBujxLTUHyU/C
 YdaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fO4pVQEm2tFvrKejphNId6GyRDtMLOe3dOR2m5M+DPY=;
 b=o3bD/l72GZDsp0YsecpF2Q11XwPqCPZEn8qjgF6/JrxEQaqEsIPF+iLhwdiYS535tj
 319T7UrjOM5SeCItk9oyH8ZrN6eAsVomE3dUtfnkNfQxe8zrPoPAQ15kDnC1IGgRCIpG
 xWhePsXXxoahrEYaNH6xOz4XmwdCLgjwiFmXNHlsXpzHRrSiQLWD0b5u8LuaW3EjP9G0
 LerNiaDyqNxieGE5AVIif7neFfzv5xrrH3kwEgqdaSvr9Ap6S1XitDnowlph+uAeVpwQ
 JhPb5m2xnZB8neRH/Mh5I5A/Etk8H8FK7QPII4LufqP2Rdm/DZ3ZpgYoDP6ker6hiCRG
 oQcA==
X-Gm-Message-State: APjAAAVNb5lBSVAzJuSXEWYLgOaBr8EU8pHwlkq4q/M1+CtS8DTWFzmG
 6HuE0u81j2LzO+9nS+EKwrBu3aHMxBa1zF7pMuA=
X-Google-Smtp-Source: APXvYqwMTEdhPuDLN8L/FnO3vbnOU6J7rg37EdlTNR4d3NVrgVGZGdTNRl41HTisKn1Zts7OlZ1KOF2ztqmQ7dMbYCA=
X-Received: by 2002:a1c:6405:: with SMTP id y5mr13357858wmb.175.1574371298600; 
 Thu, 21 Nov 2019 13:21:38 -0800 (PST)
MIME-Version: 1.0
References: <20191121195902.6906-1-peron.clem@gmail.com>
 <20191121195902.6906-6-peron.clem@gmail.com>
 <20191121211630.slgayfbuykwvlvdt@pengutronix.de>
In-Reply-To: <20191121211630.slgayfbuykwvlvdt@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 21 Nov 2019 22:21:27 +0100
Message-ID: <CAJiuCcdhH9zbRMMYsZbBYL-H8YWn2kimvJEjZ8Z8kF7Uh9MCpg@mail.gmail.com>
Subject: Re: [PATCH v8 5/6] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_132140_863208_7EA93924 
X-CRM114-Status: GOOD (  27.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVGh1LCAyMSBOb3YgMjAxOSBhdCAyMjoxNiwgVXdlIEtsZWluZS1Lw7ZuaWcK
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBUaHUsIE5vdiAy
MSwgMjAxOSBhdCAwODo1OTowMVBNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBG
cm9tOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPgo+ID4gUFdN
IGNvcmUgaGFzIGFuIG9wdGlvbiB0byBieXBhc3Mgd2hvbGUgbG9naWMgYW5kIG91dHB1dCB1bmNo
YW5nZWQgc291cmNlCj4gPiBjbG9jayBhcyBQV00gb3V0cHV0LiBUaGlzIGlzIGFjaGlldmVkIGJ5
IGVuYWJsaW5nIGJ5cGFzcyBiaXQuCj4gPgo+ID4gTm90ZSB0aGF0IHdoZW4gYnlwYXNzIGlzIGVu
YWJsZWQsIG5vIG90aGVyIHNldHRpbmcgaGFzIGFueSBtZWFuaW5nLCBub3QKPiA+IGV2ZW4gZW5h
YmxlIGJpdC4KPiA+Cj4gPiBUaGlzIG1vZGUgb2Ygb3BlcmF0aW9uIGlzIG5lZWRlZCB0byBhY2hp
ZXZlIGhpZ2ggZW5vdWdoIGZyZXF1ZW5jeSB0bwo+ID4gc2VydmUgYXMgY2xvY2sgc291cmNlIGZv
ciBBQzIwMCBjaGlwIHdoaWNoIGlzIGludGVncmF0ZWQgaW50byBzYW1lCj4gPiBwYWNrYWdlIGFz
IEg2IFNvQy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNr
cmFiZWNAc2lvbC5uZXQ+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCA0
OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4g
PiBpbmRleCAxZmEyMDU3NDE5ZmIuLjBmZTljNjgwZDZkMCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcHdtL3B3bS1zdW40aS5jCj4gPiArKysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4g
QEAgLTMsNiArMywxMCBAQAo+ID4gICAqIERyaXZlciBmb3IgQWxsd2lubmVyIHN1bjRpIFB1bHNl
IFdpZHRoIE1vZHVsYXRpb24gQ29udHJvbGxlcgo+ID4gICAqCj4gPiAgICogQ29weXJpZ2h0IChD
KSAyMDE0IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBmcmVlLWVsZWN0cm9u
cy5jb20+Cj4gPiArICoKPiA+ICsgKiBMaW1pdGF0aW9uczoKPiA+ICsgKiAtIFdoZW4gb3V0cHV0
aW5nIHRoZSBzb3VyY2UgY2xvY2sgZGlyZWN0bHksIHRoZSBQV00gbG9naWMgd2lsbCBiZSBieXBh
c3NlZAo+ID4gKyAqICAgYW5kIHRoZSBjdXJyZW50bHkgcnVubmluZyBwZXJpb2QgaXMgbm90IGd1
YXJhbnRlZWQgdG8gYmUgY29tcGxldGVkCj4gPiAgICovCj4gPgo+ID4gICNpbmNsdWRlIDxsaW51
eC9iaXRvcHMuaD4KPiA+IEBAIC03Myw2ICs3Nyw3IEBAIHN0YXRpYyBjb25zdCB1MzIgcHJlc2Nh
bGVyX3RhYmxlW10gPSB7Cj4gPgo+ID4gIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7Cj4gPiAgICAg
ICBib29sIGhhc19wcmVzY2FsZXJfYnlwYXNzOwo+ID4gKyAgICAgYm9vbCBoYXNfZGlyZWN0X21v
ZF9jbGtfb3V0cHV0Owo+ID4gICAgICAgdW5zaWduZWQgaW50IG5wd207Cj4gPiAgfTsKPiA+Cj4g
PiBAQCAtMTE4LDYgKzEyMywyMCBAQCBzdGF0aWMgdm9pZCBzdW40aV9wd21fZ2V0X3N0YXRlKHN0
cnVjdCBwd21fY2hpcCAqY2hpcCwKPiA+Cj4gPiAgICAgICB2YWwgPSBzdW40aV9wd21fcmVhZGwo
c3VuNGlfcHdtLCBQV01fQ1RSTF9SRUcpOwo+ID4KPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBQ
V00gY2hhcHRlciBpbiBINiBtYW51YWwgaGFzIGEgZGlhZ3JhbSB3aGljaCBleHBsYWlucyB0aGF0
IGlmIGJ5cGFzcwo+ID4gKyAgICAgICogYml0IGlzIHNldCwgbm8gb3RoZXIgc2V0dGluZyBoYXMg
YW55IG1lYW5pbmcuIEV2ZW4gbW9yZSwgZXhwZXJpbWVudAo+ID4gKyAgICAgICogcHJvdmVkIHRo
YXQgYWxzbyBlbmFibGUgYml0IGlzIGlnbm9yZWQgaW4gdGhpcyBjYXNlLgo+ID4gKyAgICAgICov
Cj4gPiArICAgICBpZiAoKHZhbCAmIEJJVF9DSChQV01fQllQQVNTLCBwd20tPmh3cHdtKSkgJiYK
PiA+ICsgICAgICAgICBzdW40aV9wd20tPmRhdGEtPmhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQp
IHsKPiA+ICsgICAgICAgICAgICAgc3RhdGUtPnBlcmlvZCA9IERJVl9ST1VORF9VUF9VTEwoTlNF
Q19QRVJfU0VDLCBjbGtfcmF0ZSk7Cj4gPiArICAgICAgICAgICAgIHN0YXRlLT5kdXR5X2N5Y2xl
ID0gRElWX1JPVU5EX1VQX1VMTChzdGF0ZS0+cGVyaW9kLCAyKTsKPiA+ICsgICAgICAgICAgICAg
c3RhdGUtPnBvbGFyaXR5ID0gUFdNX1BPTEFSSVRZX05PUk1BTDsKPiA+ICsgICAgICAgICAgICAg
c3RhdGUtPmVuYWJsZWQgPSB0cnVlOwo+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPiArICAg
ICB9Cj4gPiArCj4gPiAgICAgICBpZiAoKFBXTV9SRUdfUFJFU0NBTCh2YWwsIHB3bS0+aHdwd20p
ID09IFBXTV9QUkVTQ0FMX01BU0spICYmCj4gPiAgICAgICAgICAgc3VuNGlfcHdtLT5kYXRhLT5o
YXNfcHJlc2NhbGVyX2J5cGFzcykKPiA+ICAgICAgICAgICAgICAgcHJlc2NhbGVyID0gMTsKPiA+
IEBAIC0xNDksMTMgKzE2OCwyNCBAQCBzdGF0aWMgdm9pZCBzdW40aV9wd21fZ2V0X3N0YXRlKHN0
cnVjdCBwd21fY2hpcCAqY2hpcCwKPiA+Cj4gPiAgc3RhdGljIGludCBzdW40aV9wd21fY2FsY3Vs
YXRlKHN0cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtLAo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgcHdtX3N0YXRlICpzdGF0ZSwKPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgdTMyICpkdHksIHUzMiAqcHJkLCB1bnNpZ25lZCBpbnQgKnBy
c2NscikKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyICpkdHksIHUzMiAqcHJk
LCB1bnNpZ25lZCBpbnQgKnByc2NsciwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Ym9vbCAqYnlwYXNzKQo+ID4gIHsKPiA+ICAgICAgIHU2NCBjbGtfcmF0ZSwgZGl2ID0gMDsKPiA+
ICAgICAgIHVuc2lnbmVkIGludCBwdmFsLCBwcmVzY2FsZXIgPSAwOwo+ID4KPiA+ICAgICAgIGNs
a19yYXRlID0gY2xrX2dldF9yYXRlKHN1bjRpX3B3bS0+Y2xrKTsKPiA+Cj4gPiArICAgICAqYnlw
YXNzID0gc3VuNGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0ICYmCj4gPiAr
ICAgICAgICAgICAgICAgc3RhdGUtPmVuYWJsZWQgJiYKPiA+ICsgICAgICAgICAgICAgICAoc3Rh
dGUtPnBlcmlvZCAqIGNsa19yYXRlID49IE5TRUNfUEVSX1NFQykgJiYKPiA+ICsgICAgICAgICAg
ICAgICAoc3RhdGUtPnBlcmlvZCAqIGNsa19yYXRlIDwgMiAqIE5TRUNfUEVSX1NFQykgJiYKPiA+
ICsgICAgICAgICAgICAgICAoc3RhdGUtPmR1dHlfY3ljbGUgKiBjbGtfcmF0ZSAqIDIgPj0gTlNF
Q19QRVJfU0VDKTsKPiA+ICsKPiA+ICsgICAgIC8qIFNraXAgY2FsY3VsYXRpb24gb2Ygb3RoZXIg
cGFyYW1ldGVycyBpZiB3ZSBieXBhc3MgdGhlbSAqLwo+ID4gKyAgICAgaWYgKCpieXBhc3MpCj4g
PiArICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gKwo+ID4gICAgICAgaWYgKHN1bjRpX3B3bS0+
ZGF0YS0+aGFzX3ByZXNjYWxlcl9ieXBhc3MpIHsKPiA+ICAgICAgICAgICAgICAgLyogRmlyc3Qs
IHRlc3Qgd2l0aG91dCBhbnkgcHJlc2NhbGVyIHdoZW4gYXZhaWxhYmxlICovCj4gPiAgICAgICAg
ICAgICAgIHByZXNjYWxlciA9IFBXTV9QUkVTQ0FMX01BU0s7Cj4gPiBAQCAtMjA2LDYgKzIzNiw3
IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3Ry
dWN0IHB3bV9kZXZpY2UgKnB3bSwKPiA+ICAgICAgIGludCByZXQ7Cj4gPiAgICAgICB1bnNpZ25l
ZCBpbnQgZGVsYXlfdXMsIHByZXNjYWxlcjsKPiA+ICAgICAgIHVuc2lnbmVkIGxvbmcgbm93Owo+
ID4gKyAgICAgYm9vbCBieXBhc3M7Cj4gPgo+ID4gICAgICAgcHdtX2dldF9zdGF0ZShwd20sICZj
c3RhdGUpOwo+ID4KPiA+IEBAIC0yMjAsNyArMjUxLDggQEAgc3RhdGljIGludCBzdW40aV9wd21f
YXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAo+ID4g
ICAgICAgc3Bpbl9sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7Cj4gPiAgICAgICBjdHJsID0g
c3VuNGlfcHdtX3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKPiA+Cj4gPiAtICAgICBy
ZXQgPSBzdW40aV9wd21fY2FsY3VsYXRlKHN1bjRpX3B3bSwgc3RhdGUsICZkdXR5LCAmcGVyaW9k
LCAmcHJlc2NhbGVyKTsKPiA+ICsgICAgIHJldCA9IHN1bjRpX3B3bV9jYWxjdWxhdGUoc3VuNGlf
cHdtLCBzdGF0ZSwgJmR1dHksICZwZXJpb2QsICZwcmVzY2FsZXIsCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICZieXBhc3MpOwo+ID4gICAgICAgaWYgKHJldCkgewo+ID4gICAg
ICAgICAgICAgICBkZXZfZXJyKGNoaXAtPmRldiwgInBlcmlvZCBleGNlZWRzIHRoZSBtYXhpbXVt
IHZhbHVlXG4iKTsKPiA+ICAgICAgICAgICAgICAgc3Bpbl91bmxvY2soJnN1bjRpX3B3bS0+Y3Ry
bF9sb2NrKTsKPiA+IEBAIC0yMjksNiArMjYxLDE4IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2Fw
cGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKPiA+ICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICAgICAgIH0KPiA+Cj4gPiArICAgICBpZiAoc3Vu
NGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KSB7Cj4gPiArICAgICAgICAg
ICAgIGlmIChieXBhc3MpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjdHJsIHw9IEJJVF9D
SChQV01fQllQQVNTLCBwd20tPmh3cHdtKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAvKiBX
ZSBjYW4gc2tpcCBvdGhlciBwYXJhbWV0ZXIgKi8KPiA+ICsgICAgICAgICAgICAgICAgICAgICBz
dW40aV9wd21fd3JpdGVsKHN1bjRpX3B3bSwgY3RybCwgUFdNX0NUUkxfUkVHKTsKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBzcGluX3VubG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOwo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gKyAgICAgICAgICAgICB9IGVsc2Ug
ewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGN0cmwgJj0gfkJJVF9DSChQV01fQllQQVNTLCBw
d20tPmh3cHdtKTsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKyAgICAgfQo+Cj4gVGhpcyBjb3Vs
ZCBiZSBzaW1wbGlmaWVkIHRvOgo+Cj4gICAgICAgICBpZiAoYnlwYXNzKSB7Cj4gICAgICAgICAg
ICAgICAgIGN0cmwgfD0gQklUX0NIKFBXTV9CWVBBU1MsIHB3bS0+aHdwd20pOwo+ICAgICAgICAg
ICAgICAgICAvKgo+ICAgICAgICAgICAgICAgICAgKiBPdGhlciBwYXJhbWV0ZXJzIGFyZSBub3Qg
cmVsZXZhbnQgaW4gdGhpcyBtb2RlIGFuZCBzbwo+ICAgICAgICAgICAgICAgICAgKiB3cml0aW5n
IHRoZW0gY2FuIGJlIHNraXBwZWQKPiAgICAgICAgICAgICAgICAgICovCj4gICAgICAgICAgICAg
ICAgIHN1bjRpX3B3bV93cml0ZWwoc3VuNGlfcHdtLCBjdHJsLCBQV01fQ1RSTF9SRUcpOwo+ICAg
ICAgICAgICAgICAgICBzcGluX3VubG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOwo+ICAgICAg
ICAgICAgICAgICByZXR1cm4gMDsKPiAgICAgICAgIH0gZWxzZSB7Cj4gICAgICAgICAgICAgICAg
IGN0cmwgJj0gfkJJVF9DSChQV01fQllQQVNTLCBwd20tPmh3cHdtKTsKPiAgICAgICAgIH0KPgo+
IHdoaWNoIGhhcyB0aGUgYWR2YW50YWdlKD8pIHRoYXQgdGhlIGJ5cGFzcyBiaXQgaXMgYWxzbyAo
bW9yZSBvYnZpb3VzbHkpCj4gY2xlYXJlZCBmb3IgU29DcyB0aGF0IGRvbid0IHN1cHBvcnQgaXQg
YW5kIGl0IHJlZHVjZXMgdGhlIGluZGVudGlvbgo+IGxldmVsLgoKVGhpcyBiaXQgaXMgbm90IGd1
YXJhbnRlZWQgdG8gYmUgcmVzZXJ2ZWQgZm9yIGFsbCB0aGUgU29DIHZhcmlhbnRzLgoKSSBkb24n
dCB0aGluayBpdCdzIGEgZ29vZCBpZGVhIHRvIHNldCB0byAwIGEgYml0IHdoaWNoIGlzIHVuZGVm
aW5lZC4KClJlZ2FyZHMsCkNsZW1lbnQKCj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgo+IC0tCj4g
UGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdlIEtsZWluZS1L
w7ZuaWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAg
ICAgICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUvIHwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
