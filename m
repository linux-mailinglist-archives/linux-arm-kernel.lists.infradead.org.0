Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD1EE2AA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 08:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHaIZLAHWNiAS8JZY18qiGGAwAfupmKqD9sm79jr7xY=; b=Hg1f9HgeFNiXu6
	Yis5IdI5Dg86PNByB2VsGpwHEWWCPcmse4A7TkHamiyN1eLrcvTAm5JM0tMjaycN7bNAJ5MA9gTMw
	bfaJCEQjpfRWY3qBQtEpqagTh+8gTGpZnGkWlmfoxlqhDDWU5NZsPdqP5ao7JtLNOayOhwJHV01b7
	ccqes7Ep4r4V66+fN5K1KNffmCzzyvnMKj03iKXLO1XBTpV9Bx0Bg7ogMeujTXFFw6b7vJZxpsgiR
	bIyXA0HSN5/LVxPojEuvL9uSQ+IGg5m4sdNLekziuLXR1eaqHNT5NSfQVlqC6M22tYsBnUbyISkbY
	B2g0TFzNVcTXyMokPRNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNX06-00080k-Eh; Thu, 24 Oct 2019 06:53:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWzw-0007zX-Lx
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 06:53:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so19442938wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 23:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=8khYaTOw9WAVn5r1hqt1nVZGPqpu5gb6+8NwKqGMFe8=;
 b=BUNli2l6Fa25AdE0ZSWmeiiCbkMITuhVBf0luWAEV5g4Dm4/cIj62LYP/VKo2c+v9R
 K/oB+nqJfpCqgkRLmdoEv8r4E1gJom+I3ZY2D1t0IQUZL9+UlNk+FYY4RSXQ1P+sTBUP
 EmUoKzUQalCiS3o8nu3dUHm8oxHaASXdcESR/hIeM7djjAvOGU7uHI4DkWu7W/b7Y8yu
 oYwhsy+1ECYgLY27ogRRs6YzGpOcwwcnEyHjJy0ELTqDxn1YUkR/xEWK4ToCfoyEH4Fy
 j431j/y9T/3acv/UwKu/ZnQveJw8qBnxxEjPLnfwcSKN3CxKHbvwEK3OhxwKBqkcr/6f
 HfeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8khYaTOw9WAVn5r1hqt1nVZGPqpu5gb6+8NwKqGMFe8=;
 b=eERsq9pO8e336QEc7WPlfWTOVvFnpfntnjrYAirH+eB1XCZ/dkoN6RzVyBhh8xa37o
 dHEfOaNueaA/osMmiL6whz8pOZKAHck/MzNXnRscGtvFcA7lo0twz3Bf8r6KS1hsmtxm
 bXJvpmawrY8Qn11Ufo59Bbkj7WbX2xyngSpGV00TwGWP3xfGX0al5UPv5lwyN6KN+g6P
 5m8kPsssRdkh1EFA9NWhPlUiBLbKIkQlJHkuqEbYqXA0ex1Vkyv2B6LHnbo0U80+w0Um
 YC7CJQKDkmXD8KqSAqwNtXJDlNqSASyOqqZpM5Mg5mWVw5rIXKeuAk98/HcPIDlOXxuh
 60UQ==
X-Gm-Message-State: APjAAAWBDkml6ZXk83dM4FGzqsY2dYzfz7uXE2BhUJjFjO5gwFsK1vmV
 R8dTeOdui0mOfgFx4AXCzokVaA==
X-Google-Smtp-Source: APXvYqzgRjFnh49B9qjfb0Oi6euoaQE0DPniUq07LuFqd+7EURts2SUbVXZSdndQQkgO1PMosZc66g==
X-Received: by 2002:a5d:638c:: with SMTP id p12mr2117890wru.136.1571900005726; 
 Wed, 23 Oct 2019 23:53:25 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id d199sm1783744wmd.35.2019.10.23.23.53.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 23:53:25 -0700 (PDT)
Date: Thu, 24 Oct 2019 07:53:23 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH RESEND] mfd: mt6397: Use PLATFORM_DEVID_NONE macro
 instead of -1
Message-ID: <20191024065323.GD15843@dell>
References: <20191020150720.2752-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191020150720.2752-1-fparent@baylibre.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_235328_729624_17615D5D 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyMCBPY3QgMjAxOSwgRmFiaWVuIFBhcmVudCB3cm90ZToKCj4gVXNlIHRoZSBjb3Jy
ZWN0IG1hY3JvIHdoZW4gYWRkaW5nIHRoZSBNRkQgZGV2aWNlcyBpbnN0ZWFkIG9mIHVzaW5nCj4g
ZGlyZWN0bHkgJy0xJyB2YWx1ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGYWJpZW4gUGFyZW50IDxm
cGFyZW50QGJheWxpYnJlLmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0
dGhpYXMuYmdnQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYyB8
IDEyICsrKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQoKUGF0Y2ggZGlkbid0IGFwcGx5LCBidXQgSSBmaXhlZCBpdCB1cCBhbmQgYXBw
bGllZCBpdC4KCkxldCBtZSBrbm93IGlmIGFueXRoaW5nIGxvb2sgd3JvbmcgdG8geW91LgoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMgYi9kcml2ZXJzL21mZC9tdDYzOTct
Y29yZS5jCmluZGV4IGIyYzMyNWVhZDFjOC4uMDQzN2M4NThkMTE1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL21mZC9tdDYzOTctY29yZS5jCisrKyBiL2RyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMKQEAg
LTE4OSwxNiArMTg5LDE2IEBAIHN0YXRpYyBpbnQgbXQ2Mzk3X3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAKIAlzd2l0Y2ggKHBtaWMtPmNoaXBfaWQpIHsKIAljYXNlIE1UNjMy
M19DSElQX0lEOgotCQlyZXQgPSBkZXZtX21mZF9hZGRfZGV2aWNlcygmcGRldi0+ZGV2LCAtMSwg
bXQ2MzIzX2RldnMsCi0JCQkJCSAgIEFSUkFZX1NJWkUobXQ2MzIzX2RldnMpLCBOVUxMLAotCQkJ
CQkgICAwLCBwbWljLT5pcnFfZG9tYWluKTsKKwkJcmV0ID0gZGV2bV9tZmRfYWRkX2RldmljZXMo
JnBkZXYtPmRldiwgUExBVEZPUk1fREVWSURfTk9ORSwKKwkJCQkJICAgbXQ2MzIzX2RldnMsIEFS
UkFZX1NJWkUobXQ2MzIzX2RldnMpLAorCQkJCQkgICBOVUxMLCAwLCBwbWljLT5pcnFfZG9tYWlu
KTsKIAkJYnJlYWs7CiAKIAljYXNlIE1UNjM5MV9DSElQX0lEOgogCWNhc2UgTVQ2Mzk3X0NISVBf
SUQ6Ci0JCXJldCA9IGRldm1fbWZkX2FkZF9kZXZpY2VzKCZwZGV2LT5kZXYsIC0xLCBtdDYzOTdf
ZGV2cywKLQkJCQkJICAgQVJSQVlfU0laRShtdDYzOTdfZGV2cyksIE5VTEwsCi0JCQkJCSAgIDAs
IHBtaWMtPmlycV9kb21haW4pOworCQlyZXQgPSBkZXZtX21mZF9hZGRfZGV2aWNlcygmcGRldi0+
ZGV2LCBQTEFURk9STV9ERVZJRF9OT05FLAorCQkJCQkgICBtdDYzOTdfZGV2cywgQVJSQVlfU0la
RShtdDYzOTdfZGV2cyksCisJCQkJCSAgIE5VTEwsIDAsIHBtaWMtPmlycV9kb21haW4pOwogCQli
cmVhazsKIAogCWRlZmF1bHQ6Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9tdDYzOTctY29y
ZS5jIGIvZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYwo+IGluZGV4IDMxMGRhZTI2ZGRmZi4uOWIx
OWRmZWViNzk3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMKPiArKysg
Yi9kcml2ZXJzL21mZC9tdDYzOTctY29yZS5jCj4gQEAgLTE3MSw5ICsxNzEsOSBAQCBzdGF0aWMg
aW50IG10NjM5N19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCWlmIChy
ZXQpCj4gIAkJCXJldHVybiByZXQ7Cj4gIAo+IC0JCXJldCA9IGRldm1fbWZkX2FkZF9kZXZpY2Vz
KCZwZGV2LT5kZXYsIC0xLCBtdDYzMjNfZGV2cywKPiAtCQkJCQkgICBBUlJBWV9TSVpFKG10NjMy
M19kZXZzKSwgTlVMTCwKPiAtCQkJCQkgICAwLCBwbWljLT5pcnFfZG9tYWluKTsKPiArCQlyZXQg
PSBkZXZtX21mZF9hZGRfZGV2aWNlcygmcGRldi0+ZGV2LCBQTEFURk9STV9ERVZJRF9OT05FLAo+
ICsJCQkJCSAgIG10NjMyM19kZXZzLCBBUlJBWV9TSVpFKG10NjMyM19kZXZzKSwKPiArCQkJCQkg
ICBOVUxMLCAwLCBwbWljLT5pcnFfZG9tYWluKTsKPiAgCQlicmVhazsKPiAgCj4gIAljYXNlIE1U
NjM5MV9DSElQX0lEOgo+IEBAIC0xODYsOSArMTg2LDkgQEAgc3RhdGljIGludCBtdDYzOTdfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1
cm4gcmV0Owo+ICAKPiAtCQlyZXQgPSBkZXZtX21mZF9hZGRfZGV2aWNlcygmcGRldi0+ZGV2LCAt
MSwgbXQ2Mzk3X2RldnMsCj4gLQkJCQkJICAgQVJSQVlfU0laRShtdDYzOTdfZGV2cyksIE5VTEws
Cj4gLQkJCQkJICAgMCwgcG1pYy0+aXJxX2RvbWFpbik7Cj4gKwkJcmV0ID0gZGV2bV9tZmRfYWRk
X2RldmljZXMoJnBkZXYtPmRldiwgUExBVEZPUk1fREVWSURfTk9ORSwKPiArCQkJCQkgICBtdDYz
OTdfZGV2cywgQVJSQVlfU0laRShtdDYzOTdfZGV2cyksCj4gKwkJCQkJICAgTlVMTCwgMCwgcG1p
Yy0+aXJxX2RvbWFpbik7Cj4gIAkJYnJlYWs7Cj4gIAo+ICAJZGVmYXVsdDoKCi0tIApMZWUgSm9u
ZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNl
Ym9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
