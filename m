Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111735984E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wCvPUDKIF2ZoH2A/uHNsRumOXKzNFFBfkwdxu4vjgs=; b=DxNMmDIBOjzpJn
	UnBfrqa0CEGkTInVcvWXmbsPWxUKZZwbYMemrm0rT1aAnAgOZTCaWoeKluH+xLKcB2KxmRlGBvWYL
	31l5gYWeqFTuixqmoMqV1yqFOCWeAWoFGUnY4a05qul6uK//9SnkLglry/aCX8B/DKGJdMsaGvm54
	c0xhYUKPj8KbDyME+mNGhjWWdFhnDzSrkSvAfVIGd58dHQob8aOpN6ENv/+E3uzZ7W8Fs0kv92LAS
	u10FEnmhe5sHdkncph8U0iySGEEapzZdWXeD6xI8E4rwSolvsaXMZasD8W6YwxoQBKviPuXe6aA8Z
	VLuEi+JA7R52QdxNorHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgo4Y-0004hz-0J; Fri, 28 Jun 2019 10:25:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgo43-00043z-WD
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:25:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id z23so8468602wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 03:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+gSDQlprC3wNVZJTkEDEwtkD07MIUVX5qMZNbzm3ynQ=;
 b=PxCcngHcfZRARVD6NmZbBJD4QlvgXY6SEXWfEYyJypBHAtTPANXPXiB0N778DL4zG5
 /6tf2wO9OHv+aH1YOdgfj5j4OsFTc5jZPNRAEzsCHN45rF4yDVTMWTL7UJpaEukHjOff
 PryTnfTmZC95X9cgOK8ky/KSdrCi3SyuYjbE5qtZOMk2332CNK4/UDKCkHSYbRZGwmsr
 Jjgq1TMLfUOn5wNKSpo4oQU7/Yg5QKFJjkFPTL9LZLUjBPqtjVsIqs+CtS1MHoXSyNv7
 x2GzJQSiMZbmcV/Vfcuuxbgkscrj14UApQqt1b4bYgcWNTC2WoXKrnsjaBWB033xS8Fa
 JZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+gSDQlprC3wNVZJTkEDEwtkD07MIUVX5qMZNbzm3ynQ=;
 b=OORYQDvQ2fyNcNSjhrBJXclklCsI9LmijIewz9CSO5oS+Hke2vKqFhMRybv8RmV9FN
 2Ok1TjffTz9uaDWBM1fFVqFwYf6UcqvITBNg4Csc3THhEnNGJGs4ECfiEnAkdqNBlJOS
 VipXuqqxyj7lRWMccZ7jxIAt1xx9mzgtXvDKWtbvbGjCgz9qKwT5QYCZhw9CG3qMBRfE
 i4D6W8wRjNLdz2dlgLHPFv1fmR29BNq1yXISwVwwWCRBov1pSKcW32SUQaatkUqLN2iP
 9dGXqcz/KJNeIeaLZsW3dStptUPIg57Z3usB4WKAt9KB4CJQ2Cn1HF8slB3DBfA2DPyJ
 jx1w==
X-Gm-Message-State: APjAAAVwdcFwXwrSIGHfWo83EPgbwCWJogxQBoZIA9+jclHwC5GObc+c
 1ZutZKeJbA+UFSaQT/8vdbhlfwCGPJ8eiiwvrq0=
X-Google-Smtp-Source: APXvYqxM13BhXdAFu5qp47wTYBemlGsB9zTErhcOOBhxiB0lkff6jlFmCfZ1EdLSkLO+KM5c9OxqtFufIMjqnL37XcM=
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr6191140wmd.87.1561717504973; 
 Fri, 28 Jun 2019 03:25:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
 <20190614081650.11880-3-daniel.baluta@nxp.com>
 <CAL_JsqJKgMB1PNA33gmFju4AQTc2WaSBoOGQExVaGd9LZRmk_g@mail.gmail.com>
 <CAEnQRZBNA4ndSL1vMStHemYkzt9TxqjgdWWjqFwnBFQ+ha+egA@mail.gmail.com>
 <CAL_JsqJQRbuWKgON+ukZ3GRwyq8SvTZ=PRGwMhQjAxKPSP-Fkw@mail.gmail.com>
 <CAEnQRZCjp9dUt0JTjhN0CnV0+Xzc+q1EHCnJn_TNOQoUWZBTsg@mail.gmail.com>
 <CAL_Jsq+rWn+vVfBGdAB23Xu0RaFV1HwSdBbfj9F4M3W1EUo9_A@mail.gmail.com>
In-Reply-To: <CAL_Jsq+rWn+vVfBGdAB23Xu0RaFV1HwSdBbfj9F4M3W1EUo9_A@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 28 Jun 2019 13:24:53 +0300
Message-ID: <CAEnQRZCLUKxWD31bMS_Smc-dj0W0qWz7YsO6txftWX9nm9R_6Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add DSP IPC binding support
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_032508_108450_3F5175A0 
X-CRM114-Status: GOOD (  30.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgNjo1OSBQTSBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgSnVuIDI3LCAyMDE5IGF0IDE6NDAgQU0gRGFuaWVs
IEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IDxzbmlwPgo+
ID4KPiA+ID4gPiA+ID4gKyAgbWJveGVzOgo+ID4gPiA+ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+
ID4gPiA+ID4gPiArICAgICAgTGlzdCBvZiBwaGFuZGxlIG9mIDIgTVUgY2hhbm5lbHMgZm9yIFRY
REIsIDIgTVUgY2hhbm5lbHMgZm9yIFJYREIKPiA+ID4gPiA+ID4gKyAgICAgIChzZWUgbWFpbGJv
eC9mc2wsbXUudHh0KQo+ID4gPiA+ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ID4gPgo+ID4g
PiA+ID4gU2hvdWxkIGJlIDQ/Cj4gPiA+ID4KPiA+ID4gPiBBY3R1YWxseSBpcyBqdXN0IGEgbGlz
dCB3aXRoIDEgaXRlbS4gSSB0aGluayBpcyB0aGUgdGVybWlub2xvZ3k6Cj4gPiA+ID4KPiA+ID4g
PiBZb3UgY2FuIGhhdmUgYW4gZXhhbXBsZSBoZXJlIG9mIHRoZSBtYm94ZXMgZGVmaW5lZCBmb3Ig
U0NVLgo+ID4gPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rl
ci9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhwLmR0c2kjTDEyMwo+ID4gPgo+
ID4gPiBtYm94ZXMgPSA8JmxzaW9fbXUxIDAgMAo+ID4gPiAmbHNpb19tdTEgMCAxCj4gPiA+ICZs
c2lvX211MSAwIDIKPiA+ID4gJmxzaW9fbXUxIDAgMwo+ID4gPiAmbHNpb19tdTEgMSAwCj4gPiA+
ICZsc2lvX211MSAxIDEKPiA+ID4gJmxzaW9fbXUxIDEgMgo+ID4gPiAmbHNpb19tdTEgMSAzCj4g
PiA+ICZsc2lvX211MSAzIDM+Owo+ID4gPgo+ID4gPiBMb2dpY2FsbHksIHRoaXMgaXMgOSBlbnRy
aWVzIGFuZCBlYWNoIGVudHJ5IGlzIDMgY2VsbHMgKCBvciBwaGFuZGxlCj4gPiA+IHBsdXMgMiBj
ZWxscykuIE1vcmUgYmVsb3cuLi4KPiA+Cj4gPiBPay4uCj4gPgo+ID4gPgo+ID4gPiA+ID4gPiAr
Cj4gPiA+ID4gPiA+ICsgIG1ib3gtbmFtZXMKPiA+ID4KPiA+ID4gQWxzbywgbWlzc2luZyBhICc6
JyBoZXJlLiBUaGlzIHdvbid0IGJ1aWxkLiBNYWtlIHN1cmUgeW91IGJ1aWxkIHRoaXMKPiA+ID4g
KG1ha2UgZHRfYmluZGluZ19jaGVjaykuIFNlZQo+ID4gPiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvd3JpdGluZy1zY2hlbWFzLm1kLgo+ID4gPgo+ID4gRml4ZWQgaW4gdjIuIEF3ZXNvbWUhCj4g
Pgo+ID4gSSB0aG91Z2h0IHRoYXQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rz
cC9mc2wsZHNwX2lwYy55YW1sCj4gPiBpcyBwdXJlbHkgZGVjb3JhdGl2ZSBhbmQgdXNlZCBhcyBh
biBleGFtcGxlLiBCdXQgaXQncyBhY3R1YWxseSB0aGUgc2NoZW1hIGZvcgo+ID4gdGhlIG5ld2x5
IHlhbWwgZHRzLCByaWdodD8KPgo+IFllcywgdGhhdCdzIHRoZSBwb2ludC4gRW5mb3JjaW5nIHRo
YXQgZHRzIGZpbGVzIGNvbnRhaW4gd2hhdCB0aGUKPiBiaW5kaW5nIGRvY3Mgc2F5Lgo+Cj4gPgo+
ID4gVXNlZCBtYWtlIGR0X2JpbmRpbmdfY2hlY2sgZXZlcnl0aGluZyBsb29rcyBPSyBub3cuCj4g
Pgo+ID4gPiA+ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gPiA+ID4gPiArICAgICAgTWFpbGJv
eGVzIG5hbWVzCj4gPiA+ID4gPiA+ICsgICAgYWxsT2Y6Cj4gPiA+ID4gPiA+ICsgICAgICAtICRy
ZWY6ICIvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9zdHJpbmciCj4gPiA+ID4gPgo+
ID4gPiA+ID4gTm8gbmVlZCBmb3IgdGhpcywgJyotbmFtZXMnIGFscmVhZHkgaGFzIGEgZGVmaW5l
ZCB0eXBlLgo+ID4gPiA+IFNvLCBzaG91bGQgSSByZW1vdmUgdGhlIGFib3ZlIHR3byBsaW5lcyA/
Cj4gPiA+Cj4gPiA+IEFjdHVhbGx5LCBhbGwgNC4gVGhlcmUncyBubyBuZWVkIHRvIGRlc2NyaWJl
IHdoYXQgJ21ib3gtbmFtZXMnIGlzLgo+ID4gPgo+ID4gPiA+ID4gPiArICAgICAgLSBlbnVtOiBb
ICJ0eGRiMCIsICJ0eGRiMSIsICJyeGRiMCIsICJyeGRiMSIgXQo+ID4gPiA+ID4KPiA+ID4gPiA+
IFNob3VsZCBiZSBhbiAnaXRlbXMnIGxpc3Qgd2l0aCA0IGVudHJpZXM/Cj4gPiA+ID4KPiA+ID4g
PiBMZXQgbWUgYmV0dGVyIHJlYWQgdGhlIHlhbWwgc3BlYy4gQnV0ICJpdGVtcyIgbGlzdCBpbmRl
ZWQgc291bmRzIGJldHRlci4KPiA+ID4KPiA+ID4gV2hhdCB5b3Ugc2hvdWxkIGVuZCB1cCB3aXRo
IGlzOgo+ID4gPgo+ID4gPiBpdGVtczoKPiA+ID4gICAtIGNvbnN0OiB0eGRiMAo+ID4gPiAgIC0g
Y29uc3Q6IHR4ZGIxCj4gPiA+ICAgLSBjb25zdDogcnhkYjAKPiA+ID4gICAtIGNvbnN0OiByeGRi
MQo+ID4gPgo+ID4gPiBUaGlzIGlzIHNheWluZyB5b3UgaGF2ZSA0IHN0cmluZ3MgaW4gdGhlIGxp
c3RlZCBvcmRlci4gVGhlIGVudW0geW91Cj4gPiA+IGhhZCB3b3VsZCBiZSBhIHNpbmdsZSBzdHJp
bmcgb2Ygb25lIG9mIHRoZSA0IHZhbHVlcy4KPiA+ID4KPiA+IEkgc2VlISBUaGFua3MuCj4gPgo+
ID4gPiA+ID4gPiArcmVxdWlyZWQ6Cj4gPiA+ID4gPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gPiA+
ID4gPiArICAtIG1ib3hlcwo+ID4gPiA+ID4gPiArICAtIG1ib3gtbmFtZXMKPiA+ID4gPiA+Cj4g
PiA+ID4gPiBUaGlzIHNlZW1zIGluY29tcGxldGUuIEhvdyBkb2VzIG9uZSBib290IHRoZSBEU1A/
IExvYWQgZmlybXdhcmU/IE5vCj4gPiA+ID4gPiByZXNvdXJjZXMgdGhhdCBMaW51eCBoYXMgdG8g
bWFuYWdlLiBTaGFyZWQgbWVtb3J5Pwo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBpcyBvbmx5IHRoZSBJ
UEMgbWFpbGJveGVzIHVzZWQgYnkgRFNQIHRvIGNvbW11bmljYXRlIHdpdGggTGludXguIFRoZQo+
ID4gPiA+IGxvYWRpbmcgb2YgdGhlIGZpcm13YXJlLCB0aGUgcmVzb3VyY2VzIG5lZWRlZCB0byBi
ZSBtYW5hZ2VkIGJ5IExpbnV4LCBldGMKPiA+ID4gPiBhcmUgcGFydCBvZiB0aGUgRFNQIG5vZGUu
Cj4gPiA+Cj4gPiA+IFlvdSBzaG91bGQganVzdCBhZGQgdGhlIG1haWxib3hlcyB0byB0aGUgRFNQ
IG5vZGUgdGhlbi4gSSBzdXBwb3NlIHlvdQo+ID4gPiBkaWRuJ3QgYmVjYXVzZSB5b3Ugd2FudCAy
IGRyaXZlcnM/IElmIHNvLCB0aGF0J3MgdGhlIE9TJ3MgcHJvYmxlbSBhbmQKPiA+ID4gbm90IHBh
cnQgb2YgRFQuIEEgTGludXggZHJpdmVyIGNhbiBpbnN0YW50aWF0ZSBkZXZpY2VzIGZvciBvdGhl
cgo+ID4gPiBkcml2ZXJzLgo+ID4KPiA+IFllcywgSSB3YW50IHRoZSBEU1AgSVBDIGRyaXZlciB0
byBiZSBzZXBhcmF0ZWQuIEFuZCB0aGVuIHRoZSBTT0YgTGludXgKPiA+IGRyaXZlciB0aGF0IG5l
ZWRzCj4gPiB0byBjb21tdW5pY2F0ZSB3aXRoIERTUCBqdXN0IGdldHMgYSBoYW5kbGUgdG8gRFNQ
IElQQyBkcml2ZXIgYW5kIGRvZXMKPiA+IHRoZSBjb21tdW5pY2F0aW9uLgo+ID4KPiA+IGR0cyBy
ZWxldmFudCBub2RlcyBsb29rIGxpa2UgdGhpcyBub3c6Cj4gPgo+ID4gwrsgICAgICAgZHNwX2lw
YzogZHNwX2lwYyB7Cj4gPiDCuyAgICAgICDCuyAgICAgICBjb21wYXRpYmxlID0gImZzbCxpbXg4
cXhwLWRzcCI7Cj4gPiDCuyAgICAgICDCuyAgICAgICBtYm94LW5hbWVzID0gInR4ZGIwIiwgInR4
ZGIxIiwKPiA+IMK7ICAgICAgIMK7ICAgICAgIMK7ICAgICAgICAgICAgInJ4ZGIwIiwgInJ4ZGIx
IjsKPiA+IMK7ICAgICAgIMK7ICAgICAgIG1ib3hlcyA9IDwmbHNpb19tdTEzIDIgMD4sCj4gPiDC
uyAgICAgICDCuyAgICAgICDCuyAgICAgICAgPCZsc2lvX211MTMgMiAxPiwKPiA+IMK7ICAgICAg
IMK7ICAgICAgIMK7ICAgICAgICA8JmxzaW9fbXUxMyAzIDA+LAo+ID4gwrsgICAgICAgwrsgICAg
ICAgwrsgICAgICAgIDwmbHNpb19tdTEzIDMgMT47Cj4gPiDCuyAgICAgICB9Owo+ID4KPiA+IMK7
ICAgICAgIGFkbWFfZHNwOiBkc3BANTk2ZTgwMDAgewo+ID4gwrsgICAgICAgwrsgICAgICAgY29t
cGF0aWJsZSA9ICJmc2wsaW14OHF4cC1zb2YtZHNwIjsKPiA+IMK7ICAgICAgIMK7ICAgICAgIHJl
ZyA9IDwweDU5NmU4MDAwIDB4ODgwMDA+Owo+ID4gwrsgICAgICAgwrsgICAgICAgcmVzZXJ2ZWQt
cmVnaW9uID0gPCZkc3BfcmVzZXJ2ZWQ+Owo+ID4gwrsgICAgICAgwrsgICAgICAgaXBjID0gPCZk
c3BfaXBjPjsKPiA+IMK7ICAgICAgIH07Cj4gPgo+ID4gWW91ciBzdWdnZXN0b24gd291bGQgYmUg
dG8gaGF2ZSBzb21ldGhpbmcgbGlrZSB0aGlzOgo+ID4KPiA+IMK7ICAgICAgIGFkbWFfZHNwOiBk
c3BANTk2ZTgwMDAgewo+ID4gwrsgICAgICAgwrsgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14
OHF4cC1zb2YtZHNwIjsKPiA+IMK7ICAgICAgIMK7ICAgICAgIHJlZyA9IDwweDU5NmU4MDAwIDB4
ODgwMDA+Owo+ID4gwrsgICAgICAgwrsgICAgICAgcmVzZXJ2ZWQtcmVnaW9uID0gPCZkc3BfcmVz
ZXJ2ZWQ+Owo+ID4gwrsgICAgICAgICAgICAgICAgbWJveC1uYW1lcyA9ICJ0eGRiMCIsICJ0eGRi
MSIsCj4gPiDCuyAgICAgICDCuyAgICAgICDCuyAgICAgICAgICAgICJyeGRiMCIsICJyeGRiMSI7
Cj4gPiDCuyAgICAgICDCuyAgICAgICBtYm94ZXMgPSA8JmxzaW9fbXUxMyAyIDA+LAo+ID4gwrsg
ICAgICAgwrsgICAgICAgwrsgICAgICAgIDwmbHNpb19tdTEzIDIgMT4sCj4gPiDCuyAgICAgICDC
uyAgICAgICDCuyAgICAgICAgPCZsc2lvX211MTMgMyAwPiwKPiA+IMK7ICAgICAgIMK7ICAgICAg
IMK7ICAgICAgICA8JmxzaW9fbXUxMyAzIDE+Owo+ID4gwrsgICAgICAgfTsKPiA+Cj4gPiBOb3Qg
c3VyZSBleGFjdGx5IGhvdyB0byBpbnN0YW50aWF0ZSBJUEMgRFNQIGRyaXZlciB0aGVuLgo+Cj4g
RFQgaXMgbm90IHRoZSBvbmx5IHdheSB0byBpbnN0YW50aWF0ZSBkcml2ZXJzLiBBIGRyaXZlciBj
YW4gY3JlYXRlIGEKPiBwbGF0Zm9ybSBkZXZpY2UgaXRzZWxmIHdoaWNoIHdpbGwgdGhlbiBpbnN0
YW50aWF0ZSBhIDJuZCBkcml2ZXIuCj4KPiBQcmVzdW1hYmx5IHRoZSBEU1AgbmVlZHMgdG8gYmUg
Ym9vdGVkLCByZXNvdXJjZXMgZW5hYmxlZCwgYW5kIGZpcm13YXJlCj4gbG9hZGVkIGJlZm9yZSBJ
UEMgd2lsbCB3b3JrLiBUaGUgRFNQIGRyaXZlciBjb250cm9sbGluZyB0aGUgbGlmZXRpbWUKPiBv
ZiB0aGUgSVBDIGRyaXZlciBpcyB0aGUgcmlnaHQgd2F5IHRvIG1hbmFnZSB0aGUgZGVwZW5kZW5j
aWVzLgoKSSBzZWUgeW91ciBwb2ludC4gVGhpcyB3YXkgSSB3aWxsIHJlc29sdmUgdGhlIGRlcGVu
ZGVuY3kgcHJvYmxlbS4gU28gZmFyClNPRiBkcml2ZXIgd2FzIHByb2JlZCBiZWZvcmUgSVBDIGRy
aXZlciBhbmQgSSBuZWVkZWQgdG8gcmV0dXJuIC1FUFJPQkVfREVGRkVSLgoKVGhlICJzYWQiIHBh
cnQgaXMgdGhhdCBTT0YgZHJpdmVyIGFsc28gbmVlZHMgaW4gdGhlIHNhbWUgd2F5IHRoZQpTeXN0
ZW0gQ29udHJvbGxlcgpGaXJtd2FyZSBkcml2ZXIgdG8gYmUgcHJvYmVkLgoKQnV0IHRoZSBTQyBk
cml2ZXIgaXMgYWxyZWFkeSBhY2NlcHRlZCB3aXRoIGFuIGludGVyZmFjZSB0aGF0IGxvb2tzCmxp
a2UgbXkgb2xkIGFwcHJvYWNoLgoKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUu
Mi1yYzYvc291cmNlL2RyaXZlcnMvZmlybXdhcmUvaW14L2lteC1zY3UuYyNMOTMKCk9oLCB3ZWxs
Lgo+Cj4gPgo+ID4gSSBhbHJlYWR5IGhhdmUgcHJlcGFyZWQgdjIgd2l0aCBtb3N0IG9mIHlvdXIg
ZmVlZGJhY2sgaW5jb3Jwb3JhdGVkLAo+ID4gYnV0IG5vdCB0aGlzIGxhdGVzdAo+ID4gY2hhbmdl
IHdpdGggbW92aW5nIG1ib3hlcyBpbnNpZGUgZHNwIGRyaXZlci4KPiA+Cj4gPiBNb3JlIHRoYW4g
dGhhdCBJIGhhdmUgZm9sbG93ZWQgdGhlIG1vZGVsIG9mIFNDRlcgSVBDIGFuZCBoYXZpbmcgdG8K
PiA+IGRpZmZlcmVudCBhcHByb2FjaAo+ID4gZm9yIHNpbWlsYXIgSVBDIG1lY2hhbmlzbSBpcyBh
IGxpdHRsZSBiaXQgY29uZnVzaW5nLgo+Cj4gU0MgaXMgc3lzdGVtIGNvbnRyb2xsZXI/IE1heWJl
IEkgbWlzc2VkIGl0LCBidXQgSSBkb24ndCB0aGluayBzeXN0ZW0KPiBjb250cm9sbGVycyB1c3Vh
bGx5IGhhdmUgMiBub2Rlcy4gWW91IG9ubHkgaGF2ZSB0aGUgY29tbXVuaWNhdGlvbnMKPiBpbnRl
cmZhY2UgZXhwb3NlZCBhcyB0aGUgU0MgcHJvdmlkZXMgc2VydmljZXMgdG8gTGludXggYW5kIExp
bnV4Cj4gZG9lc24ndCBtYW5hZ2UgdGhlIFNDIHJlc291cmNlcy4KClllcywgU0MgaXMgdGhlIHN5
c3RlbSBjb250cm9sbGVyLgoKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMi1y
YzYvc291cmNlL2RyaXZlcnMvZmlybXdhcmUvaW14L2lteC1zY3UuYwoKSSBzZWUgeW91ciBwb2lu
dCBvZiBvbmx5IGhhdmUgMSBub2RlIGFuZCBJIHdpbGwgaW1wbGVtZW50IGl0IGxpa2UgdGhhdC4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
