Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A745DEB06
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEr6JnLVXvbKoVmTksDwdjTo8H0e+bhX7j7dqbj4eRw=; b=ga2eeJGnmFeyI9
	Bvoq/zkalYdshyUCswToK9K3jeo1vp0JDRmvkAAB7DFbUhwnzs+0AGNLlyQl3uEJzkzwLfe9i4gXQ
	LUqQiU2zefMzGcoHWZ2ozedUBkBKG0er0Kn0ovS+dXsB4WxhGvThWgyGNq3dnwYifeVl4LDSwT6vQ
	UQic6VvQCHS0SVruVM6QPmJMLZB+wOWIBeeWO97mJidpo8t94YQ3RyIFo0arNOM7Rk/lc8823XFpl
	oN/USPbSnTZ47QCvh0Wz3XFxjmRRty/YBvDzk6NwkDa18y/gdaFL9v71lBwl1BZJesUZz24QJKTYM
	ns/SwXSjQPp3Q6HsW5lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVyT-0003l9-Hl; Mon, 21 Oct 2019 11:35:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVyG-0003kp-Ua
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:35:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id g24so3738706wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=0sdJfBLrNhSnyt1oG9eOew+sDCXYd7qlS53fN8Wh8i0=;
 b=j5qq2d7in13MCKCxENLawerzUfcTXKh1TPbZ7oQiuL9FySNbACnFIWIHKQJKrTDTPA
 iDjnYguzH+/MU8qRHyqT3HZUCh/F+uQCA+JgnjfhetGmVc58CJ3UbUj/pqft4mCFaZ12
 n1tBUOzr7/+G7UXFLTpHt9shLmNfJXPrljZm1rqNu8WE8h042Ydis3aU+cENpbiUiOCl
 uGD/GURiG8TZeKP/6h8nqbklanb4LUFyMVpHJleg9SQjCEqlFpuO6imeMpTtouYo1kGZ
 +PvPLL+1bsWji/xBGPAKUYCB1AfTrOGfnXa7fqk3njinJQFvX9dlkN04Go2ZeNZ043Rw
 ySRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0sdJfBLrNhSnyt1oG9eOew+sDCXYd7qlS53fN8Wh8i0=;
 b=jkNmkq89DA6ycKCBtOIrkvv2sfiEpXm8keW/jq+v+16p0hoNa17FxjPKbgAmftp00z
 yDqBFojPl+Z6ALJZesk8Y5RDRnIyGEq5Dz7vz8MogH0ulsrcYpifkgqDVdhngQ798GIF
 O7zhMHtLBRwgsMUexMwmBF7RdU4b8dHH3KWSAPc6Ls4ZfEceLZgvk/ZSlmNmAO6LVfRw
 /9VuG3kssbrsoPhtBT5dLbJaxEGv7yMIQK+lNE3FfCUQn5eqjKGJ2d4zSfBkmuAq8y4s
 DfEmSAGLrmT+en81YmolbqDTaLlvEKKuTh09mU4BZSd6Do8x/+BFrOWtGtLyruJzTE4G
 /QTA==
X-Gm-Message-State: APjAAAX52cgfwqZK992rqb+6Paik6tgKFCMidCbPQUkFRS5P6M7VlfAx
 +PaF8bSuH7VC1Zye6ReMDecUAQ==
X-Google-Smtp-Source: APXvYqx0OLlY7zxfk1fGkgqbBOZCGdm/XFCc/sWS6WexpuxLzNRUWm/xzTU2ReiqZ3YSyahma4PxaA==
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr18630589wml.170.1571657731261; 
 Mon, 21 Oct 2019 04:35:31 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id t8sm14256793wrx.76.2019.10.21.04.35.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 04:35:30 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:35:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2 1/9] mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and
 tidy error message
Message-ID: <20191021113529.GB4365@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-2-lee.jones@linaro.org>
 <20191021111555.zsvvdfun3gqhrurw@holly.lan>
 <20191021113316.GA4365@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021113316.GA4365@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_043532_988834_E9DE827B 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBNb24sIDIxIE9jdCAy
MDE5LCBEYW5pZWwgVGhvbXBzb24gd3JvdGU6Cj4gCj4gPiBPbiBNb24sIE9jdCAyMSwgMjAxOSBh
dCAxMTo1ODoxNEFNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+IEluIG1vc3QgY29udGV4
dHMgJy0xJyBkb2Vzbid0IHJlYWxseSBtZWFuIG11Y2ggdG8gdGhlIGNhc3VhbCBvYnNlcnZlci4K
PiA+ID4gSW4gYWxtb3N0IGFsbCBjYXNlcywgaXQncyBiZXR0ZXIgdG8gdXNlIGEgaHVtYW4gcmVh
ZGFibGUgZGVmaW5lLiAgSW4KPiA+ID4gdGhpcyBjYXNlIFBMQVRGT1JNX0RFVklEXyogZGVmaW5l
cyBoYXZlIGFscmVhZHkgYmVlbiBwcm92aWRlZCBmb3IgdGhpcwo+ID4gPiBwdXJwb3NlLgo+ID4g
PiAKPiA+ID4gV2hpbGUgd2UncmUgaGVyZSwgbGV0J3MgYmUgc3BlY2lmaWMgYWJvdXQgdGhlICdN
RkQgZGV2aWNlcycgd2hpY2gKPiA+ID4gZmFpbGVkLiAgSXQgd2lsbCBoZWxwIHdoZW4gdHJ5aW5n
IHRvIGRpc3Rpbmd1aXNoIHdoaWNoIG9mIHRoZSAyIHNldHMKPiA+ID4gb2Ygc3ViLWRldmljZXMg
d2UgYWN0dWFsbHkgZmFpbGVkIHRvIHJlZ2lzdGVyLgo+ID4gCj4gPiBObyBvYmplY3Rpb25zLi4u
IGJ1dCB3b24ndCB0aGUgdGFnIGFkZGVkIGJ5IGRldl9lcnIoKSBhbHJlYWR5Cj4gPiBkaXNhbWJp
Z3VhdGU/Cj4gCj4gVGhlIGRpZmZlcmVuY2Ugd2lsbCBiZSBiZXR3ZWVuIENTNTUzMiBhbmQgIENT
NTUzMiBPTFBDLgo+IAo+IFBsZWFzZSBzZWUgcGF0Y2ggNCBpbiB0aGUgc2VyaWVzLgo+IAo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4gPiAt
LS0KPiA+ID4gIGRyaXZlcnMvbWZkL2NzNTUzNS1tZmQuYyB8IDUgKysrLS0KPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvY3M1NTM1LW1mZC5jIGIvZHJpdmVycy9tZmQvY3M1NTM1
LW1mZC5jCj4gPiA+IGluZGV4IGYxODI1YzBjY2JkMC4uMmM0N2FmYzIyZDI0IDEwMDY0NAo+ID4g
PiAtLS0gYS9kcml2ZXJzL21mZC9jczU1MzUtbWZkLmMKPiA+ID4gKysrIGIvZHJpdmVycy9tZmQv
Y3M1NTM1LW1mZC5jCj4gPiA+IEBAIC0xMjcsMTAgKzEyNywxMSBAQCBzdGF0aWMgaW50IGNzNTUz
NV9tZmRfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4gPiA+ICAJCWNzNTUzNV9tZmRfY2Vs
bHNbaV0uaWQgPSAwOwo+ID4gPiAgCX0KPiA+ID4gIAo+ID4gPiAtCWVyciA9IG1mZF9hZGRfZGV2
aWNlcygmcGRldi0+ZGV2LCAtMSwgY3M1NTM1X21mZF9jZWxscywKPiA+ID4gKwllcnIgPSBtZmRf
YWRkX2RldmljZXMoJnBkZXYtPmRldiwgUExBVEZPUk1fREVWSURfTk9ORSwgY3M1NTM1X21mZF9j
ZWxscywKPiA+ID4gIAkJCSAgICAgIEFSUkFZX1NJWkUoY3M1NTM1X21mZF9jZWxscyksIE5VTEws
IDAsIE5VTEwpOwo+ID4gPiAgCWlmIChlcnIpIHsKPiA+ID4gLQkJZGV2X2VycigmcGRldi0+ZGV2
LCAiTUZEIGFkZCBkZXZpY2VzIGZhaWxlZDogJWRcbiIsIGVycik7Cj4gPiA+ICsJCWRldl9lcnIo
JnBkZXYtPmRldiwKPiA+ID4gKwkJCSJGYWlsZWQgdG8gYWRkIENTNTUzMiBzdWItZGV2aWNlczog
JWRcbiIsIGVycik7Cj4gPiAKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBeXl4KPiA+IAo+ID4gVHlwbyAoYW5kIE1PRFVMRV9ERVNDUklQVElPTigpIHNheXMg
dGhpcyBpcyBhIGRyaXZlciBmb3IgQ1M1NTM2IHRvbykuCj4gPiBPbmNlIHRoYXQgaXMgZml4ZWQ6
Cj4gPiBSZXZpZXdlZC1ieTogRGFuaWVsIFRob21wc29uIDxkYW5pZWwudGhvbXBzb25AbGluYXJv
Lm9yZz4KPiAKPiBUYS4KCkxvb2tzIGxpa2UgdGhpcyBjb21lcyBmcm9tIHRoZSBmYWlsZWQgbWVz
c2FnZSBmcm9tIHRoZQptZmRfYWRkX2RldmljZXMoKSBhYm92ZS4gIEknbGwgZml4IGJvdGguCgot
LSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExp
bmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
