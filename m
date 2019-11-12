Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ACEF8AFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8F1wAUlSC903D8OUkjA8yAIToV/LRH/WETx56Rt6gw=; b=MOzvNiUzdh9L/H
	9fuEPvqCkKyQ3uWd55f0kWOmyPIHkPFLpcTdT+Hm89nRM8k7eUJSM80++NX0EK78o7ig+wON7b07Z
	qSsGzeMEscWEU8fagXoV7QgZAgYUUeiM6viajFiqRodh3I5Q1QUD3qJqrPHTWwiF2OiIT4uZJ/dVU
	Cs5e/vYDXHzLSt+r02e3amL6xhiDqnjoacMLTxeLgrNBN39xeFzB+3RkU2vpBC1djeyJ9mCw4GDhH
	C354AgHkGNUvFwK7I+TWLYWT/DLQH7aFEYfLnhvXNOmy/eeU9J5JdSV6RvOUIMo3m7spbxXLr3Nbz
	RzEJZVL37ENTttQotdIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURpI-0001iP-1P; Tue, 12 Nov 2019 08:47:04 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURp9-0001gz-0j; Tue, 12 Nov 2019 08:46:56 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iURp7-00020s-1K; Tue, 12 Nov 2019 09:46:53 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xAC8kpAN012974
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 12 Nov 2019 09:46:52 +0100
Subject: Re: arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on
 rk3399-roc-pc
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <f03c978c-86de-b8bb-22c2-177d7fafed94@fivetechno.de>
 <CAPDyKFqn06LZZMXLD2o-M6A0R6KU97PFUTN=NgYnMtf=ESULTA@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Autocrypt: addr=m.reichl@fivetechno.de; prefer-encrypt=mutual; keydata=
 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
 eD/Xv4SsK2JTO4nkQYw8
Organization: five technologies GmbH
Message-ID: <3ebbea5b-0bda-3528-344d-d717889e6fec@fivetechno.de>
Date: Tue, 12 Nov 2019 09:46:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAPDyKFqn06LZZMXLD2o-M6A0R6KU97PFUTN=NgYnMtf=ESULTA@mail.gmail.com>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1573548415;
 f078bd3a; 
X-HE-SMSGID: 1iURp7-00020s-1K
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_004655_205087_66C9D58C 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVWxmLAoKQW0gMTEuMTEuMTkgdW0gMTg6Mjcgc2NocmllYiBVbGYgSGFuc3NvbjoKPiBPbiBN
b24sIDExIE5vdiAyMDE5IGF0IDE1OjEzLCBNYXJrdXMgUmVpY2hsIDxtLnJlaWNobEBmaXZldGVj
aG5vLmRlPiB3cm90ZToKPj4KPj4gQWRkIFNEUjEwNCBjYXBhYmlsaXR5IGFuZCByZWd1bGF0b3Jz
IHRvIFNEIGNhcmQgbm9kZS4KPj4gV2hpbGUgYXQgaXQsIGZpeCBhIHR5cG8gaW4gbGNkIHBpbmN0
cmwgYW5kIHJlbW92ZSB0d28KPj4gdW5kb2N1bWVudGVkIGJpbmRpbmdzIGZyb20gcG1pYy4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogTWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5kZT4K
Pj4gLS0tCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpICAgICAg
fCAzMSArKysrKysrKysrKysrKystLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPj4gaW5kZXggMzNkZjk1ZTM4NGI0Li5lODZhNmRiNTQ0
OTkgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Yy1wYy5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Yy1wYy5kdHNpCj4+IEBAIC0xMzUsNiArMTM1LDIwIEBACj4+ICAgICAgICAgICAgICAgICB2aW4t
c3VwcGx5ID0gPCZ2Y2NfMXY4PjsKPj4gICAgICAgICB9Owo+Pgo+PiArICAgICAgIHZjYzN2MF9z
ZDogdmNjM3YwLXNkIHsKPj4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9y
LWZpeGVkIjsKPj4gKyAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPj4gKyAgICAg
ICAgICAgICAgIGdwaW8gPSA8JmdwaW80IFJLX1BENiBHUElPX0FDVElWRV9ISUdIPjsKPj4gKyAg
ICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsgICAgICAgICAgICAg
ICBwaW5jdHJsLTAgPSA8JnZjYzN2MF9zZF9lbj47Cj4+ICsgICAgICAgICAgICAgICByZWd1bGF0
b3ItbmFtZSA9ICJ2Y2MzdjBfc2QiOwo+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5
cy1vbjsKPiAKPiBUaGlzIGxvb2tzIG9kZC4gQSBHUElPIHJlZ3VsYXRvciBiZWluZyBhbHdheXMg
b24/CgpXb3JrcyBmaW5lIHdpdGhvdXQgYWx3YXlzLW9uLiBIYXZlIHNlbnQgdjIuIFRoYW5rcy4K
Cj4gCj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsKPj4gKyAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+PiArICAgICAgICAgICAg
ICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4+ICsgICAgICAgICAgICAg
ICB2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPj4gKyAgICAgICB9Owo+IAo+IEFzc3VtZXMg
dGhpcyBwb3dlcnMgYW4gU0RJTyBlbWJlZGRlZCBjYXJkLiBPZnRlbiB0aG9zZSBoYXZlIGEgc3Bl
Y2lmaWMKPiBwb3dlciBzZXF1ZW5jZSwganVzdCB3YW50ZWQgdG8gbWFrZSBzdXJlIHRoZSBhYm92
ZSBhcmUgcmVhbGx5Cj4gc3VmZmljaWVudD8gTm8gZGVsYXlzIG9yIGV4dGVybmFsIGNsb2NrIG5l
ZWRlZD8KPiAKPiBbLi4uXQo+IAo+IEtpbmQgcmVnYXJkcwo+IFVmZmUKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgpH
cnXDnywKLS0gCk1hcmt1cyBSZWljaGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
