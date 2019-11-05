Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FC2EFD32
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:35:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usTV1ybtDIy4jXrk6YyarfTKCaMcyt7aflkDQssd7IA=; b=iYhXdx651Zo0k/
	PaMay4vztVCygKilCN2NfoH/pMkmll7X3iTrgf7DfcOnfOdZ0e8fseN/8XF8/arCAZfGM9YHnysOj
	h7xVGNfqdVEu7wj7Yikljog2xzeW5NxLx+JLcE1TWFhIfyDUjYIMhXf6xzsxBlX0bWWMCPDKUuGHt
	n+XHCRKTYLjZQPhZeZfX/Fv69pqWGl4vbFDakIdYQSFJqYk9eVN+Y9RleFlk1RMPhGkzRii+IkwU6
	pwkS9D21EG0PshqpRPxdtlssWRUAS+nXAEz188kD5tCV/QgYNa5HfpZ10UOf3mL2TVnfh6qzLNTyi
	9V9u4EK4EIESYrtWJy1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRy33-0005iN-Dr; Tue, 05 Nov 2019 12:35:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRy2s-0005hu-6n
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:34:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id c17so13351848wmk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 04:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uXDWMsp5qvVlHIVMxPVb2fsrIl1aloFJ+doxLS5hVLU=;
 b=XWLAY/tT9UADwTl92xmE3tOUHaT4sD3761TLXhMGIk74SGtCX8Hy6pfaiZiCsNnSfM
 kyecKhsvFggXdcfzTFcq8MnDlzOwDZ6u2WFeKaSD9kexaCcYEPayqcvkgEsxZtd+DGZ+
 dSc67hY54a5/yjv8WFht9F6gO/9gj8WbJ62dcM9TByXAPxPDsS3ymi92JOXtl1+rjBvj
 Ep/DAnTg53X4oJXJKuvvWG/+DZcInFCfHhZtfaUnlMpFifqeoEi9m+r+4yew5jUxWOXW
 Vcv98KvzLv5Y0NqX19D5zaEUtajaNW5G+GgLLJKbfNflvbHaiBaKKUUQTKVy9ATYrDWN
 UfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uXDWMsp5qvVlHIVMxPVb2fsrIl1aloFJ+doxLS5hVLU=;
 b=DK7NFiH4UQDlukuOrQW+ty1kW9/p0U8RhJ+RbtqHO8scRVeyu0jHQYlgo+wbo74r7X
 +Olu9H8pIFbZ/mMevCmvUbfrODU8Vvc/dmttWIqvWWcO1J79NQBmLL/ORmciz/jzu8ZD
 az2UXmk4OIFNHFSsChejqbexPpueX7MuhZdOBx7O1sXFosuKhVTMP07hDmp5Nx5WMFyb
 9B7okA/Y1kYdHzaP/Uzkok8rADaakYFQHBqTkOoRh9Fan7Ou5YxX/gIrMbYC0BsFjpJe
 c7Tab+MlcVHFi9sEL8w3h4mOCR8GF53Z82FB2csPoktEaRa2h+RbaVOCPlF/pc6zD0aX
 oXBg==
X-Gm-Message-State: APjAAAVQKyVjtHPZ9PpeTZcDCf8aVjze/AoW8K+4UrR7FBxHTjYEOUGj
 1ekaHlDydM5JvXwE9yp17Qaw94Ean//LUzZjK69xSqW5
X-Google-Smtp-Source: APXvYqx2VTjX7SpCQ9bFbyLIvq0HI/5gSO9syMahnkO6f1EAMR8g0VgtqPCSwcYkRvXnLfPvgMsRFdEEsyBOBDbtRhQ=
X-Received: by 2002:a05:600c:228e:: with SMTP id
 14mr3817629wmf.119.1572957288363; 
 Tue, 05 Nov 2019 04:34:48 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-2-peron.clem@gmail.com>
 <20191104080359.6kjugbt3yi63ywhb@pengutronix.de>
 <20191105111134.GG3876@gilmour.lan>
In-Reply-To: <20191105111134.GG3876@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 5 Nov 2019 13:34:37 +0100
Message-ID: <CAJiuCcc7sQvuPX+FTErXS+_RzUDvbDrB3Z5EX9wE_2EZaex0qw@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_043450_253403_4A2998E9 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCA1IE5vdiAyMDE5IGF0IDEyOjExLCBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gSGkgQ2xlbWVudCwgVXdlLAo+Cj4gT24gTW9u
LCBOb3YgMDQsIDIwMTkgYXQgMDk6MDM6NTlBTSArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gPiBPbiBTdW4sIE5vdiAwMywgMjAxOSBhdCAwOTozMzoyOFBNICswMTAwLCBDbMOpbWVu
dCBQw6lyb24gd3JvdGU6Cj4gPiA+IEZyb206IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJl
Y0BzaW9sLm5ldD4KPiA+ID4KPiA+ID4gSDYgUFdNIGJsb2NrIGlzIGJhc2ljYWxseSB0aGUgc2Ft
ZSBhcyBBMjAgUFdNLCBleGNlcHQgdGhhdCBpdCBhbHNvIGhhcwo+ID4gPiBidXMgY2xvY2sgYW5k
IHJlc2V0IGxpbmUgd2hpY2ggbmVlZHMgdG8gYmUgaGFuZGxlZCBhY2NvcmRpbmdseS4KPiA+ID4K
PiA+ID4gRXhwYW5kIEFsbHdpbm5lciBQV00gYmluZGluZyB3aXRoIEg2IFBXTSBzcGVjaWZpY3Mu
Cj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJl
Y0BzaW9sLm5ldD4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5j
bGVtQGdtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAuLi4vYmluZGluZ3MvcHdtL2FsbHdpbm5l
cixzdW40aS1hMTAtcHdtLnlhbWwgfCA0NSArKysrKysrKysrKysrKysrKystCj4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPgo+ID4gPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5u
ZXIsc3VuNGktYTEwLXB3bS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sCj4gPiA+IGluZGV4IDBhYzUyZjgzYTU4
Yy4uYmYzNmVhNTA5ZjMxIDEwMDY0NAo+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwKPiA+ID4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEw
LXB3bS55YW1sCj4gPiA+IEBAIC0zMCwxMyArMzAsNDYgQEAgcHJvcGVydGllczoKPiA+ID4gICAg
ICAgIC0gaXRlbXM6Cj4gPiA+ICAgICAgICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1o
NS1wd20KPiA+ID4gICAgICAgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuNWktYTEzLXB3bQo+
ID4gPiArICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1oNi1wd20KPiA+ID4KPiA+ID4g
ICAgcmVnOgo+ID4gPiAgICAgIG1heEl0ZW1zOiAxCj4gPiA+Cj4gPiA+IC0gIGNsb2NrczoKPiA+
ID4gKyAgIyBFdmVuIHRob3VnaCBpdCBvbmx5IGFwcGxpZXMgdG8gc3Vic2NoZW1hcyB1bmRlciB0
aGUgY29uZGl0aW9uYWxzLAo+ID4gPiArICAjIG5vdCBsaXN0aW5nIHRoZW0gaGVyZSB3aWxsIHRy
aWdnZXIgYSB3YXJuaW5nIGJlY2F1c2Ugb2YgdGhlCj4gPiA+ICsgICMgYWRkaXRpb25hbHNQcm9w
ZXJ0aWVzIHNldCB0byBmYWxzZS4KPiA+ID4gKyAgY2xvY2tzOiB0cnVlCj4gPiA+ICsgIGNsb2Nr
LW5hbWVzOiB0cnVlCj4gPiA+ICsgIHJlc2V0czoKPiA+ID4gICAgICBtYXhJdGVtczogMQo+ID4g
Pgo+ID4gPiArICBpZjoKPiA+ID4gKyAgICBwcm9wZXJ0aWVzOgo+ID4gPiArICAgICAgY29tcGF0
aWJsZToKPiA+ID4gKyAgICAgICAgY29udGFpbnM6Cj4gPiA+ICsgICAgICAgICAgY29uc3Q6IGFs
bHdpbm5lcixzdW41MGktaDYtcHdtCj4gPiA+ICsKPiA+ID4gKyAgdGhlbjoKPiA+ID4gKyAgICBw
cm9wZXJ0aWVzOgo+ID4gPiArICAgICAgY2xvY2tzOgo+ID4gPiArICAgICAgICBpdGVtczoKPiA+
ID4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBNb2R1bGUgQ2xvY2sKPiA+ID4gKyAgICAgICAg
ICAtIGRlc2NyaXB0aW9uOiBCdXMgQ2xvY2sKPiA+ID4gKwo+ID4gPiArICAgICAgY2xvY2stbmFt
ZXM6Cj4gPiA+ICsgICAgICAgIGl0ZW1zOgo+ID4gPiArICAgICAgICAgIC0gY29uc3Q6IG1vZAo+
ID4gPiArICAgICAgICAgIC0gY29uc3Q6IGJ1cwo+ID4gPiArCj4gPiA+ICsgICAgcmVxdWlyZWQ6
Cj4gPiA+ICsgICAgICAtIGNsb2NrLW5hbWVzCj4gPiA+ICsgICAgICAtIHJlc2V0cwo+ID4gPiAr
Cj4gPiA+ICsgIGVsc2U6Cj4gPiA+ICsgICAgcHJvcGVydGllczoKPiA+ID4gKyAgICAgIGNsb2Nr
czoKPiA+ID4gKyAgICAgICAgbWF4SXRlbXM6IDEKPiA+ID4gKwo+ID4KPiA+IEkgZ3Vlc3MgdGhp
cyBodW5rIHNheXMgIklmIHRoaXMgaXMgYSBhbGx3aW5uZXIsc3VuNTBpLWg2LXB3bSwgYSBtb2Qg
YW5kCj4gPiBidXMgY2xvY2sgaXMgcmVxdWlyZWQuIiwgcmlnaHQ/Cj4gPgo+ID4gSSB3b25kZXIg
aWYgaXQgaXMgc2Vuc2libGUgdG8gcmVxdWlyZSBhIGNsb2NrLW5hbWVzIHByb3BlcnR5IGluIHRo
ZSBlbHNlCj4gPiBicmFuY2gsIHRvby4gVGhpcyB3b3VsZCBtYWtlIGl0IG9idmlvdXMgaWYgdGhl
IGNsb2NrIHRoZXJlIGNvcnJlc3BvbmRzCj4gPiB0byB0aGUgIm1vZCIgb3IgdGhlICJidXMiIGNs
b2NrIG9uIEg2LiAoSSBndWVzcyBpdCdzICJtb2QiLikKPgo+IFRoaXMgY2FuIGJlIGRvbmUgYSBi
aXQgZGlmZmVyZW50bHkgYW5kIGNvdWxkIGFkZHJlc3MgeW91ciBjb25jZXJucwo+Cj4gU29tZXRo
aW5nIGxpa2UKPgo+IHByb3BlcnRpZXM6Cj4gICAuLi4KPgo+ICAgY2xvY2tzOgo+ICAgICBtaW5J
dGVtczogMQo+ICAgICBtYXhJdGVtczogMgo+ICAgICBpdGVtczoKPiAgICAgICAtIGRlc2NyaXB0
aW9uOiBCdXMgQ2xvY2sKPiAgICAgICAtIGRlc2NyaXB0aW9uOiBNb2R1bGUgQ2xvY2sKPgo+IHJl
cXVpcmVkOgo+ICAgLSBjbG9ja3MKPgo+IGlmOgo+ICAgLi4uCj4KPiB0aGVuOgo+ICAgcHJvcGVy
dGllczoKPiAgICAgY2xvY2tzOgo+ICAgICAgIG1heEl0ZW1zOiAyCgpIZXJlIHdlIHNob3VsZCBz
ZXQgbWluSXRlbXMgdG8gMiByaWdodCA/CnNvIE1heCA9IE1pbiA9IDIKClJlZ2FyZHMsCkNsw6lt
ZW50Cgo+Cj4gICAgIGNsb2Nrcy1uYW1lczoKPiAgICAgICBpdGVtczoKPiAgICAgICAgIC0gY29u
c3Q6IG1vZAo+ICAgICAgICAgLSBjb25zdDogYnVzCj4KPiAgICAgcmVxdWlyZWQ6Cj4gICAgICAg
LSBjbG9jay1uYW1lcwo+Cj4gZWxzZToKPiAgIHByb3BlcnRpZXM6Cj4gICAgIGNsb2NrczoKPiAg
ICAgICBtYXhJdGVtczogMQo+Cj4gVGhhdCB3YXksIHRoZSBkZWZpbml0aW9uIG9mIHRoZSBvcmRl
ciBhbmQgd2hpY2ggY2xvY2sgaXMgd2hpY2ggaXMKPiBwcmV0dHkgb2J2aW91cyBpbiBib3RoIGNh
c2VzLCBhbmQgd2UgZG9uJ3QgZ2V0IGFueSB3ZWlyZCB3YXJuaW5ncy4KPgo+IE1heGltZQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
