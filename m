Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66003A9708
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 01:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfaxUO2PDz826uVpyyZhkdNWchPizEsPgOd7TeGDZzI=; b=AQ8ysrPlzoz0bH
	IBSKkqdbEv38svehCGl7eo+XU3C/0fw2Dw96amLpHV5h3makKerlaA4e7Z67mrdH2xUqHWi/OmeNM
	iMFsRQYv3RF4cLqmiyCbwjCr+quW3B+/pOjrPhlzPPa3mk9Pb2VxTVMdM8vEn5/MtE0Js2o0VRzsn
	/MzhW6pUO7JXpMFVA/uv8K1tqpUM5M9ITaAcuaby2JbfTX+ATPOuKgTEFhXr3v5q2d/XE5uz+Awmb
	v9lUS/cOP/mzofKUEzma7WDZ8fcMpJvJ6p3kPOAM2FrPD5Mymj7PkNqsbznx4qeulFnkvLUvjzttj
	XL4NTY+Dsr/xIsyjgQHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ebe-0000vd-VV; Wed, 04 Sep 2019 23:22:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ebV-0000uy-LL
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 23:22:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id 205so431839pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 16:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=AczQNysYCDySei8X72/Dbg6e5rvNwR4UInmP+X7KiIU=;
 b=VbaQzcW7ZrQCe2trZID6XMUuX2GRHqIMz3cOd+SQkOSMHqcBaXEthPefBEdHGNiEz9
 CKQgTtlcemjBjTEsorjKd1bCvXlD5jsRU6nSa1wq71JCWPn7TIuKJpQkSlN6RkGGVulh
 JCEwTYHJArlHOVZncxwELRcyaRPvvFSmvgswRiAzSMcDMOgPAo2pAQjo5O1fhHH0A1Oy
 yC+R1zfZgCca/uxL8LRTRb5v3Crb9GNpC2cabxGumvLJxq1GLDXNBYD6C6MEUwPPdndC
 7uryL8utdveXv0F/f4TzBrvA2AMfQeIj90M1R4jyp38fffyqAEYzcMAGb15BZwbJQ1TC
 wHjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=AczQNysYCDySei8X72/Dbg6e5rvNwR4UInmP+X7KiIU=;
 b=dcvubdYnN75kAr86N1XqAtf66U0OgAP8S/fRBn54+l9lCBseimCp4hlIfDINu79iJu
 KqQWYYm2f368Itms/tuEPtczJfJwI+L2sJHWkxeAcXb89ofGTgjfAuPCZLvVPwPHSZT3
 2RFGA8YK2KDad5hpuZdVQCrHV7Ab1AF50SCeJwmNcSGpiuyOcRAXhnxqgJOeTojB9VKv
 tdFk0knWyqutCUzxqzj/ARKZyf/67gfzJ59GFvlg8yg9t9LV2++wVGSnmofuwxzkxZP2
 OcO7t4OeGq8NqwGvaDf6PvKoQw3Y7YymqtNLmf5A34O4JMCsHn1IMK4RoNJ+usK9O97c
 q68A==
X-Gm-Message-State: APjAAAU/Gb9ye5oc6BItft06MJHwHc4PKCOO2i7Kam/pJ20agJrsBGai
 TQLm+tHQTB989cJytq6B9Xo=
X-Google-Smtp-Source: APXvYqxcvm6k+WghPJeCu8cmhvNiDCNjL6T36Tcn/FxcrqBrhes1vvgrWkh6iO9bxdvQqYko4UUPKQ==
X-Received: by 2002:a17:90a:2182:: with SMTP id q2mr756708pjc.56.1567639341013; 
 Wed, 04 Sep 2019 16:22:21 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.googlemail.com with ESMTPSA id f89sm116682pje.20.2019.09.04.16.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 16:22:20 -0700 (PDT)
Message-ID: <8fdf5eb4fda343d0c4919436490df9935fbfc34d.camel@gmail.com>
Subject: Re: [PATCH 4/4] gpio: Update documentation with ast2600 controllers
From: Rashmica Gupta <rashmica.g@gmail.com>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 05 Sep 2019 09:22:14 +1000
In-Reply-To: <CAMpxmJUGm3Zs8VHwHnXTQ2cKnpF0caR=7V4bBi1_sy1U2mWc0g@mail.gmail.com>
References: <20190904061245.30770-1-rashmica.g@gmail.com>
 <20190904061245.30770-4-rashmica.g@gmail.com>
 <CAMpxmJUGm3Zs8VHwHnXTQ2cKnpF0caR=7V4bBi1_sy1U2mWc0g@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_162221_727160_913D9DA1 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Joel Stanley <joel@jms.id.au>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA5LTA0IGF0IDA5OjAyICswMjAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdy
b3RlOgo+IMWbci4sIDQgd3J6IDIwMTkgbyAwODoxMyBSYXNobWljYSBHdXB0YSA8cmFzaG1pY2Eu
Z0BnbWFpbC5jb20+Cj4gbmFwaXNhxYIoYSk6Cj4gCj4gQWdhaW4sIHRoaXMgbmVlZHMgYSBwcm9w
ZXIgY29tbWl0IGRlc2NyaXB0aW9uIAoKSSBmaWd1cmVkIGFzIHNpbWlsYXIgcGF0Y2hlcyBoYXZl
IGdvbmUgdGhyb3VnaCB3aXRoIGp1c3QgdGhlIG9uZSBsaW5lCmFuZCB0aGVyZSBpc24ndCBhbnl0
aGluZyBtb3JlIHRvIHNheSB0aGF0IHRoZSBvbmUgbGluZSBtZXNzYWdlIHRoYXQKdGhpcyB3b3Vs
ZCBiZSBvay4KCj5hbmQgdGhlIHN1YmplY3Qgc2hvdWxkCj4gc3RhcnQgd2l0aCAiZHQtYmluZGlu
Z3M6IC4uLiIuCj4gClRydWUuCgoKPiBZb3UgYWxzbyBuZWVkIHRvIENjIHRoZSBkZXZpY2UtdHJl
ZSBtYWludGFpbmVycy4gVXNlCj4gc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCB0byBsaXN0IGFs
bCBwZW9wbGUgdGhhdCBzaG91bGQgZ2V0IHRoaXMKPiBwYXRjaC4KCk11c3QgaGF2ZSBtaXNzZWQg
dGhhdCBvbmUgc29tZWhvdy4KCj4gCj4gQmFydAo+IAo+ID4gU2lnbmVkLW9mZi1ieTogUmFzaG1p
Y2EgR3VwdGEgPHJhc2htaWNhLmdAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1hc3BlZWQudHh0IHwgMyArKy0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9ncGlvLQph
c3BlZWQudHh0IAo+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9n
cGlvLWFzcGVlZC50eHQKPiA+IGluZGV4IDdlOWI1ODY3NzBiMC4uY2QzODg3OTdlMDdjIDEwMDY0
NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1h
c3BlZWQudHh0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bp
by9ncGlvLWFzcGVlZC50eHQKPiA+IEBAIC0yLDcgKzIsOCBAQCBBc3BlZWQgR1BJTyBjb250cm9s
bGVyIERldmljZSBUcmVlIEJpbmRpbmdzCj4gPiAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+ID4gCj4gPiAgUmVxdWlyZWQgcHJvcGVydGllczoKPiA+IC0tIGNv
bXBhdGlibGUgICAgICAgICAgIDogRWl0aGVyICJhc3BlZWQsYXN0MjQwMC1ncGlvIiBvcgo+ID4g
ImFzcGVlZCxhc3QyNTAwLWdwaW8iCj4gPiArLSBjb21wYXRpYmxlICAgICAgICAgICA6IEVpdGhl
ciAiYXNwZWVkLGFzdDI0MDAtZ3BpbyIsCj4gPiAiYXNwZWVkLGFzdDI1MDAtZ3BpbyIsCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiYXNwZWVkLGFzdDI2MDAt
Z3BpbyIsIG9yCj4gPiAiYXNwZWVkLGFzdDI2MDAtMS04di1ncGlvIgo+ID4gCj4gPiAgLSAjZ3Bp
by1jZWxscyAgICAgICAgICA6IFNob3VsZCBiZSB0d28KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLSBGaXJzdCBjZWxsIGlzIHRoZSBHUElPIGxpbmUgbnVtYmVyCj4gPiAtLQo+ID4gMi4y
MC4xCj4gPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
