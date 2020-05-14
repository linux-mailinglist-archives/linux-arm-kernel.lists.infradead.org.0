Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC1D1D2AD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 11:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gmLLedkQ0NQEaoefidwmM1GKJMla8vmku8QUm0Zpdg=; b=qjm4sT8NHtk6ac
	1mIRKC1oki3H7CsjcXWpYhme2Y9DeR+F4a37soaRd1fUs2Xq54wi49mZcIH4UFgbSkKh7L7NjEFMe
	87upFS2aOWmav6zWdHrcZsdNhFz4UgkEcjZSoTWWb8DxbkfYDgvBSXdHi/GzRrX4OMS/qO9I9p4lB
	uy767YleteHmN9zbrv08HJd5vPMA2Go069XqbkNbmS2gjdBlpXZqkOJglN8KKTMgYq5NNvLdkORpe
	BJECSUE9Uiu8gI10A0Xahva6EjVWOBbqywO8uAYiZzKzN7Orwb9R6xiNsWzBq1AZrvui3sG6TbXXR
	4UssoUCI79sX4/HptdUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9jO-0006ph-4G; Thu, 14 May 2020 09:00:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9jC-0006oo-6z
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 09:00:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id y3so2872295wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 02:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=brO8SatzFGXuJx7truk9R35eMq/wT5WUrcx2WinNCbE=;
 b=yB4/wSNaH36qcX3ATdVHv5wM50wNQ0F9THXz6MYGO/Z5VW2nm/DAW0ZrVAZSVQb4Ei
 8WzGL9TSkBUW3QBwu55rhPuu5Z+ozILLJFZuV2KWUbiOP15IS+2STJaVBzF02gWjxou/
 +zqMqF9qqfNCHP4eM3uUGlS8mwnkL85fYTiB4clQVJHIhgf7rI0DDdmiX21dGKp33EMS
 BBkKD1zYjwe9VnLcjKRxyHAf5ra0+BR4ADKbuaAd2QC3WVrp3Vrvet0BaL/LUd8xD9MQ
 qZwLuJu7yprAKLS87ee2yC92l4XctwEjvIybLReXE1eSLnwB3R58upThUohkGOb+rDKV
 TLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=brO8SatzFGXuJx7truk9R35eMq/wT5WUrcx2WinNCbE=;
 b=in5uNxL25WLyE1KWxv0DYrvVCICT5YCurHhHWdFg/GoN29mRc/5L0WTNGrvZOB6tmD
 cZntc018vgPRSIvFVPlUBKJjJ4QfiO7rtQr9xUQ+dot16RzHP900NcoGmGXZGfjYKFtC
 7p2Ki1QGRbF0ujD2/1VFvjUf7qFHuGWyTMrtA0hYwX3XcZ8tjpyPMOI0r+s8Rv5fp6lT
 5mZjhSHEuqJmhYRY2A9n7ouPU+Znp/idBofyxH88PFIqECzEzZK84k8JUhgCMa7iTawe
 AbCLPVKxUAbw/0F1W8wkRGb9r5mYJVLBqZiwi8ceWTSU2opQ+nLJgPOhgGq2NMoAtaLP
 mxUg==
X-Gm-Message-State: AOAM533F/7zurwH6Blqicrf4WVkrKPEMSrfXOw+ypqthjmloILdPcGQt
 G4JBXMgG9dtR3R4+sw7ga3lsRw==
X-Google-Smtp-Source: ABdhPJw+rFHQFUTHAaNgyLW1xC7hhZnEVdOwRgOheuGlo7jgtN0uXxuUcMgeW3VsFaSa/lENVe3Vzg==
X-Received: by 2002:a5d:53c7:: with SMTP id a7mr4414459wrw.334.1589446828174; 
 Thu, 14 May 2020 02:00:28 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id c193sm13125691wme.37.2020.05.14.02.00.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 02:00:26 -0700 (PDT)
Date: Thu, 14 May 2020 10:00:25 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: Convert stmfx bindings to json-schema
Message-ID: <20200514090025.GE271301@dell>
References: <20200220162246.8334-1-benjamin.gaignard@st.com>
 <20200226162125.GA13349@bogus>
 <70ee04c9-4f65-6909-32bc-a379c21a031e@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70ee04c9-4f65-6909-32bc-a379c21a031e@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_020030_261459_283E4AF7 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.co" <mark.rutland@arm.co>, Rob Herring <robh@kernel.org>,
 Amelie DELAUNAY <amelie.delaunay@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxNCBNYXkgMjAyMCwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6Cgo+IAo+IAo+IE9u
IDIvMjYvMjAgNToyMSBQTSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBUaHUsIDIwIEZlYiAy
MDIwIDE3OjIyOjQ2ICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+PiBDb252ZXJ0
IHN0bWZ4IGJpbmRpbmdzIHRvIGpzb24tc2NoZW1hCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBC
ZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+ID4+IC0tLQo+ID4+
ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N0LHN0bWZ4LnlhbWwgICAgICAgICAgfCAx
MjQgKysrKysrKysrKysrKysrKysrKysrCj4gPj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL3N0bWZ4LnR4dCAgICB8ICAyOCAtLS0tLQo+ID4+ICAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGluY3RybC9waW5jdHJsLXN0bWZ4LnR4dCAgfCAxMTYgLS0tLS0tLS0tLS0t
LS0tLS0tLQo+ID4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxMjQgaW5zZXJ0aW9ucygrKSwgMTQ0IGRl
bGV0aW9ucygtKQo+ID4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZmQvc3Qsc3RtZngueWFtbAo+ID4+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3RtZngudHh0Cj4gPj4gICBk
ZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BpbmN0
cmwvcGluY3RybC1zdG1meC50eHQKPiA+Pgo+IEhpIExlZSwgUm9iLAo+IAo+IEkgaGF2ZW4ndCBi
ZWVuIGFibGUgdG8gZm91bmQgdGhpcyBwYXRjaCBpbiAtbmV4dCBicmFuY2hlcywgY2FuIG9uZSBv
ZiAKPiB5b3UgbWVyZ2UgaXQgPwo+IAo+IFRoYW5rcywKPiBCZW5qYW1pbgo+ID4gUmV2aWV3ZWQt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpSb2IsCgpXZSBzaG91bGQgYWdyZWUg
b24gYSBwcm9jZXNzIGdvaW5nIGZvcndhcmQuICBEbyB5b3UgdGFrZSBEVCBkb2N1bWVudApjaGFu
Z2VzIG9yIHNob3VsZCBJPyAgVXAgdW50aWwgd2UgbW92ZWQgdG8gWUFNTCBmb3JtYXR0aW5nLCBJ
IHRvb2sKdGhlbSBidXQgcmVzcG9uc2libHkgc2VlbXMgdG8gaGF2ZSBtaWdyYXRlZCBvdmVyIHRv
IHlvdSBzaW5jZSB0aGVuLgoKSSBkb24ndCBtaW5kIGVpdGhlciB3YXkuCgotLSAKTGVlIEpvbmVz
IFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKU
giBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJv
b2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
