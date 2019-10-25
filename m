Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ECCE55BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ANvFVScoM7piVmhN2ZolpgyqwMkOzbhqZWUSqonY5hc=; b=Ti3w0/JtxWM8lipyhH0QSPd3d
	oIvQfOigd0Hq0MSG9SJcSyt7i7osA9nYo/R69iTH2MFWWkrnZ+xmnE8CjUKfUHQKA3HnVTxpJooiA
	wCE3e4hjXkNCUFreRZmrlwDjhX5dsL6/E9mZg+wS1pS7OpGpYCfJjTg9yXH3F+UkUEFXX8QJSxWnZ
	sd3/L3NqdSZ6PNaMHjXFi5+W02oCg/yntebs8eYRfx1XV3hU8b+vKiawMn80wPXEmqYgS3rkimdsv
	Z9peKajkq0e7gFWBOIIsQX//IuoebgR0buy+LmnggAQEZat6R1Sy//Gd0jEr3JYwbXRH0moSDaN7L
	pVq6Ji/DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6xI-0003Nx-NI; Fri, 25 Oct 2019 21:17:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6x1-0003IM-J6
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 21:16:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id v3so5112113wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 14:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ZL5zRfFC3dYPUpHwPSEB17QL55+F21PLLO0tPnKdBwo=;
 b=ffDG9qpYubuilFLwk9vO5X2GqWlVJLkA7Px1sWhBkHmpsIi7Hcht1FIUJHbt4xddVs
 QNJrMSnVhuUqviMMxHWHDwnwk/3rkFoa5Yy0f3nZshswkzuoBJ2lo4g8QmpVx2OH4XT7
 jXBb0bTcnEqiMkrlSU0e8rvP7xPqn/n67E/S8b6k2F5uiI+U+eE+cECgRknJurrX5vVQ
 IgPbUQ/4G0n3YvJGlB/hU3h5dzglZKptcwKWMDAsnT73/oBHx1uJMLpQ+OHN2RdGhTCf
 V8t4fLSD1xF+DxjDW9oHUP7rrBlMJ3gX0EP34W5Zwwc8RjgOwONAkreQh08/ozxrqran
 qhnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ZL5zRfFC3dYPUpHwPSEB17QL55+F21PLLO0tPnKdBwo=;
 b=Avb+r//Vk2/r7MGR8XbJz3O2muEtjFTkq/uk/gXraeScRVRFQQ4YEKrgxg9asggVqf
 nh5TzsuxPsbtIS+tKUuAR6E22xhVlCUxAnQdD6d3PFtitER8KfEWDPVel7YWF7igQGwf
 zAI/0M309z5u1r75qXiqkSTytQ9N3Jna/wtABQXv3GojHoU5fhKevJpW/DOLKmjTwH/C
 hD1PyWP+UNn1s3uR1s8A+MA5G//KGsAIqzaEwdQSyiN+d5MTNZaVj0e88FJ5jA6jziM9
 MfnhC9xGNyY6oa5nUE/y5VrsspA3gvEzH9m+GvPTYiz7SZ00O1wm7Lol2u0QxyOJ2PE4
 eQog==
X-Gm-Message-State: APjAAAVZmrQBlqDW2Wcsfxe7vmir7YTyPWt1t6fEMdnu31omUvvRPhtl
 6Y1ifkLhXX2vmsg5l//a5Gk=
X-Google-Smtp-Source: APXvYqxl+AhNwCwJFrXHUATCOW4JXuKiUSZq6V3qPnaFbRFlF0eGaR7qQH1hlGaA2gMQUjJL6Zf+uA==
X-Received: by 2002:a7b:cb03:: with SMTP id u3mr5155966wmj.126.1572038209759; 
 Fri, 25 Oct 2019 14:16:49 -0700 (PDT)
Received: from ?IPv6:2a01:cb19:16b:9900:1a4:6efa:66cf:f9c7?
 ([2a01:cb19:16b:9900:1a4:6efa:66cf:f9c7])
 by smtp.gmail.com with ESMTPSA id o18sm4601598wrm.11.2019.10.25.14.16.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 14:16:49 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: imx7d-pico: Add LCD support
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20191025082247.3371-1-offougajoris@gmail.com>
 <20191025184544.7gwwbsrketjtwrwi@pengutronix.de>
From: Joris Offouga <offougajoris@gmail.com>
Message-ID: <5a73d00e-397a-f4ed-2bfa-bb26324685ba@gmail.com>
Date: Fri, 25 Oct 2019 23:16:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025184544.7gwwbsrketjtwrwi@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_141651_705681_E8B3392D 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (offougajoris[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpMZSAyNS8xMC8yMDE5IMOgIDIwOjQ1LCBNYXJjbyBGZWxzY2ggYSDDqWNyaXTC
oDoKPiBIaSBKb3JpcywKPgo+IE9uIDE5LTEwLTI1IDEwOjIyLCBKb3JpcyBPZmZvdWdhIHdyb3Rl
Ogo+PiBBZGQgc3VwcG9ydCBmb3IgdGhlIFZYVCBWTDA1MC04MDQ4TlQtQzAxIHBhbmVsIGNvbm5l
Y3RlZCB0aHJvdWdoCj4+IHRoZSAyNCBiaXQgcGFyYWxsZWwgTENESUYgaW50ZXJmYWNlLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBKb3JpcyBPZmZvdWdhIDxvZmZvdWdham9yaXNAZ21haWwuY29tPgo+
PiBTaWduZWQtb2ZmLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IE90YXZpbyBTYWx2YWRvciA8b3RhdmlvQG9zc3lzdGVtcy5jb20uYnI+Cj4+
IC0tLQo+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLXBpY28uZHRzaSB8IDg0ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgODQgaW5zZXJ0aW9u
cygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtcGljby5kdHNp
IGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtcGljby5kdHNpCj4+IGluZGV4IDZmNTBlYmYzMWEw
YS4uOTA0MmIxZTZmMWRiIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1w
aWNvLmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtcGljby5kdHNpCj4+IEBA
IC02OSw2ICs2OSwzNyBAQAo+PiAgIAkJY2xvY2tzID0gPCZjbGtzIElNWDdEX0NMS08yX1JPT1Rf
RElWPjsKPj4gICAJCWNsb2NrLW5hbWVzID0gImV4dF9jbG9jayI7Cj4+ICAgCX07Cj4+ICsKPj4g
KwliYWNrbGlnaHQ6IGJhY2tsaWdodCB7Cj4+ICsJCWNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdo
dCI7Cj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsJCXBpbmN0cmwtMCA9IDwm
cGluY3RybF9iYWNrbGlnaHQ+Owo+PiArCQlwd21zID0gPCZwd200IDAgNTAwMDAgMD47Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+ICAgICAgIElmIG5vdCBpbnZl
cnRlZCBwbGVhc2UgZHJvcCB0aGUgdGhpcyBmbGFnLgo+IEFsc28geW91IG5lZWQgdG8gYWRkCj4K
PiAmcHdtNCB7Cj4gCXN0YXR1cyA9ICJva2F5IjsKPiB9OwpUaGlzwqAgbm9kZSBpcyBhbHJlYWR5
IHByb3ZpZGUgYnV0IGkgYWdyZWUgd2l0aCB5b3UgaSBtb3ZlIHBpbmN0cmwgaW4gCnB3bTQgbm9k
ZSBhbmQgcmVuYW1lIHRoZSBtdXhpbmcKPgo+IEFuZCBzbyB5b3UgY2FuIGRvIHRoZSBwd20gcGlu
Y3RybCB3aXRoaW4gdGhhdCBub2RlLCBzZWUgYmVsb3cuCj4KPj4gKwkJYnJpZ2h0bmVzcy1sZXZl
bHMgPSA8MCAzNiA3MiAxMDggMTQ0IDE4MCAyMTYgMjU1PjsKPj4gKwkJZGVmYXVsdC1icmlnaHRu
ZXNzLWxldmVsID0gPDY+Owo+PiArCQlzdGF0dXMgPSAib2theSI7Cj4gc3RhdHVzIGNhbiBiZSBk
cm9wcGVkIHRvby4KPgo+PiArCX07Cj4+ICsKPj4gKwlyZWdfbGNkXzN2MzogcmVndWxhdG9yLWxj
ZC0zdjMgewo+PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+ICsJCXJlZ3Vs
YXRvci1uYW1lID0gImxjZC0zdjMiOwo+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwz
MzAwMDAwPjsKPj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4+ICsJ
CWdwaW8gPSA8JmdwaW8xIDYgR1BJT19BQ1RJVkVfSElHSD47Cj4gTWlzc2luZyB0aGUgbXV4aW5n
PwpObyB0aGlzIHBpbiBpcyBhbHJlYWR5IGRyaXZlCj4KPj4gKwkJZW5hYmxlLWFjdGl2ZS1oaWdo
Owo+PiArCX07Cj4+ICsKPj4gKwlwYW5lbCB7Cj4+ICsJCWNvbXBhdGlibGUgPSAidnh0LHZsMDUw
LTgwNDhudC1jMDEiOwo+PiArCQliYWNrbGlnaHQgPSA8JmJhY2tsaWdodD47Cj4+ICsJCXBvd2Vy
LXN1cHBseSA9IDwmcmVnX2xjZF8zdjM+Owo+PiArCj4+ICsJCXBvcnQgewo+PiArCQkJcGFuZWxf
aW46IGVuZHBvaW50IHsKPj4gKwkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JmRpc3BsYXlfb3V0PjsK
Pj4gKwkJCX07Cj4+ICsJCX07Cj4+ICsJfTsKPiBQbGVhc2Ugc29ydCB0aGUgbm9kZXMgYWxwaGFi
ZXRpY2FsLgoKb2theSB0aGFua3MgZm9yIHlvdXIgcmV2aWV3CgpvdGhlcndpc2UgRmFiaW8gbWFk
ZSBtZSBub3RpY2UgdGhhdCBJIHNob3VsZCBsZWF2ZSBoaXMgRnJvbSBob3dldmVyIHdpdGggCnRo
ZSBjaGFuZ2VzIG1hZGUgSSBzaG91bGQgcHV0IG1pbmU/CgpCZXN0IHJlZ2FyZHMsCgpKb3JpcwoK
Pgo+PiAgIH07Cj4+ICAgCj4+ICAgJmNsa3Mgewo+PiBAQCAtMjMwLDYgKzI2MSwxOCBAQAo+PiAg
IAl9Owo+PiAgIH07Cj4+ICAgCj4+ICsmbGNkaWYgewo+PiArCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4+ICsJcGluY3RybC0wID0gPCZwaW5jdHJsX2xjZGlmPjsKPj4gKwlzdGF0dXMgPSAi
b2theSI7Cj4+ICsKPj4gKwlwb3J0IHsKPj4gKwkJZGlzcGxheV9vdXQ6IGVuZHBvaW50IHsKPj4g
KwkJCXJlbW90ZS1lbmRwb2ludCA9IDwmcGFuZWxfaW4+Owo+PiArCQl9Owo+PiArCX07Cj4+ICt9
Owo+PiArCj4+ICAgJnNhaTEgewo+PiAgIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiAg
IAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfc2FpMT47Cj4+IEBAIC0zNDksNiArMzkyLDEzIEBACj4+
ICAgfTsKPj4gICAKPj4gICAmaW9tdXhjIHsKPj4gKwo+PiArCXBpbmN0cmxfYmFja2xpZ2h0OiBi
YWNrbGlnaHQgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgIHBsZWFzZSBhZGQgJ2dycCcKPj4gKwkJZnNsLHBpbnMgPSA8
Cj4+ICsJCQlNWDdEX1BBRF9HUElPMV9JTzExX19QV000X09VVAkJMHgwCj4+ICsJCT47Cj4+ICsJ
fTsKPiBJTUhPIHRoZSBtdXhpbmcgaXMgcGFydCBvZiB0aGUgcHdtNCBub2RlLiBTbyByZW5hbWUg
aXQgdG8KPiAncGluY3RybF9wd200OiBwd200Z3JwJy4KPgo+IFJlZ2FyZHMsCj4gICAgTWFyY28K
Pgo+PiArCj4+ICAgCXBpbmN0cmxfZWNzcGkzOiBlY3NwaTNncnAgewo+PiAgIAkJZnNsLHBpbnMg
PSA8Cj4+ICAgCQkJTVg3RF9QQURfSTJDMV9TQ0xfX0VDU1BJM19NSVNPCQkweDIKPj4gQEAgLTQx
Myw2ICs0NjMsNDAgQEAKPj4gICAJCT47Cj4+ICAgCX07Cj4+ICAgCj4+ICsJcGluY3RybF9sY2Rp
ZjogbGNkaWZncnAgewo+PiArCQlmc2wscGlucyA9IDwKPj4gKwkJCU1YN0RfUEFEX0xDRF9EQVRB
MDBfX0xDRF9EQVRBMAkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEEwMV9fTENEX0RBVEEx
CQkweDc5Cj4+ICsJCQlNWDdEX1BBRF9MQ0RfREFUQTAyX19MQ0RfREFUQTIJCTB4NzkKPj4gKwkJ
CU1YN0RfUEFEX0xDRF9EQVRBMDNfX0xDRF9EQVRBMwkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENE
X0RBVEEwNF9fTENEX0RBVEE0CQkweDc5Cj4+ICsJCQlNWDdEX1BBRF9MQ0RfREFUQTA1X19MQ0Rf
REFUQTUJCTB4NzkKPj4gKwkJCU1YN0RfUEFEX0xDRF9EQVRBMDZfX0xDRF9EQVRBNgkJMHg3OQo+
PiArCQkJTVg3RF9QQURfTENEX0RBVEEwN19fTENEX0RBVEE3CQkweDc5Cj4+ICsJCQlNWDdEX1BB
RF9MQ0RfREFUQTA4X19MQ0RfREFUQTgJCTB4NzkKPj4gKwkJCU1YN0RfUEFEX0xDRF9EQVRBMDlf
X0xDRF9EQVRBOQkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExMF9fTENEX0RBVEExMAkJ
MHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExMV9fTENEX0RBVEExMQkJMHg3OQo+PiArCQkJ
TVg3RF9QQURfTENEX0RBVEExMl9fTENEX0RBVEExMgkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENE
X0RBVEExM19fTENEX0RBVEExMwkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExNF9fTENE
X0RBVEExNAkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExNV9fTENEX0RBVEExNQkJMHg3
OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExNl9fTENEX0RBVEExNgkJMHg3OQo+PiArCQkJTVg3
RF9QQURfTENEX0RBVEExN19fTENEX0RBVEExNwkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RB
VEExOF9fTENEX0RBVEExOAkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExOV9fTENEX0RB
VEExOQkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEEyMF9fTENEX0RBVEEyMAkJMHg3OQo+
PiArCQkJTVg3RF9QQURfTENEX0RBVEEyMV9fTENEX0RBVEEyMQkJMHg3OQo+PiArCQkJTVg3RF9Q
QURfTENEX0RBVEEyMl9fTENEX0RBVEEyMgkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEEy
M19fTENEX0RBVEEyMwkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0NMS19fTENEX0NMSwkJMHg3
OQo+PiArCQkJTVg3RF9QQURfTENEX0VOQUJMRV9fTENEX0VOQUJMRQkJMHg3OAo+PiArCQkJTVg3
RF9QQURfTENEX1ZTWU5DX19MQ0RfVlNZTkMJCTB4NzgKPj4gKwkJCU1YN0RfUEFEX0xDRF9IU1lO
Q19fTENEX0hTWU5DCQkweDc4Cj4+ICsJCQlNWDdEX1BBRF9MQ0RfUkVTRVRfX0dQSU8zX0lPNAkJ
MHgxNAo+PiArCQk+Owo+PiArCX07Cj4+ICsKPj4gICAJcGluY3RybF9wd20xOiBwd20xIHsKPj4g
ICAJCWZzbCxwaW5zID0gPAo+PiAgIAkJCU1YN0RfUEFEX0dQSU8xX0lPMDhfX1BXTTFfT1VUICAg
MHg3Zgo+PiAtLSAKPj4gMi4xNy4xCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4+
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
