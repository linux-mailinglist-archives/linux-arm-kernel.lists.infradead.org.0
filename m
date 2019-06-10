Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5E63B65E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFxI1fP+depgLoxU0WLNdV9he184sRHPoPvnhNRmTeY=; b=sZ5NtiYUyGJEar
	Uaaa9TEosw+QEOud8IBUUi7uGKny3hkynoxkGXSdTvzxgLBLmLDWnpLWRVZXIIThPFcGcy9Za8D7r
	7oFcE+fDweoLmFtfrHRRjT58ObV5VZyIyRfB/9gb8ITRe4djARSZ508Oeyo0j5Bm7tkDSbCP5GTGG
	DNgxp3vjOjehx8WwcRKapFZTUbmWQBXW7zq/zzEeMOfCmARJ75CdQCi3VrM0bv1WWfysgpeWKU1ui
	fBbLsP5nnqQPBX6TfqLXfQDKeDz8ShxdWeVqMetdQsEDeSq2+69B/FOgr4rwY91xDMFFmKB8SJQqr
	ij3uOUDSoNm2n7pYtx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKdv-0005sV-0R; Mon, 10 Jun 2019 13:47:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKcF-0004Wb-2R; Mon, 10 Jun 2019 13:45:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A863CADD9;
 Mon, 10 Jun 2019 13:45:37 +0000 (UTC)
Subject: Re: [PATCH 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ulf.hansson@linaro.org, robh+dt@kernel.org
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-3-manivannan.sadhasivam@linaro.org>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <5d164528-c797-5f94-f905-719d4f69542c@suse.de>
Date: Mon, 10 Jun 2019 15:45:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190608195317.6336-3-manivannan.sadhasivam@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_064539_260548_85D2856A 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org,
 linux-actions@lists.infradead.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDguMDYuMTkgdW0gMjE6NTMgc2NocmllYiBNYW5pdmFubmFuIFNhZGhhc2l2YW06Cj4gQWRk
IGRldmljZXRyZWUgYmluZGluZyBmb3IgQWN0aW9ucyBTZW1pIE93bCBTb0MncyBTRC9NTUMvU0RJ
TyBjb250cm9sbGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21tYy9vd2wtbW1jLnR4dCAgICAgICB8IDM3ICsrKysrKysrKysrKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvb3dsLW1tYy50eHQKClJvYiwg
c2hvdWxkIHRoaXMgYmUgWUFNTCBub3c/Cgo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbW1jL293bC1tbWMudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21tYy9vd2wtbW1jLnR4dAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
aW5kZXggMDAwMDAwMDAwMDAwLi5hNzAyZjhkNjZjZWMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9vd2wtbW1jLnR4dAo+IEBAIC0w
LDAgKzEsMzcgQEAKPiArQWN0aW9ucyBTZW1pIE93bCBTb0NzIFNEL01NQy9TRElPIGNvbnRyb2xs
ZXIKPiArCj4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4gKy0gY29tcGF0aWJsZTogc2hvdWxkIGJl
ICJhY3Rpb25zLG93bC1tbWMiCj4gKy0gcmVnOiBvZmZzZXQgYW5kIGxlbmd0aCBvZiB0aGUgcmVn
aXN0ZXIgc2V0IGZvciB0aGUgZGV2aWNlLgo+ICstIGludGVycnVwdHM6IHNpbmdsZSBpbnRlcnJ1
cHQgc3BlY2lmaWVyLgo+ICstIGNsb2Nrczogc2luZ2xlIGNsb2NrIHNwZWNpZmllciBvZiB0aGUg
Y29udHJvbGxlciBjbG9jay4KPiArLSByZXNldHM6IHBoYW5kbGUgdG8gdGhlIHJlc2V0IGxpbmUu
Cj4gKy0gZG1hLW5hbWVzOiBzaG91bGQgYmUgIm1tYyIuCj4gKy0gZG1hczogc2luZ2xlIERNQSBj
aGFubmVsIHNwZWNpZmllcgoKSSByZWNhbGwgdGhlIG1haW4gYmxvY2tlciBmb3IgTU1DIGJlaW5n
IHJlZ3VsYXRvcnMsIGkuZS4gdGhlIEnCskMKYXR0YWNoZWQgbXVsdGktZnVuY3Rpb24gUE1JQy4g
WWV0IEkgZG9uJ3Qgc2VlIGFueSBzdWNoIHJlcXVpcmVkIHByb3BlcnR5CmhlcmUsIG5vciBhbnkg
cGF0Y2ggc2VyaWVzIGltcGxlbWVudGluZyBpdC4gU2VlbXMgbGlrZSB0aGlzIHJlbGllcyBvbgpV
LUJvb3QgaGF2aW5nIGluaXRpYWxpemVkIFNEL2VNTUM/IERvIHlvdSBpbnRlbmQgdG8gbWFrZSB0
aGVtIG9wdGlvbmFsCm9yIGRpZCB5b3Ugd2FudCB0byBob2xkIG9mZiBtZXJnaW5nIHRoaXMgb25l
IHVudGlsIHRoZSByZXN0IGlzIGRvbmU/Cgo+ICsKPiArT3B0aW9uYWwgcHJvcGVydGllczoKPiAr
LSBwaW5jdHJsLW5hbWVzOiBwaW5jdHJsIHN0YXRlIG5hbWVzICJkZWZhdWx0IiBtdXN0IGJlIGRl
ZmluZWQuCj4gKy0gcGluY3RybC0wOiBwaGFuZGxlIHJlZmVyZW5jaW5nIHBpbiBjb25maWd1cmF0
aW9uIG9mIHRoZSBjb250cm9sbGVyLgo+ICstIGJ1cy13aWR0aDogc2VlIG1tYy50eHQKPiArLSBj
YXAtc2QtaGlnaHNwZWVkOiBzZWUgbW1jLnR4dAo+ICstIGNhcC1tbWMtaGlnaHNwZWVkOiBzZWUg
bW1jLnR4dAo+ICstIHNkLXVocy1zZHIxMjogc2VlIG1tYy50eHQKPiArLSBzZC11aHMtc2RyMjU6
IHNlZSBtbWMudHh0Cj4gKy0gc2QtdWhzLXNkcjUwOiBzZWUgbW1jLnR4dAo+ICstIG5vbi1yZW1v
dmFibGU6IHNlZSBtbWMudHh0CgpJJ20gbm90IGNvbnZpbmNlZCBkdXBsaWNhdGluZyBjb21tb24g
cHJvcGVydGllcyBpcyBhIGdvb2QgaWRlYSBoZXJlLCBpbgpwYXJ0aWN1bGFyIHBpbmN0cmwuCgpS
ZWdhcmRzLApBbmRyZWFzCgo+ICsKPiArRXhhbXBsZToKPiArCj4gKwkJbW1jMDogbW1jQGUwMzMw
MDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJhY3Rpb25zLG93bC1tbWMiOwo+ICsJCQlyZWcgPSA8
MHgwIDB4ZTAzMzAwMDAgMHgwIDB4NDAwMD47Cj4gKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0
MiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCQkJY2xvY2tzID0gPCZjbXUgQ0xLX1NEMD47Cj4g
KwkJCXJlc2V0cyA9IDwmY211IFJFU0VUX1NEMD47Cj4gKwkJCWRtYXMgPSA8JmRtYSAyPjsKPiAr
CQkJZG1hLW5hbWVzID0gIm1tYyI7Cj4gKwkJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
KwkJCXBpbmN0cmwtMCA9IDwmbW1jMF9kZWZhdWx0PjsKPiArCQkJYnVzLXdpZHRoID0gPDQ+Owo+
ICsJCQljYXAtc2QtaGlnaHNwZWVkOwo+ICsJCX07Cj4gCgoKLS0gClNVU0UgTGludXggR21iSCwg
TWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2
cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
