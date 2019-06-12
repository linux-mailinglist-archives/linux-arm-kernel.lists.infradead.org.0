Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E769742933
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3eDevYUgZsL5zrxbgf471mKWzTKMCaG3RyZX4KRUtM=; b=BVuZdg4+Jr6c9x
	6A0JsE1souV0GDbDUDOoiW0uFSupMsLzgQ3CIf71SrMWjS9u5AwLxSFOLLKTFNGOEZyF8sJnFIlOm
	Lv8xu74EQEZFlpkeH2wofaHIrQGDhk1mkQ96WY5mEOU/EJyC1cUCOJ90uOn6KAfd1ssdbxhpxP/1J
	he+zdBqXe1w4zY+mF5vdDaggOHUHHPIisZvLUT8xsX1jwk9K75kBXPTktVpu09QOpPmcG4bw9d+hO
	9h+ghw5NuB5wj4dw2byfF8G7jYTkB1JxPxKqj1qHqOg20WuBPoiySvIrqnIm0DRCBnpuWz6g/n9Td
	7sAyUzeFiwu1nS5OzQ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4Gv-00011V-Ch; Wed, 12 Jun 2019 14:30:41 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4Fw-0007Sx-EG
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:29:42 +0000
Received: by mail-ed1-x542.google.com with SMTP id m10so26081029edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0TlQYzzrPp2RCUdFN4WFG/hTYICl/lUW7zy7q9unsQo=;
 b=nY7iUmbW67xrSLerpBKJQ+5gIrIxAkvzyF4JNnkEx64/lWsHdAmJopVR4Zn9u3oJsI
 JOllpgnVQm6ozMN4M6hvnglYR5E5LHSd5Cp762HV6SRiA7W2Yd0vv3kqB6k1lD5MAKqp
 WtG+8m7i6X/7y5e+NHD7RCpgbHCO95ZVLx4SwDdv6tA2uLw4OH6/SjG/HJAcil4FFHcb
 MVTLkW0tXX1uFB8OXW89z5hrOTS/4VVuPi5MJ1x+XbAstFQuE/KESAfYxX7jhGVQPNuA
 atWmHZ8qfV5KDykTydK5EDDfNkUIYgAvXjtpL6+UKxZZaNRrzkwCA9710nOQZCkpwVFR
 tKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0TlQYzzrPp2RCUdFN4WFG/hTYICl/lUW7zy7q9unsQo=;
 b=gQgUjaNd/zTOs1nSjks+HJvdCoRcYyLLkQfR4fQo7I7N3kZF91k799EX0Q18Lj7Osf
 7micMcUkqUEodDCbHxuQR1IIqypbRqT7szITq3EcdPF8u+MnXO6jmmGnirKsIYuhl45y
 cVXNQB8rkGgI5y6G0RgU282zYUtwz/Z5RfcVaHn3mPbI02At/qhaW6VNuFxMG++/tYJL
 +ErLbCuA5oB0xHpYPHlyW2Jmi8zguLk9I7iuw31CcWPUstlgekOCIh/3/GDEZfGjlbpN
 2hiDsDW7KCeT6eC5LGmxwX6XfDB3egA8im2AdEupAu4Tm69mKtTftcKJ0xd+UFOLYVvH
 vc3A==
X-Gm-Message-State: APjAAAURKO0VsNthdr2EFSJfCRukMEoHQV49B9Ka4ZMN0ZN7Ju3teWPd
 6w8cmYLKMEvFrXFcISIKgIegIlpCZlFKXI+3FrzMqg==
X-Google-Smtp-Source: APXvYqypOhSahWrimPdnrCOheH/4lmgx081GS3O1q0rBm7ZI3rE65UZG2S2Y0fI4iozIoKEczfDWuMfXF/6pfha4Y8k=
X-Received: by 2002:a50:972a:: with SMTP id c39mr52675075edb.46.1560349777369; 
 Wed, 12 Jun 2019 07:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190606090612.16685-1-igor.opaniuk@gmail.com>
 <3b84f3cc6cd5399f25ebd8e1c8559c58@agner.ch>
 <CAByghJZJzFN9c9V-o=SV0z07++RPqsB0R8MTsovbtLr3vqJgyw@mail.gmail.com>
 <20190612132705.GJ11086@dragon>
In-Reply-To: <20190612132705.GJ11086@dragon>
From: Igor Opaniuk <igor.opaniuk@gmail.com>
Date: Wed, 12 Jun 2019 17:29:26 +0300
Message-ID: <CAByghJaLgY9tStud7_JRoOF4s9fPtzn=mQu=6zvSSO4W4UF6Dw@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ull-colibri: enable UHS-I for USDHC1
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072940_513294_96E2A032 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marcel Ziswiler <marcel@ziswiler.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgNDozOSBQTSBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMDM6NDk6MDNQTSArMDMw
MCwgSWdvciBPcGFuaXVrIHdyb3RlOgo+ID4gSGkgU3RlZmFuLAo+ID4KPiA+IE9uIFdlZCwgSnVu
IDEyLCAyMDE5IGF0IDM6MTcgUE0gU3RlZmFuIEFnbmVyIDxzdGVmYW5AYWduZXIuY2g+IHdyb3Rl
Ogo+ID4gPgo+ID4gPiBPbiAwNi4wNi4yMDE5IDExOjA2LCBJZ29yIE9wYW5pdWsgd3JvdGU6Cj4g
PiA+ID4gRnJvbTogSWdvciBPcGFuaXVrIDxpZ29yLm9wYW5pdWtAdG9yYWRleC5jb20+Cj4gPiA+
ID4KPiA+ID4gPiBBbGxvd3MgdG8gdXNlIHRoZSBTRCBpbnRlcmZhY2UgYXQgYSBoaWdoZXIgc3Bl
ZWQgbW9kZSBpZiB0aGUgY2FyZAo+ID4gPiA+IHN1cHBvcnRzIGl0LiBGb3IgdGhpcyB0aGUgc2ln
bmFsaW5nIHZvbHRhZ2UgaXMgc3dpdGNoZWQgZnJvbSAzLjNWIHRvCj4gPiA+ID4gMS44ViB1bmRl
ciB0aGUgdXNkaGMxJ3MgZHJpdmVycyBjb250cm9sLgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogSWdvciBPcGFuaXVrIDxpZ29yLm9wYW5pdWtAdG9yYWRleC5jb20+Cj4gPiA+ID4gLS0t
Cj4gPiA+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpICAgICAgICAgICAgICAgICAg
fCAgNCArKysrCj4gPiA+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwtY29saWJyaS1ldmFs
LXYzLmR0c2kgfCAxMSArKysrKysrKystLQo+ID4gPiA+ICBhcmNoL2FybS9ib290L2R0cy9pbXg2
dWxsLWNvbGlicmkuZHRzaSAgICAgICAgIHwgIDYgKysrKysrCj4gPiA+ID4gIDMgZmlsZXMgY2hh
bmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZ1bC5kdHNpCj4gPiA+ID4gaW5kZXggZmMzODhiODRiZjIyLi45MWEwY2VkNDRlMjcg
MTAwNjQ0Cj4gPiA+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kKPiA+ID4g
PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQo+ID4gPiA+IEBAIC04NTcsNiAr
ODU3LDggQEAKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
JmNsa3MgSU1YNlVMX0NMS19VU0RIQzE+LAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDwmY2xrcyBJTVg2VUxfQ0xLX1VTREhDMT47Cj4gPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiaXBnIiwgImFoYiIsICJwZXIi
Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZzbCx0dW5pbmctc3RlcD0g
PDI+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZzbCx0dW5pbmctc3Rh
cnQtdGFwID0gPDIwPjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBidXMt
d2lkdGggPSA8ND47Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVz
ID0gImRpc2FibGVkIjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gPiBA
QCAtODcwLDYgKzg3Miw4IEBACj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPCZjbGtzIElNWDZVTF9DTEtfVVNESEMyPjsKPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJpcGciLCAiYWhiIiwgInBlciI7Cj4gPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVzLXdpZHRoID0gPDQ+Owo+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZzbCx0dW5pbmctc3RlcD0gPDI+Owo+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZzbCx0dW5pbmctc3RhcnQtdGFwID0g
PDIwPjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiA+Cj4gPiA+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwtY29saWJyaS1ldmFsLXYzLmR0
c2kKPiA+ID4gPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwtY29saWJyaS1ldmFsLXYzLmR0
c2kKPiA+ID4gPiBpbmRleCAwMDY2OTBlYTk4YzAuLjdkYzc3NzBjZjUyYyAxMDA2NDQKPiA+ID4g
PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWxsLWNvbGlicmktZXZhbC12My5kdHNpCj4g
PiA+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC1jb2xpYnJpLWV2YWwtdjMuZHRz
aQo+ID4gPiA+IEBAIC0xNDUsMTMgKzE0NSwyMCBAQAo+ID4gPiA+ICB9Owo+ID4gPiA+Cj4gPiA+
ID4gICZ1c2RoYzEgewo+ID4gPiA+IC0gICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
PiA+ID4gKyAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IiwgInN0YXRlXzEwMG1oeiIsICJz
dGF0ZV8yMDBtaHoiLCAic2xlZXAiOwo+ID4gPiA+ICAgICAgIHBpbmN0cmwtMCA9IDwmcGluY3Ry
bF91c2RoYzEgJnBpbmN0cmxfc252c191c2RoYzFfY2Q+Owo+ID4gPiA+IC0gICAgIG5vLTEtOC12
Owo+ID4gPiA+ICsgICAgIHBpbmN0cmwtMSA9IDwmcGluY3RybF91c2RoYzFfMTAwbWh6ICZwaW5j
dHJsX3NudnNfdXNkaGMxX2NkPjsKPiA+ID4gPiArICAgICBwaW5jdHJsLTIgPSA8JnBpbmN0cmxf
dXNkaGMxXzEwMG1oeiAmcGluY3RybF9zbnZzX3VzZGhjMV9jZD47Cj4gPiA+Cj4gPiA+IFNob3Vs
ZCB0aGF0IG5vdCBiZSBwaW5jdHJsX3VzZGhjMV8yMDBtaHo/Cj4gPiA+Cj4gPgo+ID4gQ29ycmVj
dCwgdGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dC4KPiA+IFRha2luZyBpbnRvIGFjY291bnQg
dGhhdCB0aGUgcGF0Y2ggd2FzIGFscmVhZHkgYWNjZXB0ZWQgYnkgU2hhd24sIHdpbGwKPiA+IHNl
bmQgYW5vdGhlciB0byBmaXggdGhpcyB0eXBvIEFTQVAgKGFkZGVkIHRvIG15IHRvZG8gbGlzdCku
Cj4KPiBJIGp1c3QgZml4ZWQgaXQgdXAgb24gbXkgYnJhbmNoLgo+Cj4gU2hhd24KClRoYW5rcyBh
IGxvdCEKCi0tIApCZXN0IHJlZ2FyZHMgLSBGcmV1bmRsaWNoZSBHcsO8c3NlIC0gTWVpbGxldXJl
cyBzYWx1dGF0aW9ucwoKSWdvciBPcGFuaXVrCgptYWlsdG86IGlnb3Iub3Bhbml1a0BnbWFpbC5j
b20Kc2t5cGU6IGlnb3Iub3Bhbnl1aworMzgwICg5MykgODM2IDQwIDY3Cmh0dHA6Ly91YS5saW5r
ZWRpbi5jb20vaW4vaW9wYW5pdWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
