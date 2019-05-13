Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E15E1B15E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xu19kONMy2TpgIhUb9xHRsl0TESzu/Buerjc39k+Mbo=; b=pO497sIdWh7l0p
	BfTjTZ7QD7CNtTcLeU8Gp1zgD9dIWHcdR/zd41c+ZDdOAGbJHnaO+8otRylU39T9ELZRDPrVMW8PR
	siJThCunMNs3YVmpXyd4QqQ8x9CtoP5XpLVNswO7E0HgMsgB6vvzUFd0cYaHrb2QsFVKABAHyHg6P
	M8naKirtnzs4OuewZkpsfLME9yhbkLQkl0Vm4R/hqjN28tIdKXHDUQ/D+mlb0OaktEaahCbkIHkgs
	7ADj9Vnn/Mh+l8xFvhyIFADFu7QtJKgbO4D/wz8b8yxBj+wp37ALwaFwm+9dAcbxxK3EsKSXz9DWF
	xteWXVCe8tJgYA1exG3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5cr-0007pN-6j; Mon, 13 May 2019 07:43:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5cT-0007os-9B
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:43:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id i3so6906450wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=2SVkcixuV+vIKx8xDNZuyAT9UK0fzjYF/b5ce8pCl+U=;
 b=LvnhpyUOg/fe+RLGQXLz1XqoioBuGPsaZYetsZRYzhCP7PHiNcJAXKVPD3pg02fLCn
 H/TUqrAnssQmBiq4xA5XnuFUu01cp9MB7+7fYw/Ai+FxQbcMCexvAVfnVbmVNJQttTUe
 ael2fjcPqteB/83JAJjEIkEUBnerHvAhdN/+QJUjYVFX5ljyUuCsBNmEMr6ExStjRXaX
 jwUs9obpnSHdBZ8XrLQZJAOYwhEHxDPcEgEvVzlf0O+s8tGzhT3UXVum2YXsOTzhT3dv
 6q9FuQ3Vibk3KNcBC1FpBC3kc41XXNX/AB62vxLCAizVrIjoa9ciUMgs4enwYft749hd
 5qjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2SVkcixuV+vIKx8xDNZuyAT9UK0fzjYF/b5ce8pCl+U=;
 b=h4PP6TKgHpwoOEDRtm9i3rK3dJZgaYa8piTfLr6VWR6xixWoSZHLRqb2Ra+oKUuk84
 b3fK6mJNAYEbOl0JHeovJWtGt1xKi8D2Ewvxf9hY8OqOwdmqr1IVpcelN59J6HDX8qVm
 gKarZ7blB2RrctauY2jSb2MtkZ5WmKtZuJC3haakdPf3aJfmlNMJepqc1eQrDW7sOpiR
 +s4IEGkNSG15WzXWdYxjvcCpdAXS4SYp1l2gVPEEdTx+G11hGNRqtdpGXp1pHUHbcS68
 A1TslVwDy8mcnEwGIgbKqgxXe0EX8sC2Em5TkVaPhs+TsfjYaxRrpxJK2NdyegCyWb1S
 1IAw==
X-Gm-Message-State: APjAAAWwSS6YXDmP2H6+o5AvPVMceNGzo+bHmNpr9FlOaRD8AJ4TuReT
 WasFb4RIokSyvNvxvhdxB4sP+A==
X-Google-Smtp-Source: APXvYqwp8nAXWcx1osFAjj9b+GA8DgpLgKaUzmyU2T2zcrbCMz9vA5t8VV7tfWYcz6KGhz3E6C8uYw==
X-Received: by 2002:a05:600c:247:: with SMTP id
 7mr15179643wmj.31.1557733411492; 
 Mon, 13 May 2019 00:43:31 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 24sm3859594wmo.3.2019.05.13.00.43.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 00:43:30 -0700 (PDT)
Date: Mon, 13 May 2019 08:43:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [GIT PULL v3] Immutable branch between MFD and Pinctrl due for
 the v5.2 merge window
Message-ID: <20190513074329.GJ4319@dell>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
 <20190510072314.GC7321@dell> <20190510151556.GA4319@dell>
 <20190510151912.GB4319@dell> <20190513074237.GI4319@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513074237.GI4319@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_004333_536196_5A8BFA3E 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMyBNYXkgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBFbmpveSEKClNob3VsZCBo
YXZlIHNhaWQ6IG5vdyBjb250YWlucyBmaXhlcyBmb3IgcmVwb3J0ZWQgU21hdGNoIHdhcm5pbmdz
LgoKPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGU5M2M5Yzk5YTYyOWM2MTgz
N2Q1YTdmYzIxMjBjZDJiNmM3MGRiZGQ6Cj4gCj4gICBMaW51eCA1LjEgKDIwMTktMDUtMDUgMTc6
NDI6NTggLTA3MDApCj4gCj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6
Cj4gCj4gICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbGVl
L21mZC5naXQgdGFncy9pYi1tZmQtcGluY3RybC12NS4yLTIKPiAKPiBmb3IgeW91IHRvIGZldGNo
IGNoYW5nZXMgdXAgdG8gZDE3ZWQ3OTdiOGZkNWM4NzY1Y2Q5NTlhYzQ0YWFhMmYwOTBmNWE4OToK
PiAKPiAgIHBpbmN0cmw6IHN0bWZ4OiBGaXggJ3dhcm46IGJpdHdpc2UgQU5EIGNvbmRpdGlvbiBp
cyBmYWxzZSBoZXJlJyAoMjAxOS0wNS0xMyAwODoyODoyNiArMDEwMCkKPiAKPiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4g
SW1tdXRhYmxlIGJyYW5jaCBiZXR3ZWVuIE1GRCBhbmQgUGluY3RybCBkdWUgZm9yIHRoZSB2NS4y
IG1lcmdlIHdpbmRvdwo+IAo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBBbWVsaWUgRGVsYXVuYXkgKDUpOgo+ICAgICAg
IGR0LWJpbmRpbmdzOiBtZmQ6IEFkZCBTVCBNdWx0aS1GdW5jdGlvbiBlWHBhbmRlciAoU1RNRlgp
IGNvcmUgYmluZGluZ3MKPiAgICAgICBtZmQ6IEFkZCBTVCBNdWx0aS1GdW5jdGlvbiBlWHBhbmRl
ciAoU1RNRlgpIGNvcmUgZHJpdmVyCj4gICAgICAgZHQtYmluZGluZ3M6IHBpbmN0cmw6IGRvY3Vt
ZW50IHRoZSBTVE1GWCBwaW5jdHJsIGJpbmRpbmdzCj4gICAgICAgcGluY3RybDogQWRkIFNUTUZY
IEdQSU8gZXhwYW5kZXIgUGluY3RybC9HUElPIGRyaXZlcgo+ICAgICAgIHBpbmN0cmw6IEtjb25m
aWc6IEZpeCBTVE1GWCBHUElPIGV4cGFuZGVyIFBpbmN0cmwvR1BJTyBkcml2ZXIgZGVwZW5kZW5j
aWVzCj4gCj4gTGVlIEpvbmVzICgyKToKPiAgICAgICBwaW5jdHJsOiBzdG1meDogRml4ICd3YXJu
OiB1bnNpZ25lZCA8VkFSPiBpcyBuZXZlciBsZXNzIHRoYW4gemVybycKPiAgICAgICBwaW5jdHJs
OiBzdG1meDogRml4ICd3YXJuOiBiaXR3aXNlIEFORCBjb25kaXRpb24gaXMgZmFsc2UgaGVyZScK
PiAKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdG1meC50eHQgICAg
fCAgMjggKwo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waW5jdHJsL3BpbmN0cmwtc3RtZngu
dHh0ICB8IDExNiArKysKPiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgMTMgKwo+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL21mZC9zdG1meC5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8IDU0NSArKysrKysrKysrKysrKwo+ICBkcml2ZXJzL3Bp
bmN0cmwvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxNCArCj4gIGRyaXZl
cnMvcGluY3RybC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAg
ZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYyAgICAgICAgICAgICAgICAgICAgfCA4MTkg
KysrKysrKysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvbWZkL3N0bWZ4LmggICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgMTIzICsrKysKPiAgOSBmaWxlcyBjaGFuZ2VkLCAxNjYwIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3RtZngudHh0Cj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9waW5jdHJsLXN0
bWZ4LnR4dAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvc3RtZnguYwo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYwo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvc3RtZnguaAo+IAoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
