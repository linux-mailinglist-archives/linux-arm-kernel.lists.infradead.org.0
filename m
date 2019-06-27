Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BCB58692
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFC0gAT8Keu/95CIw3lT/ev40vtTO7QtWtdk27FPUIo=; b=Mdha3fhfccL5kr
	SnBrYIok2Q9/LiZ667N8mPREutTomgc1CxW7vDOQg3A6s4WtG9dYZmnTNLH4v8D7jrVdSXA7dKIOd
	cLgluD6314PrWtcfIWQ8sVm2jjos4R+GttFnZoSoK8W9ug+pGC61v+nAiu6sqKgfC1Gs8/oYinKw3
	PWqOp1MNbC6YX7pOoE0fowb3uWfOUddV9tLEUNXpi5u/mp7Idq8p+KRze6rzV0CBWstgGuUWXNBJR
	SargbmXhhsmRDPDjXaT1VPCcHIMB/Yhetadx1toF7eFCCQQWEdd/BfUjHjt//C/pitS7GhtFjNXAX
	1pJFZW/jtPXGbEn1TQ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWoR-0001o5-5O; Thu, 27 Jun 2019 15:59:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWoA-0001nd-57
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:59:35 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D6782133F
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 15:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561651173;
 bh=6I1XeQYTI0C1wMGld5jxi9JRDkwAl77nalnVGAoFaB8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=naLqvh+/V/HXw4uIQt+Z2lkT1VuzEXQ8DJYVS4X4TD6X9WBD/TMU6OAEYadqmvD9E
 yuGwmK5fDXJUMfoxjSl+9Fh3LxBd4Ux9VASITevouRkDvskc4QLhx+7ZNQl5vyT3V8
 krzLsLTfcgDuSdr8unKrIovW4GVngXT/aXoTu+V0=
Received: by mail-qk1-f175.google.com with SMTP id g18so2172399qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 08:59:33 -0700 (PDT)
X-Gm-Message-State: APjAAAX+nD0XIQkXgl37X112R5oU+km6j6t8AgnrShSATslJVM/6amrP
 +ruU5eCE2EiovBioVukwBDa7vBtzznrw4luFfg==
X-Google-Smtp-Source: APXvYqwvJgTQl2n0zLxQeOWaalSbg7gL6HRT3Pd5h2iUsSva2hKv2qKwqOpLuA6YSMsxDf/NTgJhGFoVKL9qu4r4f3g=
X-Received: by 2002:a37:6357:: with SMTP id x84mr4002969qkb.393.1561651172855; 
 Thu, 27 Jun 2019 08:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
 <20190614081650.11880-3-daniel.baluta@nxp.com>
 <CAL_JsqJKgMB1PNA33gmFju4AQTc2WaSBoOGQExVaGd9LZRmk_g@mail.gmail.com>
 <CAEnQRZBNA4ndSL1vMStHemYkzt9TxqjgdWWjqFwnBFQ+ha+egA@mail.gmail.com>
 <CAL_JsqJQRbuWKgON+ukZ3GRwyq8SvTZ=PRGwMhQjAxKPSP-Fkw@mail.gmail.com>
 <CAEnQRZCjp9dUt0JTjhN0CnV0+Xzc+q1EHCnJn_TNOQoUWZBTsg@mail.gmail.com>
In-Reply-To: <CAEnQRZCjp9dUt0JTjhN0CnV0+Xzc+q1EHCnJn_TNOQoUWZBTsg@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Jun 2019 09:59:21 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+rWn+vVfBGdAB23Xu0RaFV1HwSdBbfj9F4M3W1EUo9_A@mail.gmail.com>
Message-ID: <CAL_Jsq+rWn+vVfBGdAB23Xu0RaFV1HwSdBbfj9F4M3W1EUo9_A@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add DSP IPC binding support
To: Daniel Baluta <daniel.baluta@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_085934_262022_DD68F24B 
X-CRM114-Status: GOOD (  27.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMTo0MCBBTSBEYW5pZWwgQmFsdXRhIDxkYW5pZWwuYmFs
dXRhQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA8c25pcD4KPgo+ID4gPiA+ID4gKyAgbWJveGVzOgo+
ID4gPiA+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ID4gPiA+ICsgICAgICBMaXN0IG9mIHBoYW5k
bGUgb2YgMiBNVSBjaGFubmVscyBmb3IgVFhEQiwgMiBNVSBjaGFubmVscyBmb3IgUlhEQgo+ID4g
PiA+ID4gKyAgICAgIChzZWUgbWFpbGJveC9mc2wsbXUudHh0KQo+ID4gPiA+ID4gKyAgICBtYXhJ
dGVtczogMQo+ID4gPiA+Cj4gPiA+ID4gU2hvdWxkIGJlIDQ/Cj4gPiA+Cj4gPiA+IEFjdHVhbGx5
IGlzIGp1c3QgYSBsaXN0IHdpdGggMSBpdGVtLiBJIHRoaW5rIGlzIHRoZSB0ZXJtaW5vbG9neToK
PiA+ID4KPiA+ID4gWW91IGNhbiBoYXZlIGFuIGV4YW1wbGUgaGVyZSBvZiB0aGUgbWJveGVzIGRl
ZmluZWQgZm9yIFNDVS4KPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Js
b2IvbWFzdGVyL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaSNMMTIz
Cj4gPgo+ID4gbWJveGVzID0gPCZsc2lvX211MSAwIDAKPiA+ICZsc2lvX211MSAwIDEKPiA+ICZs
c2lvX211MSAwIDIKPiA+ICZsc2lvX211MSAwIDMKPiA+ICZsc2lvX211MSAxIDAKPiA+ICZsc2lv
X211MSAxIDEKPiA+ICZsc2lvX211MSAxIDIKPiA+ICZsc2lvX211MSAxIDMKPiA+ICZsc2lvX211
MSAzIDM+Owo+ID4KPiA+IExvZ2ljYWxseSwgdGhpcyBpcyA5IGVudHJpZXMgYW5kIGVhY2ggZW50
cnkgaXMgMyBjZWxscyAoIG9yIHBoYW5kbGUKPiA+IHBsdXMgMiBjZWxscykuIE1vcmUgYmVsb3cu
Li4KPgo+IE9rLi4KPgo+ID4KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgIG1ib3gtbmFtZXMKPiA+
Cj4gPiBBbHNvLCBtaXNzaW5nIGEgJzonIGhlcmUuIFRoaXMgd29uJ3QgYnVpbGQuIE1ha2Ugc3Vy
ZSB5b3UgYnVpbGQgdGhpcwo+ID4gKG1ha2UgZHRfYmluZGluZ19jaGVjaykuIFNlZQo+ID4gRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL3dyaXRpbmctc2NoZW1hcy5tZC4KPiA+Cj4gRml4ZWQgaW4g
djIuIEF3ZXNvbWUhCj4KPiBJIHRob3VnaHQgdGhhdCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZHNwL2ZzbCxkc3BfaXBjLnlhbWwKPiBpcyBwdXJlbHkgZGVjb3JhdGl2ZSBhbmQg
dXNlZCBhcyBhbiBleGFtcGxlLiBCdXQgaXQncyBhY3R1YWxseSB0aGUgc2NoZW1hIGZvcgo+IHRo
ZSBuZXdseSB5YW1sIGR0cywgcmlnaHQ/CgpZZXMsIHRoYXQncyB0aGUgcG9pbnQuIEVuZm9yY2lu
ZyB0aGF0IGR0cyBmaWxlcyBjb250YWluIHdoYXQgdGhlCmJpbmRpbmcgZG9jcyBzYXkuCgo+Cj4g
VXNlZCBtYWtlIGR0X2JpbmRpbmdfY2hlY2sgZXZlcnl0aGluZyBsb29rcyBPSyBub3cuCj4KPiA+
ID4gPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiA+ID4gPiArICAgICAgTWFpbGJveGVzIG5hbWVz
Cj4gPiA+ID4gPiArICAgIGFsbE9mOgo+ID4gPiA+ID4gKyAgICAgIC0gJHJlZjogIi9zY2hlbWFz
L3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3N0cmluZyIKPiA+ID4gPgo+ID4gPiA+IE5vIG5lZWQg
Zm9yIHRoaXMsICcqLW5hbWVzJyBhbHJlYWR5IGhhcyBhIGRlZmluZWQgdHlwZS4KPiA+ID4gU28s
IHNob3VsZCBJIHJlbW92ZSB0aGUgYWJvdmUgdHdvIGxpbmVzID8KPiA+Cj4gPiBBY3R1YWxseSwg
YWxsIDQuIFRoZXJlJ3Mgbm8gbmVlZCB0byBkZXNjcmliZSB3aGF0ICdtYm94LW5hbWVzJyBpcy4K
PiA+Cj4gPiA+ID4gPiArICAgICAgLSBlbnVtOiBbICJ0eGRiMCIsICJ0eGRiMSIsICJyeGRiMCIs
ICJyeGRiMSIgXQo+ID4gPiA+Cj4gPiA+ID4gU2hvdWxkIGJlIGFuICdpdGVtcycgbGlzdCB3aXRo
IDQgZW50cmllcz8KPiA+ID4KPiA+ID4gTGV0IG1lIGJldHRlciByZWFkIHRoZSB5YW1sIHNwZWMu
IEJ1dCAiaXRlbXMiIGxpc3QgaW5kZWVkIHNvdW5kcyBiZXR0ZXIuCj4gPgo+ID4gV2hhdCB5b3Ug
c2hvdWxkIGVuZCB1cCB3aXRoIGlzOgo+ID4KPiA+IGl0ZW1zOgo+ID4gICAtIGNvbnN0OiB0eGRi
MAo+ID4gICAtIGNvbnN0OiB0eGRiMQo+ID4gICAtIGNvbnN0OiByeGRiMAo+ID4gICAtIGNvbnN0
OiByeGRiMQo+ID4KPiA+IFRoaXMgaXMgc2F5aW5nIHlvdSBoYXZlIDQgc3RyaW5ncyBpbiB0aGUg
bGlzdGVkIG9yZGVyLiBUaGUgZW51bSB5b3UKPiA+IGhhZCB3b3VsZCBiZSBhIHNpbmdsZSBzdHJp
bmcgb2Ygb25lIG9mIHRoZSA0IHZhbHVlcy4KPiA+Cj4gSSBzZWUhIFRoYW5rcy4KPgo+ID4gPiA+
ID4gK3JlcXVpcmVkOgo+ID4gPiA+ID4gKyAgLSBjb21wYXRpYmxlCj4gPiA+ID4gPiArICAtIG1i
b3hlcwo+ID4gPiA+ID4gKyAgLSBtYm94LW5hbWVzCj4gPiA+ID4KPiA+ID4gPiBUaGlzIHNlZW1z
IGluY29tcGxldGUuIEhvdyBkb2VzIG9uZSBib290IHRoZSBEU1A/IExvYWQgZmlybXdhcmU/IE5v
Cj4gPiA+ID4gcmVzb3VyY2VzIHRoYXQgTGludXggaGFzIHRvIG1hbmFnZS4gU2hhcmVkIG1lbW9y
eT8KPiA+ID4KPiA+ID4gVGhpcyBpcyBvbmx5IHRoZSBJUEMgbWFpbGJveGVzIHVzZWQgYnkgRFNQ
IHRvIGNvbW11bmljYXRlIHdpdGggTGludXguIFRoZQo+ID4gPiBsb2FkaW5nIG9mIHRoZSBmaXJt
d2FyZSwgdGhlIHJlc291cmNlcyBuZWVkZWQgdG8gYmUgbWFuYWdlZCBieSBMaW51eCwgZXRjCj4g
PiA+IGFyZSBwYXJ0IG9mIHRoZSBEU1Agbm9kZS4KPiA+Cj4gPiBZb3Ugc2hvdWxkIGp1c3QgYWRk
IHRoZSBtYWlsYm94ZXMgdG8gdGhlIERTUCBub2RlIHRoZW4uIEkgc3VwcG9zZSB5b3UKPiA+IGRp
ZG4ndCBiZWNhdXNlIHlvdSB3YW50IDIgZHJpdmVycz8gSWYgc28sIHRoYXQncyB0aGUgT1MncyBw
cm9ibGVtIGFuZAo+ID4gbm90IHBhcnQgb2YgRFQuIEEgTGludXggZHJpdmVyIGNhbiBpbnN0YW50
aWF0ZSBkZXZpY2VzIGZvciBvdGhlcgo+ID4gZHJpdmVycy4KPgo+IFllcywgSSB3YW50IHRoZSBE
U1AgSVBDIGRyaXZlciB0byBiZSBzZXBhcmF0ZWQuIEFuZCB0aGVuIHRoZSBTT0YgTGludXgKPiBk
cml2ZXIgdGhhdCBuZWVkcwo+IHRvIGNvbW11bmljYXRlIHdpdGggRFNQIGp1c3QgZ2V0cyBhIGhh
bmRsZSB0byBEU1AgSVBDIGRyaXZlciBhbmQgZG9lcwo+IHRoZSBjb21tdW5pY2F0aW9uLgo+Cj4g
ZHRzIHJlbGV2YW50IG5vZGVzIGxvb2sgbGlrZSB0aGlzIG5vdzoKPgo+IMK7ICAgICAgIGRzcF9p
cGM6IGRzcF9pcGMgewo+IMK7ICAgICAgIMK7ICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDhx
eHAtZHNwIjsKPiDCuyAgICAgICDCuyAgICAgICBtYm94LW5hbWVzID0gInR4ZGIwIiwgInR4ZGIx
IiwKPiDCuyAgICAgICDCuyAgICAgICDCuyAgICAgICAgICAgICJyeGRiMCIsICJyeGRiMSI7Cj4g
wrsgICAgICAgwrsgICAgICAgbWJveGVzID0gPCZsc2lvX211MTMgMiAwPiwKPiDCuyAgICAgICDC
uyAgICAgICDCuyAgICAgICAgPCZsc2lvX211MTMgMiAxPiwKPiDCuyAgICAgICDCuyAgICAgICDC
uyAgICAgICAgPCZsc2lvX211MTMgMyAwPiwKPiDCuyAgICAgICDCuyAgICAgICDCuyAgICAgICAg
PCZsc2lvX211MTMgMyAxPjsKPiDCuyAgICAgICB9Owo+Cj4gwrsgICAgICAgYWRtYV9kc3A6IGRz
cEA1OTZlODAwMCB7Cj4gwrsgICAgICAgwrsgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14OHF4
cC1zb2YtZHNwIjsKPiDCuyAgICAgICDCuyAgICAgICByZWcgPSA8MHg1OTZlODAwMCAweDg4MDAw
PjsKPiDCuyAgICAgICDCuyAgICAgICByZXNlcnZlZC1yZWdpb24gPSA8JmRzcF9yZXNlcnZlZD47
Cj4gwrsgICAgICAgwrsgICAgICAgaXBjID0gPCZkc3BfaXBjPjsKPiDCuyAgICAgICB9Owo+Cj4g
WW91ciBzdWdnZXN0b24gd291bGQgYmUgdG8gaGF2ZSBzb21ldGhpbmcgbGlrZSB0aGlzOgo+Cj4g
wrsgICAgICAgYWRtYV9kc3A6IGRzcEA1OTZlODAwMCB7Cj4gwrsgICAgICAgwrsgICAgICAgY29t
cGF0aWJsZSA9ICJmc2wsaW14OHF4cC1zb2YtZHNwIjsKPiDCuyAgICAgICDCuyAgICAgICByZWcg
PSA8MHg1OTZlODAwMCAweDg4MDAwPjsKPiDCuyAgICAgICDCuyAgICAgICByZXNlcnZlZC1yZWdp
b24gPSA8JmRzcF9yZXNlcnZlZD47Cj4gwrsgICAgICAgICAgICAgICAgbWJveC1uYW1lcyA9ICJ0
eGRiMCIsICJ0eGRiMSIsCj4gwrsgICAgICAgwrsgICAgICAgwrsgICAgICAgICAgICAicnhkYjAi
LCAicnhkYjEiOwo+IMK7ICAgICAgIMK7ICAgICAgIG1ib3hlcyA9IDwmbHNpb19tdTEzIDIgMD4s
Cj4gwrsgICAgICAgwrsgICAgICAgwrsgICAgICAgIDwmbHNpb19tdTEzIDIgMT4sCj4gwrsgICAg
ICAgwrsgICAgICAgwrsgICAgICAgIDwmbHNpb19tdTEzIDMgMD4sCj4gwrsgICAgICAgwrsgICAg
ICAgwrsgICAgICAgIDwmbHNpb19tdTEzIDMgMT47Cj4gwrsgICAgICAgfTsKPgo+IE5vdCBzdXJl
IGV4YWN0bHkgaG93IHRvIGluc3RhbnRpYXRlIElQQyBEU1AgZHJpdmVyIHRoZW4uCgpEVCBpcyBu
b3QgdGhlIG9ubHkgd2F5IHRvIGluc3RhbnRpYXRlIGRyaXZlcnMuIEEgZHJpdmVyIGNhbiBjcmVh
dGUgYQpwbGF0Zm9ybSBkZXZpY2UgaXRzZWxmIHdoaWNoIHdpbGwgdGhlbiBpbnN0YW50aWF0ZSBh
IDJuZCBkcml2ZXIuCgpQcmVzdW1hYmx5IHRoZSBEU1AgbmVlZHMgdG8gYmUgYm9vdGVkLCByZXNv
dXJjZXMgZW5hYmxlZCwgYW5kIGZpcm13YXJlCmxvYWRlZCBiZWZvcmUgSVBDIHdpbGwgd29yay4g
VGhlIERTUCBkcml2ZXIgY29udHJvbGxpbmcgdGhlIGxpZmV0aW1lCm9mIHRoZSBJUEMgZHJpdmVy
IGlzIHRoZSByaWdodCB3YXkgdG8gbWFuYWdlIHRoZSBkZXBlbmRlbmNpZXMuCgo+Cj4gSSBhbHJl
YWR5IGhhdmUgcHJlcGFyZWQgdjIgd2l0aCBtb3N0IG9mIHlvdXIgZmVlZGJhY2sgaW5jb3Jwb3Jh
dGVkLAo+IGJ1dCBub3QgdGhpcyBsYXRlc3QKPiBjaGFuZ2Ugd2l0aCBtb3ZpbmcgbWJveGVzIGlu
c2lkZSBkc3AgZHJpdmVyLgo+Cj4gTW9yZSB0aGFuIHRoYXQgSSBoYXZlIGZvbGxvd2VkIHRoZSBt
b2RlbCBvZiBTQ0ZXIElQQyBhbmQgaGF2aW5nIHRvCj4gZGlmZmVyZW50IGFwcHJvYWNoCj4gZm9y
IHNpbWlsYXIgSVBDIG1lY2hhbmlzbSBpcyBhIGxpdHRsZSBiaXQgY29uZnVzaW5nLgoKU0MgaXMg
c3lzdGVtIGNvbnRyb2xsZXI/IE1heWJlIEkgbWlzc2VkIGl0LCBidXQgSSBkb24ndCB0aGluayBz
eXN0ZW0KY29udHJvbGxlcnMgdXN1YWxseSBoYXZlIDIgbm9kZXMuIFlvdSBvbmx5IGhhdmUgdGhl
IGNvbW11bmljYXRpb25zCmludGVyZmFjZSBleHBvc2VkIGFzIHRoZSBTQyBwcm92aWRlcyBzZXJ2
aWNlcyB0byBMaW51eCBhbmQgTGludXgKZG9lc24ndCBtYW5hZ2UgdGhlIFNDIHJlc291cmNlcy4K
ClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
