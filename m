Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8CC7852F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 08:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFeSWkcsdvV/ut7A6SNxQACIlGdT/x331mEsXxQSWtA=; b=YUi0DBfm/M7tbU
	Ln1fFrkPIMmaVb+gvLVxd7P5+1xY0EJ+Qubxs33i4t4DCihQ243vvr0wuxGYCPSPmyj6jmmtUf2/s
	SWNQLPymDEIG7KlisMokGkCQowGWP9+WffH1W0y4+RFih0K3uAh6xqCKLN4OFGwrIh2RQzNunqEx+
	xX9nmX9aCmltmUw29wNH+DgqjIjuYxsS6OePJY/vu/uPqcnlQiBb0prL+lDntHzfXRVDZECMt3OYJ
	3NUcBW8m/fBKhJzIYpWKGyJtqQsI42agIxwqBr2jN3zGChhZY5/oRdmaCl5bq8ZRsw7bWHmWnWNWD
	QnDkVoyDgnMAnhxI8nmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzPj-0006xW-EB; Mon, 29 Jul 2019 06:45:43 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzNl-0006iA-H9
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 06:43:44 +0000
Received: by mail-ed1-f68.google.com with SMTP id w13so58322425eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 23:43:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=N3YcfI6Lt3N7Xfg/QsppatAiaJc9l2mfK7jxMUvJqWY=;
 b=FdUiyIp6hY+qLgANe0eoIwVbRuil+myoQ+ER6SxMZmcQHyEj68kLB56FRXOw7rGlKz
 2LPOB0WrV9fFiv8xWh+NFDHMSTgP6UZs3Y2dGexdpO3eGL5EFnnydB2OnYra/UCwXv+y
 csYknxp6jl8jDnhbOcqbdhpnz4oOcaV9r0v9YfvxNVGPLRsEibiJ9oT907SXhGz29ekB
 QQbdVDMJvBL4l4hFC3dGktnTi68BpNsV/QHAD9AqtC7zCkgmaxrYxltQvBSUHQmOxmbN
 wieUrix5egQ+TMk6U0Cgp5gvhNjliEJt02opKiHnb4T2Fjdnv0J2RQDn9mxHjQFwDP4u
 z9Ag==
X-Gm-Message-State: APjAAAUgOtSA1AGsdc4u6YEMrID4Yqy5avbZDN8KV8r9RaUnuiix7szi
 mCVN4EGuw85WpehoUEgBPnPs2Fdoifs=
X-Google-Smtp-Source: APXvYqwW3VlWEJseuZdom6NNeDp4R44A50pDHNf7B3mszQOOnc7dZCRNieMqm4LJqvieEVXUSxvkhg==
X-Received: by 2002:a17:906:3d69:: with SMTP id
 r9mr28886661ejf.28.1564382617173; 
 Sun, 28 Jul 2019 23:43:37 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id f26sm7792877ejo.25.2019.07.28.23.43.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 23:43:36 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id 31so60505601wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 23:43:36 -0700 (PDT)
X-Received: by 2002:adf:e941:: with SMTP id m1mr30982207wrn.279.1564382616355; 
 Sun, 28 Jul 2019 23:43:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-3-jernej.skrabec@siol.net>
 <20190729063630.rn325whatfnc3m7n@pengutronix.de>
In-Reply-To: <20190729063630.rn325whatfnc3m7n@pengutronix.de>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 29 Jul 2019 14:43:23 +0800
X-Gmail-Original-Message-ID: <CAGb2v65KOpivHQNkg+R2=D=ejCJYnPdVcyHJZW-GJCR8j0Yk0g@mail.gmail.com>
Message-ID: <CAGb2v65KOpivHQNkg+R2=D=ejCJYnPdVcyHJZW-GJCR8j0Yk0g@mail.gmail.com>
Subject: Re: [PATCH 2/6] pwm: sun4i: Add a quirk for reset line
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_234342_059472_D34E330B 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMjozNiBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IENjICs9IHJlc2V0IGZyYW1ld29y
ayBtYWludGFpbmVyCj4KPiBIZWxsbyBKZXJuZWosCj4KPiBPbiBGcmksIEp1bCAyNiwgMjAxOSBh
dCAwODo0MDo0MVBNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+IEg2IFBXTSBjb3Jl
IG5lZWRzIGRlYXNzZXJ0ZWQgcmVzZXQgbGluZSBpbiBvcmRlciB0byB3b3JrLgo+ID4KPiA+IEFk
ZCBhIHF1aXJrIGZvciBpdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8
amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3B3bS9wd20tc3Vu
NGkuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKystLQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAyNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiBpbmRl
eCBkZTc4YzgyNGJiZmQuLjFiN2JlOGZiZGU4NiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcHdt
L3B3bS1zdW40aS5jCj4gPiArKysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gQEAgLTE2
LDYgKzE2LDcgQEAKPiA+ICAjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gPiAgI2luY2x1
ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9wd20uaD4K
PiA+ICsjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5o
Pgo+ID4gICNpbmNsdWRlIDxsaW51eC9zcGlubG9jay5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC90
aW1lLmg+Cj4gPiBAQCAtNzIsMTIgKzczLDE0IEBAIHN0YXRpYyBjb25zdCB1MzIgcHJlc2NhbGVy
X3RhYmxlW10gPSB7Cj4gPgo+ID4gIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7Cj4gPiAgICAgICBi
b29sIGhhc19wcmVzY2FsZXJfYnlwYXNzOwo+ID4gKyAgICAgYm9vbCBoYXNfcmVzZXQ7Cj4gPiAg
ICAgICB1bnNpZ25lZCBpbnQgbnB3bTsKPiA+ICB9Owo+ID4KPiA+ICBzdHJ1Y3Qgc3VuNGlfcHdt
X2NoaXAgewo+ID4gICAgICAgc3RydWN0IHB3bV9jaGlwIGNoaXA7Cj4gPiAgICAgICBzdHJ1Y3Qg
Y2xrICpjbGs7Cj4gPiArICAgICBzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0Owo+ID4gICAgICAg
dm9pZCBfX2lvbWVtICpiYXNlOwo+ID4gICAgICAgc3BpbmxvY2tfdCBjdHJsX2xvY2s7Cj4gPiAg
ICAgICBjb25zdCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgKmRhdGE7Cj4gPiBAQCAtMzcxLDYgKzM3
NCwxNCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ID4gICAgICAgaWYgKElTX0VSUihwd20tPmNsaykpCj4gPiAgICAgICAgICAgICAg
IHJldHVybiBQVFJfRVJSKHB3bS0+Y2xrKTsKPiA+Cj4gPiArICAgICBpZiAocHdtLT5kYXRhLT5o
YXNfcmVzZXQpIHsKPiA+ICsgICAgICAgICAgICAgcHdtLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRy
b2xfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpOwo+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKHB3
bS0+cnN0KSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwd20tPnJz
dCk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocHdtLT5y
c3QpOwo+ID4gKyAgICAgfQo+ID4gKwo+Cj4gSSB3b25kZXIgd2h5IHRoZXJlIGlzIGEgbmVlZCB0
byB0cmFjayBpZiBhIGdpdmVuIGNoaXAgbmVlZHMgYSByZXNldAo+IGxpbmUuIEknZCBqdXN0IHVz
ZSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsKCkgYW5kIGRyb3AgdGhlCj4gLmhhc19y
ZXNldCBtZW1iZXIgaW4gc3RydWN0IHN1bjRpX3B3bV9kYXRhLgoKQmVjYXVzZSBpdCdzIG5vdCBv
cHRpb25hbCBmb3IgdGhpcyBwbGF0Zm9ybSwgaS5lLiBpdCB3b24ndCB3b3JrIGlmCnRoZSByZXNl
dCBjb250cm9sIChvciBjbGssIGluIHRoZSBuZXh0IHBhdGNoKSBpcyBzb21laG93IG1pc3Npbmcg
ZnJvbQp0aGUgZGV2aWNlIHRyZWUuCgpDaGVuWXUKCj4gPiAgICAgICBwd20tPmNoaXAuZGV2ID0g
JnBkZXYtPmRldjsKPiA+ICAgICAgIHB3bS0+Y2hpcC5vcHMgPSAmc3VuNGlfcHdtX29wczsKPiA+
ICAgICAgIHB3bS0+Y2hpcC5iYXNlID0gLTE7Cj4gPiBAQCAtMzgzLDE5ICszOTQsMzEgQEAgc3Rh
dGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+
ICAgICAgIHJldCA9IHB3bWNoaXBfYWRkKCZwd20tPmNoaXApOwo+ID4gICAgICAgaWYgKHJldCA8
IDApIHsKPiA+ICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGFk
ZCBQV00gY2hpcDogJWRcbiIsIHJldCk7Cj4gPiAtICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4g
PiArICAgICAgICAgICAgIGdvdG8gZXJyX3B3bV9hZGQ7Cj4gPiAgICAgICB9Cj4gPgo+ID4gICAg
ICAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgcHdtKTsKPiA+Cj4gPiAgICAgICByZXR1cm4g
MDsKPiA+ICsKPiA+ICtlcnJfcHdtX2FkZDoKPiA+ICsgICAgIHJlc2V0X2NvbnRyb2xfYXNzZXJ0
KHB3bS0+cnN0KTsKPiA+ICsKPiA+ICsgICAgIHJldHVybiByZXQ7Cj4gPiAgfQo+ID4KPiA+ICBz
dGF0aWMgaW50IHN1bjRpX3B3bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiA+ICB7Cj4gPiAgICAgICBzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnB3bSA9IHBsYXRmb3JtX2dl
dF9kcnZkYXRhKHBkZXYpOwo+ID4gKyAgICAgaW50IHJldDsKPiA+ICsKPiA+ICsgICAgIHJldCA9
IHB3bWNoaXBfcmVtb3ZlKCZwd20tPmNoaXApOwo+ID4gKyAgICAgaWYgKHJldCkKPiA+ICsgICAg
ICAgICAgICAgcmV0dXJuIHJldDsKPiA+Cj4gPiAtICAgICByZXR1cm4gcHdtY2hpcF9yZW1vdmUo
JnB3bS0+Y2hpcCk7Cj4gPiArICAgICByZXNldF9jb250cm9sX2Fzc2VydChwd20tPnJzdCk7Cj4g
PiArCj4gPiArICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPgo+ID4gIHN0YXRpYyBzdHJ1Y3QgcGxh
dGZvcm1fZHJpdmVyIHN1bjRpX3B3bV9kcml2ZXIgPSB7Cj4KPiAtLQo+IFBlbmd1dHJvbml4IGUu
Sy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAgICAg
ICAgfAo+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6
Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
